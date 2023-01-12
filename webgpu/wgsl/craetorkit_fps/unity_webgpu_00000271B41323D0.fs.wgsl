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
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_Bloom_DirtTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
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
  var u_xlatb1 : bool;
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
    let x_176 : vec4<f32> = u_xlat2;
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
  let x_195 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_195 / x_196);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.x, x_198.x) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_207 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_207.x, x_207.y, x_207.x, x_207.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_211 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_220 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_211.x, x_211.y, x_211.w, x_211.y)) * vec4<f32>(x_217.x, x_217.x, x_217.x, x_217.x)) + vec4<f32>(x_220.x, x_220.y, x_220.x, x_220.y));
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_223, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat2 = (x_227 * vec4<f32>(x_229, x_229, x_229, x_229));
  let x_237 : vec4<f32> = u_xlat2;
  let x_239 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_237.x, x_237.y));
  u_xlat3 = x_239;
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_243.z, x_243.w));
  u_xlat2 = x_245;
  let x_246 : vec4<f32> = u_xlat2;
  let x_249 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_246 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_249);
  let x_251 : vec4<f32> = u_xlat0;
  let x_255 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_258 : vec2<f32> = vs_TEXCOORD0;
  let x_259 : vec2<f32> = ((-(vec2<f32>(x_251.z, x_251.y)) * vec2<f32>(x_255.x, x_255.x)) + x_258);
  let x_260 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_259.x, x_259.y, x_260.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat3;
  let x_266 : vec2<f32> = clamp(vec2<f32>(x_262.x, x_262.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_272 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_274 : vec2<f32> = (vec2<f32>(x_269.x, x_269.y) * vec2<f32>(x_272, x_272));
  let x_275 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_275.w);
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_280.x, x_280.y));
  u_xlat3 = x_282;
  let x_283 : vec4<f32> = u_xlat2;
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_283 + x_284);
  let x_286 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_292 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_286.z, x_286.w, x_286.x, x_286.w) * vec4<f32>(x_289.x, x_289.x, x_289.x, x_289.x)) + vec4<f32>(x_292.x, x_292.y, x_292.x, x_292.y));
  let x_295 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_295, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_299 * vec4<f32>(x_301, x_301, x_301, x_301));
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_307.x, x_307.y));
  u_xlat4 = x_309;
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_310 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_312);
  let x_314 : vec2<f32> = vs_TEXCOORD0;
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_315.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat3;
  let x_321 : vec2<f32> = clamp(vec2<f32>(x_317.x, x_317.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_322.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat3;
  let x_327 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_329 : vec2<f32> = (vec2<f32>(x_324.x, x_324.y) * vec2<f32>(x_327, x_327));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_330.z, x_330.w);
  let x_335 : vec4<f32> = u_xlat3;
  let x_337 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_335.x, x_335.y));
  u_xlat4 = x_337;
  let x_338 : vec4<f32> = u_xlat4;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_338 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_342);
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_347.z, x_347.w));
  u_xlat3 = x_349;
  let x_350 : vec4<f32> = u_xlat3;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_350 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_352);
  let x_354 : vec4<f32> = u_xlat0;
  let x_357 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_360 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_354.z, x_354.y, x_354.w, x_354.y) * vec4<f32>(x_357.x, x_357.x, x_357.x, x_357.x)) + vec4<f32>(x_360.x, x_360.y, x_360.x, x_360.y));
  let x_363 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_363, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_367 : vec4<f32> = u_xlat3;
  let x_369 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_367 * vec4<f32>(x_369, x_369, x_369, x_369));
  let x_375 : vec4<f32> = u_xlat3;
  let x_377 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_375.x, x_375.y));
  u_xlat4 = x_377;
  let x_378 : vec4<f32> = u_xlat2;
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_378 + x_379);
  let x_384 : vec4<f32> = u_xlat3;
  let x_386 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_384.z, x_384.w));
  u_xlat3 = x_386;
  let x_387 : vec4<f32> = u_xlat3;
  let x_389 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_387 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_389);
  let x_391 : vec4<f32> = u_xlat0;
  let x_394 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_397 : vec2<f32> = vs_TEXCOORD0;
  let x_398 : vec2<f32> = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_394.x, x_394.x)) + x_397);
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat0;
  let x_405 : vec2<f32> = clamp(vec2<f32>(x_401.x, x_401.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat0;
  let x_411 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_413 : vec2<f32> = (vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_411, x_411));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_419 : vec4<f32> = u_xlat0;
  let x_421 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_419.x, x_419.y));
  u_xlat0 = x_421;
  let x_422 : vec4<f32> = u_xlat0;
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_422 + x_423);
  let x_425 : vec4<f32> = u_xlat0;
  let x_427 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_425 * vec4<f32>(x_427.y, x_427.y, x_427.y, x_427.y));
  let x_430 : vec2<f32> = vs_TEXCOORD0;
  let x_432 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_436 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_438 : vec2<f32> = ((x_430 * vec2<f32>(x_432.x, x_432.y)) + vec2<f32>(x_436.z, x_436.w));
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_446.x, x_446.y));
  let x_449 : vec3<f32> = vec3<f32>(x_448.x, x_448.y, x_448.z);
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat0;
  let x_456 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_457 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat2;
  let x_462 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_464 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_462.z, x_462.z, x_462.z));
  let x_465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_467 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_470 : vec4<f32> = u_xlat0;
  let x_474 : vec3<f32> = x_51.x_Bloom_Color;
  let x_475 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * x_474);
  let x_476 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_479 : f32 = u_xlat0.w;
  u_xlat4.w = (x_479 * 0.0625f);
  let x_482 : vec4<f32> = u_xlat1;
  let x_483 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_482 + x_483);
  let x_485 : vec4<f32> = u_xlat3;
  let x_487 : vec4<f32> = u_xlat2;
  let x_489 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  u_xlat1.w = 0.0f;
  let x_493 : vec4<f32> = u_xlat0;
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec4<f32>(x_493.w, x_493.x, x_493.y, x_493.z) + vec4<f32>(x_495.w, x_495.x, x_495.y, x_495.z));
  let x_502 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_502);
  let x_504 : bool = u_xlatb1;
  if (x_504) {
    let x_507 : vec4<f32> = u_xlat0;
    let x_508 : vec3<f32> = vec3<f32>(x_507.y, x_507.z, x_507.w);
    let x_509 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
    let x_511 : vec4<f32> = u_xlat1;
    let x_515 : vec3<f32> = clamp(vec3<f32>(x_511.x, x_511.y, x_511.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_516 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
    let x_518 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_528 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_528.y, x_528.z, x_528.w, x_528.x);
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

