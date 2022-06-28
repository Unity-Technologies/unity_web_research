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

var<private> u_xlatb4 : vec3<bool>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_437 : f32;
  var x_449 : f32;
  var x_461 : f32;
  var x_609 : f32;
  var x_621 : f32;
  var x_633 : f32;
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
  let x_335 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat3;
  let x_341 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_343 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_341.z, x_341.z, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_346 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_349 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = x_51.x_Bloom_Color;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) * x_353);
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : f32 = u_xlat0.w;
  u_xlat5.w = (x_358 * 0.25f);
  let x_361 : vec4<f32> = u_xlat1;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_361 + x_362);
  let x_364 : vec4<f32> = u_xlat4;
  let x_366 : vec4<f32> = u_xlat3;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  u_xlat1.w = 0.0f;
  let x_372 : vec4<f32> = u_xlat0;
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_372 + x_373);
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_375, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.z, x_379.x, x_379.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = max(vec3<f32>(x_386.z, x_386.x, x_386.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat3;
  let x_395 : vec3<f32> = log2(vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat3;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat3;
  let x_407 : vec3<f32> = exp2(vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat3;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_425 : vec4<f32> = u_xlat0;
  let x_428 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_425.z, x_425.x, x_425.y, x_425.z));
  u_xlatb4 = vec3<bool>(x_428.x, x_428.y, x_428.z);
  let x_432 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_432;
  let x_435 : bool = u_xlatb4.x;
  if (x_435) {
    let x_441 : f32 = u_xlat1.x;
    x_437 = x_441;
  } else {
    let x_444 : f32 = u_xlat3.x;
    x_437 = x_444;
  }
  let x_445 : f32 = x_437;
  hlslcc_movcTemp.x = x_445;
  let x_448 : bool = u_xlatb4.y;
  if (x_448) {
    let x_453 : f32 = u_xlat1.y;
    x_449 = x_453;
  } else {
    let x_456 : f32 = u_xlat3.y;
    x_449 = x_456;
  }
  let x_457 : f32 = x_449;
  hlslcc_movcTemp.y = x_457;
  let x_460 : bool = u_xlatb4.z;
  if (x_460) {
    let x_465 : f32 = u_xlat1.z;
    x_461 = x_465;
  } else {
    let x_468 : f32 = u_xlat3.z;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  hlslcc_movcTemp.z = x_469;
  let x_471 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_471;
  let x_472 : vec4<f32> = u_xlat1;
  let x_476 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_476.z, x_476.z, x_476.z));
  let x_480 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_480);
  let x_484 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_486 : vec2<f32> = (vec2<f32>(x_484.x, x_484.y) * vec2<f32>(0.5f, 0.5f));
  let x_487 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_486.x, x_486.y, x_487.z);
  let x_489 : vec3<f32> = u_xlat8;
  let x_492 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_495 : vec3<f32> = u_xlat2;
  let x_497 : vec2<f32> = ((vec2<f32>(x_489.y, x_489.z) * vec2<f32>(x_492.x, x_492.y)) + vec2<f32>(x_495.x, x_495.y));
  let x_498 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_498.x, x_497.x, x_497.y, x_498.w);
  let x_501 : f32 = u_xlat8.x;
  let x_503 : f32 = x_51.x_Lut2D_Params.y;
  let x_506 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_501 * x_503) + x_506);
  let x_514 : vec4<f32> = u_xlat3;
  let x_516 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_514.x, x_514.z));
  let x_517 : vec3<f32> = vec3<f32>(x_516.x, x_516.y, x_516.z);
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_521 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_521;
  let x_524 : vec2<f32> = u_xlat16;
  let x_525 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_524 + vec2<f32>(x_525.x, x_525.z));
  let x_531 : vec2<f32> = u_xlat15;
  let x_532 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_531);
  u_xlat2 = vec3<f32>(x_532.x, x_532.y, x_532.z);
  let x_535 : f32 = u_xlat1.x;
  let x_537 : f32 = x_51.x_Lut2D_Params.z;
  let x_540 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_535 * x_537) + -(x_540));
  let x_544 : vec4<f32> = u_xlat4;
  let x_547 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_544.x, x_544.y, x_544.z)) + x_547);
  let x_549 : vec4<f32> = u_xlat1;
  let x_551 : vec3<f32> = u_xlat8;
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec3<f32> = ((vec3<f32>(x_549.x, x_549.x, x_549.x) * x_551) + vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_563 : vec4<f32> = u_xlat1;
  let x_567 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_568 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat3;
  let x_574 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_575 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat3;
  let x_580 : vec3<f32> = max(abs(vec3<f32>(x_577.x, x_577.y, x_577.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat3;
  let x_585 : vec3<f32> = log2(vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat3;
  let x_592 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_593 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat3;
  let x_597 : vec3<f32> = exp2(vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_603.x, x_603.y, x_603.z, x_603.x));
  u_xlatb1 = vec3<bool>(x_605.x, x_605.y, x_605.z);
  let x_608 : bool = u_xlatb1.x;
  if (x_608) {
    let x_613 : f32 = u_xlat2.x;
    x_609 = x_613;
  } else {
    let x_616 : f32 = u_xlat3.x;
    x_609 = x_616;
  }
  let x_617 : f32 = x_609;
  u_xlat0.x = x_617;
  let x_620 : bool = u_xlatb1.y;
  if (x_620) {
    let x_625 : f32 = u_xlat2.y;
    x_621 = x_625;
  } else {
    let x_628 : f32 = u_xlat3.y;
    x_621 = x_628;
  }
  let x_629 : f32 = x_621;
  u_xlat0.y = x_629;
  let x_632 : bool = u_xlatb1.z;
  if (x_632) {
    let x_637 : f32 = u_xlat2.z;
    x_633 = x_637;
  } else {
    let x_640 : f32 = u_xlat3.z;
    x_633 = x_640;
  }
  let x_641 : f32 = x_633;
  u_xlat0.z = x_641;
  let x_645 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_645);
  let x_649 : bool = u_xlatb1.x;
  if (x_649) {
    let x_652 : vec4<f32> = u_xlat0;
    let x_653 : vec3<f32> = vec3<f32>(x_652.x, x_652.y, x_652.z);
    let x_654 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
    let x_656 : vec4<f32> = u_xlat1;
    let x_660 : vec3<f32> = clamp(vec3<f32>(x_656.x, x_656.y, x_656.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_661 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
    let x_663 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_663.x, x_663.y, x_663.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_673 : vec4<f32> = u_xlat0;
  SV_Target0 = x_673;
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

