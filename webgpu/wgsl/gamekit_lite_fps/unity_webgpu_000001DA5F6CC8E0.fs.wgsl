struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_GrainTex : sampler;

var<private> u_xlat12 : f32;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(7) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_224 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Amount;
  let x_44 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_79);
  let x_81 : bool = u_xlatb5;
  if (x_81) {
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_95 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat5.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat5.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_113);
    let x_116 : f32 = u_xlat5.x;
    let x_117 : f32 = u_xlat9;
    u_xlat5.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat5;
    let x_127 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_132);
    let x_134 : f32 = u_xlat13;
    let x_136 : f32 = x_25.x_Distortion_Amount.x;
    u_xlat13 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_25.x_Distortion_Amount.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_154);
    let x_156 : f32 = u_xlat6;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat6 = (x_162 * x_164);
    let x_167 : f32 = u_xlat6;
    u_xlat10 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat6;
    let x_173 : f32 = u_xlat10;
    u_xlat10 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat6;
    let x_178 : f32 = u_xlat10;
    u_xlat10 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat6;
    let x_183 : f32 = u_xlat10;
    u_xlat6 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat6;
    let x_189 : f32 = u_xlat2.x;
    u_xlat10 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat10;
    u_xlat10 = ((x_196 * -2.0f) + 1.570796371f);
    let x_201 : bool = u_xlatb14;
    let x_202 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat6;
    let x_208 : f32 = u_xlat10;
    u_xlat2.x = ((x_205 * x_206) + x_208);
    let x_212 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_212, 1.0f);
    let x_217 : f32 = u_xlat1.x;
    let x_219 : f32 = u_xlat1.x;
    u_xlatb1 = (x_217 < -(x_219));
    let x_222 : bool = u_xlatb1;
    if (x_222) {
      let x_228 : f32 = u_xlat2.x;
      x_224 = -(x_228);
    } else {
      let x_232 : f32 = u_xlat2.x;
      x_224 = x_232;
    }
    let x_233 : f32 = x_224;
    u_xlat1.x = x_233;
    let x_235 : f32 = u_xlat13;
    let x_237 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_235 * x_237) + -1.0f);
    let x_241 : vec4<f32> = u_xlat0;
    let x_243 : vec4<f32> = u_xlat1;
    let x_246 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_241.x, x_241.y) * vec2<f32>(x_243.x, x_243.x)) + x_246);
  }
  let x_259 : vec2<f32> = vs_TEXCOORD0;
  let x_260 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_259);
  u_xlat0.x = x_260.x;
  let x_268 : vec2<f32> = u_xlat5;
  let x_269 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_268);
  u_xlat1 = x_269;
  let x_270 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat1;
  let x_274 : vec3<f32> = (vec3<f32>(x_270.x, x_270.x, x_270.x) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : vec2<f32> = vs_TEXCOORD1;
  let x_280 : vec4<f32> = x_25.x_Grain_Params2;
  let x_284 : vec4<f32> = x_25.x_Grain_Params2;
  let x_286 : vec2<f32> = ((x_277 * vec2<f32>(x_280.x, x_280.y)) + vec2<f32>(x_284.z, x_284.w));
  let x_287 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_286.x, x_286.y, x_287.z);
  let x_294 : vec3<f32> = u_xlat2;
  let x_296 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_294.x, x_294.y));
  u_xlat2 = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_298 : vec4<f32> = u_xlat0;
  u_xlat3 = vec3<f32>(x_298.x, x_298.y, x_298.z);
  let x_300 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_300, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_305 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_305, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_311 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_311);
  let x_315 : f32 = x_25.x_Grain_Params1.x;
  let x_316 : f32 = u_xlat12;
  u_xlat12 = ((x_315 * -(x_316)) + 1.0f);
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_320.x, x_320.y, x_320.z) * x_322);
  let x_324 : vec3<f32> = u_xlat2;
  let x_326 : f32 = x_25.x_Grain_Params1.y;
  let x_328 : f32 = x_25.x_Grain_Params1.y;
  let x_330 : f32 = x_25.x_Grain_Params1.y;
  u_xlat2 = (x_324 * vec3<f32>(x_326, x_328, x_330));
  let x_333 : vec3<f32> = u_xlat2;
  let x_334 : f32 = u_xlat12;
  let x_337 : vec4<f32> = u_xlat0;
  let x_339 : vec3<f32> = ((x_333 * vec3<f32>(x_334, x_334, x_334)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat1;
  let x_346 : f32 = x_25.x_PostExposure;
  let x_348 : f32 = x_25.x_PostExposure;
  let x_350 : f32 = x_25.x_PostExposure;
  let x_352 : f32 = x_25.x_PostExposure;
  let x_353 : vec4<f32> = vec4<f32>(x_346, x_348, x_350, x_352);
  u_xlat0 = (vec4<f32>(x_342.w, x_342.x, x_342.y, x_342.z) * vec4<f32>(x_353.x, x_353.y, x_353.z, x_353.w));
  let x_360 : vec4<f32> = u_xlat0;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.y, x_360.z, x_360.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_368 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat1;
  let x_372 : vec3<f32> = log2(vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat1;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat1;
  let x_389 : vec3<f32> = clamp(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat1;
  let x_397 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_399 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_397.y, x_397.y, x_397.y));
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = x_25.x_Lut3D_Params.x;
  u_xlat13 = (x_403 * 0.5f);
  let x_405 : vec4<f32> = u_xlat1;
  let x_408 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_411 : f32 = u_xlat13;
  let x_413 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_408.x, x_408.x, x_408.x)) + vec3<f32>(x_411, x_411, x_411));
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_424 : vec4<f32> = u_xlat1;
  let x_426 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.z);
  let x_428 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_427.x, x_427.y, x_427.z);
  let x_432 : f32 = x_25.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_432);
  let x_434 : bool = u_xlatb1;
  if (x_434) {
    let x_437 : vec4<f32> = u_xlat0;
    let x_438 : vec3<f32> = vec3<f32>(x_437.y, x_437.z, x_437.w);
    let x_439 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
    let x_441 : vec4<f32> = u_xlat1;
    let x_445 : vec3<f32> = clamp(vec3<f32>(x_441.x, x_441.y, x_441.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_446 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
    let x_448 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_448.x, x_448.y, x_448.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_454 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_454.y, x_454.z, x_454.w, x_454.x);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

