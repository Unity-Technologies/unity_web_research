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
  var x_427 : f32;
  var x_439 : f32;
  var x_451 : f32;
  var x_592 : f32;
  var x_604 : f32;
  var x_616 : f32;
  var x_710 : f32;
  var x_722 : f32;
  var x_734 : f32;
  var x_781 : f32;
  var x_794 : f32;
  var x_806 : f32;
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
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_368, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_372 : vec4<f32> = u_xlat0;
  let x_376 : vec3<f32> = (vec3<f32>(x_372.z, x_372.x, x_372.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = max(vec3<f32>(x_379.z, x_379.x, x_379.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec3<f32> = log2(vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat3;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_396 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = exp2(vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat3;
  let x_410 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_411 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_418 : vec4<f32> = u_xlat0;
  let x_421 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_418.z, x_418.x, x_418.y, x_418.z));
  u_xlatb0 = vec3<bool>(x_421.x, x_421.y, x_421.z);
  let x_425 : bool = u_xlatb0.x;
  if (x_425) {
    let x_431 : f32 = u_xlat1.x;
    x_427 = x_431;
  } else {
    let x_434 : f32 = u_xlat3.x;
    x_427 = x_434;
  }
  let x_435 : f32 = x_427;
  u_xlat0.x = x_435;
  let x_438 : bool = u_xlatb0.y;
  if (x_438) {
    let x_443 : f32 = u_xlat1.y;
    x_439 = x_443;
  } else {
    let x_446 : f32 = u_xlat3.y;
    x_439 = x_446;
  }
  let x_447 : f32 = x_439;
  u_xlat0.y = x_447;
  let x_450 : bool = u_xlatb0.z;
  if (x_450) {
    let x_455 : f32 = u_xlat1.z;
    x_451 = x_455;
  } else {
    let x_458 : f32 = u_xlat3.z;
    x_451 = x_458;
  }
  let x_459 : f32 = x_451;
  u_xlat0.z = x_459;
  let x_461 : vec4<f32> = u_xlat0;
  let x_465 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_467 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_465.z, x_465.z, x_465.z));
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_471 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_471);
  let x_475 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_477 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) * vec2<f32>(0.5f, 0.5f));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_478.y, x_478.z, x_477.y);
  let x_480 : vec4<f32> = u_xlat1;
  let x_483 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec2<f32> = ((vec2<f32>(x_480.y, x_480.z) * vec2<f32>(x_483.x, x_483.y)) + vec2<f32>(x_486.x, x_486.w));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_489.x, x_488.x, x_488.y, x_489.w);
  let x_492 : f32 = u_xlat7.x;
  let x_494 : f32 = x_51.x_Lut2D_Params.y;
  let x_497 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_492 * x_494) + x_497);
  let x_505 : vec4<f32> = u_xlat1;
  let x_507 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_505.x, x_505.z));
  let x_508 : vec3<f32> = vec3<f32>(x_507.x, x_507.y, x_507.z);
  let x_509 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_512;
  let x_514 : vec2<f32> = u_xlat16;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec2<f32> = (x_514 + vec2<f32>(x_515.x, x_515.z));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
  let x_523 : vec4<f32> = u_xlat1;
  let x_525 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_523.x, x_523.y));
  let x_526 : vec3<f32> = vec3<f32>(x_525.x, x_525.y, x_525.z);
  let x_527 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_530 : f32 = u_xlat0.x;
  let x_532 : f32 = x_51.x_Lut2D_Params.z;
  let x_535 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_530 * x_532) + -(x_535));
  let x_539 : vec4<f32> = u_xlat3;
  let x_542 : vec4<f32> = u_xlat1;
  let x_544 : vec3<f32> = (-(vec3<f32>(x_539.x, x_539.y, x_539.z)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat0;
  let x_549 : vec4<f32> = u_xlat1;
  let x_552 : vec4<f32> = u_xlat3;
  let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat0;
  let x_561 : vec3<f32> = (vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_562 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_564.x, x_564.y, x_564.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_569 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_569 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_573 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_573), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_576 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_576);
  let x_578 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_578 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_582 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_582);
  let x_586 : vec4<f32> = u_xlat0;
  let x_588 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_586.x, x_586.y, x_586.z, x_586.x));
  u_xlatb0 = vec3<bool>(x_588.x, x_588.y, x_588.z);
  let x_591 : bool = u_xlatb0.x;
  if (x_591) {
    let x_596 : f32 = u_xlat1.x;
    x_592 = x_596;
  } else {
    let x_599 : f32 = u_xlat2.x;
    x_592 = x_599;
  }
  let x_600 : f32 = x_592;
  u_xlat0.x = x_600;
  let x_603 : bool = u_xlatb0.y;
  if (x_603) {
    let x_608 : f32 = u_xlat1.y;
    x_604 = x_608;
  } else {
    let x_611 : f32 = u_xlat2.y;
    x_604 = x_611;
  }
  let x_612 : f32 = x_604;
  u_xlat0.y = x_612;
  let x_615 : bool = u_xlatb0.z;
  if (x_615) {
    let x_620 : f32 = u_xlat1.z;
    x_616 = x_620;
  } else {
    let x_623 : f32 = u_xlat2.z;
    x_616 = x_623;
  }
  let x_624 : f32 = x_616;
  u_xlat0.z = x_624;
  let x_626 : vec2<f32> = vs_TEXCOORD0;
  let x_628 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_632 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_634 : vec2<f32> = ((x_626 * vec2<f32>(x_628.x, x_628.y)) + vec2<f32>(x_632.z, x_632.w));
  let x_635 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
  let x_642 : vec4<f32> = u_xlat1;
  let x_644 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_642.x, x_642.y));
  u_xlat1.x = x_644.w;
  let x_648 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_648 * 2.0f) + -1.0f);
  let x_653 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_653 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_659 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_659, 0.0f, 1.0f);
  let x_663 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_663 * 2.0f) + -1.0f);
  let x_668 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_668)) + 1.0f);
  let x_674 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_674);
  let x_678 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_678) + 1.0f);
  let x_683 : f32 = u_xlat1.x;
  let x_685 : f32 = u_xlat8.x;
  u_xlat1.x = (x_683 * x_685);
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_691 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_691.x, x_691.y, x_691.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_695 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_695);
  let x_697 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_697 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_699 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_699);
  let x_701 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_701 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_704 : vec4<f32> = u_xlat0;
  let x_706 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_704.x, x_704.y, x_704.z, x_704.x));
  u_xlatb0 = vec3<bool>(x_706.x, x_706.y, x_706.z);
  let x_709 : bool = u_xlatb0.x;
  if (x_709) {
    let x_714 : f32 = u_xlat8.x;
    x_710 = x_714;
  } else {
    let x_717 : f32 = u_xlat2.x;
    x_710 = x_717;
  }
  let x_718 : f32 = x_710;
  u_xlat0.x = x_718;
  let x_721 : bool = u_xlatb0.y;
  if (x_721) {
    let x_726 : f32 = u_xlat8.y;
    x_722 = x_726;
  } else {
    let x_729 : f32 = u_xlat2.y;
    x_722 = x_729;
  }
  let x_730 : f32 = x_722;
  u_xlat0.y = x_730;
  let x_733 : bool = u_xlatb0.z;
  if (x_733) {
    let x_738 : f32 = u_xlat8.z;
    x_734 = x_738;
  } else {
    let x_741 : f32 = u_xlat2.z;
    x_734 = x_741;
  }
  let x_742 : f32 = x_734;
  u_xlat0.z = x_742;
  let x_744 : vec4<f32> = u_xlat1;
  let x_749 : vec4<f32> = u_xlat0;
  let x_751 : vec3<f32> = ((vec3<f32>(x_744.x, x_744.x, x_744.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat0;
  let x_756 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_759.x, x_759.y, x_759.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_762 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_762 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_764 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_764), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_767 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_767);
  let x_769 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_769 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_771 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_771);
  let x_773 : vec4<f32> = u_xlat0;
  let x_775 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_773.x, x_773.y, x_773.z, x_773.x));
  u_xlatb0 = vec3<bool>(x_775.x, x_775.y, x_775.z);
  let x_780 : bool = u_xlatb0.x;
  if (x_780) {
    let x_785 : f32 = u_xlat1.x;
    x_781 = x_785;
  } else {
    let x_788 : f32 = u_xlat2.x;
    x_781 = x_788;
  }
  let x_789 : f32 = x_781;
  SV_Target0.x = x_789;
  let x_793 : bool = u_xlatb0.y;
  if (x_793) {
    let x_798 : f32 = u_xlat1.y;
    x_794 = x_798;
  } else {
    let x_801 : f32 = u_xlat2.y;
    x_794 = x_801;
  }
  let x_802 : f32 = x_794;
  SV_Target0.y = x_802;
  let x_805 : bool = u_xlatb0.z;
  if (x_805) {
    let x_810 : f32 = u_xlat1.z;
    x_806 = x_810;
  } else {
    let x_813 : f32 = u_xlat2.z;
    x_806 = x_813;
  }
  let x_814 : f32 = x_806;
  SV_Target0.z = x_814;
  let x_817 : f32 = u_xlat0.w;
  SV_Target0.w = x_817;
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

