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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb21 : bool;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_378 : f32;
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
    let x_136 : i32 = u_xlati_loop_1;
    let x_137 : i32 = u_xlati21;
    if ((x_136 < x_137)) {
    } else {
      break;
    }
    let x_141 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_141);
    let x_145 : f32 = u_xlat16.x;
    u_xlat16.x = (x_145 + 0.5f);
    let x_149 : f32 = u_xlat16.x;
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = (x_149 / x_151);
    let x_154 : vec2<f32> = u_xlat8;
    u_xlat16 = x_154;
    let x_155 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_155, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_159 : vec2<f32> = u_xlat16;
    let x_162 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_159 * vec2<f32>(x_162, x_162));
    let x_171 : vec2<f32> = u_xlat16;
    let x_172 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_171, 0.0f);
    u_xlat6 = x_172;
    let x_178 : vec4<f32> = u_xlat2;
    let x_180 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_178.x, x_178.y), 0.0f);
    let x_181 : vec3<f32> = vec3<f32>(x_180.x, x_180.y, x_180.z);
    let x_182 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat6;
    let x_185 : vec4<f32> = u_xlat3;
    let x_187 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_184 * x_185) + x_187);
    let x_189 : vec4<f32> = u_xlat3;
    let x_190 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_189 + x_190);
    let x_192 : vec2<f32> = u_xlat7;
    let x_193 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_192 + x_193);

    continuing {
      let x_195 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_195 + 1i);
    }
  }
  let x_197 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_197 / x_198);
  let x_200 : vec3<f32> = u_xlat0;
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_200.x, x_200.x, x_200.x) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_209 : f32 = x_51.x_Vignette_Mode;
  u_xlatb21 = (x_209 < 0.5f);
  let x_211 : bool = u_xlatb21;
  if (x_211) {
    let x_214 : vec2<f32> = vs_TEXCOORD0;
    let x_218 : vec2<f32> = x_51.x_Vignette_Center;
    let x_220 : vec2<f32> = (x_214 + -(x_218));
    let x_221 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat1;
    let x_228 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_230 : vec2<f32> = (abs(vec2<f32>(x_223.y, x_223.x)) * vec2<f32>(x_228.x, x_228.x));
    let x_231 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_231.x, x_230.x, x_230.y, x_231.w);
    let x_234 : f32 = x_51.x_ScreenParams.x;
    let x_236 : f32 = x_51.x_ScreenParams.y;
    u_xlat21 = (x_234 / x_236);
    let x_238 : f32 = u_xlat21;
    u_xlat21 = (x_238 + -1.0f);
    let x_241 : f32 = x_51.x_Vignette_Settings.w;
    let x_242 : f32 = u_xlat21;
    u_xlat21 = ((x_241 * x_242) + 1.0f);
    let x_245 : f32 = u_xlat21;
    let x_247 : f32 = u_xlat1.z;
    u_xlat1.x = (x_245 * x_247);
    let x_250 : vec4<f32> = u_xlat1;
    let x_251 : vec2<f32> = vec2<f32>(x_250.x, x_250.y);
    let x_252 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_252.z, x_252.w);
    let x_254 : vec4<f32> = u_xlat1;
    let x_258 : vec2<f32> = clamp(vec2<f32>(x_254.x, x_254.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_259 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat1;
    let x_263 : vec2<f32> = log2(vec2<f32>(x_261.x, x_261.y));
    let x_264 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
    let x_266 : vec4<f32> = u_xlat1;
    let x_269 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_271 : vec2<f32> = (vec2<f32>(x_266.x, x_266.y) * vec2<f32>(x_269.z, x_269.z));
    let x_272 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
    let x_274 : vec4<f32> = u_xlat1;
    let x_276 : vec2<f32> = exp2(vec2<f32>(x_274.x, x_274.y));
    let x_277 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat1;
    let x_281 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_279.x, x_279.y), vec2<f32>(x_281.x, x_281.y));
    let x_284 : f32 = u_xlat21;
    u_xlat21 = (-(x_284) + 1.0f);
    let x_287 : f32 = u_xlat21;
    u_xlat21 = max(x_287, 0.0f);
    let x_289 : f32 = u_xlat21;
    u_xlat21 = log2(x_289);
    let x_291 : f32 = u_xlat21;
    let x_293 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat21 = (x_291 * x_293);
    let x_295 : f32 = u_xlat21;
    u_xlat21 = exp2(x_295);
    let x_300 : vec3<f32> = x_51.x_Vignette_Color;
    let x_303 : vec3<f32> = (-(x_300) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_304 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : f32 = u_xlat21;
    let x_308 : vec4<f32> = u_xlat1;
    let x_312 : vec3<f32> = x_51.x_Vignette_Color;
    let x_313 : vec3<f32> = ((vec3<f32>(x_306, x_306, x_306) * vec3<f32>(x_308.x, x_308.y, x_308.z)) + x_312);
    let x_314 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec3<f32> = u_xlat0;
    let x_317 : vec4<f32> = u_xlat1;
    let x_319 : vec3<f32> = (x_316 * vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_320 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_323 : f32 = u_xlat1.w;
    u_xlat1.x = (x_323 + -1.0f);
    let x_326 : f32 = u_xlat21;
    let x_328 : f32 = u_xlat1.x;
    u_xlat2.w = ((x_326 * x_328) + 1.0f);
  } else {
    let x_338 : vec2<f32> = vs_TEXCOORD0;
    let x_339 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_338);
    u_xlat21 = x_339.w;
    let x_341 : f32 = u_xlat21;
    u_xlat1.x = (x_341 * 0.077399381f);
    let x_345 : f32 = u_xlat21;
    u_xlat8.x = (x_345 + 0.055f);
    let x_350 : f32 = u_xlat8.x;
    u_xlat8.x = (x_350 * 0.947867334f);
    let x_355 : f32 = u_xlat8.x;
    u_xlat8.x = max(abs(x_355), 1.1920929e-07f);
    let x_361 : f32 = u_xlat8.x;
    u_xlat8.x = log2(x_361);
    let x_365 : f32 = u_xlat8.x;
    u_xlat8.x = (x_365 * 2.400000095f);
    let x_370 : f32 = u_xlat8.x;
    u_xlat8.x = exp2(x_370);
    let x_374 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_374);
    let x_376 : bool = u_xlatb21;
    if (x_376) {
      let x_382 : f32 = u_xlat1.x;
      x_378 = x_382;
    } else {
      let x_385 : f32 = u_xlat8.x;
      x_378 = x_385;
    }
    let x_386 : f32 = x_378;
    u_xlat21 = x_386;
    let x_388 : vec3<f32> = x_51.x_Vignette_Color;
    let x_390 : vec3<f32> = (-(x_388) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_391 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
    let x_393 : f32 = u_xlat21;
    let x_395 : vec4<f32> = u_xlat1;
    let x_399 : vec3<f32> = x_51.x_Vignette_Color;
    let x_400 : vec3<f32> = ((vec3<f32>(x_393, x_393, x_393) * vec3<f32>(x_395.x, x_395.y, x_395.z)) + x_399);
    let x_401 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_403 : vec3<f32> = u_xlat0;
    let x_404 : vec4<f32> = u_xlat1;
    let x_407 : vec3<f32> = u_xlat0;
    let x_409 : vec3<f32> = ((x_403 * vec3<f32>(x_404.x, x_404.y, x_404.z)) + -(x_407));
    let x_410 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
    let x_414 : f32 = x_51.x_Vignette_Opacity;
    let x_416 : vec4<f32> = u_xlat1;
    let x_419 : vec3<f32> = u_xlat0;
    let x_420 : vec3<f32> = ((vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_416.x, x_416.y, x_416.z)) + x_419);
    let x_421 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_424 : f32 = u_xlat1.w;
    u_xlat0.x = (x_424 + -1.0f);
    let x_427 : f32 = u_xlat21;
    let x_429 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_427 * x_429) + 1.0f);
  }
  let x_436 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_436);
  let x_438 : bool = u_xlatb0;
  if (x_438) {
    let x_441 : vec4<f32> = u_xlat2;
    u_xlat0 = vec3<f32>(x_441.x, x_441.y, x_441.z);
    let x_443 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_443, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_447 : vec3<f32> = u_xlat0;
    u_xlat2.w = dot(x_447, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_456 : vec4<f32> = u_xlat2;
  SV_Target0 = x_456;
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

