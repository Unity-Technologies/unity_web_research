struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut2D_Params : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_435 : f32;
  var x_447 : f32;
  var x_459 : f32;
  var x_600 : f32;
  var x_612 : f32;
  var x_624 : f32;
  var x_718 : f32;
  var x_730 : f32;
  var x_742 : f32;
  var x_789 : f32;
  var x_802 : f32;
  var x_814 : f32;
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
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  u_xlat2.y = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_130 : vec2<f32> = vs_TEXCOORD0;
  let x_131 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_141 : i32 = u_xlati_loop_1;
    let x_142 : i32 = u_xlati21;
    if ((x_141 < x_142)) {
    } else {
      break;
    }
    let x_146 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_146);
    let x_150 : f32 = u_xlat6.x;
    u_xlat6.x = (x_150 + 0.5f);
    let x_154 : f32 = u_xlat6.x;
    let x_156 : f32 = u_xlat1.x;
    u_xlat2.x = (x_154 / x_156);
    let x_159 : vec3<f32> = u_xlat8;
    let x_160 : vec2<f32> = vec2<f32>(x_159.x, x_159.y);
    let x_161 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat6;
    let x_167 : vec2<f32> = clamp(vec2<f32>(x_163.x, x_163.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_168 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
    let x_170 : vec4<f32> = u_xlat6;
    let x_173 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_175 : vec2<f32> = (vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_173, x_173));
    let x_176 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_185 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_183.x, x_183.y), 0.0f);
    u_xlat6 = x_185;
    let x_191 : vec3<f32> = u_xlat2;
    let x_193 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_191.x, x_191.y), 0.0f);
    let x_194 : vec3<f32> = vec3<f32>(x_193.x, x_193.y, x_193.z);
    let x_195 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : vec4<f32> = u_xlat6;
    let x_198 : vec4<f32> = u_xlat3;
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_197 * x_198) + x_200);
    let x_202 : vec4<f32> = u_xlat3;
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_202 + x_203);
    let x_205 : vec2<f32> = u_xlat7;
    let x_206 : vec3<f32> = u_xlat8;
    let x_208 : vec2<f32> = (x_205 + vec2<f32>(x_206.x, x_206.y));
    let x_209 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_208.x, x_208.y, x_209.z);

    continuing {
      let x_211 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_211 + 1i);
    }
  }
  let x_214 : vec4<f32> = u_xlat4;
  let x_215 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_214 / x_215);
  let x_217 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = (vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_225.x, x_225.y, x_225.x, x_225.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_231 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_231 * 0.5f);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : vec3<f32> = u_xlat2;
  let x_239 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_234.x, x_234.y, x_234.z, x_234.y) * vec4<f32>(x_236.x, x_236.x, x_236.x, x_236.x)) + vec4<f32>(x_239.x, x_239.y, x_239.x, x_239.y));
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_242, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_246 * vec4<f32>(x_248, x_248, x_248, x_248));
  let x_256 : vec4<f32> = u_xlat3;
  let x_258 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_256.x, x_256.y));
  u_xlat4 = x_258;
  let x_262 : vec4<f32> = u_xlat3;
  let x_264 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_262.z, x_262.w));
  u_xlat3 = x_264;
  let x_265 : vec4<f32> = u_xlat3;
  let x_266 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_265 + x_266);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = u_xlat2;
  let x_273 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_268.x, x_268.w, x_268.z, x_268.w) * vec4<f32>(x_270.x, x_270.x, x_270.x, x_270.x)) + vec4<f32>(x_273.x, x_273.y, x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_276, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_280 : vec4<f32> = u_xlat0;
  let x_282 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_280 * vec4<f32>(x_282, x_282, x_282, x_282));
  let x_288 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_288.x, x_288.y));
  u_xlat4 = x_290;
  let x_291 : vec4<f32> = u_xlat3;
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_291 + x_292);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_297.z, x_297.w));
  u_xlat0 = x_299;
  let x_300 : vec4<f32> = u_xlat0;
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_300 + x_301);
  let x_303 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_303 * vec4<f32>(x_306.y, x_306.y, x_306.y, x_306.y));
  let x_309 : vec2<f32> = vs_TEXCOORD0;
  let x_312 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_316 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_318 : vec2<f32> = ((x_309 * vec2<f32>(x_312.x, x_312.y)) + vec2<f32>(x_316.z, x_316.w));
  let x_319 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_318.x, x_318.y, x_319.z);
  let x_326 : vec3<f32> = u_xlat2;
  let x_328 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_326.x, x_326.y));
  let x_329 : vec3<f32> = vec3<f32>(x_328.x, x_328.y, x_328.z);
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat3;
  let x_342 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_344 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_342.z, x_342.z, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_347 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_350 : vec4<f32> = u_xlat0;
  let x_354 : vec3<f32> = x_51.x_Bloom_Color;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) * x_354);
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_359 : f32 = u_xlat0.w;
  u_xlat5.w = (x_359 * 0.25f);
  let x_362 : vec4<f32> = u_xlat1;
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_362 + x_363);
  let x_365 : vec4<f32> = u_xlat4;
  let x_367 : vec4<f32> = u_xlat3;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  u_xlat1.w = 0.0f;
  let x_373 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_373 + x_374);
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_376, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_380 : vec4<f32> = u_xlat0;
  let x_384 : vec3<f32> = (vec3<f32>(x_380.z, x_380.x, x_380.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = max(vec3<f32>(x_387.z, x_387.x, x_387.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_392 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat3;
  let x_396 : vec3<f32> = log2(vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat3;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat3;
  let x_408 : vec3<f32> = exp2(vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat3;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_426 : vec4<f32> = u_xlat0;
  let x_429 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_426.z, x_426.x, x_426.y, x_426.z));
  u_xlatb0 = vec3<bool>(x_429.x, x_429.y, x_429.z);
  let x_433 : bool = u_xlatb0.x;
  if (x_433) {
    let x_439 : f32 = u_xlat1.x;
    x_435 = x_439;
  } else {
    let x_442 : f32 = u_xlat3.x;
    x_435 = x_442;
  }
  let x_443 : f32 = x_435;
  u_xlat0.x = x_443;
  let x_446 : bool = u_xlatb0.y;
  if (x_446) {
    let x_451 : f32 = u_xlat1.y;
    x_447 = x_451;
  } else {
    let x_454 : f32 = u_xlat3.y;
    x_447 = x_454;
  }
  let x_455 : f32 = x_447;
  u_xlat0.y = x_455;
  let x_458 : bool = u_xlatb0.z;
  if (x_458) {
    let x_463 : f32 = u_xlat1.z;
    x_459 = x_463;
  } else {
    let x_466 : f32 = u_xlat3.z;
    x_459 = x_466;
  }
  let x_467 : f32 = x_459;
  u_xlat0.z = x_467;
  let x_469 : vec4<f32> = u_xlat0;
  let x_473 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_475 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_473.z, x_473.z, x_473.z));
  let x_476 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_479 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_479);
  let x_483 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_485 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(0.5f, 0.5f));
  let x_486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_485.x, x_486.y, x_486.z, x_485.y);
  let x_488 : vec4<f32> = u_xlat1;
  let x_491 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_494 : vec4<f32> = u_xlat1;
  let x_496 : vec2<f32> = ((vec2<f32>(x_488.y, x_488.z) * vec2<f32>(x_491.x, x_491.y)) + vec2<f32>(x_494.x, x_494.w));
  let x_497 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_497.x, x_496.x, x_496.y, x_497.w);
  let x_500 : f32 = u_xlat7.x;
  let x_502 : f32 = x_51.x_Lut2D_Params.y;
  let x_505 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_500 * x_502) + x_505);
  let x_513 : vec4<f32> = u_xlat1;
  let x_515 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_513.x, x_513.z));
  let x_516 : vec3<f32> = vec3<f32>(x_515.x, x_515.y, x_515.z);
  let x_517 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_520 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_520;
  let x_522 : vec2<f32> = u_xlat16;
  let x_523 : vec4<f32> = u_xlat1;
  let x_525 : vec2<f32> = (x_522 + vec2<f32>(x_523.x, x_523.z));
  let x_526 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_531.x, x_531.y));
  let x_534 : vec3<f32> = vec3<f32>(x_533.x, x_533.y, x_533.z);
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_538 : f32 = u_xlat0.x;
  let x_540 : f32 = x_51.x_Lut2D_Params.z;
  let x_543 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_538 * x_540) + -(x_543));
  let x_547 : vec4<f32> = u_xlat3;
  let x_550 : vec4<f32> = u_xlat1;
  let x_552 : vec3<f32> = (-(vec3<f32>(x_547.x, x_547.y, x_547.z)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat0;
  let x_557 : vec4<f32> = u_xlat1;
  let x_560 : vec4<f32> = u_xlat3;
  let x_562 : vec3<f32> = ((vec3<f32>(x_555.x, x_555.x, x_555.x) * vec3<f32>(x_557.x, x_557.y, x_557.z)) + vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec4<f32> = u_xlat0;
  let x_569 : vec3<f32> = (vec3<f32>(x_565.x, x_565.y, x_565.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_572.x, x_572.y, x_572.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_577 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_577 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_581 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_581), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_584 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_584);
  let x_586 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_586 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_590 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_590);
  let x_594 : vec4<f32> = u_xlat0;
  let x_596 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_594.x, x_594.y, x_594.z, x_594.x));
  u_xlatb0 = vec3<bool>(x_596.x, x_596.y, x_596.z);
  let x_599 : bool = u_xlatb0.x;
  if (x_599) {
    let x_604 : f32 = u_xlat1.x;
    x_600 = x_604;
  } else {
    let x_607 : f32 = u_xlat2.x;
    x_600 = x_607;
  }
  let x_608 : f32 = x_600;
  u_xlat0.x = x_608;
  let x_611 : bool = u_xlatb0.y;
  if (x_611) {
    let x_616 : f32 = u_xlat1.y;
    x_612 = x_616;
  } else {
    let x_619 : f32 = u_xlat2.y;
    x_612 = x_619;
  }
  let x_620 : f32 = x_612;
  u_xlat0.y = x_620;
  let x_623 : bool = u_xlatb0.z;
  if (x_623) {
    let x_628 : f32 = u_xlat1.z;
    x_624 = x_628;
  } else {
    let x_631 : f32 = u_xlat2.z;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat0.z = x_632;
  let x_634 : vec2<f32> = vs_TEXCOORD0;
  let x_636 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_640 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_642 : vec2<f32> = ((x_634 * vec2<f32>(x_636.x, x_636.y)) + vec2<f32>(x_640.z, x_640.w));
  let x_643 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_650.x, x_650.y));
  u_xlat1.x = x_652.w;
  let x_656 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_656 * 2.0f) + -1.0f);
  let x_661 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_661 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_667 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_667, 0.0f, 1.0f);
  let x_671 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_671 * 2.0f) + -1.0f);
  let x_676 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_676)) + 1.0f);
  let x_682 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_682);
  let x_686 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_686) + 1.0f);
  let x_691 : f32 = u_xlat1.x;
  let x_693 : f32 = u_xlat8.x;
  u_xlat1.x = (x_691 * x_693);
  let x_696 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_699 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_699.x, x_699.y, x_699.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_703 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_703);
  let x_705 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_705 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_707 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_707);
  let x_709 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_709 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_712 : vec4<f32> = u_xlat0;
  let x_714 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_712.x, x_712.y, x_712.z, x_712.x));
  u_xlatb0 = vec3<bool>(x_714.x, x_714.y, x_714.z);
  let x_717 : bool = u_xlatb0.x;
  if (x_717) {
    let x_722 : f32 = u_xlat8.x;
    x_718 = x_722;
  } else {
    let x_725 : f32 = u_xlat2.x;
    x_718 = x_725;
  }
  let x_726 : f32 = x_718;
  u_xlat0.x = x_726;
  let x_729 : bool = u_xlatb0.y;
  if (x_729) {
    let x_734 : f32 = u_xlat8.y;
    x_730 = x_734;
  } else {
    let x_737 : f32 = u_xlat2.y;
    x_730 = x_737;
  }
  let x_738 : f32 = x_730;
  u_xlat0.y = x_738;
  let x_741 : bool = u_xlatb0.z;
  if (x_741) {
    let x_746 : f32 = u_xlat8.z;
    x_742 = x_746;
  } else {
    let x_749 : f32 = u_xlat2.z;
    x_742 = x_749;
  }
  let x_750 : f32 = x_742;
  u_xlat0.z = x_750;
  let x_752 : vec4<f32> = u_xlat1;
  let x_757 : vec4<f32> = u_xlat0;
  let x_759 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.x, x_752.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat0;
  let x_764 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_765 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_767.x, x_767.y, x_767.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_770 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_770 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_772 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_772), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_775 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_775);
  let x_777 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_777 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_779 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_779);
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_781.x, x_781.y, x_781.z, x_781.x));
  u_xlatb0 = vec3<bool>(x_783.x, x_783.y, x_783.z);
  let x_788 : bool = u_xlatb0.x;
  if (x_788) {
    let x_793 : f32 = u_xlat1.x;
    x_789 = x_793;
  } else {
    let x_796 : f32 = u_xlat2.x;
    x_789 = x_796;
  }
  let x_797 : f32 = x_789;
  SV_Target0.x = x_797;
  let x_801 : bool = u_xlatb0.y;
  if (x_801) {
    let x_806 : f32 = u_xlat1.y;
    x_802 = x_806;
  } else {
    let x_809 : f32 = u_xlat2.y;
    x_802 = x_809;
  }
  let x_810 : f32 = x_802;
  SV_Target0.y = x_810;
  let x_813 : bool = u_xlatb0.z;
  if (x_813) {
    let x_818 : f32 = u_xlat1.z;
    x_814 = x_818;
  } else {
    let x_821 : f32 = u_xlat2.z;
    x_814 = x_821;
  }
  let x_822 : f32 = x_814;
  SV_Target0.z = x_822;
  let x_825 : f32 = u_xlat0.w;
  SV_Target0.w = x_825;
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

