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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_515 : f32;
  var x_527 : f32;
  var x_539 : f32;
  var x_680 : f32;
  var x_692 : f32;
  var x_704 : f32;
  var x_798 : f32;
  var x_810 : f32;
  var x_822 : f32;
  var x_869 : f32;
  var x_882 : f32;
  var x_894 : f32;
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
  u_xlat4 = (x_332 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_336 : vec4<f32> = u_xlat3;
  let x_339 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_341 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_339.z, x_339.z, x_339.z));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  u_xlat3.w = 0.0f;
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_345 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_348 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = x_51.x_Bloom_Color;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) * x_352);
  let x_354 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = u_xlat0.w;
  u_xlat5.w = (x_357 * 0.25f);
  let x_360 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_360 + x_361);
  let x_363 : vec4<f32> = u_xlat3;
  let x_364 : vec4<f32> = u_xlat4;
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_363 * x_364) + x_366);
  let x_369 : vec2<f32> = vs_TEXCOORD1;
  let x_372 : vec4<f32> = x_51.x_Grain_Params2;
  let x_376 : vec4<f32> = x_51.x_Grain_Params2;
  let x_378 : vec2<f32> = ((x_369 * vec2<f32>(x_372.x, x_372.y)) + vec2<f32>(x_376.z, x_376.w));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_386.x, x_386.y));
  let x_389 : vec3<f32> = vec3<f32>(x_388.x, x_388.y, x_388.z);
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat0;
  let x_393 : vec3<f32> = vec3<f32>(x_392.x, x_392.y, x_392.z);
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = clamp(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_404.x, x_404.y, x_404.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_411 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_411);
  let x_415 : f32 = x_51.x_Grain_Params1.x;
  let x_416 : f32 = u_xlat22;
  u_xlat22 = ((x_415 * -(x_416)) + 1.0f);
  let x_420 : vec4<f32> = u_xlat0;
  let x_422 : vec4<f32> = u_xlat1;
  let x_424 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat1;
  let x_430 : f32 = x_51.x_Grain_Params1.y;
  let x_432 : f32 = x_51.x_Grain_Params1.y;
  let x_434 : f32 = x_51.x_Grain_Params1.y;
  let x_436 : vec3<f32> = (vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_430, x_432, x_434));
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : f32 = u_xlat22;
  let x_444 : vec4<f32> = u_xlat0;
  let x_446 : vec3<f32> = ((vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(x_441, x_441, x_441)) + vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = clamp(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : f32 = u_xlat0.w;
  u_xlat21 = x_457;
  let x_458 : f32 = u_xlat21;
  u_xlat21 = clamp(x_458, 0.0f, 1.0f);
  let x_460 : vec4<f32> = u_xlat0;
  let x_464 : vec3<f32> = (vec3<f32>(x_460.z, x_460.x, x_460.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = max(vec3<f32>(x_467.z, x_467.x, x_467.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_472 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat3;
  let x_476 : vec3<f32> = log2(vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat3;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_484 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat3;
  let x_488 : vec3<f32> = exp2(vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat3;
  let x_498 : vec3<f32> = ((vec3<f32>(x_491.x, x_491.y, x_491.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_499 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_506 : vec4<f32> = u_xlat0;
  let x_509 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_506.z, x_506.x, x_506.y, x_506.z));
  u_xlatb0 = vec3<bool>(x_509.x, x_509.y, x_509.z);
  let x_513 : bool = u_xlatb0.x;
  if (x_513) {
    let x_519 : f32 = u_xlat1.x;
    x_515 = x_519;
  } else {
    let x_522 : f32 = u_xlat3.x;
    x_515 = x_522;
  }
  let x_523 : f32 = x_515;
  u_xlat0.x = x_523;
  let x_526 : bool = u_xlatb0.y;
  if (x_526) {
    let x_531 : f32 = u_xlat1.y;
    x_527 = x_531;
  } else {
    let x_534 : f32 = u_xlat3.y;
    x_527 = x_534;
  }
  let x_535 : f32 = x_527;
  u_xlat0.y = x_535;
  let x_538 : bool = u_xlatb0.z;
  if (x_538) {
    let x_543 : f32 = u_xlat1.z;
    x_539 = x_543;
  } else {
    let x_546 : f32 = u_xlat3.z;
    x_539 = x_546;
  }
  let x_547 : f32 = x_539;
  u_xlat0.z = x_547;
  let x_549 : vec4<f32> = u_xlat0;
  let x_553 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_555 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_553.z, x_553.z, x_553.z));
  let x_556 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_559 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_559);
  let x_563 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_565 : vec2<f32> = (vec2<f32>(x_563.x, x_563.y) * vec2<f32>(0.5f, 0.5f));
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_566.y, x_566.z, x_565.y);
  let x_568 : vec4<f32> = u_xlat1;
  let x_571 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_574 : vec4<f32> = u_xlat1;
  let x_576 : vec2<f32> = ((vec2<f32>(x_568.y, x_568.z) * vec2<f32>(x_571.x, x_571.y)) + vec2<f32>(x_574.x, x_574.w));
  let x_577 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_576.x, x_576.y, x_577.w);
  let x_580 : f32 = u_xlat7.x;
  let x_582 : f32 = x_51.x_Lut2D_Params.y;
  let x_585 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_580 * x_582) + x_585);
  let x_593 : vec4<f32> = u_xlat1;
  let x_595 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_593.x, x_593.z));
  let x_596 : vec3<f32> = vec3<f32>(x_595.x, x_595.y, x_595.z);
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_600 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_600;
  let x_602 : vec2<f32> = u_xlat16;
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec2<f32> = (x_602 + vec2<f32>(x_603.x, x_603.z));
  let x_606 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_611.x, x_611.y));
  let x_614 : vec3<f32> = vec3<f32>(x_613.x, x_613.y, x_613.z);
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_618 : f32 = u_xlat0.x;
  let x_620 : f32 = x_51.x_Lut2D_Params.z;
  let x_623 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_618 * x_620) + -(x_623));
  let x_627 : vec4<f32> = u_xlat3;
  let x_630 : vec4<f32> = u_xlat1;
  let x_632 : vec3<f32> = (-(vec3<f32>(x_627.x, x_627.y, x_627.z)) + vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat0;
  let x_637 : vec4<f32> = u_xlat1;
  let x_640 : vec4<f32> = u_xlat3;
  let x_642 : vec3<f32> = ((vec3<f32>(x_635.x, x_635.x, x_635.x) * vec3<f32>(x_637.x, x_637.y, x_637.z)) + vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat0;
  let x_649 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_652.x, x_652.y, x_652.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_657 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_657 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_661 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_661), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_664 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_664);
  let x_666 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_666 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_670 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_670);
  let x_674 : vec4<f32> = u_xlat0;
  let x_676 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_674.x, x_674.y, x_674.z, x_674.x));
  u_xlatb0 = vec3<bool>(x_676.x, x_676.y, x_676.z);
  let x_679 : bool = u_xlatb0.x;
  if (x_679) {
    let x_684 : f32 = u_xlat1.x;
    x_680 = x_684;
  } else {
    let x_687 : f32 = u_xlat2.x;
    x_680 = x_687;
  }
  let x_688 : f32 = x_680;
  u_xlat0.x = x_688;
  let x_691 : bool = u_xlatb0.y;
  if (x_691) {
    let x_696 : f32 = u_xlat1.y;
    x_692 = x_696;
  } else {
    let x_699 : f32 = u_xlat2.y;
    x_692 = x_699;
  }
  let x_700 : f32 = x_692;
  u_xlat0.y = x_700;
  let x_703 : bool = u_xlatb0.z;
  if (x_703) {
    let x_708 : f32 = u_xlat1.z;
    x_704 = x_708;
  } else {
    let x_711 : f32 = u_xlat2.z;
    x_704 = x_711;
  }
  let x_712 : f32 = x_704;
  u_xlat0.z = x_712;
  let x_714 : vec2<f32> = vs_TEXCOORD0;
  let x_716 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_720 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_722 : vec2<f32> = ((x_714 * vec2<f32>(x_716.x, x_716.y)) + vec2<f32>(x_720.z, x_720.w));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_723.w);
  let x_730 : vec4<f32> = u_xlat1;
  let x_732 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_730.x, x_730.y));
  u_xlat1.x = x_732.w;
  let x_736 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_736 * 2.0f) + -1.0f);
  let x_741 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_741 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_747 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_747, 0.0f, 1.0f);
  let x_751 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_751 * 2.0f) + -1.0f);
  let x_756 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_756)) + 1.0f);
  let x_762 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_762);
  let x_766 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_766) + 1.0f);
  let x_771 : f32 = u_xlat1.x;
  let x_773 : f32 = u_xlat8.x;
  u_xlat1.x = (x_771 * x_773);
  let x_776 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_779 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_779.x, x_779.y, x_779.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_783 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_783);
  let x_785 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_785 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_787 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_787);
  let x_789 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_789 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_792 : vec4<f32> = u_xlat0;
  let x_794 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_792.x, x_792.y, x_792.z, x_792.x));
  u_xlatb0 = vec3<bool>(x_794.x, x_794.y, x_794.z);
  let x_797 : bool = u_xlatb0.x;
  if (x_797) {
    let x_802 : f32 = u_xlat8.x;
    x_798 = x_802;
  } else {
    let x_805 : f32 = u_xlat2.x;
    x_798 = x_805;
  }
  let x_806 : f32 = x_798;
  u_xlat0.x = x_806;
  let x_809 : bool = u_xlatb0.y;
  if (x_809) {
    let x_814 : f32 = u_xlat8.y;
    x_810 = x_814;
  } else {
    let x_817 : f32 = u_xlat2.y;
    x_810 = x_817;
  }
  let x_818 : f32 = x_810;
  u_xlat0.y = x_818;
  let x_821 : bool = u_xlatb0.z;
  if (x_821) {
    let x_826 : f32 = u_xlat8.z;
    x_822 = x_826;
  } else {
    let x_829 : f32 = u_xlat2.z;
    x_822 = x_829;
  }
  let x_830 : f32 = x_822;
  u_xlat0.z = x_830;
  let x_832 : vec4<f32> = u_xlat1;
  let x_837 : vec4<f32> = u_xlat0;
  let x_839 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.x, x_832.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat0;
  let x_844 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_847.x, x_847.y, x_847.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_850 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_850 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_852 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_852), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_855 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_855);
  let x_857 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_857 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_859 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_859);
  let x_861 : vec4<f32> = u_xlat0;
  let x_863 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_861.x, x_861.y, x_861.z, x_861.x));
  u_xlatb0 = vec3<bool>(x_863.x, x_863.y, x_863.z);
  let x_868 : bool = u_xlatb0.x;
  if (x_868) {
    let x_873 : f32 = u_xlat1.x;
    x_869 = x_873;
  } else {
    let x_876 : f32 = u_xlat2.x;
    x_869 = x_876;
  }
  let x_877 : f32 = x_869;
  SV_Target0.x = x_877;
  let x_881 : bool = u_xlatb0.y;
  if (x_881) {
    let x_886 : f32 = u_xlat1.y;
    x_882 = x_886;
  } else {
    let x_889 : f32 = u_xlat2.y;
    x_882 = x_889;
  }
  let x_890 : f32 = x_882;
  SV_Target0.y = x_890;
  let x_893 : bool = u_xlatb0.z;
  if (x_893) {
    let x_898 : f32 = u_xlat1.z;
    x_894 = x_898;
  } else {
    let x_901 : f32 = u_xlat2.z;
    x_894 = x_901;
  }
  let x_902 : f32 = x_894;
  SV_Target0.z = x_902;
  let x_904 : f32 = u_xlat21;
  SV_Target0.w = x_904;
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

