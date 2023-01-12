struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(6) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(7) var sampler_Vignette_Mask : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var x_376 : f32;
  var u_xlatb0 : bool;
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
  let x_199 : vec3<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_208 : f32 = x_51.x_Vignette_Mode;
  u_xlatb21 = (x_208 < 0.5f);
  let x_210 : bool = u_xlatb21;
  if (x_210) {
    let x_213 : vec2<f32> = vs_TEXCOORD0;
    let x_217 : vec2<f32> = x_51.x_Vignette_Center;
    let x_219 : vec2<f32> = (x_213 + -(x_217));
    let x_220 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat1;
    let x_227 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_229 : vec2<f32> = (abs(vec2<f32>(x_222.y, x_222.x)) * vec2<f32>(x_227.x, x_227.x));
    let x_230 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_230.x, x_229.x, x_229.y, x_230.w);
    let x_233 : f32 = x_51.x_ScreenParams.x;
    let x_235 : f32 = x_51.x_ScreenParams.y;
    u_xlat21 = (x_233 / x_235);
    let x_237 : f32 = u_xlat21;
    u_xlat21 = (x_237 + -1.0f);
    let x_240 : f32 = x_51.x_Vignette_Settings.w;
    let x_241 : f32 = u_xlat21;
    u_xlat21 = ((x_240 * x_241) + 1.0f);
    let x_244 : f32 = u_xlat21;
    let x_246 : f32 = u_xlat1.z;
    u_xlat1.x = (x_244 * x_246);
    let x_249 : vec4<f32> = u_xlat1;
    let x_250 : vec2<f32> = vec2<f32>(x_249.x, x_249.y);
    let x_251 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_251.z, x_251.w);
    let x_253 : vec4<f32> = u_xlat1;
    let x_257 : vec2<f32> = clamp(vec2<f32>(x_253.x, x_253.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_258 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_257.x, x_257.y, x_258.z, x_258.w);
    let x_260 : vec4<f32> = u_xlat1;
    let x_262 : vec2<f32> = log2(vec2<f32>(x_260.x, x_260.y));
    let x_263 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat1;
    let x_268 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_270 : vec2<f32> = (vec2<f32>(x_265.x, x_265.y) * vec2<f32>(x_268.z, x_268.z));
    let x_271 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_271.z, x_271.w);
    let x_273 : vec4<f32> = u_xlat1;
    let x_275 : vec2<f32> = exp2(vec2<f32>(x_273.x, x_273.y));
    let x_276 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
    let x_278 : vec4<f32> = u_xlat1;
    let x_280 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_278.x, x_278.y), vec2<f32>(x_280.x, x_280.y));
    let x_283 : f32 = u_xlat21;
    u_xlat21 = (-(x_283) + 1.0f);
    let x_286 : f32 = u_xlat21;
    u_xlat21 = max(x_286, 0.0f);
    let x_288 : f32 = u_xlat21;
    u_xlat21 = log2(x_288);
    let x_290 : f32 = u_xlat21;
    let x_292 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat21 = (x_290 * x_292);
    let x_294 : f32 = u_xlat21;
    u_xlat21 = exp2(x_294);
    let x_299 : vec3<f32> = x_51.x_Vignette_Color;
    let x_302 : vec3<f32> = (-(x_299) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_303 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
    let x_305 : f32 = u_xlat21;
    let x_307 : vec4<f32> = u_xlat1;
    let x_311 : vec3<f32> = x_51.x_Vignette_Color;
    let x_312 : vec3<f32> = ((vec3<f32>(x_305, x_305, x_305) * vec3<f32>(x_307.x, x_307.y, x_307.z)) + x_311);
    let x_313 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
    let x_315 : vec3<f32> = u_xlat0;
    let x_316 : vec4<f32> = u_xlat1;
    let x_318 : vec3<f32> = (x_315 * vec3<f32>(x_316.x, x_316.y, x_316.z));
    let x_319 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_322 : f32 = u_xlat1.w;
    u_xlat1.x = (x_322 + -1.0f);
    let x_325 : f32 = u_xlat21;
    let x_327 : f32 = u_xlat1.x;
    u_xlat2.w = ((x_325 * x_327) + 1.0f);
  } else {
    let x_337 : vec2<f32> = vs_TEXCOORD0;
    let x_338 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_337);
    u_xlat21 = x_338.w;
    let x_340 : f32 = u_xlat21;
    u_xlat1.x = (x_340 * 0.077399381f);
    let x_344 : f32 = u_xlat21;
    u_xlat8.x = (x_344 + 0.055f);
    let x_349 : f32 = u_xlat8.x;
    u_xlat8.x = (x_349 * 0.947867334f);
    let x_354 : f32 = u_xlat8.x;
    u_xlat8.x = max(abs(x_354), 1.1920929e-07f);
    let x_360 : f32 = u_xlat8.x;
    u_xlat8.x = log2(x_360);
    let x_364 : f32 = u_xlat8.x;
    u_xlat8.x = (x_364 * 2.400000095f);
    let x_369 : f32 = u_xlat8.x;
    u_xlat8.x = exp2(x_369);
    let x_373 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_373);
    let x_375 : bool = u_xlatb21;
    if (x_375) {
      let x_380 : f32 = u_xlat1.x;
      x_376 = x_380;
    } else {
      let x_383 : f32 = u_xlat8.x;
      x_376 = x_383;
    }
    let x_384 : f32 = x_376;
    u_xlat21 = x_384;
    let x_386 : vec3<f32> = x_51.x_Vignette_Color;
    let x_388 : vec3<f32> = (-(x_386) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_389 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    let x_391 : f32 = u_xlat21;
    let x_393 : vec4<f32> = u_xlat1;
    let x_397 : vec3<f32> = x_51.x_Vignette_Color;
    let x_398 : vec3<f32> = ((vec3<f32>(x_391, x_391, x_391) * vec3<f32>(x_393.x, x_393.y, x_393.z)) + x_397);
    let x_399 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
    let x_401 : vec3<f32> = u_xlat0;
    let x_402 : vec4<f32> = u_xlat1;
    let x_405 : vec3<f32> = u_xlat0;
    let x_407 : vec3<f32> = ((x_401 * vec3<f32>(x_402.x, x_402.y, x_402.z)) + -(x_405));
    let x_408 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
    let x_412 : f32 = x_51.x_Vignette_Opacity;
    let x_414 : vec4<f32> = u_xlat1;
    let x_417 : vec3<f32> = u_xlat0;
    let x_418 : vec3<f32> = ((vec3<f32>(x_412, x_412, x_412) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
    let x_419 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_422 : f32 = u_xlat1.w;
    u_xlat0.x = (x_422 + -1.0f);
    let x_425 : f32 = u_xlat21;
    let x_427 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_425 * x_427) + 1.0f);
  }
  let x_434 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_434);
  let x_436 : bool = u_xlatb0;
  if (x_436) {
    let x_439 : vec4<f32> = u_xlat2;
    u_xlat0 = vec3<f32>(x_439.x, x_439.y, x_439.z);
    let x_441 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_441, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_445 : vec3<f32> = u_xlat0;
    u_xlat2.w = dot(x_445, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_454 : vec4<f32> = u_xlat2;
  SV_Target0 = x_454;
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

