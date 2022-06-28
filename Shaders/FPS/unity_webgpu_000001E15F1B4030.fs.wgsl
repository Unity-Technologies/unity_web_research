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
  var x_523 : f32;
  var x_535 : f32;
  var x_547 : f32;
  var x_688 : f32;
  var x_700 : f32;
  var x_712 : f32;
  var x_806 : f32;
  var x_818 : f32;
  var x_830 : f32;
  var x_877 : f32;
  var x_890 : f32;
  var x_902 : f32;
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
  let x_377 : vec2<f32> = vs_TEXCOORD1;
  let x_380 : vec4<f32> = x_51.x_Grain_Params2;
  let x_384 : vec4<f32> = x_51.x_Grain_Params2;
  let x_386 : vec2<f32> = ((x_377 * vec2<f32>(x_380.x, x_380.y)) + vec2<f32>(x_384.z, x_384.w));
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_386.x, x_386.y, x_387.z, x_387.w);
  let x_394 : vec4<f32> = u_xlat1;
  let x_396 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_394.x, x_394.y));
  let x_397 : vec3<f32> = vec3<f32>(x_396.x, x_396.y, x_396.z);
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat0;
  let x_401 : vec3<f32> = vec3<f32>(x_400.x, x_400.y, x_400.z);
  let x_402 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat3;
  let x_408 : vec3<f32> = clamp(vec3<f32>(x_404.x, x_404.y, x_404.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_419 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_419);
  let x_423 : f32 = x_51.x_Grain_Params1.x;
  let x_424 : f32 = u_xlat22;
  u_xlat22 = ((x_423 * -(x_424)) + 1.0f);
  let x_428 : vec4<f32> = u_xlat0;
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec3<f32> = (vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec4<f32> = u_xlat1;
  let x_438 : f32 = x_51.x_Grain_Params1.y;
  let x_440 : f32 = x_51.x_Grain_Params1.y;
  let x_442 : f32 = x_51.x_Grain_Params1.y;
  let x_444 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_438, x_440, x_442));
  let x_445 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat1;
  let x_449 : f32 = u_xlat22;
  let x_452 : vec4<f32> = u_xlat0;
  let x_454 : vec3<f32> = ((vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449, x_449, x_449)) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat0;
  let x_461 : vec3<f32> = clamp(vec3<f32>(x_457.x, x_457.y, x_457.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_462 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : f32 = u_xlat0.w;
  u_xlat21 = x_465;
  let x_466 : f32 = u_xlat21;
  u_xlat21 = clamp(x_466, 0.0f, 1.0f);
  let x_468 : vec4<f32> = u_xlat0;
  let x_472 : vec3<f32> = (vec3<f32>(x_468.z, x_468.x, x_468.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_473 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat0;
  let x_479 : vec3<f32> = max(vec3<f32>(x_475.z, x_475.x, x_475.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_480 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat3;
  let x_484 : vec3<f32> = log2(vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat3;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_492 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat3;
  let x_496 : vec3<f32> = exp2(vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat3;
  let x_506 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_507 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_514 : vec4<f32> = u_xlat0;
  let x_517 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_514.z, x_514.x, x_514.y, x_514.z));
  u_xlatb0 = vec3<bool>(x_517.x, x_517.y, x_517.z);
  let x_521 : bool = u_xlatb0.x;
  if (x_521) {
    let x_527 : f32 = u_xlat1.x;
    x_523 = x_527;
  } else {
    let x_530 : f32 = u_xlat3.x;
    x_523 = x_530;
  }
  let x_531 : f32 = x_523;
  u_xlat0.x = x_531;
  let x_534 : bool = u_xlatb0.y;
  if (x_534) {
    let x_539 : f32 = u_xlat1.y;
    x_535 = x_539;
  } else {
    let x_542 : f32 = u_xlat3.y;
    x_535 = x_542;
  }
  let x_543 : f32 = x_535;
  u_xlat0.y = x_543;
  let x_546 : bool = u_xlatb0.z;
  if (x_546) {
    let x_551 : f32 = u_xlat1.z;
    x_547 = x_551;
  } else {
    let x_554 : f32 = u_xlat3.z;
    x_547 = x_554;
  }
  let x_555 : f32 = x_547;
  u_xlat0.z = x_555;
  let x_557 : vec4<f32> = u_xlat0;
  let x_561 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_563 : vec3<f32> = (vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(x_561.z, x_561.z, x_561.z));
  let x_564 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_567 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_567);
  let x_571 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_573 : vec2<f32> = (vec2<f32>(x_571.x, x_571.y) * vec2<f32>(0.5f, 0.5f));
  let x_574 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_573.x, x_574.y, x_574.z, x_573.y);
  let x_576 : vec4<f32> = u_xlat1;
  let x_579 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_582 : vec4<f32> = u_xlat1;
  let x_584 : vec2<f32> = ((vec2<f32>(x_576.y, x_576.z) * vec2<f32>(x_579.x, x_579.y)) + vec2<f32>(x_582.x, x_582.w));
  let x_585 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_585.x, x_584.x, x_584.y, x_585.w);
  let x_588 : f32 = u_xlat7.x;
  let x_590 : f32 = x_51.x_Lut2D_Params.y;
  let x_593 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_588 * x_590) + x_593);
  let x_601 : vec4<f32> = u_xlat1;
  let x_603 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_601.x, x_601.z));
  let x_604 : vec3<f32> = vec3<f32>(x_603.x, x_603.y, x_603.z);
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_608 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_608;
  let x_610 : vec2<f32> = u_xlat16;
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec2<f32> = (x_610 + vec2<f32>(x_611.x, x_611.z));
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_619 : vec4<f32> = u_xlat1;
  let x_621 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_619.x, x_619.y));
  let x_622 : vec3<f32> = vec3<f32>(x_621.x, x_621.y, x_621.z);
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_626 : f32 = u_xlat0.x;
  let x_628 : f32 = x_51.x_Lut2D_Params.z;
  let x_631 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_626 * x_628) + -(x_631));
  let x_635 : vec4<f32> = u_xlat3;
  let x_638 : vec4<f32> = u_xlat1;
  let x_640 : vec3<f32> = (-(vec3<f32>(x_635.x, x_635.y, x_635.z)) + vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat0;
  let x_645 : vec4<f32> = u_xlat1;
  let x_648 : vec4<f32> = u_xlat3;
  let x_650 : vec3<f32> = ((vec3<f32>(x_643.x, x_643.x, x_643.x) * vec3<f32>(x_645.x, x_645.y, x_645.z)) + vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat0;
  let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_660.x, x_660.y, x_660.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_665 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_665 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_669 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_669), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_672 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_672);
  let x_674 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_674 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_678 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_678);
  let x_682 : vec4<f32> = u_xlat0;
  let x_684 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_682.x, x_682.y, x_682.z, x_682.x));
  u_xlatb0 = vec3<bool>(x_684.x, x_684.y, x_684.z);
  let x_687 : bool = u_xlatb0.x;
  if (x_687) {
    let x_692 : f32 = u_xlat1.x;
    x_688 = x_692;
  } else {
    let x_695 : f32 = u_xlat2.x;
    x_688 = x_695;
  }
  let x_696 : f32 = x_688;
  u_xlat0.x = x_696;
  let x_699 : bool = u_xlatb0.y;
  if (x_699) {
    let x_704 : f32 = u_xlat1.y;
    x_700 = x_704;
  } else {
    let x_707 : f32 = u_xlat2.y;
    x_700 = x_707;
  }
  let x_708 : f32 = x_700;
  u_xlat0.y = x_708;
  let x_711 : bool = u_xlatb0.z;
  if (x_711) {
    let x_716 : f32 = u_xlat1.z;
    x_712 = x_716;
  } else {
    let x_719 : f32 = u_xlat2.z;
    x_712 = x_719;
  }
  let x_720 : f32 = x_712;
  u_xlat0.z = x_720;
  let x_722 : vec2<f32> = vs_TEXCOORD0;
  let x_724 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_728 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_730 : vec2<f32> = ((x_722 * vec2<f32>(x_724.x, x_724.y)) + vec2<f32>(x_728.z, x_728.w));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
  let x_738 : vec4<f32> = u_xlat1;
  let x_740 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_738.x, x_738.y));
  u_xlat1.x = x_740.w;
  let x_744 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_744 * 2.0f) + -1.0f);
  let x_749 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_749 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_755 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_755, 0.0f, 1.0f);
  let x_759 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_759 * 2.0f) + -1.0f);
  let x_764 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_764)) + 1.0f);
  let x_770 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_770);
  let x_774 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_774) + 1.0f);
  let x_779 : f32 = u_xlat1.x;
  let x_781 : f32 = u_xlat8.x;
  u_xlat1.x = (x_779 * x_781);
  let x_784 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_787 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_787.x, x_787.y, x_787.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_791 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_791);
  let x_793 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_793 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_795 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_795);
  let x_797 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_797 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_800 : vec4<f32> = u_xlat0;
  let x_802 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_800.x, x_800.y, x_800.z, x_800.x));
  u_xlatb0 = vec3<bool>(x_802.x, x_802.y, x_802.z);
  let x_805 : bool = u_xlatb0.x;
  if (x_805) {
    let x_810 : f32 = u_xlat8.x;
    x_806 = x_810;
  } else {
    let x_813 : f32 = u_xlat2.x;
    x_806 = x_813;
  }
  let x_814 : f32 = x_806;
  u_xlat0.x = x_814;
  let x_817 : bool = u_xlatb0.y;
  if (x_817) {
    let x_822 : f32 = u_xlat8.y;
    x_818 = x_822;
  } else {
    let x_825 : f32 = u_xlat2.y;
    x_818 = x_825;
  }
  let x_826 : f32 = x_818;
  u_xlat0.y = x_826;
  let x_829 : bool = u_xlatb0.z;
  if (x_829) {
    let x_834 : f32 = u_xlat8.z;
    x_830 = x_834;
  } else {
    let x_837 : f32 = u_xlat2.z;
    x_830 = x_837;
  }
  let x_838 : f32 = x_830;
  u_xlat0.z = x_838;
  let x_840 : vec4<f32> = u_xlat1;
  let x_845 : vec4<f32> = u_xlat0;
  let x_847 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.x, x_840.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat0;
  let x_852 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_853 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_855.x, x_855.y, x_855.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_858 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_858 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_860 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_860), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_863 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_863);
  let x_865 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_865 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_867 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_867);
  let x_869 : vec4<f32> = u_xlat0;
  let x_871 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_869.x, x_869.y, x_869.z, x_869.x));
  u_xlatb0 = vec3<bool>(x_871.x, x_871.y, x_871.z);
  let x_876 : bool = u_xlatb0.x;
  if (x_876) {
    let x_881 : f32 = u_xlat1.x;
    x_877 = x_881;
  } else {
    let x_884 : f32 = u_xlat2.x;
    x_877 = x_884;
  }
  let x_885 : f32 = x_877;
  SV_Target0.x = x_885;
  let x_889 : bool = u_xlatb0.y;
  if (x_889) {
    let x_894 : f32 = u_xlat1.y;
    x_890 = x_894;
  } else {
    let x_897 : f32 = u_xlat2.y;
    x_890 = x_897;
  }
  let x_898 : f32 = x_890;
  SV_Target0.y = x_898;
  let x_901 : bool = u_xlatb0.z;
  if (x_901) {
    let x_906 : f32 = u_xlat1.z;
    x_902 = x_906;
  } else {
    let x_909 : f32 = u_xlat2.z;
    x_902 = x_909;
  }
  let x_910 : f32 = x_902;
  SV_Target0.z = x_910;
  let x_912 : f32 = u_xlat21;
  SV_Target0.w = x_912;
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

