struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
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
  let x_213 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_213 / x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
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
  let x_311 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_315 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_317 : vec2<f32> = ((x_309 * vec2<f32>(x_311.x, x_311.y)) + vec2<f32>(x_315.z, x_315.w));
  let x_318 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_317.x, x_317.y, x_318.z);
  let x_325 : vec3<f32> = u_xlat2;
  let x_327 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_325.x, x_325.y));
  let x_328 : vec3<f32> = vec3<f32>(x_327.x, x_327.y, x_327.z);
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_331 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_335 : vec4<f32> = u_xlat3;
  let x_338 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_338.z, x_338.z, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  u_xlat3.w = 0.0f;
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_344 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_347 : vec4<f32> = u_xlat0;
  let x_351 : vec3<f32> = x_51.x_Bloom_Color;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) * x_351);
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = u_xlat0.w;
  u_xlat5.w = (x_356 * 0.25f);
  let x_359 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_359 + x_360);
  let x_362 : vec4<f32> = u_xlat3;
  let x_363 : vec4<f32> = u_xlat4;
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_362 * x_363) + x_365);
  let x_367 : vec4<f32> = u_xlat0;
  let x_370 : f32 = x_51.x_PostExposure;
  let x_372 : f32 = x_51.x_PostExposure;
  let x_374 : f32 = x_51.x_PostExposure;
  let x_376 : f32 = x_51.x_PostExposure;
  let x_377 : vec4<f32> = vec4<f32>(x_370, x_372, x_374, x_376);
  u_xlat0 = (x_367 * vec4<f32>(x_377.x, x_377.y, x_377.z, x_377.w));
  let x_384 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384.z, x_384.x, x_384.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat1;
  let x_396 : vec3<f32> = log2(vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat1;
  let x_413 : vec3<f32> = clamp(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_420.z, x_420.z, x_420.z));
  let x_424 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_424);
  let x_428 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_430 : vec2<f32> = (vec2<f32>(x_428.x, x_428.y) * vec2<f32>(0.5f, 0.5f));
  let x_431 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_430.x, x_430.y, x_431.z);
  let x_433 : vec3<f32> = u_xlat8;
  let x_436 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_439 : vec3<f32> = u_xlat2;
  let x_441 : vec2<f32> = ((vec2<f32>(x_433.y, x_433.z) * vec2<f32>(x_436.x, x_436.y)) + vec2<f32>(x_439.x, x_439.y));
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_442.x, x_441.x, x_441.y, x_442.w);
  let x_445 : f32 = u_xlat8.x;
  let x_447 : f32 = x_51.x_Lut2D_Params.y;
  let x_450 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_445 * x_447) + x_450);
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_458.x, x_458.z));
  let x_461 : vec3<f32> = vec3<f32>(x_460.x, x_460.y, x_460.z);
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_465;
  let x_468 : vec2<f32> = u_xlat16;
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_468 + vec2<f32>(x_469.x, x_469.z));
  let x_475 : vec2<f32> = u_xlat15;
  let x_476 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_475);
  u_xlat2 = vec3<f32>(x_476.x, x_476.y, x_476.z);
  let x_479 : f32 = u_xlat1.x;
  let x_481 : f32 = x_51.x_Lut2D_Params.z;
  let x_484 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_479 * x_481) + -(x_484));
  let x_488 : vec4<f32> = u_xlat4;
  let x_491 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_488.x, x_488.y, x_488.z)) + x_491);
  let x_493 : vec4<f32> = u_xlat1;
  let x_495 : vec3<f32> = u_xlat8;
  let x_497 : vec4<f32> = u_xlat4;
  let x_499 : vec3<f32> = ((vec3<f32>(x_493.x, x_493.x, x_493.x) * x_495) + vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_506 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_506);
  let x_508 : bool = u_xlatb1;
  if (x_508) {
    let x_511 : vec4<f32> = u_xlat0;
    let x_512 : vec3<f32> = vec3<f32>(x_511.x, x_511.y, x_511.z);
    let x_513 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    let x_515 : vec4<f32> = u_xlat1;
    let x_519 : vec3<f32> = clamp(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_520 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
    let x_522 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_532 : vec4<f32> = u_xlat0;
  SV_Target0 = x_532;
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

