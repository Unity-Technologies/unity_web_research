struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(12)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb21 : bool;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_370 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat7;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_87);
  let x_91 : f32 = u_xlat21;
  u_xlati21 = i32(x_91);
  let x_93 : i32 = u_xlati21;
  u_xlati21 = max(x_93, 3i);
  let x_95 : i32 = u_xlati21;
  u_xlati21 = min(x_95, 16i);
  let x_98 : i32 = u_xlati21;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat7;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
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
  let x_126 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_126;
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
    let x_161 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_158 * vec2<f32>(x_161, x_161));
    let x_170 : vec2<f32> = u_xlat16;
    let x_171 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_170, 0.0f);
    u_xlat6 = x_171;
    let x_177 : vec4<f32> = u_xlat2;
    let x_179 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_177.x, x_177.y), 0.0f);
    let x_180 : vec3<f32> = vec3<f32>(x_179.x, x_179.y, x_179.z);
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_184 : vec4<f32> = u_xlat3;
    let x_186 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_183 * x_184) + x_186);
    let x_188 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_188 + x_189);
    let x_191 : vec2<f32> = u_xlat7;
    let x_192 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_191 + x_192);

    continuing {
      let x_194 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_194 + 1i);
    }
  }
  let x_196 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_210 : f32 = x_51.x_Vignette_Mode;
  u_xlatb21 = (x_210 < 0.5f);
  let x_212 : bool = u_xlatb21;
  if (x_212) {
    let x_215 : vec2<f32> = vs_TEXCOORD0;
    let x_219 : vec2<f32> = x_51.x_Vignette_Center;
    let x_221 : vec2<f32> = (x_215 + -(x_219));
    let x_222 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_222.z, x_222.w);
    let x_224 : vec4<f32> = u_xlat1;
    let x_229 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_231 : vec2<f32> = (abs(vec2<f32>(x_224.y, x_224.x)) * vec2<f32>(x_229.x, x_229.x));
    let x_232 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_232.x, x_231.x, x_231.y, x_232.w);
    let x_235 : f32 = x_51.x_ScreenParams.x;
    let x_237 : f32 = x_51.x_ScreenParams.y;
    u_xlat21 = (x_235 / x_237);
    let x_239 : f32 = u_xlat21;
    u_xlat21 = (x_239 + -1.0f);
    let x_242 : f32 = x_51.x_Vignette_Settings.w;
    let x_243 : f32 = u_xlat21;
    u_xlat21 = ((x_242 * x_243) + 1.0f);
    let x_246 : f32 = u_xlat21;
    let x_248 : f32 = u_xlat1.z;
    u_xlat1.x = (x_246 * x_248);
    let x_251 : vec4<f32> = u_xlat1;
    let x_252 : vec2<f32> = vec2<f32>(x_251.x, x_251.y);
    let x_253 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_253.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat1;
    let x_259 : vec2<f32> = clamp(vec2<f32>(x_255.x, x_255.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_260 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_260.z, x_260.w);
    let x_262 : vec4<f32> = u_xlat1;
    let x_264 : vec2<f32> = log2(vec2<f32>(x_262.x, x_262.y));
    let x_265 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
    let x_267 : vec4<f32> = u_xlat1;
    let x_270 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_272 : vec2<f32> = (vec2<f32>(x_267.x, x_267.y) * vec2<f32>(x_270.z, x_270.z));
    let x_273 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_272.x, x_272.y, x_273.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat1;
    let x_277 : vec2<f32> = exp2(vec2<f32>(x_275.x, x_275.y));
    let x_278 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_277.x, x_277.y, x_278.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat1;
    let x_282 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_280.x, x_280.y), vec2<f32>(x_282.x, x_282.y));
    let x_285 : f32 = u_xlat21;
    u_xlat21 = (-(x_285) + 1.0f);
    let x_288 : f32 = u_xlat21;
    u_xlat21 = max(x_288, 0.0f);
    let x_290 : f32 = u_xlat21;
    u_xlat21 = log2(x_290);
    let x_292 : f32 = u_xlat21;
    let x_294 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat21 = (x_292 * x_294);
    let x_296 : f32 = u_xlat21;
    u_xlat21 = exp2(x_296);
    let x_301 : vec3<f32> = x_51.x_Vignette_Color;
    let x_304 : vec3<f32> = (-(x_301) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_305 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : f32 = u_xlat21;
    let x_309 : vec4<f32> = u_xlat1;
    let x_313 : vec3<f32> = x_51.x_Vignette_Color;
    let x_314 : vec3<f32> = ((vec3<f32>(x_307, x_307, x_307) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + x_313);
    let x_315 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : vec4<f32> = u_xlat0;
    let x_319 : vec4<f32> = u_xlat1;
    let x_321 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(x_319.x, x_319.y, x_319.z));
    let x_322 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
    let x_325 : f32 = u_xlat1.w;
    u_xlat2.x = (x_325 + -1.0f);
    let x_328 : f32 = u_xlat21;
    let x_330 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_328 * x_330) + 1.0f);
  } else {
    let x_340 : vec2<f32> = vs_TEXCOORD0;
    let x_341 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_340);
    u_xlat21 = x_341.w;
    let x_343 : f32 = u_xlat21;
    u_xlat3.x = (x_343 * 0.077399381f);
    let x_348 : f32 = u_xlat21;
    u_xlat10 = (x_348 + 0.055f);
    let x_351 : f32 = u_xlat10;
    u_xlat10 = (x_351 * 0.947867334f);
    let x_354 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_354), 1.1920929e-07f);
    let x_358 : f32 = u_xlat10;
    u_xlat10 = log2(x_358);
    let x_360 : f32 = u_xlat10;
    u_xlat10 = (x_360 * 2.400000095f);
    let x_363 : f32 = u_xlat10;
    u_xlat10 = exp2(x_363);
    let x_366 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_366);
    let x_368 : bool = u_xlatb21;
    if (x_368) {
      let x_374 : f32 = u_xlat3.x;
      x_370 = x_374;
    } else {
      let x_376 : f32 = u_xlat10;
      x_370 = x_376;
    }
    let x_377 : f32 = x_370;
    u_xlat21 = x_377;
    let x_379 : vec3<f32> = x_51.x_Vignette_Color;
    let x_381 : vec3<f32> = (-(x_379) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_382 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
    let x_384 : f32 = u_xlat21;
    let x_386 : vec4<f32> = u_xlat3;
    let x_390 : vec3<f32> = x_51.x_Vignette_Color;
    let x_391 : vec3<f32> = ((vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z)) + x_390);
    let x_392 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_394 : vec4<f32> = u_xlat0;
    let x_396 : vec4<f32> = u_xlat3;
    let x_399 : vec4<f32> = u_xlat0;
    let x_402 : vec3<f32> = ((vec3<f32>(x_394.x, x_394.y, x_394.z) * vec3<f32>(x_396.x, x_396.y, x_396.z)) + -(vec3<f32>(x_399.x, x_399.y, x_399.z)));
    let x_403 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_407 : f32 = x_51.x_Vignette_Opacity;
    let x_409 : vec4<f32> = u_xlat3;
    let x_412 : vec4<f32> = u_xlat0;
    let x_414 : vec3<f32> = ((vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z)) + vec3<f32>(x_412.x, x_412.y, x_412.z));
    let x_415 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_418 : f32 = u_xlat1.w;
    u_xlat0.x = (x_418 + -1.0f);
    let x_421 : f32 = u_xlat21;
    let x_423 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_421 * x_423) + 1.0f);
  }
  let x_428 : vec2<f32> = vs_TEXCOORD1;
  let x_431 : vec4<f32> = x_51.x_Grain_Params2;
  let x_435 : vec4<f32> = x_51.x_Grain_Params2;
  let x_437 : vec2<f32> = ((x_428 * vec2<f32>(x_431.x, x_431.y)) + vec2<f32>(x_435.z, x_435.w));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_447 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_445.x, x_445.y));
  let x_448 : vec3<f32> = vec3<f32>(x_447.x, x_447.y, x_447.z);
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat1;
  let x_452 : vec3<f32> = vec3<f32>(x_451.x, x_451.y, x_451.z);
  let x_453 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat3;
  let x_459 : vec3<f32> = clamp(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_460 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_469 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_469);
  let x_473 : f32 = x_51.x_Grain_Params1.x;
  let x_474 : f32 = u_xlat21;
  u_xlat21 = ((x_473 * -(x_474)) + 1.0f);
  let x_478 : vec4<f32> = u_xlat0;
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat0;
  let x_488 : f32 = x_51.x_Grain_Params1.y;
  let x_490 : f32 = x_51.x_Grain_Params1.y;
  let x_492 : f32 = x_51.x_Grain_Params1.y;
  let x_494 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_488, x_490, x_492));
  let x_495 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat0;
  let x_499 : f32 = u_xlat21;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec3<f32> = ((vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_499, x_499, x_499)) + vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat2;
  let x_511 : f32 = x_51.x_PostExposure;
  let x_513 : f32 = x_51.x_PostExposure;
  let x_515 : f32 = x_51.x_PostExposure;
  let x_517 : f32 = x_51.x_PostExposure;
  let x_518 : vec4<f32> = vec4<f32>(x_511, x_513, x_515, x_517);
  u_xlat0 = (vec4<f32>(x_507.w, x_507.x, x_507.y, x_507.z) * vec4<f32>(x_518.x, x_518.y, x_518.z, x_518.w));
  let x_525 : vec4<f32> = u_xlat0;
  let x_532 : vec3<f32> = ((vec3<f32>(x_525.y, x_525.z, x_525.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat1;
  let x_537 : vec3<f32> = log2(vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat1;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.x, x_540.y, x_540.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_548 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat1;
  let x_554 : vec3<f32> = clamp(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat1;
  let x_561 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_563 : vec3<f32> = (vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(x_561.y, x_561.y, x_561.y));
  let x_564 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_568 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat22 = (x_568 * 0.5f);
  let x_570 : vec4<f32> = u_xlat1;
  let x_573 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_576 : f32 = u_xlat22;
  let x_578 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_573.x, x_573.x, x_573.x)) + vec3<f32>(x_576, x_576, x_576));
  let x_579 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_589 : vec4<f32> = u_xlat1;
  let x_591 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec3<f32> = vec3<f32>(x_591.x, x_591.y, x_591.z);
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_593.x, x_592.x, x_592.y, x_592.z);
  let x_598 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_598);
  let x_600 : bool = u_xlatb1;
  if (x_600) {
    let x_603 : vec4<f32> = u_xlat0;
    let x_604 : vec3<f32> = vec3<f32>(x_603.y, x_603.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
    let x_607 : vec4<f32> = u_xlat1;
    let x_611 : vec3<f32> = clamp(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_612 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_614 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_620 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_620.y, x_620.z, x_620.w, x_620.x);
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

