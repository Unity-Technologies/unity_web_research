struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(7) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : f32;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlatb14 : bool;
  var u_xlatb1 : bool;
  var x_225 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_471 : f32;
  var x_483 : f32;
  var x_496 : f32;
  var x_553 : f32;
  var x_566 : f32;
  var x_578 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Amount;
  let x_44 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_79);
  let x_81 : bool = u_xlatb5;
  if (x_81) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Amount;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat5.x;
    u_xlat3 = cos(x_102);
    let x_105 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3;
    u_xlat5.x = (x_105 / x_106);
    let x_113 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_113);
    let x_116 : f32 = u_xlat5.x;
    let x_117 : f32 = u_xlat9;
    u_xlat5.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec3<f32> = u_xlat5;
    let x_127 : vec2<f32> = u_xlat8;
    let x_128 : vec2<f32> = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
    let x_129 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_128.x, x_128.y, x_129.z);
  } else {
    let x_134 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_134);
    let x_136 : f32 = u_xlat13;
    let x_138 : f32 = x_25.x_Distortion_Amount.x;
    u_xlat13 = (x_136 * x_138);
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_25.x_Distortion_Amount.y;
    u_xlat1.x = (x_141 * x_143);
    let x_147 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_147), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_153), 1.0f);
    let x_156 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_156);
    let x_158 : f32 = u_xlat6;
    let x_160 : f32 = u_xlat2.x;
    u_xlat2.x = (x_158 * x_160);
    let x_164 : f32 = u_xlat2.x;
    let x_166 : f32 = u_xlat2.x;
    u_xlat6 = (x_164 * x_166);
    let x_169 : f32 = u_xlat6;
    u_xlat10 = ((x_169 * 0.0208351f) + -0.085133001f);
    let x_174 : f32 = u_xlat6;
    let x_175 : f32 = u_xlat10;
    u_xlat10 = ((x_174 * x_175) + 0.180141002f);
    let x_179 : f32 = u_xlat6;
    let x_180 : f32 = u_xlat10;
    u_xlat10 = ((x_179 * x_180) + -0.330299497f);
    let x_184 : f32 = u_xlat6;
    let x_185 : f32 = u_xlat10;
    u_xlat6 = ((x_184 * x_185) + 0.999866009f);
    let x_189 : f32 = u_xlat6;
    let x_191 : f32 = u_xlat2.x;
    u_xlat10 = (x_189 * x_191);
    let x_195 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_195));
    let x_198 : f32 = u_xlat10;
    u_xlat10 = ((x_198 * -2.0f) + 1.570796371f);
    let x_203 : bool = u_xlatb14;
    let x_204 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_204, x_203);
    let x_207 : f32 = u_xlat2.x;
    let x_208 : f32 = u_xlat6;
    let x_210 : f32 = u_xlat10;
    u_xlat2.x = ((x_207 * x_208) + x_210);
    let x_214 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_214, 1.0f);
    let x_219 : f32 = u_xlat1.x;
    let x_221 : f32 = u_xlat1.x;
    u_xlatb1 = (x_219 < -(x_221));
    let x_224 : bool = u_xlatb1;
    if (x_224) {
      let x_229 : f32 = u_xlat2.x;
      x_225 = -(x_229);
    } else {
      let x_233 : f32 = u_xlat2.x;
      x_225 = x_233;
    }
    let x_234 : f32 = x_225;
    u_xlat1.x = x_234;
    let x_236 : f32 = u_xlat13;
    let x_238 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_236 * x_238) + -1.0f);
    let x_242 : vec4<f32> = u_xlat0;
    let x_244 : vec4<f32> = u_xlat1;
    let x_247 : vec2<f32> = u_xlat8;
    let x_248 : vec2<f32> = ((vec2<f32>(x_242.x, x_242.y) * vec2<f32>(x_244.x, x_244.x)) + x_247);
    let x_249 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_248.x, x_248.y, x_249.z);
  }
  let x_262 : vec2<f32> = vs_TEXCOORD0;
  let x_263 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_262);
  u_xlat0.x = x_263.x;
  let x_271 : vec3<f32> = u_xlat5;
  let x_273 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_271.x, x_271.y));
  u_xlat1 = x_273;
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat1;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.x, x_274.x) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat1;
  let x_284 : f32 = x_25.x_PostExposure;
  let x_286 : f32 = x_25.x_PostExposure;
  let x_288 : f32 = x_25.x_PostExposure;
  let x_290 : f32 = x_25.x_PostExposure;
  let x_291 : vec4<f32> = vec4<f32>(x_284, x_286, x_288, x_290);
  u_xlat0 = (x_281 * vec4<f32>(x_291.x, x_291.y, x_291.z, x_291.w));
  let x_298 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_306 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat0;
  let x_310 : vec3<f32> = log2(vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat0;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = clamp(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat0;
  let x_335 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_337 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(x_335.y, x_335.y, x_335.y));
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : f32 = x_25.x_Lut3D_Params.x;
  u_xlat1.x = (x_341 * 0.5f);
  let x_344 : vec4<f32> = u_xlat0;
  let x_347 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_350 : vec4<f32> = u_xlat1;
  let x_352 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_347.x, x_347.x, x_347.x)) + vec3<f32>(x_350.x, x_350.x, x_350.x));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec3<f32> = vec3<f32>(x_365.x, x_365.y, x_365.z);
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec2<f32> = vs_TEXCOORD0;
  let x_372 : vec4<f32> = x_25.x_Dithering_Coords;
  let x_376 : vec4<f32> = x_25.x_Dithering_Coords;
  let x_378 : vec2<f32> = ((x_369 * vec2<f32>(x_372.x, x_372.y)) + vec2<f32>(x_376.z, x_376.w));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_386.x, x_386.y));
  u_xlat1.x = x_388.w;
  let x_392 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_392 * 2.0f) + -1.0f);
  let x_398 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_398 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_404 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_404, 0.0f, 1.0f);
  let x_408 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_408 * 2.0f) + -1.0f);
  let x_413 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_413)) + 1.0f);
  let x_419 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_419);
  let x_423 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_423) + 1.0f);
  let x_428 : f32 = u_xlat1.x;
  let x_430 : f32 = u_xlat5.x;
  u_xlat1.x = (x_428 * x_430);
  let x_433 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_438.x, x_438.y, x_438.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_444 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_444);
  let x_446 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_446 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_450 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_450);
  let x_452 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_452 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_464 : vec4<f32> = u_xlat0;
  let x_467 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_464.x, x_464.y, x_464.z, x_464.x));
  u_xlatb0 = vec3<bool>(x_467.x, x_467.y, x_467.z);
  let x_470 : bool = u_xlatb0.x;
  if (x_470) {
    let x_475 : f32 = u_xlat5.x;
    x_471 = x_475;
  } else {
    let x_478 : f32 = u_xlat2.x;
    x_471 = x_478;
  }
  let x_479 : f32 = x_471;
  u_xlat0.x = x_479;
  let x_482 : bool = u_xlatb0.y;
  if (x_482) {
    let x_487 : f32 = u_xlat5.y;
    x_483 = x_487;
  } else {
    let x_490 : f32 = u_xlat2.y;
    x_483 = x_490;
  }
  let x_491 : f32 = x_483;
  u_xlat0.y = x_491;
  let x_495 : bool = u_xlatb0.z;
  if (x_495) {
    let x_500 : f32 = u_xlat5.z;
    x_496 = x_500;
  } else {
    let x_503 : f32 = u_xlat2.z;
    x_496 = x_503;
  }
  let x_504 : f32 = x_496;
  u_xlat0.z = x_504;
  let x_506 : vec4<f32> = u_xlat1;
  let x_511 : vec4<f32> = u_xlat0;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.x, x_506.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat0;
  let x_520 : vec3<f32> = (vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_523.x, x_523.y, x_523.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_528 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_528 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_532), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_535 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_535);
  let x_537 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_537 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_541 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_541);
  let x_545 : vec4<f32> = u_xlat0;
  let x_547 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_545.x, x_545.y, x_545.z, x_545.x));
  u_xlatb0 = vec3<bool>(x_547.x, x_547.y, x_547.z);
  let x_552 : bool = u_xlatb0.x;
  if (x_552) {
    let x_557 : f32 = u_xlat1.x;
    x_553 = x_557;
  } else {
    let x_560 : f32 = u_xlat2.x;
    x_553 = x_560;
  }
  let x_561 : f32 = x_553;
  SV_Target0.x = x_561;
  let x_565 : bool = u_xlatb0.y;
  if (x_565) {
    let x_570 : f32 = u_xlat1.y;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat2.y;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  SV_Target0.y = x_574;
  let x_577 : bool = u_xlatb0.z;
  if (x_577) {
    let x_582 : f32 = u_xlat1.z;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat2.z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  SV_Target0.z = x_586;
  let x_589 : f32 = u_xlat0.w;
  SV_Target0.w = x_589;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

