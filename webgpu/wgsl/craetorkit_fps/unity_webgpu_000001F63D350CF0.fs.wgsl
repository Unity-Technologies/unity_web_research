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
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

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
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_611 : f32;
  var x_623 : f32;
  var x_635 : f32;
  var x_709 : f32;
  var x_722 : f32;
  var x_734 : f32;
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
  let x_128 : vec2<f32> = vs_TEXCOORD0;
  let x_129 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_128.x, x_128.y, x_129.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_138 : i32 = u_xlati_loop_1;
    let x_139 : i32 = u_xlati21;
    if ((x_138 < x_139)) {
    } else {
      break;
    }
    let x_143 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_143);
    let x_147 : f32 = u_xlat16.x;
    u_xlat16.x = (x_147 + 0.5f);
    let x_151 : f32 = u_xlat16.x;
    let x_153 : f32 = u_xlat1.x;
    u_xlat2.x = (x_151 / x_153);
    let x_156 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_156.x, x_156.y);
    let x_158 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_158, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_162 : vec2<f32> = u_xlat16;
    let x_164 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_162 * vec2<f32>(x_164, x_164));
    let x_173 : vec2<f32> = u_xlat16;
    let x_174 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_173, 0.0f);
    u_xlat6 = x_174;
    let x_180 : vec4<f32> = u_xlat2;
    let x_182 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_180.x, x_180.y), 0.0f);
    let x_183 : vec3<f32> = vec3<f32>(x_182.x, x_182.y, x_182.z);
    let x_184 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
    let x_186 : vec4<f32> = u_xlat6;
    let x_187 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_186 * x_187) + x_189);
    let x_191 : vec4<f32> = u_xlat3;
    let x_192 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_191 + x_192);
    let x_194 : vec2<f32> = u_xlat7;
    let x_195 : vec3<f32> = u_xlat8;
    let x_197 : vec2<f32> = (x_194 + vec2<f32>(x_195.x, x_195.y));
    let x_198 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_197.x, x_197.y, x_198.z);

    continuing {
      let x_200 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_200 + 1i);
    }
  }
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_203 / x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_214.x, x_214.y, x_214.x, x_214.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_218 : vec4<f32> = u_xlat0;
  let x_224 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_227 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_218.x, x_218.y, x_218.w, x_218.y)) * vec4<f32>(x_224.x, x_224.x, x_224.x, x_224.x)) + vec4<f32>(x_227.x, x_227.y, x_227.x, x_227.y));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_230, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat2 = (x_234 * vec4<f32>(x_236, x_236, x_236, x_236));
  let x_244 : vec4<f32> = u_xlat2;
  let x_246 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_244.x, x_244.y));
  u_xlat3 = x_246;
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_250.z, x_250.w));
  u_xlat2 = x_252;
  let x_253 : vec4<f32> = u_xlat2;
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_253 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_256);
  let x_258 : vec4<f32> = u_xlat0;
  let x_262 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_265 : vec2<f32> = vs_TEXCOORD0;
  let x_266 : vec2<f32> = ((-(vec2<f32>(x_258.z, x_258.y)) * vec2<f32>(x_262.x, x_262.x)) + x_265);
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_273 : vec2<f32> = clamp(vec2<f32>(x_269.x, x_269.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_274 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat3;
  let x_279 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_281 : vec2<f32> = (vec2<f32>(x_276.x, x_276.y) * vec2<f32>(x_279, x_279));
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
  let x_287 : vec4<f32> = u_xlat3;
  let x_289 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_287.x, x_287.y));
  u_xlat3 = x_289;
  let x_290 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_290 + x_291);
  let x_293 : vec4<f32> = u_xlat0;
  let x_296 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_299 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_293.z, x_293.w, x_293.x, x_293.w) * vec4<f32>(x_296.x, x_296.x, x_296.x, x_296.x)) + vec4<f32>(x_299.x, x_299.y, x_299.x, x_299.y));
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_302, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_306 : vec4<f32> = u_xlat3;
  let x_308 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_306 * vec4<f32>(x_308, x_308, x_308, x_308));
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_314.x, x_314.y));
  u_xlat4 = x_316;
  let x_317 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_317 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_319);
  let x_321 : vec2<f32> = vs_TEXCOORD0;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_322.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat3;
  let x_328 : vec2<f32> = clamp(vec2<f32>(x_324.x, x_324.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_328.x, x_328.y, x_329.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat3;
  let x_334 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_336 : vec2<f32> = (vec2<f32>(x_331.x, x_331.y) * vec2<f32>(x_334, x_334));
  let x_337 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_336.x, x_336.y, x_337.z, x_337.w);
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_342.x, x_342.y));
  u_xlat4 = x_344;
  let x_345 : vec4<f32> = u_xlat4;
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_345 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_349);
  let x_354 : vec4<f32> = u_xlat3;
  let x_356 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_354.z, x_354.w));
  u_xlat3 = x_356;
  let x_357 : vec4<f32> = u_xlat3;
  let x_359 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_357 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_359);
  let x_361 : vec4<f32> = u_xlat0;
  let x_364 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_367 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_361.z, x_361.y, x_361.w, x_361.y) * vec4<f32>(x_364.x, x_364.x, x_364.x, x_364.x)) + vec4<f32>(x_367.x, x_367.y, x_367.x, x_367.y));
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_370, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_374 : vec4<f32> = u_xlat3;
  let x_376 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_374 * vec4<f32>(x_376, x_376, x_376, x_376));
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_382.x, x_382.y));
  u_xlat4 = x_384;
  let x_385 : vec4<f32> = u_xlat2;
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_385 + x_386);
  let x_391 : vec4<f32> = u_xlat3;
  let x_393 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_391.z, x_391.w));
  u_xlat3 = x_393;
  let x_394 : vec4<f32> = u_xlat3;
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_394 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_396);
  let x_398 : vec4<f32> = u_xlat0;
  let x_401 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_404 : vec2<f32> = vs_TEXCOORD0;
  let x_405 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401.x, x_401.x)) + x_404);
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat0;
  let x_412 : vec2<f32> = clamp(vec2<f32>(x_408.x, x_408.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat0;
  let x_418 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_420 : vec2<f32> = (vec2<f32>(x_415.x, x_415.y) * vec2<f32>(x_418, x_418));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_426.x, x_426.y));
  u_xlat0 = x_428;
  let x_429 : vec4<f32> = u_xlat0;
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_429 + x_430);
  let x_432 : vec4<f32> = u_xlat0;
  let x_434 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_432 * vec4<f32>(x_434.y, x_434.y, x_434.y, x_434.y));
  let x_437 : vec2<f32> = vs_TEXCOORD0;
  let x_440 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_444 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_446 : vec2<f32> = ((x_437 * vec2<f32>(x_440.x, x_440.y)) + vec2<f32>(x_444.z, x_444.w));
  let x_447 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_454.x, x_454.y));
  let x_457 : vec3<f32> = vec3<f32>(x_456.x, x_456.y, x_456.z);
  let x_458 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_460 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_464 : vec4<f32> = u_xlat2;
  let x_467 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_469 : vec3<f32> = (vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_467.z, x_467.z, x_467.z));
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  u_xlat2.w = 0.0f;
  let x_473 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_473 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_476 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = x_51.x_Bloom_Color;
  let x_481 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) * x_480);
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = u_xlat0.w;
  u_xlat4.w = (x_485 * 0.0625f);
  let x_488 : vec4<f32> = u_xlat1;
  let x_489 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_488 + x_489);
  let x_491 : vec4<f32> = u_xlat2;
  let x_492 : vec4<f32> = u_xlat3;
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_491 * x_492) + x_494);
  let x_496 : vec2<f32> = vs_TEXCOORD0;
  let x_498 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_502 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_504 : vec2<f32> = ((x_496 * vec2<f32>(x_498.x, x_498.y)) + vec2<f32>(x_502.z, x_502.w));
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
  let x_512 : vec4<f32> = u_xlat1;
  let x_514 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_512.x, x_512.y));
  u_xlat1.x = x_514.w;
  let x_518 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_518 * 2.0f) + -1.0f);
  let x_523 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_523 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_529 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_529, 0.0f, 1.0f);
  let x_533 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_533 * 2.0f) + -1.0f);
  let x_538 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_538)) + 1.0f);
  let x_544 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_544);
  let x_548 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_548) + 1.0f);
  let x_553 : f32 = u_xlat1.x;
  let x_555 : f32 = u_xlat8.x;
  u_xlat1.x = (x_553 * x_555);
  let x_558 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_563 : vec4<f32> = u_xlat0;
  let x_568 : vec3<f32> = max(abs(vec3<f32>(x_563.x, x_563.y, x_563.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_569 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat2;
  let x_573 : vec3<f32> = log2(vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_576 : vec4<f32> = u_xlat2;
  let x_580 : vec3<f32> = (vec3<f32>(x_576.x, x_576.y, x_576.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_585 : vec3<f32> = exp2(vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat2;
  let x_595 : vec3<f32> = ((vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_596 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_603 : vec4<f32> = u_xlat0;
  let x_606 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_603.x, x_603.y, x_603.z, x_603.x));
  u_xlatb0 = vec3<bool>(x_606.x, x_606.y, x_606.z);
  let x_610 : bool = u_xlatb0.x;
  if (x_610) {
    let x_615 : f32 = u_xlat8.x;
    x_611 = x_615;
  } else {
    let x_618 : f32 = u_xlat2.x;
    x_611 = x_618;
  }
  let x_619 : f32 = x_611;
  u_xlat0.x = x_619;
  let x_622 : bool = u_xlatb0.y;
  if (x_622) {
    let x_627 : f32 = u_xlat8.y;
    x_623 = x_627;
  } else {
    let x_630 : f32 = u_xlat2.y;
    x_623 = x_630;
  }
  let x_631 : f32 = x_623;
  u_xlat0.y = x_631;
  let x_634 : bool = u_xlatb0.z;
  if (x_634) {
    let x_639 : f32 = u_xlat8.z;
    x_635 = x_639;
  } else {
    let x_642 : f32 = u_xlat2.z;
    x_635 = x_642;
  }
  let x_643 : f32 = x_635;
  u_xlat0.z = x_643;
  let x_645 : vec4<f32> = u_xlat1;
  let x_650 : vec4<f32> = u_xlat0;
  let x_652 : vec3<f32> = ((vec3<f32>(x_645.x, x_645.x, x_645.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat0;
  let x_659 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_660 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat0;
  let x_666 : vec3<f32> = (vec3<f32>(x_662.x, x_662.y, x_662.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_667 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat2;
  let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_674 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = max(abs(vec3<f32>(x_676.x, x_676.y, x_676.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat2;
  let x_684 : vec3<f32> = log2(vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat2;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_692 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat2;
  let x_696 : vec3<f32> = exp2(vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_701 : vec4<f32> = u_xlat0;
  let x_703 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_701.x, x_701.y, x_701.z, x_701.x));
  u_xlatb0 = vec3<bool>(x_703.x, x_703.y, x_703.z);
  let x_708 : bool = u_xlatb0.x;
  if (x_708) {
    let x_713 : f32 = u_xlat1.x;
    x_709 = x_713;
  } else {
    let x_716 : f32 = u_xlat2.x;
    x_709 = x_716;
  }
  let x_717 : f32 = x_709;
  SV_Target0.x = x_717;
  let x_721 : bool = u_xlatb0.y;
  if (x_721) {
    let x_726 : f32 = u_xlat1.y;
    x_722 = x_726;
  } else {
    let x_729 : f32 = u_xlat2.y;
    x_722 = x_729;
  }
  let x_730 : f32 = x_722;
  SV_Target0.y = x_730;
  let x_733 : bool = u_xlatb0.z;
  if (x_733) {
    let x_738 : f32 = u_xlat1.z;
    x_734 = x_738;
  } else {
    let x_741 : f32 = u_xlat2.z;
    x_734 = x_741;
  }
  let x_742 : f32 = x_734;
  SV_Target0.z = x_742;
  let x_745 : f32 = u_xlat0.w;
  SV_Target0.w = x_745;
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

