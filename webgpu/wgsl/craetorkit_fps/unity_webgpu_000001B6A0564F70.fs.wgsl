struct PGlobals {
  x_ScreenParams : vec4<f32>,
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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
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
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(14) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var u_xlatb1 : bool;
  var u_xlat22 : f32;
  var u_xlat15 : f32;
  var x_679 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_930 : f32;
  var x_942 : f32;
  var x_954 : f32;
  var x_1023 : f32;
  var x_1036 : f32;
  var x_1048 : f32;
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
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  let x_128 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_127.x, x_127.y, x_128.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_137 : i32 = u_xlati_loop_1;
    let x_138 : i32 = u_xlati21;
    if ((x_137 < x_138)) {
    } else {
      break;
    }
    let x_142 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_142);
    let x_146 : f32 = u_xlat16.x;
    u_xlat16.x = (x_146 + 0.5f);
    let x_150 : f32 = u_xlat16.x;
    let x_152 : f32 = u_xlat1.x;
    u_xlat2.x = (x_150 / x_152);
    let x_155 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_155.x, x_155.y);
    let x_157 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_157, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_161 : vec2<f32> = u_xlat16;
    let x_164 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_161 * vec2<f32>(x_164, x_164));
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
  let x_202 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_202 / x_203);
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat1;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.x, x_205.x) * vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
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
  let x_508 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_508 < 0.5f);
  let x_510 : bool = u_xlatb1;
  if (x_510) {
    let x_513 : vec2<f32> = vs_TEXCOORD0;
    let x_517 : vec2<f32> = x_51.x_Vignette_Center;
    let x_519 : vec2<f32> = (x_513 + -(x_517));
    let x_520 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
    let x_522 : vec4<f32> = u_xlat1;
    let x_527 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_529 : vec2<f32> = (abs(vec2<f32>(x_522.y, x_522.x)) * vec2<f32>(x_527.x, x_527.x));
    let x_530 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_530.x, x_529.x, x_529.y, x_530.w);
    let x_534 : f32 = x_51.x_ScreenParams.x;
    let x_536 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_534 / x_536);
    let x_538 : f32 = u_xlat22;
    u_xlat22 = (x_538 + -1.0f);
    let x_541 : f32 = x_51.x_Vignette_Settings.w;
    let x_542 : f32 = u_xlat22;
    u_xlat22 = ((x_541 * x_542) + 1.0f);
    let x_545 : f32 = u_xlat22;
    let x_547 : f32 = u_xlat1.z;
    u_xlat1.x = (x_545 * x_547);
    let x_550 : vec4<f32> = u_xlat1;
    let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
    let x_552 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
    let x_554 : vec4<f32> = u_xlat1;
    let x_558 : vec2<f32> = clamp(vec2<f32>(x_554.x, x_554.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_559 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
    let x_561 : vec4<f32> = u_xlat1;
    let x_563 : vec2<f32> = log2(vec2<f32>(x_561.x, x_561.y));
    let x_564 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
    let x_566 : vec4<f32> = u_xlat1;
    let x_569 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_571 : vec2<f32> = (vec2<f32>(x_566.x, x_566.y) * vec2<f32>(x_569.z, x_569.z));
    let x_572 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
    let x_574 : vec4<f32> = u_xlat1;
    let x_576 : vec2<f32> = exp2(vec2<f32>(x_574.x, x_574.y));
    let x_577 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
    let x_579 : vec4<f32> = u_xlat1;
    let x_581 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_579.x, x_579.y), vec2<f32>(x_581.x, x_581.y));
    let x_586 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_586) + 1.0f);
    let x_591 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_591, 0.0f);
    let x_595 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_595);
    let x_599 : f32 = u_xlat1.x;
    let x_601 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_599 * x_601);
    let x_605 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_605);
    let x_610 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_610) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_614 : vec4<f32> = u_xlat1;
    let x_616 : vec3<f32> = u_xlat8;
    let x_619 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_614.x, x_614.x, x_614.x) * x_616) + x_619);
    let x_621 : vec4<f32> = u_xlat0;
    let x_623 : vec3<f32> = u_xlat8;
    let x_624 : vec3<f32> = (vec3<f32>(x_621.x, x_621.y, x_621.z) * x_623);
    let x_625 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
    let x_628 : f32 = u_xlat0.w;
    u_xlat8.x = (x_628 + -1.0f);
    let x_632 : f32 = u_xlat1.x;
    let x_634 : f32 = u_xlat8.x;
    u_xlat2.w = ((x_632 * x_634) + 1.0f);
  } else {
    let x_644 : vec2<f32> = vs_TEXCOORD0;
    let x_645 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_644);
    u_xlat1.x = x_645.w;
    let x_649 : f32 = u_xlat1.x;
    u_xlat1.z = (x_649 + 0.055f);
    let x_653 : vec4<f32> = u_xlat1;
    let x_658 : vec2<f32> = (vec2<f32>(x_653.x, x_653.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_659 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_658.x, x_658.y, x_659.z);
    let x_663 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_663), 1.1920929e-07f);
    let x_667 : f32 = u_xlat15;
    u_xlat15 = log2(x_667);
    let x_669 : f32 = u_xlat15;
    u_xlat15 = (x_669 * 2.400000095f);
    let x_672 : f32 = u_xlat15;
    u_xlat15 = exp2(x_672);
    let x_676 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_676);
    let x_678 : bool = u_xlatb1;
    if (x_678) {
      let x_683 : f32 = u_xlat8.x;
      x_679 = x_683;
    } else {
      let x_685 : f32 = u_xlat15;
      x_679 = x_685;
    }
    let x_686 : f32 = x_679;
    u_xlat1.x = x_686;
    let x_689 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_689) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_692 : vec4<f32> = u_xlat1;
    let x_694 : vec3<f32> = u_xlat8;
    let x_697 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_692.x, x_692.x, x_692.x) * x_694) + x_697);
    let x_699 : vec4<f32> = u_xlat0;
    let x_701 : vec3<f32> = u_xlat8;
    let x_703 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_699.x, x_699.y, x_699.z) * x_701) + -(vec3<f32>(x_703.x, x_703.y, x_703.z)));
    let x_709 : f32 = x_51.x_Vignette_Opacity;
    let x_711 : vec3<f32> = u_xlat8;
    let x_713 : vec4<f32> = u_xlat0;
    let x_715 : vec3<f32> = ((vec3<f32>(x_709, x_709, x_709) * x_711) + vec3<f32>(x_713.x, x_713.y, x_713.z));
    let x_716 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
    let x_719 : f32 = u_xlat0.w;
    u_xlat0.x = (x_719 + -1.0f);
    let x_723 : f32 = u_xlat1.x;
    let x_725 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_723 * x_725) + 1.0f);
  }
  let x_729 : vec4<f32> = u_xlat2;
  let x_732 : f32 = x_51.x_PostExposure;
  let x_734 : f32 = x_51.x_PostExposure;
  let x_736 : f32 = x_51.x_PostExposure;
  let x_738 : f32 = x_51.x_PostExposure;
  let x_739 : vec4<f32> = vec4<f32>(x_732, x_734, x_736, x_738);
  u_xlat0 = (x_729 * vec4<f32>(x_739.x, x_739.y, x_739.z, x_739.w));
  let x_746 : vec4<f32> = u_xlat0;
  let x_753 : vec3<f32> = ((vec3<f32>(x_746.x, x_746.y, x_746.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_754 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat0;
  let x_758 : vec3<f32> = log2(vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat0;
  let x_768 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_769 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat0;
  let x_775 : vec3<f32> = clamp(vec3<f32>(x_771.x, x_771.y, x_771.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_782 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_784 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_782.y, x_782.y, x_782.y));
  let x_785 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_788 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat1.x = (x_788 * 0.5f);
  let x_791 : vec4<f32> = u_xlat0;
  let x_794 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec3<f32> = ((vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_794.x, x_794.x, x_794.x)) + vec3<f32>(x_797.x, x_797.x, x_797.x));
  let x_800 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_810 : vec4<f32> = u_xlat0;
  let x_812 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : vec3<f32> = vec3<f32>(x_812.x, x_812.y, x_812.z);
  let x_814 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec2<f32> = vs_TEXCOORD0;
  let x_819 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_823 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_825 : vec2<f32> = ((x_816 * vec2<f32>(x_819.x, x_819.y)) + vec2<f32>(x_823.z, x_823.w));
  let x_826 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
  let x_833 : vec4<f32> = u_xlat1;
  let x_835 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_833.x, x_833.y));
  u_xlat1.x = x_835.w;
  let x_839 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_839 * 2.0f) + -1.0f);
  let x_844 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_844 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_850 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_850, 0.0f, 1.0f);
  let x_854 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_854 * 2.0f) + -1.0f);
  let x_859 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_859)) + 1.0f);
  let x_865 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_865);
  let x_869 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_869) + 1.0f);
  let x_874 : f32 = u_xlat1.x;
  let x_876 : f32 = u_xlat8.x;
  u_xlat1.x = (x_874 * x_876);
  let x_879 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_879.x, x_879.y, x_879.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_884 : vec4<f32> = u_xlat0;
  let x_888 : vec3<f32> = max(abs(vec3<f32>(x_884.x, x_884.y, x_884.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_889 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat2;
  let x_893 : vec3<f32> = log2(vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec4<f32> = u_xlat2;
  let x_900 : vec3<f32> = (vec3<f32>(x_896.x, x_896.y, x_896.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_901 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec3<f32> = exp2(vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat2;
  let x_915 : vec3<f32> = ((vec3<f32>(x_908.x, x_908.y, x_908.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_923 : vec4<f32> = u_xlat0;
  let x_926 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_923.x, x_923.y, x_923.z, x_923.x));
  u_xlatb0 = vec3<bool>(x_926.x, x_926.y, x_926.z);
  let x_929 : bool = u_xlatb0.x;
  if (x_929) {
    let x_934 : f32 = u_xlat8.x;
    x_930 = x_934;
  } else {
    let x_937 : f32 = u_xlat2.x;
    x_930 = x_937;
  }
  let x_938 : f32 = x_930;
  u_xlat0.x = x_938;
  let x_941 : bool = u_xlatb0.y;
  if (x_941) {
    let x_946 : f32 = u_xlat8.y;
    x_942 = x_946;
  } else {
    let x_949 : f32 = u_xlat2.y;
    x_942 = x_949;
  }
  let x_950 : f32 = x_942;
  u_xlat0.y = x_950;
  let x_953 : bool = u_xlatb0.z;
  if (x_953) {
    let x_958 : f32 = u_xlat8.z;
    x_954 = x_958;
  } else {
    let x_961 : f32 = u_xlat2.z;
    x_954 = x_961;
  }
  let x_962 : f32 = x_954;
  u_xlat0.z = x_962;
  let x_964 : vec4<f32> = u_xlat1;
  let x_969 : vec4<f32> = u_xlat0;
  let x_971 : vec3<f32> = ((vec3<f32>(x_964.x, x_964.x, x_964.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat0;
  let x_977 : vec3<f32> = (vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_978 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat0;
  let x_983 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_984 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat2;
  let x_989 : vec3<f32> = (vec3<f32>(x_986.x, x_986.y, x_986.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_990 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_992 : vec4<f32> = u_xlat2;
  let x_995 : vec3<f32> = max(abs(vec3<f32>(x_992.x, x_992.y, x_992.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_996 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
  let x_998 : vec4<f32> = u_xlat2;
  let x_1000 : vec3<f32> = log2(vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec4<f32> = u_xlat2;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1003.x, x_1003.y, x_1003.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat2;
  let x_1011 : vec3<f32> = exp2(vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1015 : vec4<f32> = u_xlat0;
  let x_1017 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1015.x));
  u_xlatb0 = vec3<bool>(x_1017.x, x_1017.y, x_1017.z);
  let x_1022 : bool = u_xlatb0.x;
  if (x_1022) {
    let x_1027 : f32 = u_xlat1.x;
    x_1023 = x_1027;
  } else {
    let x_1030 : f32 = u_xlat2.x;
    x_1023 = x_1030;
  }
  let x_1031 : f32 = x_1023;
  SV_Target0.x = x_1031;
  let x_1035 : bool = u_xlatb0.y;
  if (x_1035) {
    let x_1040 : f32 = u_xlat1.y;
    x_1036 = x_1040;
  } else {
    let x_1043 : f32 = u_xlat2.y;
    x_1036 = x_1043;
  }
  let x_1044 : f32 = x_1036;
  SV_Target0.y = x_1044;
  let x_1047 : bool = u_xlatb0.z;
  if (x_1047) {
    let x_1052 : f32 = u_xlat1.z;
    x_1048 = x_1052;
  } else {
    let x_1055 : f32 = u_xlat2.z;
    x_1048 = x_1055;
  }
  let x_1056 : f32 = x_1048;
  SV_Target0.z = x_1056;
  let x_1059 : f32 = u_xlat0.w;
  SV_Target0.w = x_1059;
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

