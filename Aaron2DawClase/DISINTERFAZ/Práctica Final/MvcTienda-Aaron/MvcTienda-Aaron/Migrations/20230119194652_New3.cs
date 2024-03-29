﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MvcTienda_Aaron.Migrations
{
    public partial class New3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<bool>(
                name: "Escaparate",
                table: "Productos",
                type: "bit",
                nullable: true,
                oldClrType: typeof(bool),
                oldType: "bit");

            migrationBuilder.AddColumn<string>(
                name: "PrecioCadena",
                table: "Productos",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PrecioCadena",
                table: "Productos");

            migrationBuilder.AlterColumn<bool>(
                name: "Escaparate",
                table: "Productos",
                type: "bit",
                nullable: false,
                defaultValue: false,
                oldClrType: typeof(bool),
                oldType: "bit",
                oldNullable: true);
        }
    }
}
