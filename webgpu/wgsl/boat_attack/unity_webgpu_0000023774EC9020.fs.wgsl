diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Lut_Params : vec4<f32>,
  /* @offset(64) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(80) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(96) */
  x_Vignette_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb10 : vec2<bool>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_345 : f32;
  var x_354 : f32;
  var x_496 : f32;
  var x_547 : f32;
  var x_574 : f32;
  var x_598 : f32;
  var x_609 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_999 : f32;
  var x_1011 : f32;
  var x_1023 : f32;
  var x_1168 : f32;
  var x_1180 : f32;
  var x_1192 : f32;
  var x_1323 : f32;
  var x_1336 : f32;
  var x_1348 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_BlitTexture_TexelSize;
  let x_27 : vec4<f32> = x_14.x_RTHandleScale;
  let x_29 : vec2<f32> = ((-(vec2<f32>(x_19.x, x_19.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_27.x, x_27.y));
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_29.x, x_29.y, x_30.z);
  let x_32 : vec3<f32> = u_xlat0;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec2<f32> = min(vec2<f32>(x_32.x, x_32.y), x_36);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_50 : vec3<f32> = u_xlat0;
  let x_57 : f32 = x_14.x_GlobalMipBias.x;
  let x_58 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_50.x, x_50.y), x_57);
  u_xlat0 = vec3<f32>(x_58.x, x_58.y, x_58.z);
  let x_67 : f32 = x_14.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_67);
  let x_69 : bool = u_xlatb15;
  if (x_69) {
    let x_74 : vec2<f32> = vs_TEXCOORD0;
    let x_76 : vec4<f32> = x_14.x_Vignette_Params2;
    let x_79 : vec2<f32> = (x_74 + -(vec2<f32>(x_76.x, x_76.y)));
    let x_80 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
    let x_82 : vec4<f32> = u_xlat1;
    let x_86 : vec4<f32> = x_14.x_Vignette_Params2;
    let x_88 : vec2<f32> = (abs(vec2<f32>(x_82.x, x_82.y)) * vec2<f32>(x_86.z, x_86.z));
    let x_89 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_89.x, x_88.x, x_88.y, x_89.w);
    let x_94 : f32 = u_xlat1.y;
    let x_98 : f32 = x_14.x_Vignette_Params1.w;
    u_xlat1.x = (x_94 * x_98);
    let x_102 : vec4<f32> = u_xlat1;
    let x_104 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_102.x, x_102.z), vec2<f32>(x_104.x, x_104.z));
    let x_107 : f32 = u_xlat15;
    u_xlat15 = (-(x_107) + 1.0f);
    let x_111 : f32 = u_xlat15;
    u_xlat15 = max(x_111, 0.0f);
    let x_113 : f32 = u_xlat15;
    u_xlat15 = log2(x_113);
    let x_115 : f32 = u_xlat15;
    let x_117 : f32 = x_14.x_Vignette_Params2.w;
    u_xlat15 = (x_115 * x_117);
    let x_119 : f32 = u_xlat15;
    u_xlat15 = exp2(x_119);
    let x_122 : vec4<f32> = x_14.x_Vignette_Params1;
    let x_126 : vec3<f32> = (-(vec3<f32>(x_122.x, x_122.y, x_122.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_127 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
    let x_129 : f32 = u_xlat15;
    let x_131 : vec4<f32> = u_xlat1;
    let x_135 : vec4<f32> = x_14.x_Vignette_Params1;
    let x_137 : vec3<f32> = ((vec3<f32>(x_129, x_129, x_129) * vec3<f32>(x_131.x, x_131.y, x_131.z)) + vec3<f32>(x_135.x, x_135.y, x_135.z));
    let x_138 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
    let x_140 : vec3<f32> = u_xlat0;
    let x_141 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_140 * vec3<f32>(x_141.x, x_141.y, x_141.z));
  }
  let x_144 : vec3<f32> = u_xlat0;
  let x_147 : vec4<f32> = x_14.x_Lut_Params;
  u_xlat0 = (x_144 * vec3<f32>(x_147.w, x_147.w, x_147.w));
  let x_155 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_155);
  let x_162 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_162);
  let x_169 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_169);
  let x_173 : f32 = u_xlat6.y;
  let x_175 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_173, x_175);
  let x_179 : f32 = u_xlat6.z;
  let x_181 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_179, x_181);
  let x_186 : f32 = u_xlat6.y;
  let x_188 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_186, x_188);
  let x_192 : f32 = u_xlat6.z;
  let x_194 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_192, x_194);
  let x_197 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_197.x, x_197.y, x_197.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_204 : f32 = u_xlat0.x;
  let x_207 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat0.x;
  let x_213 : f32 = u_xlat0.z;
  u_xlat0.x = (x_211 / x_213);
  let x_216 : vec3<f32> = u_xlat6;
  let x_219 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_216.y, x_216.x, x_216.z)) + vec3<f32>(x_219.z, x_219.y, x_219.x));
  let x_222 : vec3<f32> = u_xlat5;
  let x_224 : vec3<f32> = u_xlat6;
  let x_226 : vec2<f32> = (vec2<f32>(x_222.x, x_222.y) * vec2<f32>(x_224.z, x_224.y));
  let x_227 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_226.x, x_226.y, x_227.z);
  let x_230 : f32 = u_xlat5.y;
  let x_232 : f32 = u_xlat5.x;
  u_xlat5.x = (x_230 + x_232);
  let x_236 : f32 = u_xlat6.x;
  let x_238 : f32 = u_xlat5.z;
  let x_241 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_236 * x_238) + x_241);
  let x_245 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_245, 0.0f);
  let x_249 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_249);
  let x_255 : f32 = u_xlat6.y;
  let x_257 : f32 = u_xlat6.z;
  u_xlat10.x = (x_255 + x_257);
  let x_261 : f32 = u_xlat6.x;
  let x_263 : f32 = u_xlat10.x;
  u_xlat10.x = (x_261 + x_263);
  let x_267 : f32 = u_xlat5.x;
  let x_271 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_267 * 1.75f) + x_271);
  let x_275 : f32 = u_xlat0.x;
  u_xlat15 = (x_275 + -0.40000000596046447754f);
  let x_278 : f32 = u_xlat15;
  u_xlat1.x = (x_278 * 2.5f);
  let x_283 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_283)) + 1.0f);
  let x_289 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_289, 0.0f);
  let x_292 : f32 = u_xlat15;
  u_xlatb15 = (x_292 >= 0.0f);
  let x_294 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_294);
  let x_298 : f32 = u_xlat1.x;
  let x_301 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_298) * x_301) + 1.0f);
  let x_305 : f32 = u_xlat15;
  let x_307 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_305 * x_307) + 1.0f);
  let x_311 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_311.x, x_311.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_320 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_320);
  let x_324 : f32 = u_xlat5.x;
  u_xlatb5 = (x_324 >= 0.47999998927116394043f);
  let x_329 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_329);
  let x_333 : f32 = u_xlat10.x;
  u_xlat10.x = (x_333 + -0.5f);
  let x_338 : f32 = u_xlat10.x;
  let x_340 : f32 = u_xlat10.y;
  u_xlat10.x = (x_338 * x_340);
  let x_343 : bool = u_xlatb5;
  if (x_343) {
    x_345 = 0.0f;
  } else {
    let x_350 : f32 = u_xlat10.x;
    x_345 = x_350;
  }
  let x_351 : f32 = x_345;
  u_xlat5.x = x_351;
  let x_353 : bool = u_xlatb1;
  if (x_353) {
    let x_358 : f32 = u_xlat10.y;
    x_354 = x_358;
  } else {
    let x_361 : f32 = u_xlat5.x;
    x_354 = x_361;
  }
  let x_362 : f32 = x_354;
  u_xlat5.x = x_362;
  let x_365 : f32 = u_xlat5.x;
  u_xlat5.x = (x_365 + 1.0f);
  let x_369 : vec3<f32> = u_xlat5;
  let x_371 : vec3<f32> = u_xlat6;
  let x_372 : vec3<f32> = (vec3<f32>(x_369.x, x_369.x, x_369.x) * x_371);
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_373.x, x_372.x, x_372.y, x_372.z);
  let x_378 : vec4<f32> = u_xlat2;
  let x_380 : vec4<f32> = u_xlat2;
  let x_383 : vec4<bool> = (vec4<f32>(x_378.z, x_378.w, x_378.z, x_378.w) == vec4<f32>(x_380.y, x_380.z, x_380.y, x_380.z));
  u_xlatb10 = vec2<bool>(x_383.x, x_383.y);
  let x_386 : bool = u_xlatb10.y;
  let x_388 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_386 & x_388);
  let x_392 : f32 = u_xlat6.y;
  let x_394 : f32 = u_xlat5.x;
  let x_397 : f32 = u_xlat2.w;
  u_xlat15 = ((x_392 * x_394) + -(x_397));
  let x_400 : f32 = u_xlat15;
  u_xlat15 = (x_400 * 1.73205077648162841797f);
  let x_404 : f32 = u_xlat2.y;
  let x_408 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_404 * 2.0f) + -(x_408));
  let x_413 : f32 = u_xlat6.z;
  let x_416 : f32 = u_xlat5.x;
  let x_419 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_413) * x_416) + x_419);
  let x_423 : f32 = u_xlat15;
  let x_426 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_423), abs(x_426));
  let x_431 : f32 = u_xlat15;
  let x_434 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_431), abs(x_434));
  let x_437 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_437);
  let x_439 : f32 = u_xlat16;
  let x_441 : f32 = u_xlat11.x;
  u_xlat11.x = (x_439 * x_441);
  let x_445 : f32 = u_xlat11.x;
  let x_447 : f32 = u_xlat11.x;
  u_xlat16 = (x_445 * x_447);
  let x_450 : f32 = u_xlat16;
  u_xlat3.x = ((x_450 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_456 : f32 = u_xlat16;
  let x_458 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_456 * x_458) + 0.18014100193977355957f);
  let x_463 : f32 = u_xlat16;
  let x_465 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_463 * x_465) + -0.33029949665069580078f);
  let x_470 : f32 = u_xlat16;
  let x_472 : f32 = u_xlat3.x;
  u_xlat16 = ((x_470 * x_472) + 0.99986600875854492188f);
  let x_476 : f32 = u_xlat16;
  let x_478 : f32 = u_xlat11.x;
  u_xlat3.x = (x_476 * x_478);
  let x_483 : f32 = u_xlat1.x;
  let x_485 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_483) < abs(x_485));
  let x_489 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_489 * -2.0f) + 1.57079637050628662109f);
  let x_495 : bool = u_xlatb8;
  if (x_495) {
    let x_500 : f32 = u_xlat3.x;
    x_496 = x_500;
  } else {
    x_496 = 0.0f;
  }
  let x_502 : f32 = x_496;
  u_xlat3.x = x_502;
  let x_505 : f32 = u_xlat11.x;
  let x_506 : f32 = u_xlat16;
  let x_509 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_505 * x_506) + x_509);
  let x_514 : f32 = u_xlat1.x;
  let x_516 : f32 = u_xlat1.x;
  u_xlatb16 = (x_514 < -(x_516));
  let x_519 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_519);
  let x_522 : f32 = u_xlat16;
  let x_524 : f32 = u_xlat11.x;
  u_xlat11.x = (x_522 + x_524);
  let x_527 : f32 = u_xlat15;
  let x_529 : f32 = u_xlat1.x;
  u_xlat16 = min(x_527, x_529);
  let x_531 : f32 = u_xlat15;
  let x_533 : f32 = u_xlat1.x;
  u_xlat15 = max(x_531, x_533);
  let x_535 : f32 = u_xlat16;
  let x_536 : f32 = u_xlat16;
  u_xlatb1 = (x_535 < -(x_536));
  let x_539 : f32 = u_xlat15;
  let x_540 : f32 = u_xlat15;
  u_xlatb15 = (x_539 >= -(x_540));
  let x_543 : bool = u_xlatb15;
  let x_544 : bool = u_xlatb1;
  u_xlatb15 = (x_543 & x_544);
  let x_546 : bool = u_xlatb15;
  if (x_546) {
    let x_551 : f32 = u_xlat11.x;
    x_547 = -(x_551);
  } else {
    let x_555 : f32 = u_xlat11.x;
    x_547 = x_555;
  }
  let x_556 : f32 = x_547;
  u_xlat15 = x_556;
  let x_557 : f32 = u_xlat15;
  u_xlat15 = (x_557 * 57.295780181884765625f);
  let x_561 : bool = u_xlatb10.x;
  let x_562 : f32 = u_xlat15;
  u_xlat10.x = select(x_562, 0.0f, x_561);
  let x_566 : f32 = u_xlat10.x;
  u_xlatb15 = (x_566 < 0.0f);
  let x_569 : f32 = u_xlat10.x;
  u_xlat1.x = (x_569 + 360.0f);
  let x_573 : bool = u_xlatb15;
  if (x_573) {
    let x_578 : f32 = u_xlat1.x;
    x_574 = x_578;
  } else {
    let x_581 : f32 = u_xlat10.x;
    x_574 = x_581;
  }
  let x_582 : f32 = x_574;
  u_xlat10.x = x_582;
  let x_585 : f32 = u_xlat10.x;
  u_xlatb15 = (x_585 < -180.0f);
  let x_590 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_590);
  let x_592 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_592.x, x_592.x) + vec2<f32>(360.0f, -360.0f));
  let x_597 : bool = u_xlatb1;
  if (x_597) {
    let x_602 : f32 = u_xlat11.y;
    x_598 = x_602;
  } else {
    let x_605 : f32 = u_xlat10.x;
    x_598 = x_605;
  }
  let x_606 : f32 = x_598;
  u_xlat10.x = x_606;
  let x_608 : bool = u_xlatb15;
  if (x_608) {
    let x_613 : f32 = u_xlat11.x;
    x_609 = x_613;
  } else {
    let x_616 : f32 = u_xlat10.x;
    x_609 = x_616;
  }
  let x_617 : f32 = x_609;
  u_xlat10.x = x_617;
  let x_620 : f32 = u_xlat10.x;
  u_xlat10.x = (x_620 * 0.01481481455266475677f);
  let x_625 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_625)) + 1.0f);
  let x_631 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_631, 0.0f);
  let x_635 : f32 = u_xlat10.x;
  u_xlat15 = ((x_635 * -2.0f) + 3.0f);
  let x_640 : f32 = u_xlat10.x;
  let x_642 : f32 = u_xlat10.x;
  u_xlat10.x = (x_640 * x_642);
  let x_646 : f32 = u_xlat10.x;
  let x_647 : f32 = u_xlat15;
  u_xlat10.x = (x_646 * x_647);
  let x_651 : f32 = u_xlat10.x;
  let x_653 : f32 = u_xlat10.x;
  u_xlat10.x = (x_651 * x_653);
  let x_657 : f32 = u_xlat0.x;
  let x_659 : f32 = u_xlat10.x;
  u_xlat0.x = (x_657 * x_659);
  let x_663 : f32 = u_xlat6.x;
  let x_666 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_663) * x_666) + 0.02999999932944774628f);
  let x_672 : f32 = u_xlat5.x;
  let x_674 : f32 = u_xlat0.x;
  u_xlat0.x = (x_672 * x_674);
  let x_678 : f32 = u_xlat0.x;
  let x_682 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_678 * 0.18000000715255737305f) + x_682);
  let x_689 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_689.x, x_689.z, x_689.w));
  let x_697 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_697.x, x_697.z, x_697.w));
  let x_705 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_705.x, x_705.z, x_705.w));
  let x_709 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_709, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_712 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_712, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_718 : f32 = u_xlat15;
  let x_721 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_718, x_718, x_718)) + x_721);
  let x_723 : vec3<f32> = u_xlat0;
  let x_727 : f32 = u_xlat15;
  u_xlat0 = ((x_723 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_727, x_727, x_727));
  let x_730 : vec3<f32> = u_xlat0;
  let x_733 : vec3<f32> = (x_730 + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_734 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec3<f32> = u_xlat0;
  let x_737 : vec4<f32> = u_xlat1;
  let x_742 : vec3<f32> = ((x_736 * vec3<f32>(x_737.x, x_737.y, x_737.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec3<f32> = u_xlat0;
  let x_751 : vec3<f32> = ((x_745 * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec3<f32> = u_xlat0;
  let x_755 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_754 * vec3<f32>(x_755.x, x_755.y, x_755.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_761 : vec4<f32> = u_xlat1;
  let x_763 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_761.x, x_761.y, x_761.z) / x_763);
  let x_769 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_769);
  let x_776 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_776);
  let x_783 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_783);
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_786.x, x_786.y, x_786.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_791 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_791, 0.00009999999747378752f);
  let x_794 : vec4<f32> = u_xlat1;
  let x_796 : vec3<f32> = u_xlat0;
  let x_798 : vec2<f32> = (vec2<f32>(x_794.x, x_794.y) / vec2<f32>(x_796.x, x_796.x));
  let x_799 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_798.x, x_798.y, x_799.z);
  let x_802 : f32 = u_xlat1.y;
  u_xlat15 = max(x_802, 0.0f);
  let x_804 : f32 = u_xlat15;
  u_xlat15 = min(x_804, 65504.0f);
  let x_807 : f32 = u_xlat15;
  u_xlat15 = log2(x_807);
  let x_809 : f32 = u_xlat15;
  u_xlat15 = (x_809 * 0.98110002279281616211f);
  let x_812 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_812);
  let x_816 : f32 = u_xlat0.y;
  u_xlat15 = max(x_816, 0.00009999999747378752f);
  let x_819 : f32 = u_xlat1.y;
  let x_820 : f32 = u_xlat15;
  u_xlat15 = (x_819 / x_820);
  let x_823 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_823) + 1.0f);
  let x_827 : f32 = u_xlat0.y;
  let x_829 : f32 = u_xlat16;
  u_xlat0.z = (-(x_827) + x_829);
  let x_832 : f32 = u_xlat15;
  let x_834 : vec3<f32> = u_xlat0;
  let x_836 : vec2<f32> = (vec2<f32>(x_832, x_832) * vec2<f32>(x_834.x, x_834.z));
  let x_837 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_836.x, x_837.y, x_836.y, x_837.w);
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_851 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_859 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_863 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_863, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_865 : f32 = u_xlat15;
  let x_868 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_865, x_865, x_865)) + x_868);
  let x_870 : vec3<f32> = u_xlat0;
  let x_874 : f32 = u_xlat15;
  u_xlat0 = ((x_870 * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_874, x_874, x_874));
  let x_877 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_877);
  let x_880 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_880);
  let x_883 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_883);
  let x_890 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_898 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_906 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_914 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), x_914);
  let x_918 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_918, 0.0f, 1.0f);
  let x_925 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), x_925);
  let x_929 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_929, 0.0f, 1.0f);
  let x_936 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), x_936);
  let x_940 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_940, 0.0f, 1.0f);
  let x_948 : f32 = x_14.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_948);
  let x_952 : bool = u_xlatb0.x;
  if (x_952) {
    let x_955 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_960 : vec4<f32> = u_xlat1;
    let x_962 : vec3<f32> = log2(vec3<f32>(x_960.x, x_960.y, x_960.z));
    let x_963 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_965 : vec4<f32> = u_xlat2;
    let x_969 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_970 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
    let x_972 : vec4<f32> = u_xlat2;
    let x_974 : vec3<f32> = exp2(vec3<f32>(x_972.x, x_972.y, x_972.z));
    let x_975 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
    let x_977 : vec4<f32> = u_xlat2;
    let x_984 : vec3<f32> = ((vec3<f32>(x_977.x, x_977.y, x_977.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_985 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
    let x_990 : vec4<f32> = u_xlat1;
    let x_992 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_990.x, x_990.y, x_990.z, x_990.x));
    u_xlatb3 = vec3<bool>(x_992.x, x_992.y, x_992.z);
    let x_996 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_996;
    let x_998 : bool = u_xlatb3.x;
    if (x_998) {
      let x_1003 : f32 = u_xlat0.x;
      x_999 = x_1003;
    } else {
      let x_1006 : f32 = u_xlat2.x;
      x_999 = x_1006;
    }
    let x_1007 : f32 = x_999;
    hlslcc_movcTemp.x = x_1007;
    let x_1010 : bool = u_xlatb3.y;
    if (x_1010) {
      let x_1015 : f32 = u_xlat0.y;
      x_1011 = x_1015;
    } else {
      let x_1018 : f32 = u_xlat2.y;
      x_1011 = x_1018;
    }
    let x_1019 : f32 = x_1011;
    hlslcc_movcTemp.y = x_1019;
    let x_1022 : bool = u_xlatb3.z;
    if (x_1022) {
      let x_1027 : f32 = u_xlat0.z;
      x_1023 = x_1027;
    } else {
      let x_1030 : f32 = u_xlat2.z;
      x_1023 = x_1030;
    }
    let x_1031 : f32 = x_1023;
    hlslcc_movcTemp.z = x_1031;
    let x_1033 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1033;
    let x_1034 : vec3<f32> = u_xlat0;
    let x_1037 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1039 : vec3<f32> = (vec3<f32>(x_1034.z, x_1034.x, x_1034.y) * vec3<f32>(x_1037.z, x_1037.z, x_1037.z));
    let x_1040 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
    let x_1043 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1043);
    let x_1046 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1048 : vec2<f32> = (vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(0.5f, 0.5f));
    let x_1049 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1048.x, x_1049.y, x_1049.z, x_1048.y);
    let x_1051 : vec4<f32> = u_xlat2;
    let x_1054 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1057 : vec4<f32> = u_xlat2;
    let x_1059 : vec2<f32> = ((vec2<f32>(x_1051.y, x_1051.z) * vec2<f32>(x_1054.x, x_1054.y)) + vec2<f32>(x_1057.x, x_1057.w));
    let x_1060 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1060.x, x_1059.x, x_1059.y, x_1060.w);
    let x_1062 : f32 = u_xlat15;
    let x_1064 : f32 = x_14.x_UserLut_Params.y;
    let x_1067 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1062 * x_1064) + x_1067);
    let x_1074 : vec4<f32> = u_xlat2;
    let x_1076 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1074.x, x_1074.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1076.x, x_1076.y, x_1076.z);
    let x_1080 : f32 = x_14.x_UserLut_Params.y;
    u_xlat4.x = x_1080;
    u_xlat4.y = 0.0f;
    let x_1083 : vec4<f32> = u_xlat2;
    let x_1085 : vec2<f32> = u_xlat4;
    let x_1086 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.z) + x_1085);
    let x_1087 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
    let x_1092 : vec4<f32> = u_xlat2;
    let x_1094 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1092.x, x_1092.y), 0.0f);
    let x_1095 : vec3<f32> = vec3<f32>(x_1094.x, x_1094.y, x_1094.z);
    let x_1096 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
    let x_1099 : f32 = u_xlat0.z;
    let x_1101 : f32 = x_14.x_UserLut_Params.z;
    let x_1103 : f32 = u_xlat15;
    u_xlat15 = ((x_1099 * x_1101) + -(x_1103));
    let x_1106 : vec3<f32> = u_xlat3;
    let x_1108 : vec4<f32> = u_xlat2;
    let x_1110 : vec3<f32> = (-(x_1106) + vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
    let x_1111 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
    let x_1113 : f32 = u_xlat15;
    let x_1115 : vec4<f32> = u_xlat2;
    let x_1118 : vec3<f32> = u_xlat3;
    let x_1119 : vec3<f32> = ((vec3<f32>(x_1113, x_1113, x_1113) * vec3<f32>(x_1115.x, x_1115.y, x_1115.z)) + x_1118);
    let x_1120 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
    let x_1122 : vec3<f32> = u_xlat0;
    let x_1124 : vec4<f32> = u_xlat2;
    let x_1126 : vec3<f32> = (-(x_1122) + vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
    let x_1127 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
    let x_1130 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1132 : vec4<f32> = u_xlat2;
    let x_1135 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1130.w, x_1130.w, x_1130.w) * vec3<f32>(x_1132.x, x_1132.y, x_1132.z)) + x_1135);
    let x_1137 : vec3<f32> = u_xlat0;
    let x_1140 : vec3<f32> = (x_1137 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1141 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
    let x_1143 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1143 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1147 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1147 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1151 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1151));
    let x_1154 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1154 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1158 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1158);
    let x_1162 : vec3<f32> = u_xlat0;
    let x_1164 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1162.x));
    u_xlatb0 = vec3<bool>(x_1164.x, x_1164.y, x_1164.z);
    let x_1167 : bool = u_xlatb0.x;
    if (x_1167) {
      let x_1172 : f32 = u_xlat2.x;
      x_1168 = x_1172;
    } else {
      let x_1175 : f32 = u_xlat3.x;
      x_1168 = x_1175;
    }
    let x_1176 : f32 = x_1168;
    u_xlat1.x = x_1176;
    let x_1179 : bool = u_xlatb0.y;
    if (x_1179) {
      let x_1184 : f32 = u_xlat2.y;
      x_1180 = x_1184;
    } else {
      let x_1187 : f32 = u_xlat3.y;
      x_1180 = x_1187;
    }
    let x_1188 : f32 = x_1180;
    u_xlat1.y = x_1188;
    let x_1191 : bool = u_xlatb0.z;
    if (x_1191) {
      let x_1196 : f32 = u_xlat2.z;
      x_1192 = x_1196;
    } else {
      let x_1199 : f32 = u_xlat3.z;
      x_1192 = x_1199;
    }
    let x_1200 : f32 = x_1192;
    u_xlat1.z = x_1200;
  }
  let x_1202 : vec4<f32> = u_xlat1;
  let x_1205 : vec4<f32> = x_14.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1202.z, x_1202.x, x_1202.y) * vec3<f32>(x_1205.z, x_1205.z, x_1205.z));
  let x_1209 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1209);
  let x_1213 : vec4<f32> = x_14.x_Lut_Params;
  let x_1215 : vec2<f32> = (vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(0.5f, 0.5f));
  let x_1216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
  let x_1218 : vec3<f32> = u_xlat0;
  let x_1221 : vec4<f32> = x_14.x_Lut_Params;
  let x_1224 : vec4<f32> = u_xlat1;
  let x_1226 : vec2<f32> = ((vec2<f32>(x_1218.y, x_1218.z) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.x, x_1224.y));
  let x_1227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1227.x, x_1226.x, x_1226.y, x_1227.w);
  let x_1230 : f32 = u_xlat0.x;
  let x_1232 : f32 = x_14.x_Lut_Params.y;
  let x_1235 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1230 * x_1232) + x_1235);
  let x_1242 : vec4<f32> = u_xlat2;
  let x_1244 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1242.x, x_1242.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1244.x, x_1244.y, x_1244.z);
  let x_1247 : f32 = x_14.x_Lut_Params.y;
  u_xlat1.x = x_1247;
  u_xlat1.y = 0.0f;
  let x_1250 : vec4<f32> = u_xlat1;
  let x_1252 : vec4<f32> = u_xlat2;
  let x_1254 : vec2<f32> = (vec2<f32>(x_1250.x, x_1250.y) + vec2<f32>(x_1252.x, x_1252.z));
  let x_1255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1255.w);
  let x_1260 : vec4<f32> = u_xlat1;
  let x_1262 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1260.x, x_1260.y), 0.0f);
  let x_1263 : vec3<f32> = vec3<f32>(x_1262.x, x_1262.y, x_1262.z);
  let x_1264 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1263.z);
  let x_1267 : f32 = u_xlat1.z;
  let x_1269 : f32 = x_14.x_Lut_Params.z;
  let x_1272 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1267 * x_1269) + -(x_1272));
  let x_1276 : vec3<f32> = u_xlat5;
  let x_1278 : vec4<f32> = u_xlat1;
  let x_1280 : vec3<f32> = (-(x_1276) + vec3<f32>(x_1278.x, x_1278.y, x_1278.w));
  let x_1281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec3<f32> = u_xlat0;
  let x_1285 : vec4<f32> = u_xlat1;
  let x_1288 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1283.x, x_1283.x, x_1283.x) * vec3<f32>(x_1285.x, x_1285.y, x_1285.z)) + x_1288);
  let x_1290 : vec3<f32> = u_xlat0;
  let x_1291 : vec3<f32> = (x_1290 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1292 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1294 : vec3<f32> = u_xlat0;
  let x_1296 : vec3<f32> = log2(abs(x_1294));
  let x_1297 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1299 : vec4<f32> = u_xlat2;
  let x_1301 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.y, x_1299.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
  let x_1304 : vec4<f32> = u_xlat2;
  let x_1306 : vec3<f32> = exp2(vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat2;
  let x_1312 : vec3<f32> = ((vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec3<f32> = u_xlat0;
  let x_1317 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1315.x));
  u_xlatb0 = vec3<bool>(x_1317.x, x_1317.y, x_1317.z);
  let x_1322 : bool = u_xlatb0.x;
  if (x_1322) {
    let x_1327 : f32 = u_xlat1.x;
    x_1323 = x_1327;
  } else {
    let x_1330 : f32 = u_xlat2.x;
    x_1323 = x_1330;
  }
  let x_1331 : f32 = x_1323;
  SV_Target0.x = x_1331;
  let x_1335 : bool = u_xlatb0.y;
  if (x_1335) {
    let x_1340 : f32 = u_xlat1.y;
    x_1336 = x_1340;
  } else {
    let x_1343 : f32 = u_xlat2.y;
    x_1336 = x_1343;
  }
  let x_1344 : f32 = x_1336;
  SV_Target0.y = x_1344;
  let x_1347 : bool = u_xlatb0.z;
  if (x_1347) {
    let x_1352 : f32 = u_xlat1.z;
    x_1348 = x_1352;
  } else {
    let x_1355 : f32 = u_xlat2.z;
    x_1348 = x_1355;
  }
  let x_1356 : f32 = x_1348;
  SV_Target0.z = x_1356;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


