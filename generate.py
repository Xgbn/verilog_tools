from __future__ import print_function
from PIL import Image

try:
    print("generating thumbnail")
    im = Image.open("source.jpg")
    print(im.format, im.size, im.mode)

    pix = im.load()
    # print(pix[100,100])

    size = 20,20
    im.thumbnail(size, Image.ANTIALIAS)
    im.save("outfile.jpg", "JPEG")
    im.close()
except:
    print("Error when generating the thumbnail")

print("generating color_mapper.sv")
generated_file = open("color_mapper.sv", 'w')

print("Writing header")



generated_file.write(
"module  color_mapper ( input        [9:0] BallX, BallY, DrawX,\n\
                                            DrawY, Ball_size,\n\
                        output logic [7:0]  Red, Green, Blue );\n")


generated_file.write(
"   int idx; \n\
    logic on_sprite; \n\
    \n"
)

generated_file.write(
"   assign on_sprite = (DrawY > BallY) & (DrawX > BallX) & (DrawY - BallY < 20)\n\
                        & (DrawX - BallX < 20)\n\
"
)
generated_file.write(
"/* now we generate the idx */ \n"
)

generated_file.write(
"   always_comb\n\
    begin\n\
        idx = 999 \n\
        case(on_sprite)\n\
        1:\n\
            idx = (DrawY - BallY)*20 + (DrawX - BallX);\n\
        default:;\n\
        endcase;\n\
    end\n"
)



generated_file.write(
"   always_comb\n\
    begin\n\
    Red = 255;\n\
    Green = 255;\n\
    Blue = 255; \n\
    case(idx)\n\
    "
)

im = Image.open("outfile.jpg")
pix = im.load()
for j in range(0,im.height - 1):
    for i in range(0,im.width - 1):

        temp = "       "+ str(j*20 + i) + ": \n\
        begin \n\
            Red ="+str( pix[i,j][0])+ ";\n\
            Green ="+ str(pix[i,j][1])+ ";\n\
            Blue ="+ str(pix[i,j][2])+ ";\n\
        end \n\n"
        # print(temp)
        generated_file.write(temp)

generated_file.write(
"       default: ;\n\
        endcase    \n\
    end\n"
)

generated_file.write(
"endmodule\n"
)

im.close()
        # print(pix[i , j])






generated_file.write("")
