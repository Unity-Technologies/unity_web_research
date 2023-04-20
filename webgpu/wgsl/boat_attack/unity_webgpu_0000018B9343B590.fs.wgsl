diagnostic(off, derivative_uniformity);

alias Arr = array<mat4x4<f32>, 5u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  unity_FogColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_20 : LightShadows;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb0 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb2 : bool;

var<private> u_xlat4 : f32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_293 : PGlobals;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_272 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD6;
  let x_25 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres0;
  let x_28 : vec3<f32> = (x_13 + -(vec3<f32>(x_25.x, x_25.y, x_25.z)));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_28.z, x_29.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_31.x, x_31.y, x_31.z), vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_40 : vec3<f32> = vs_TEXCOORD6;
  let x_43 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres1;
  let x_46 : vec3<f32> = (x_40 + -(vec3<f32>(x_43.x, x_43.y, x_43.z)));
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_49 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(x_49.x, x_49.y, x_49.z), vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_56 : vec3<f32> = vs_TEXCOORD6;
  let x_59 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres2;
  let x_62 : vec3<f32> = (x_56 + -(vec3<f32>(x_59.x, x_59.y, x_59.z)));
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_65 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(x_65.x, x_65.y, x_65.z), vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_72 : vec3<f32> = vs_TEXCOORD6;
  let x_75 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres3;
  let x_78 : vec3<f32> = (x_72 + -(vec3<f32>(x_75.x, x_75.y, x_75.z)));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat0.w = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_92 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = x_20.x_CascadeShadowSplitSphereRadii;
  u_xlatb0 = (x_92 < x_95);
  let x_99 : bool = u_xlatb0.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_99);
  let x_105 : bool = u_xlatb0.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_105);
  let x_109 : bool = u_xlatb0.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_109);
  let x_113 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_113);
  let x_119 : bool = u_xlatb0.y;
  u_xlat0.y = select(0.0f, 1.0f, x_119);
  let x_123 : bool = u_xlatb0.z;
  u_xlat0.z = select(0.0f, 1.0f, x_123);
  let x_127 : bool = u_xlatb0.w;
  u_xlat0.w = select(0.0f, 1.0f, x_127);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : vec3<f32> = (vec3<f32>(x_130.x, x_130.y, x_130.z) + vec3<f32>(x_132.y, x_132.z, x_132.w));
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = max(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_141.x, x_140.x, x_140.y, x_140.z);
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_143, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_151) + 4.0f);
  let x_158 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_158);
  let x_162 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_162) << bitcast<u32>(2i));
  let x_167 : vec3<f32> = vs_TEXCOORD6;
  let x_170 : i32 = u_xlati0;
  let x_173 : i32 = u_xlati0;
  let x_177 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_170 + 1i) / 4i)][((x_173 + 1i) % 4i)];
  u_xlat2 = (vec3<f32>(x_167.y, x_167.y, x_167.y) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : i32 = u_xlati0;
  let x_182 : i32 = u_xlati0;
  let x_185 : vec4<f32> = x_20.x_MainLightWorldToShadow[(x_180 / 4i)][(x_182 % 4i)];
  let x_187 : vec3<f32> = vs_TEXCOORD6;
  let x_190 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.x, x_187.x, x_187.x)) + x_190);
  let x_192 : i32 = u_xlati0;
  let x_195 : i32 = u_xlati0;
  let x_199 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_192 + 2i) / 4i)][((x_195 + 2i) % 4i)];
  let x_201 : vec3<f32> = vs_TEXCOORD6;
  let x_204 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.z, x_201.z, x_201.z)) + x_204);
  let x_206 : vec3<f32> = u_xlat2;
  let x_207 : i32 = u_xlati0;
  let x_210 : i32 = u_xlati0;
  let x_214 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_207 + 3i) / 4i)][((x_210 + 3i) % 4i)];
  let x_216 : vec3<f32> = (x_206 + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_221 : f32 = u_xlat0.z;
  u_xlatb6 = (0.0f >= x_221);
  let x_225 : f32 = u_xlat0.z;
  u_xlatb1 = (x_225 >= 1.0f);
  let x_230 : vec4<f32> = u_xlat0;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_233 : f32 = u_xlat0.z;
  txVec0 = vec3<f32>(x_231.x, x_231.y, x_233);
  let x_247 : vec3<f32> = txVec0;
  let x_249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_247.xy, x_247.z);
  u_xlat0.x = x_249;
  let x_252 : bool = u_xlatb6;
  let x_253 : bool = u_xlatb1;
  u_xlatb2 = (x_252 | x_253);
  let x_259 : f32 = x_20.x_MainLightShadowParams.x;
  u_xlat4 = (-(x_259) + 1.0f);
  let x_263 : f32 = u_xlat0.x;
  let x_265 : f32 = x_20.x_MainLightShadowParams.x;
  let x_267 : f32 = u_xlat4;
  u_xlat0.x = ((x_263 * x_265) + x_267);
  let x_270 : bool = u_xlatb2;
  if (x_270) {
    x_272 = 1.0f;
  } else {
    let x_277 : f32 = u_xlat0.x;
    x_272 = x_277;
  }
  let x_278 : f32 = x_272;
  u_xlat0.x = x_278;
  let x_290 : vec2<f32> = vs_TEXCOORD1;
  let x_295 : f32 = x_293.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_290, x_295);
  u_xlat1 = x_296;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_297.x, x_297.y, x_297.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_303 : f32 = u_xlat1.w;
  u_xlat1.x = max(x_303, 0.00009999999747378752f);
  let x_309 : vec4<f32> = vs_TEXCOORD5;
  let x_311 : vec3<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_309.x, x_309.y, x_309.z), x_311);
  let x_315 : f32 = u_xlat2.x;
  u_xlat2.x = (x_315 + 0.5f);
  let x_324 : vec2<f32> = vs_TEXCOORD1;
  let x_326 : f32 = x_293.x_GlobalMipBias.x;
  let x_327 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_324, x_326);
  u_xlat3 = vec3<f32>(x_327.x, x_327.y, x_327.z);
  let x_329 : vec3<f32> = u_xlat2;
  let x_331 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec3<f32>(x_329.x, x_329.x, x_329.x) * x_331);
  let x_333 : vec3<f32> = u_xlat2;
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_333 / vec3<f32>(x_334.x, x_334.x, x_334.x));
  let x_338 : vec4<f32> = vs_TEXCOORD3;
  let x_340 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = u_xlat2;
  let x_344 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.x, x_340.x)) + x_343);
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_353 : vec2<f32> = vs_TEXCOORD0;
  let x_355 : f32 = x_293.x_GlobalMipBias.x;
  let x_356 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_353, x_355);
  u_xlat1 = x_356;
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = x_293.unity_FogColor;
  let x_366 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + -(vec3<f32>(x_363.x, x_363.y, x_363.z)));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_372 : f32 = u_xlat1.w;
  SV_Target0.w = x_372;
  let x_378 : f32 = vs_TEXCOORD3.w;
  let x_380 : f32 = vs_TEXCOORD3.w;
  u_xlat6 = (x_378 * -(x_380));
  let x_383 : f32 = u_xlat6;
  u_xlat6 = exp2(x_383);
  let x_385 : f32 = u_xlat6;
  let x_387 : vec4<f32> = u_xlat0;
  let x_391 : vec4<f32> = x_293.unity_FogColor;
  let x_393 : vec3<f32> = ((vec3<f32>(x_385, x_385, x_385) * vec3<f32>(x_387.x, x_387.y, x_387.z)) + vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD6_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


