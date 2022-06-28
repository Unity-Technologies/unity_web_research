struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

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
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : vec2<f32> = vs_TEXCOORD1;
  let x_227 : vec4<f32> = x_51.x_Grain_Params2;
  let x_231 : vec4<f32> = x_51.x_Grain_Params2;
  let x_233 : vec2<f32> = ((x_224 * vec2<f32>(x_227.x, x_227.y)) + vec2<f32>(x_231.z, x_231.w));
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_233.x, x_233.y, x_234.z);
  let x_241 : vec3<f32> = u_xlat2;
  let x_243 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_241.x, x_241.y));
  let x_244 : vec3<f32> = vec3<f32>(x_243.x, x_243.y, x_243.z);
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = vec3<f32>(x_247.x, x_247.y, x_247.z);
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = clamp(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_265 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_265);
  let x_269 : f32 = x_51.x_Grain_Params1.x;
  let x_270 : f32 = u_xlat21;
  u_xlat21 = ((x_269 * -(x_270)) + 1.0f);
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat3;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat3;
  let x_284 : f32 = x_51.x_Grain_Params1.y;
  let x_286 : f32 = x_51.x_Grain_Params1.y;
  let x_288 : f32 = x_51.x_Grain_Params1.y;
  let x_290 : vec3<f32> = (vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_284, x_286, x_288));
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat3;
  let x_295 : f32 = u_xlat21;
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295, x_295, x_295)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat1;
  let x_306 : f32 = x_51.x_PostExposure;
  let x_308 : f32 = x_51.x_PostExposure;
  let x_310 : f32 = x_51.x_PostExposure;
  let x_312 : f32 = x_51.x_PostExposure;
  let x_313 : vec4<f32> = vec4<f32>(x_306, x_308, x_310, x_312);
  u_xlat0 = (x_303 * vec4<f32>(x_313.x, x_313.y, x_313.z, x_313.w));
  let x_320 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.z, x_320.x, x_320.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec3<f32> = log2(vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat1;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat1;
  let x_349 : vec3<f32> = clamp(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_356 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_356.z, x_356.z, x_356.z));
  let x_360 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_360);
  let x_364 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_366 : vec2<f32> = (vec2<f32>(x_364.x, x_364.y) * vec2<f32>(0.5f, 0.5f));
  let x_367 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_366.x, x_366.y, x_367.z);
  let x_369 : vec3<f32> = u_xlat8;
  let x_372 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_375 : vec3<f32> = u_xlat2;
  let x_377 : vec2<f32> = ((vec2<f32>(x_369.y, x_369.z) * vec2<f32>(x_372.x, x_372.y)) + vec2<f32>(x_375.x, x_375.y));
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_377.x, x_377.y, x_378.w);
  let x_381 : f32 = u_xlat8.x;
  let x_383 : f32 = x_51.x_Lut2D_Params.y;
  let x_386 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_381 * x_383) + x_386);
  let x_394 : vec4<f32> = u_xlat3;
  let x_396 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_394.x, x_394.z));
  let x_397 : vec3<f32> = vec3<f32>(x_396.x, x_396.y, x_396.z);
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_401 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_401;
  let x_404 : vec2<f32> = u_xlat16;
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_404 + vec2<f32>(x_405.x, x_405.z));
  let x_411 : vec2<f32> = u_xlat15;
  let x_412 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_411);
  u_xlat2 = vec3<f32>(x_412.x, x_412.y, x_412.z);
  let x_415 : f32 = u_xlat1.x;
  let x_417 : f32 = x_51.x_Lut2D_Params.z;
  let x_420 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_415 * x_417) + -(x_420));
  let x_424 : vec4<f32> = u_xlat4;
  let x_427 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_424.x, x_424.y, x_424.z)) + x_427);
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = u_xlat8;
  let x_433 : vec4<f32> = u_xlat4;
  let x_435 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.x, x_429.x) * x_431) + vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_442 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_442);
  let x_444 : bool = u_xlatb1;
  if (x_444) {
    let x_447 : vec4<f32> = u_xlat0;
    let x_448 : vec3<f32> = vec3<f32>(x_447.x, x_447.y, x_447.z);
    let x_449 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_451 : vec4<f32> = u_xlat1;
    let x_455 : vec3<f32> = clamp(vec3<f32>(x_451.x, x_451.y, x_451.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_456 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_458 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_458.x, x_458.y, x_458.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_464 : vec4<f32> = u_xlat0;
  SV_Target0 = x_464;
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

