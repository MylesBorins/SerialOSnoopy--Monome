{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 51.0, 44.0, 1195.0, 711.0 ],
		"bglocked" : 0,
		"defrect" : [ 51.0, 44.0, 1195.0, 711.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Andale Mono",
		"gridonopen" : 0,
		"gridsize" : [ 16.0, 16.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 56.0, 183.0, 234.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 400.0, 96.0, 47.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/level/col 0 0 0 0 5 5 10 10 15 15",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 768.0, 224.0, 378.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s /example/in",
					"fontname" : "Andale Mono",
					"id" : "obj-8",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 768.0, 352.0, 104.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 592.0, 432.0, 32.5, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 688.0, 432.0, 47.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 640.0, 432.0, 32.5, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 13 27",
					"fontname" : "Andale Mono",
					"outlettype" : [ "bang", "bang", "" ],
					"id" : "obj-27",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 496.0, 432.0, 75.0, 20.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "key",
					"fontname" : "Andale Mono",
					"outlettype" : [ "int", "int", "int", "int" ],
					"id" : "obj-31",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 432.0, 432.0, 59.5, 20.0 ],
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Andale Mono",
					"outlettype" : [ "bang" ],
					"id" : "obj-17",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 112.0, 528.0, 68.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p sound",
					"fontname" : "Andale Mono",
					"outlettype" : [ "signal" ],
					"id" : "obj-47",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 32.0, 576.0, 61.0, 20.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Andale Mono",
						"gridonopen" : 0,
						"gridsize" : [ 16.0, 16.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 288.0, 432.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontname" : "Andale Mono",
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-10",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 320.0, 176.0, 47.0, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "list" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"patching_rect" : [ 304.0, 32.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$3",
									"fontname" : "Andale Mono",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 304.0, 80.0, 32.5, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.2",
									"fontname" : "Andale Mono",
									"outlettype" : [ "signal" ],
									"id" : "obj-107",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 288.0, 384.0, 54.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontname" : "Andale Mono",
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-106",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"items" : [ 600, ",", 800, ",", 900, ",", 1000, ",", 1200, ",", 1600, ",", 1800, ",", 2000 ],
									"types" : [  ],
									"patching_rect" : [ 176.0, 208.0, 100.0, 20.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 8",
									"fontname" : "Andale Mono",
									"outlettype" : [ "int" ],
									"id" : "obj-105",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 176.0, 176.0, 68.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tri~ 1600",
									"fontname" : "Andale Mono",
									"outlettype" : [ "signal" ],
									"id" : "obj-11",
									"fontsize" : 12.0,
									"numinlets" : 3,
									"patching_rect" : [ 208.0, 288.0, 76.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1., 0.1 10 0.1 0. 20 -0.5",
									"fontname" : "Andale Mono",
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 304.0, 256.0, 192.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "curve~",
									"fontname" : "Andale Mono",
									"outlettype" : [ "signal", "bang" ],
									"id" : "obj-13",
									"fontsize" : 12.0,
									"numinlets" : 3,
									"patching_rect" : [ 304.0, 288.0, 52.0, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Andale Mono",
									"outlettype" : [ "bang", "" ],
									"id" : "obj-14",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 304.0, 112.0, 45.0, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.",
									"fontname" : "Andale Mono",
									"outlettype" : [ "signal" ],
									"id" : "obj-16",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 272.0, 355.0, 45.0, 20.0 ],
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-106", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-105", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-106", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Andale Mono",
						"default_fontname" : "Andale Mono",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-45",
					"numinlets" : 2,
					"patching_rect" : [ 32.0, 624.0, 45.0, 45.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pair",
					"fontname" : "Andale Mono",
					"id" : "obj-44",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 528.0, 39.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-40",
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 528.0, 20.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 240.0, 544.0, 39.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 1",
					"fontname" : "Andale Mono",
					"outlettype" : [ "", "" ],
					"id" : "obj-37",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 240.0, 608.0, 61.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$3 $1 $2",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 240.0, 576.0, 68.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1 $2 inc",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 240.0, 640.0, 75.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/led/level/",
					"fontname" : "Andale Mono",
					"id" : "obj-30",
					"fontsize" : 36.0,
					"numinlets" : 1,
					"patching_rect" : [ 768.0, 32.0, 248.0, 47.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/led",
					"fontname" : "Andale Mono",
					"id" : "obj-29",
					"fontsize" : 36.0,
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 32.0, 150.0, 47.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/key",
					"fontname" : "Andale Mono",
					"id" : "obj-28",
					"fontsize" : 36.0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 32.0, 150.0, 47.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/level/row 0 0 0 0 5 5 10 10 15 15",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 768.0, 192.0, 378.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/level/map 0 0 2 11 3 8 14 8 2 9 12 0 7 0 0 6 3 0 9 14 5 10 11 4 12 13 12 14 11 7 3 9 12 2 10 3 4 3 4 9 1 8 1 7 11 7 7 6 15 1 7 10 10 5 7 14 9 1 1 15 5 12 6 9 11 11",
					"linecount" : 4,
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 768.0, 256.0, 361.0, 58.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Andale Mono",
					"maximum" : 15,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-22",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"minimum" : 0,
					"patching_rect" : [ 768.0, 160.0, 50.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/level/all $1",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 832.0, 160.0, 227.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Andale Mono",
					"maximum" : 15,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-21",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"minimum" : 0,
					"patching_rect" : [ 768.0, 128.0, 50.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/level/set 0 0 $1",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 832.0, 128.0, 255.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Andale Mono",
					"maximum" : 15,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-19",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"minimum" : 0,
					"patching_rect" : [ 400.0, 592.0, 50.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/intensity $1",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 464.0, 592.0, 227.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/map 0 0 1 2 3 4 5 6 7 8",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 400.0, 496.0, 306.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/col 0 0 255 255",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 400.0, 560.0, 248.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/row 0 0 255 255",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 400.0, 528.0, 248.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/set $1 $2 $3",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 400.0, 400.0, 227.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "matrixctrl",
					"columns" : 16,
					"outlettype" : [ "list", "list" ],
					"rows" : 16,
					"autosize" : 1,
					"id" : "obj-5",
					"scale" : 0,
					"presentation_rect" : [ 466.0, 130.0, 256.0, 768.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 128.0, 258.0, 258.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s /example/in",
					"fontname" : "Andale Mono",
					"id" : "obj-4",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 400.0, 656.0, 104.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r /example/in",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 32.0, 112.0, 104.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 32",
					"fontname" : "Andale Mono",
					"outlettype" : [ "bang", "" ],
					"id" : "obj-50",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 288.0, 112.0, 54.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "key",
					"fontname" : "Andale Mono",
					"outlettype" : [ "int", "int", "int", "int" ],
					"id" : "obj-49",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 224.0, 112.0, 59.5, 20.0 ],
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-18",
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 464.0, 20.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/example/grid/led/all $1",
					"fontname" : "Andale Mono",
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 432.0, 464.0, 213.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "matrixctrl",
					"columns" : 16,
					"outlettype" : [ "list", "list" ],
					"rows" : 16,
					"autosize" : 1,
					"id" : "obj-14",
					"scale" : 0,
					"presentation_rect" : [ 0.0, 0.0, 256.0, 768.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 256.0, 258.0, 258.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /example/grid/key",
					"fontname" : "Andale Mono",
					"outlettype" : [ "", "" ],
					"id" : "obj-13",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 32.0, 224.0, 176.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "bang", "bang" ],
					"id" : "obj-1",
					"args" : [ "/example" ],
					"name" : "serialosnoopy.maxpat",
					"offset" : [ -78.0, -62.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 32.0, 144.0, 331.0, 34.0 ],
					"numoutlets" : 3
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
