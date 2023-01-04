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
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
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

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_704 : f32;
  var x_716 : f32;
  var x_728 : f32;
  var x_785 : f32;
  var x_798 : f32;
  var x_810 : f32;
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
  let x_460 : f32 = x_51.x_PostExposure;
  let x_462 : f32 = x_51.x_PostExposure;
  let x_464 : f32 = x_51.x_PostExposure;
  let x_466 : f32 = x_51.x_PostExposure;
  let x_467 : vec4<f32> = vec4<f32>(x_460, x_462, x_464, x_466);
  u_xlat0 = (x_457 * vec4<f32>(x_467.x, x_467.y, x_467.z, x_467.w));
  let x_474 : vec4<f32> = u_xlat0;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.z, x_474.x, x_474.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat0;
  let x_486 : vec3<f32> = log2(vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_497 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = clamp(vec3<f32>(x_499.x, x_499.y, x_499.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat0;
  let x_510 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_512 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_510.z, x_510.z, x_510.z));
  let x_513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_516);
  let x_520 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_522 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) * vec2<f32>(0.5f, 0.5f));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_522.x, x_523.y, x_523.z, x_522.y);
  let x_525 : vec4<f32> = u_xlat1;
  let x_528 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec2<f32> = ((vec2<f32>(x_525.y, x_525.z) * vec2<f32>(x_528.x, x_528.y)) + vec2<f32>(x_531.x, x_531.w));
  let x_534 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_533.x, x_533.y, x_534.w);
  let x_537 : f32 = u_xlat7.x;
  let x_539 : f32 = x_51.x_Lut2D_Params.y;
  let x_542 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_537 * x_539) + x_542);
  let x_550 : vec4<f32> = u_xlat1;
  let x_552 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_550.x, x_550.z));
  let x_553 : vec3<f32> = vec3<f32>(x_552.x, x_552.y, x_552.z);
  let x_554 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_557 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_557;
  let x_559 : vec2<f32> = u_xlat16;
  let x_560 : vec4<f32> = u_xlat1;
  let x_562 : vec2<f32> = (x_559 + vec2<f32>(x_560.x, x_560.z));
  let x_563 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
  let x_568 : vec4<f32> = u_xlat1;
  let x_570 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_568.x, x_568.y));
  let x_571 : vec3<f32> = vec3<f32>(x_570.x, x_570.y, x_570.z);
  let x_572 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = u_xlat0.x;
  let x_577 : f32 = x_51.x_Lut2D_Params.z;
  let x_580 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_575 * x_577) + -(x_580));
  let x_584 : vec4<f32> = u_xlat3;
  let x_587 : vec4<f32> = u_xlat1;
  let x_589 : vec3<f32> = (-(vec3<f32>(x_584.x, x_584.y, x_584.z)) + vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec4<f32> = u_xlat1;
  let x_597 : vec4<f32> = u_xlat3;
  let x_599 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.x, x_592.x) * vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec2<f32> = vs_TEXCOORD0;
  let x_604 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_608 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_610 : vec2<f32> = ((x_602 * vec2<f32>(x_604.x, x_604.y)) + vec2<f32>(x_608.z, x_608.w));
  let x_611 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
  let x_618 : vec4<f32> = u_xlat1;
  let x_620 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_618.x, x_618.y));
  u_xlat1.x = x_620.w;
  let x_624 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_624 * 2.0f) + -1.0f);
  let x_629 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_629 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_635 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_635, 0.0f, 1.0f);
  let x_639 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_639 * 2.0f) + -1.0f);
  let x_644 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_644)) + 1.0f);
  let x_650 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_650);
  let x_654 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_654) + 1.0f);
  let x_659 : f32 = u_xlat1.x;
  let x_661 : f32 = u_xlat8.x;
  u_xlat1.x = (x_659 * x_661);
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_669 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_669.x, x_669.y, x_669.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_675 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_675);
  let x_677 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_677 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_681 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_681);
  let x_683 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_683 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_695 : vec4<f32> = u_xlat0;
  let x_698 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_695.x, x_695.y, x_695.z, x_695.x));
  u_xlatb0 = vec3<bool>(x_698.x, x_698.y, x_698.z);
  let x_702 : bool = u_xlatb0.x;
  if (x_702) {
    let x_708 : f32 = u_xlat8.x;
    x_704 = x_708;
  } else {
    let x_711 : f32 = u_xlat2.x;
    x_704 = x_711;
  }
  let x_712 : f32 = x_704;
  u_xlat0.x = x_712;
  let x_715 : bool = u_xlatb0.y;
  if (x_715) {
    let x_720 : f32 = u_xlat8.y;
    x_716 = x_720;
  } else {
    let x_723 : f32 = u_xlat2.y;
    x_716 = x_723;
  }
  let x_724 : f32 = x_716;
  u_xlat0.y = x_724;
  let x_727 : bool = u_xlatb0.z;
  if (x_727) {
    let x_732 : f32 = u_xlat8.z;
    x_728 = x_732;
  } else {
    let x_735 : f32 = u_xlat2.z;
    x_728 = x_735;
  }
  let x_736 : f32 = x_728;
  u_xlat0.z = x_736;
  let x_738 : vec4<f32> = u_xlat1;
  let x_743 : vec4<f32> = u_xlat0;
  let x_745 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.x, x_738.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat0;
  let x_752 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_755.x, x_755.y, x_755.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_760 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_760 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_764 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_764), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_767 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_767);
  let x_769 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_769 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_773 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_773);
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_777.x, x_777.y, x_777.z, x_777.x));
  u_xlatb0 = vec3<bool>(x_779.x, x_779.y, x_779.z);
  let x_784 : bool = u_xlatb0.x;
  if (x_784) {
    let x_789 : f32 = u_xlat1.x;
    x_785 = x_789;
  } else {
    let x_792 : f32 = u_xlat2.x;
    x_785 = x_792;
  }
  let x_793 : f32 = x_785;
  SV_Target0.x = x_793;
  let x_797 : bool = u_xlatb0.y;
  if (x_797) {
    let x_802 : f32 = u_xlat1.y;
    x_798 = x_802;
  } else {
    let x_805 : f32 = u_xlat2.y;
    x_798 = x_805;
  }
  let x_806 : f32 = x_798;
  SV_Target0.y = x_806;
  let x_809 : bool = u_xlatb0.z;
  if (x_809) {
    let x_814 : f32 = u_xlat1.z;
    x_810 = x_814;
  } else {
    let x_817 : f32 = u_xlat2.z;
    x_810 = x_817;
  }
  let x_818 : f32 = x_810;
  SV_Target0.z = x_818;
  let x_821 : f32 = u_xlat0.w;
  SV_Target0.w = x_821;
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

