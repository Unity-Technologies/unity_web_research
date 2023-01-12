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
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

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
  var u_xlat22 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_700 : f32;
  var x_712 : f32;
  var x_724 : f32;
  var x_798 : f32;
  var x_811 : f32;
  var x_823 : f32;
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
  let x_464 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat2;
  let x_470 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_472 : vec3<f32> = (vec3<f32>(x_467.x, x_467.y, x_467.z) * vec3<f32>(x_470.z, x_470.z, x_470.z));
  let x_473 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_475 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_478 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = x_51.x_Bloom_Color;
  let x_483 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * x_482);
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_487 : f32 = u_xlat0.w;
  u_xlat4.w = (x_487 * 0.0625f);
  let x_490 : vec4<f32> = u_xlat1;
  let x_491 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_490 + x_491);
  let x_493 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  u_xlat1.w = 0.0f;
  let x_501 : vec4<f32> = u_xlat0;
  let x_502 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_501 + x_502);
  let x_505 : vec2<f32> = vs_TEXCOORD1;
  let x_508 : vec4<f32> = x_51.x_Grain_Params2;
  let x_512 : vec4<f32> = x_51.x_Grain_Params2;
  let x_514 : vec2<f32> = ((x_505 * vec2<f32>(x_508.x, x_508.y)) + vec2<f32>(x_512.z, x_512.w));
  let x_515 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
  let x_522 : vec4<f32> = u_xlat1;
  let x_524 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_522.x, x_522.y));
  let x_525 : vec3<f32> = vec3<f32>(x_524.x, x_524.y, x_524.z);
  let x_526 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat0;
  let x_529 : vec3<f32> = vec3<f32>(x_528.x, x_528.y, x_528.z);
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat2;
  let x_536 : vec3<f32> = clamp(vec3<f32>(x_532.x, x_532.y, x_532.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_540 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_547 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_547);
  let x_551 : f32 = x_51.x_Grain_Params1.x;
  let x_552 : f32 = u_xlat22;
  u_xlat22 = ((x_551 * -(x_552)) + 1.0f);
  let x_556 : vec4<f32> = u_xlat0;
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat1;
  let x_566 : f32 = x_51.x_Grain_Params1.y;
  let x_568 : f32 = x_51.x_Grain_Params1.y;
  let x_570 : f32 = x_51.x_Grain_Params1.y;
  let x_572 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(x_566, x_568, x_570));
  let x_573 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat1;
  let x_577 : f32 = u_xlat22;
  let x_580 : vec4<f32> = u_xlat0;
  let x_582 : vec3<f32> = ((vec3<f32>(x_575.x, x_575.y, x_575.z) * vec3<f32>(x_577, x_577, x_577)) + vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec2<f32> = vs_TEXCOORD0;
  let x_587 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_591 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_593 : vec2<f32> = ((x_585 * vec2<f32>(x_587.x, x_587.y)) + vec2<f32>(x_591.z, x_591.w));
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
  let x_601 : vec4<f32> = u_xlat1;
  let x_603 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_601.x, x_601.y));
  u_xlat1.x = x_603.w;
  let x_607 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_607 * 2.0f) + -1.0f);
  let x_612 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_612 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_618 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_618, 0.0f, 1.0f);
  let x_622 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_622 * 2.0f) + -1.0f);
  let x_627 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_627)) + 1.0f);
  let x_633 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_633);
  let x_637 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_637) + 1.0f);
  let x_642 : f32 = u_xlat1.x;
  let x_644 : f32 = u_xlat8.x;
  u_xlat1.x = (x_642 * x_644);
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_652 : vec4<f32> = u_xlat0;
  let x_657 : vec3<f32> = max(abs(vec3<f32>(x_652.x, x_652.y, x_652.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_658 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat2;
  let x_662 : vec3<f32> = log2(vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat2;
  let x_669 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat2;
  let x_674 : vec3<f32> = exp2(vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat2;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_692 : vec4<f32> = u_xlat0;
  let x_695 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_692.x, x_692.y, x_692.z, x_692.x));
  u_xlatb0 = vec3<bool>(x_695.x, x_695.y, x_695.z);
  let x_699 : bool = u_xlatb0.x;
  if (x_699) {
    let x_704 : f32 = u_xlat8.x;
    x_700 = x_704;
  } else {
    let x_707 : f32 = u_xlat2.x;
    x_700 = x_707;
  }
  let x_708 : f32 = x_700;
  u_xlat0.x = x_708;
  let x_711 : bool = u_xlatb0.y;
  if (x_711) {
    let x_716 : f32 = u_xlat8.y;
    x_712 = x_716;
  } else {
    let x_719 : f32 = u_xlat2.y;
    x_712 = x_719;
  }
  let x_720 : f32 = x_712;
  u_xlat0.y = x_720;
  let x_723 : bool = u_xlatb0.z;
  if (x_723) {
    let x_728 : f32 = u_xlat8.z;
    x_724 = x_728;
  } else {
    let x_731 : f32 = u_xlat2.z;
    x_724 = x_731;
  }
  let x_732 : f32 = x_724;
  u_xlat0.z = x_732;
  let x_734 : vec4<f32> = u_xlat1;
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : vec3<f32> = ((vec3<f32>(x_734.x, x_734.x, x_734.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat0;
  let x_748 : vec3<f32> = (vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_749 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat0;
  let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_756 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat2;
  let x_762 : vec3<f32> = (vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_763 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = max(abs(vec3<f32>(x_765.x, x_765.y, x_765.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat2;
  let x_773 : vec3<f32> = log2(vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat2;
  let x_780 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat2;
  let x_785 : vec3<f32> = exp2(vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_790 : vec4<f32> = u_xlat0;
  let x_792 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_790.x, x_790.y, x_790.z, x_790.x));
  u_xlatb0 = vec3<bool>(x_792.x, x_792.y, x_792.z);
  let x_797 : bool = u_xlatb0.x;
  if (x_797) {
    let x_802 : f32 = u_xlat1.x;
    x_798 = x_802;
  } else {
    let x_805 : f32 = u_xlat2.x;
    x_798 = x_805;
  }
  let x_806 : f32 = x_798;
  SV_Target0.x = x_806;
  let x_810 : bool = u_xlatb0.y;
  if (x_810) {
    let x_815 : f32 = u_xlat1.y;
    x_811 = x_815;
  } else {
    let x_818 : f32 = u_xlat2.y;
    x_811 = x_818;
  }
  let x_819 : f32 = x_811;
  SV_Target0.y = x_819;
  let x_822 : bool = u_xlatb0.z;
  if (x_822) {
    let x_827 : f32 = u_xlat1.z;
    x_823 = x_827;
  } else {
    let x_830 : f32 = u_xlat2.z;
    x_823 = x_830;
  }
  let x_831 : f32 = x_823;
  SV_Target0.z = x_831;
  let x_834 : f32 = u_xlat0.w;
  SV_Target0.w = x_834;
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

