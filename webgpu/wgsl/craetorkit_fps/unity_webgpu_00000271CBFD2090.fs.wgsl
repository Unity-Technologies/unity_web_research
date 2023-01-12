struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_362 : f32;
  var x_374 : f32;
  var x_386 : f32;
  var x_438 : f32;
  var x_451 : f32;
  var x_463 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_33 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_41 : vec2<f32> = u_xlat7;
  let x_42 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_41, x_42);
  let x_44 : f32 = u_xlat21;
  let x_46 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_44, x_44) * x_46);
  let x_48 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_48 * vec2<f32>(x_59.x, x_59.y));
  let x_66 : vec2<f32> = u_xlat7;
  let x_71 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_73 : vec2<f32> = (-(x_66) * vec2<f32>(x_71.z, x_71.w));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_80 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) * vec2<f32>(0.5f, 0.5f));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_81.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_83.x, x_83.y), vec2<f32>(x_85.x, x_85.y));
  let x_88 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_88);
  let x_92 : f32 = u_xlat21;
  u_xlati21 = i32(x_92);
  let x_94 : i32 = u_xlati21;
  u_xlati21 = max(x_94, 3i);
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_127;
  u_xlati_loop_1 = 0i;
  loop {
    let x_135 : i32 = u_xlati_loop_1;
    let x_136 : i32 = u_xlati21;
    if ((x_135 < x_136)) {
    } else {
      break;
    }
    let x_140 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_140);
    let x_144 : f32 = u_xlat16.x;
    u_xlat16.x = (x_144 + 0.5f);
    let x_148 : f32 = u_xlat16.x;
    let x_150 : f32 = u_xlat1.x;
    u_xlat2.x = (x_148 / x_150);
    let x_153 : vec2<f32> = u_xlat8;
    u_xlat16 = x_153;
    let x_154 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_154, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_158 : vec2<f32> = u_xlat16;
    let x_160 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_158 * vec2<f32>(x_160, x_160));
    let x_169 : vec2<f32> = u_xlat16;
    let x_170 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_169, 0.0f);
    u_xlat6 = x_170;
    let x_176 : vec3<f32> = u_xlat2;
    let x_178 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_176.x, x_176.y), 0.0f);
    let x_179 : vec3<f32> = vec3<f32>(x_178.x, x_178.y, x_178.z);
    let x_180 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat6;
    let x_183 : vec4<f32> = u_xlat3;
    let x_185 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_182 * x_183) + x_185);
    let x_187 : vec4<f32> = u_xlat3;
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_187 + x_188);
    let x_190 : vec2<f32> = u_xlat7;
    let x_191 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_190 + x_191);

    continuing {
      let x_193 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_193 + 1i);
    }
  }
  let x_196 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec3<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec2<f32> = vs_TEXCOORD1;
  let x_208 : vec4<f32> = x_51.x_Grain_Params2;
  let x_212 : vec4<f32> = x_51.x_Grain_Params2;
  let x_214 : vec2<f32> = ((x_205 * vec2<f32>(x_208.x, x_208.y)) + vec2<f32>(x_212.z, x_212.w));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_215.w);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_222.x, x_222.y));
  let x_225 : vec3<f32> = vec3<f32>(x_224.x, x_224.y, x_224.z);
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec3<f32> = u_xlat0;
  u_xlat2 = x_228;
  let x_229 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_229, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(x_233, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_239 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_239);
  let x_243 : f32 = x_51.x_Grain_Params1.x;
  let x_244 : f32 = u_xlat21;
  u_xlat21 = ((x_243 * -(x_244)) + 1.0f);
  let x_248 : vec3<f32> = u_xlat0;
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec3<f32> = (x_248 * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat1;
  let x_257 : f32 = x_51.x_Grain_Params1.y;
  let x_259 : f32 = x_51.x_Grain_Params1.y;
  let x_261 : f32 = x_51.x_Grain_Params1.y;
  let x_263 : vec3<f32> = (vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_257, x_259, x_261));
  let x_264 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat1;
  let x_268 : f32 = u_xlat21;
  let x_271 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268, x_268, x_268)) + x_271);
  let x_273 : vec2<f32> = vs_TEXCOORD0;
  let x_275 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_279 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_281 : vec2<f32> = ((x_273 * vec2<f32>(x_275.x, x_275.y)) + vec2<f32>(x_279.z, x_279.w));
  let x_282 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_289.x, x_289.y));
  u_xlat21 = x_291.w;
  let x_293 : f32 = u_xlat21;
  u_xlat21 = ((x_293 * 2.0f) + -1.0f);
  let x_296 : f32 = u_xlat21;
  u_xlat1.x = ((x_296 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_302 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_302, 0.0f, 1.0f);
  let x_306 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_306 * 2.0f) + -1.0f);
  let x_310 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_310)) + 1.0f);
  let x_314 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_314);
  let x_316 : f32 = u_xlat21;
  u_xlat21 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat21;
  let x_321 : f32 = u_xlat1.x;
  u_xlat21 = (x_319 * x_321);
  let x_323 : vec3<f32> = u_xlat0;
  let x_326 : vec3<f32> = (x_323 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_329), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_334 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_334);
  let x_336 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_336 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_340 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_340);
  let x_342 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_342 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_354 : vec3<f32> = u_xlat0;
  let x_357 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_354.x, x_354.y, x_354.z, x_354.x));
  u_xlatb0 = vec3<bool>(x_357.x, x_357.y, x_357.z);
  let x_361 : bool = u_xlatb0.x;
  if (x_361) {
    let x_366 : f32 = u_xlat1.x;
    x_362 = x_366;
  } else {
    let x_369 : f32 = u_xlat2.x;
    x_362 = x_369;
  }
  let x_370 : f32 = x_362;
  u_xlat0.x = x_370;
  let x_373 : bool = u_xlatb0.y;
  if (x_373) {
    let x_378 : f32 = u_xlat1.y;
    x_374 = x_378;
  } else {
    let x_381 : f32 = u_xlat2.y;
    x_374 = x_381;
  }
  let x_382 : f32 = x_374;
  u_xlat0.y = x_382;
  let x_385 : bool = u_xlatb0.z;
  if (x_385) {
    let x_390 : f32 = u_xlat1.z;
    x_386 = x_390;
  } else {
    let x_393 : f32 = u_xlat2.z;
    x_386 = x_393;
  }
  let x_394 : f32 = x_386;
  u_xlat0.z = x_394;
  let x_396 : f32 = u_xlat21;
  let x_401 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_396, x_396, x_396) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_401);
  let x_403 : vec3<f32> = u_xlat0;
  let x_406 : vec3<f32> = (x_403 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_409 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_413 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_413 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_417 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_417), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_420 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_420);
  let x_422 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_422 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_426 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_426);
  let x_430 : vec3<f32> = u_xlat0;
  let x_432 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_430.x, x_430.y, x_430.z, x_430.x));
  u_xlatb0 = vec3<bool>(x_432.x, x_432.y, x_432.z);
  let x_437 : bool = u_xlatb0.x;
  if (x_437) {
    let x_442 : f32 = u_xlat1.x;
    x_438 = x_442;
  } else {
    let x_445 : f32 = u_xlat2.x;
    x_438 = x_445;
  }
  let x_446 : f32 = x_438;
  SV_Target0.x = x_446;
  let x_450 : bool = u_xlatb0.y;
  if (x_450) {
    let x_455 : f32 = u_xlat1.y;
    x_451 = x_455;
  } else {
    let x_458 : f32 = u_xlat2.y;
    x_451 = x_458;
  }
  let x_459 : f32 = x_451;
  SV_Target0.y = x_459;
  let x_462 : bool = u_xlatb0.z;
  if (x_462) {
    let x_467 : f32 = u_xlat1.z;
    x_463 = x_467;
  } else {
    let x_470 : f32 = u_xlat2.z;
    x_463 = x_470;
  }
  let x_471 : f32 = x_463;
  SV_Target0.z = x_471;
  let x_474 : f32 = u_xlat1.w;
  SV_Target0.w = x_474;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

