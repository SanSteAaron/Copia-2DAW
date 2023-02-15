using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MvcTienda_Aaron.Migrations
{
    public partial class New5 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ProductoTallaId",
                table: "Detalles",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Detalles_ProductoTallaId",
                table: "Detalles",
                column: "ProductoTallaId");

            migrationBuilder.AddForeignKey(
                name: "FK_Detalles_ProductosTalla_ProductoTallaId",
                table: "Detalles",
                column: "ProductoTallaId",
                principalTable: "ProductosTalla",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Detalles_ProductosTalla_ProductoTallaId",
                table: "Detalles");

            migrationBuilder.DropIndex(
                name: "IX_Detalles_ProductoTallaId",
                table: "Detalles");

            migrationBuilder.DropColumn(
                name: "ProductoTallaId",
                table: "Detalles");
        }
    }
}
