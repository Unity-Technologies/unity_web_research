diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_4,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_159 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu8 : u32;

var<private> u_xlati8 : i32;

@group(1) @binding(2) var<uniform> x_391 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

@group(1) @binding(1) var<uniform> x_670 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_801 : f32;
  var x_811 : f32;
  var txVec1 : vec3<f32>;
  var x_1026 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat8 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat24;
  let x_91 : f32 = u_xlat16;
  u_xlat16 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat16;
  u_xlat16 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat8;
  let x_98 : f32 = u_xlat16;
  u_xlat8 = (x_97 / x_98);
  let x_100 : f32 = u_xlat8;
  u_xlat8 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat8;
  u_xlat8 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb16;
  if (x_110) {
    let x_114 : f32 = u_xlat8;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat8 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat8;
  u_xlatb8 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb8;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_140);
  let x_143 : f32 = u_xlat8;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (x_151 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_189 : vec3<f32> = vs_TEXCOORD1;
  let x_191 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_189 + -(vec3<f32>(x_191.x, x_191.y, x_191.z)));
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : vec4<f32> = u_xlat5;
  let x_210 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec3<f32> = u_xlat6;
  let x_216 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_215, x_216);
  let x_222 : vec4<f32> = u_xlat3;
  let x_225 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_222 < x_225);
  let x_228 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_240);
  let x_244 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_244);
  let x_250 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_250);
  let x_254 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_254);
  let x_257 : vec4<f32> = u_xlat3;
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec3<f32> = (vec3<f32>(x_257.x, x_257.y, x_257.z) + vec3<f32>(x_259.y, x_259.z, x_259.w));
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat3;
  let x_267 : vec3<f32> = max(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_268.x, x_267.x, x_267.y, x_267.z);
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat8 = dot(x_270, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_276 : f32 = u_xlat8;
  u_xlat8 = (-(x_276) + 4.0f);
  let x_281 : f32 = u_xlat8;
  u_xlatu8 = u32(x_281);
  let x_285 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_285) << bitcast<u32>(2i));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : i32 = u_xlati8;
  let x_293 : i32 = u_xlati8;
  let x_297 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_290 + 1i) / 4i)][((x_293 + 1i) % 4i)];
  let x_299 : vec3<f32> = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : i32 = u_xlati8;
  let x_304 : i32 = u_xlati8;
  let x_307 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_302 / 4i)][(x_304 % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : i32 = u_xlati8;
  let x_320 : i32 = u_xlati8;
  let x_324 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_317 + 2i) / 4i)][((x_320 + 2i) % 4i)];
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.z, x_326.z, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : i32 = u_xlati8;
  let x_339 : i32 = u_xlati8;
  let x_343 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_336 + 3i) / 4i)][((x_339 + 3i) % 4i)];
  let x_345 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_350 : f32 = vs_TEXCOORD1.y;
  let x_353 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat8 = (x_350 * x_353);
  let x_356 : f32 = x_28.unity_MatrixV[0i].z;
  let x_358 : f32 = vs_TEXCOORD1.x;
  let x_360 : f32 = u_xlat8;
  u_xlat8 = ((x_356 * x_358) + x_360);
  let x_363 : f32 = x_28.unity_MatrixV[2i].z;
  let x_365 : f32 = vs_TEXCOORD1.z;
  let x_367 : f32 = u_xlat8;
  u_xlat8 = ((x_363 * x_365) + x_367);
  let x_369 : f32 = u_xlat8;
  let x_371 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat8 = (x_369 + x_371);
  let x_373 : f32 = u_xlat8;
  let x_377 : f32 = x_28.x_ProjectionParams.y;
  u_xlat8 = (-(x_373) + -(x_377));
  let x_380 : f32 = u_xlat8;
  u_xlat8 = max(x_380, 0.0f);
  let x_382 : f32 = u_xlat8;
  let x_385 : f32 = x_28.unity_FogParams.x;
  u_xlat8 = (x_382 * x_385);
  u_xlat2.w = 1.0f;
  let x_394 : vec4<f32> = x_391.unity_SHAr;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_394, x_395);
  let x_400 : vec4<f32> = x_391.unity_SHAg;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_391.unity_SHAb;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_406, x_407);
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_410.y, x_410.z, x_410.z, x_410.x) * vec4<f32>(x_412.x, x_412.y, x_412.z, x_412.z));
  let x_417 : vec4<f32> = x_391.unity_SHBr;
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_391.unity_SHBg;
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_391.unity_SHBb;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_429, x_430);
  let x_434 : f32 = u_xlat2.y;
  let x_436 : f32 = u_xlat2.y;
  u_xlat24 = (x_434 * x_436);
  let x_439 : f32 = u_xlat2.x;
  let x_441 : f32 = u_xlat2.x;
  let x_443 : f32 = u_xlat24;
  u_xlat24 = ((x_439 * x_441) + -(x_443));
  let x_448 : vec4<f32> = x_391.unity_SHC;
  let x_450 : f32 = u_xlat24;
  let x_453 : vec3<f32> = u_xlat6;
  let x_454 : vec3<f32> = ((vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_450, x_450, x_450)) + x_453);
  let x_455 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat5;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.x, x_457.y, x_457.z) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat4;
  let x_466 : vec3<f32> = max(vec3<f32>(x_464.x, x_464.y, x_464.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_471 : vec4<f32> = u_xlat3;
  let x_472 : vec2<f32> = vec2<f32>(x_471.x, x_471.y);
  let x_474 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_472.x, x_472.y, x_474);
  let x_486 : vec3<f32> = txVec0;
  let x_488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_486.xy, x_486.z);
  u_xlat24 = x_488;
  let x_491 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_491) + 1.0f);
  let x_495 : f32 = u_xlat24;
  let x_497 : f32 = x_159.x_MainLightShadowParams.x;
  let x_500 : f32 = u_xlat1.x;
  u_xlat24 = ((x_495 * x_497) + x_500);
  let x_504 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_504);
  let x_508 : f32 = u_xlat3.z;
  u_xlatb26 = (x_508 >= 1.0f);
  let x_510 : bool = u_xlatb1;
  let x_511 : bool = u_xlatb26;
  u_xlatb1 = (x_510 | x_511);
  let x_513 : bool = u_xlatb1;
  let x_514 : f32 = u_xlat24;
  u_xlat24 = select(x_514, 1.0f, x_513);
  let x_516 : vec3<f32> = vs_TEXCOORD1;
  let x_519 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_521 : vec3<f32> = (x_516 + -(x_519));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat3;
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_532 : f32 = u_xlat1.x;
  let x_534 : f32 = x_159.x_MainLightShadowParams.z;
  let x_537 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat26 = ((x_532 * x_534) + x_537);
  let x_539 : f32 = u_xlat26;
  u_xlat26 = clamp(x_539, 0.0f, 1.0f);
  let x_541 : f32 = u_xlat24;
  u_xlat3.x = (-(x_541) + 1.0f);
  let x_545 : f32 = u_xlat26;
  let x_547 : f32 = u_xlat3.x;
  let x_549 : f32 = u_xlat24;
  u_xlat24 = ((x_545 * x_547) + x_549);
  let x_551 : f32 = u_xlat24;
  let x_553 : f32 = x_391.unity_LightData.z;
  u_xlat24 = (x_551 * x_553);
  let x_555 : f32 = u_xlat24;
  let x_558 : vec4<f32> = x_28.x_MainLightColor;
  let x_560 : vec3<f32> = (vec3<f32>(x_555, x_555, x_555) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat2;
  let x_566 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_563.x, x_563.y, x_563.z), vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : f32 = u_xlat24;
  u_xlat24 = clamp(x_569, 0.0f, 1.0f);
  let x_571 : f32 = u_xlat24;
  let x_573 : vec4<f32> = u_xlat3;
  let x_575 : vec3<f32> = (vec3<f32>(x_571, x_571, x_571) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat1;
  let x_580 : vec4<f32> = u_xlat3;
  let x_582 : vec3<f32> = (vec3<f32>(x_578.y, x_578.z, x_578.w) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat0;
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.x, x_585.x) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_595 : f32 = x_391.unity_LightData.y;
  u_xlat24 = min(x_593, x_595);
  let x_598 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_598));
  let x_602 : f32 = u_xlat1.x;
  let x_605 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_608 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_602 * x_605) + x_608);
  let x_612 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_612, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_625 : u32 = u_xlatu_loop_1;
    let x_626 : u32 = u_xlatu24;
    if ((x_625 < x_626)) {
    } else {
      break;
    }
    let x_629 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_629 >> 2u);
    let x_632 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_632 & 3u));
    let x_636 : u32 = u_xlatu27;
    let x_639 : vec4<f32> = x_391.unity_LightIndices[bitcast<i32>(x_636)];
    let x_649 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_654 : vec4<u32> = indexable[x_649];
    u_xlat27 = dot(x_639, bitcast<vec4<f32>>(x_654));
    let x_658 : f32 = u_xlat27;
    u_xlati27 = i32(x_658);
    let x_660 : vec3<f32> = vs_TEXCOORD1;
    let x_671 : i32 = u_xlati27;
    let x_673 : vec4<f32> = x_670.x_AdditionalLightsPosition[x_671];
    let x_676 : i32 = u_xlati27;
    let x_678 : vec4<f32> = x_670.x_AdditionalLightsPosition[x_676];
    u_xlat6 = ((-(x_660) * vec3<f32>(x_673.w, x_673.w, x_673.w)) + vec3<f32>(x_678.x, x_678.y, x_678.z));
    let x_682 : vec3<f32> = u_xlat6;
    let x_683 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_682, x_683);
    let x_685 : f32 = u_xlat28;
    u_xlat28 = max(x_685, 0.00006103515625f);
    let x_689 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_689);
    let x_691 : f32 = u_xlat29;
    let x_693 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_691, x_691, x_691) * x_693);
    let x_695 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_695);
    let x_697 : f32 = u_xlat28;
    let x_698 : i32 = u_xlati27;
    let x_700 : f32 = x_670.x_AdditionalLightsAttenuation[x_698].x;
    u_xlat28 = (x_697 * x_700);
    let x_702 : f32 = u_xlat28;
    let x_704 : f32 = u_xlat28;
    u_xlat28 = ((-(x_702) * x_704) + 1.0f);
    let x_707 : f32 = u_xlat28;
    u_xlat28 = max(x_707, 0.0f);
    let x_709 : f32 = u_xlat28;
    let x_710 : f32 = u_xlat28;
    u_xlat28 = (x_709 * x_710);
    let x_712 : f32 = u_xlat28;
    let x_713 : f32 = u_xlat29;
    u_xlat28 = (x_712 * x_713);
    let x_715 : i32 = u_xlati27;
    let x_717 : vec4<f32> = x_670.x_AdditionalLightsSpotDir[x_715];
    let x_719 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), x_719);
    let x_721 : f32 = u_xlat29;
    let x_722 : i32 = u_xlati27;
    let x_724 : f32 = x_670.x_AdditionalLightsAttenuation[x_722].z;
    let x_726 : i32 = u_xlati27;
    let x_728 : f32 = x_670.x_AdditionalLightsAttenuation[x_726].w;
    u_xlat29 = ((x_721 * x_724) + x_728);
    let x_730 : f32 = u_xlat29;
    u_xlat29 = clamp(x_730, 0.0f, 1.0f);
    let x_732 : f32 = u_xlat29;
    let x_733 : f32 = u_xlat29;
    u_xlat29 = (x_732 * x_733);
    let x_735 : f32 = u_xlat28;
    let x_736 : f32 = u_xlat29;
    u_xlat28 = (x_735 * x_736);
    let x_740 : i32 = u_xlati27;
    let x_742 : f32 = x_159.x_AdditionalShadowParams[x_740].w;
    u_xlati29 = i32(x_742);
    let x_745 : i32 = u_xlati29;
    u_xlatb30 = (x_745 >= 0i);
    let x_747 : bool = u_xlatb30;
    if (x_747) {
      let x_751 : i32 = u_xlati27;
      let x_753 : f32 = x_159.x_AdditionalShadowParams[x_751].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_753, x_753, x_753, x_753))));
      let x_757 : bool = u_xlatb30;
      if (x_757) {
        let x_761 : vec3<f32> = u_xlat6;
        let x_764 : vec3<f32> = u_xlat6;
        let x_767 : vec4<bool> = (abs(vec4<f32>(x_761.z, x_761.z, x_761.y, x_761.z)) >= abs(vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.x)));
        let x_769 : vec3<bool> = vec3<bool>(x_767.x, x_767.y, x_767.z);
        let x_770 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_769.x, x_769.y, x_769.z, x_770.w);
        let x_773 : bool = u_xlatb7.y;
        let x_775 : bool = u_xlatb7.x;
        u_xlatb30 = (x_773 & x_775);
        let x_777 : vec3<f32> = u_xlat6;
        let x_780 : vec4<bool> = (-(vec4<f32>(x_777.z, x_777.y, x_777.z, x_777.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_781 : vec3<bool> = vec3<bool>(x_780.x, x_780.y, x_780.w);
        let x_782 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_781.x, x_781.y, x_782.z, x_781.z);
        let x_786 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_786);
        let x_791 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_791);
        let x_796 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_796);
        let x_800 : bool = u_xlatb7.z;
        if (x_800) {
          let x_805 : f32 = u_xlat7.y;
          x_801 = x_805;
        } else {
          let x_807 : f32 = u_xlat31;
          x_801 = x_807;
        }
        let x_808 : f32 = x_801;
        u_xlat15 = x_808;
        let x_810 : bool = u_xlatb30;
        if (x_810) {
          let x_815 : f32 = u_xlat7.x;
          x_811 = x_815;
        } else {
          let x_817 : f32 = u_xlat15;
          x_811 = x_817;
        }
        let x_818 : f32 = x_811;
        u_xlat30 = x_818;
        let x_819 : i32 = u_xlati27;
        let x_821 : f32 = x_159.x_AdditionalShadowParams[x_819].w;
        u_xlat7.x = trunc(x_821);
        let x_824 : f32 = u_xlat30;
        let x_826 : f32 = u_xlat7.x;
        u_xlat30 = (x_824 + x_826);
        let x_828 : f32 = u_xlat30;
        u_xlati29 = i32(x_828);
      }
      let x_830 : i32 = u_xlati29;
      u_xlati29 = (x_830 << bitcast<u32>(2i));
      let x_832 : vec3<f32> = vs_TEXCOORD1;
      let x_835 : i32 = u_xlati29;
      let x_838 : i32 = u_xlati29;
      let x_842 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_835 + 1i) / 4i)][((x_838 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_832.y, x_832.y, x_832.y, x_832.y) * x_842);
      let x_844 : i32 = u_xlati29;
      let x_846 : i32 = u_xlati29;
      let x_849 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_844 / 4i)][(x_846 % 4i)];
      let x_850 : vec3<f32> = vs_TEXCOORD1;
      let x_853 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_849 * vec4<f32>(x_850.x, x_850.x, x_850.x, x_850.x)) + x_853);
      let x_855 : i32 = u_xlati29;
      let x_858 : i32 = u_xlati29;
      let x_862 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_855 + 2i) / 4i)][((x_858 + 2i) % 4i)];
      let x_863 : vec3<f32> = vs_TEXCOORD1;
      let x_866 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_862 * vec4<f32>(x_863.z, x_863.z, x_863.z, x_863.z)) + x_866);
      let x_868 : vec4<f32> = u_xlat7;
      let x_869 : i32 = u_xlati29;
      let x_872 : i32 = u_xlati29;
      let x_876 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_869 + 3i) / 4i)][((x_872 + 3i) % 4i)];
      u_xlat7 = (x_868 + x_876);
      let x_878 : vec4<f32> = u_xlat7;
      let x_880 : vec4<f32> = u_xlat7;
      let x_882 : vec3<f32> = (vec3<f32>(x_878.x, x_878.y, x_878.z) / vec3<f32>(x_880.w, x_880.w, x_880.w));
      let x_883 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
      let x_886 : vec4<f32> = u_xlat7;
      let x_887 : vec2<f32> = vec2<f32>(x_886.x, x_886.y);
      let x_889 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_887.x, x_887.y, x_889);
      let x_897 : vec3<f32> = txVec1;
      let x_899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
      u_xlat29 = x_899;
      let x_900 : i32 = u_xlati27;
      let x_902 : f32 = x_159.x_AdditionalShadowParams[x_900].x;
      u_xlat30 = (1.0f + -(x_902));
      let x_905 : f32 = u_xlat29;
      let x_906 : i32 = u_xlati27;
      let x_908 : f32 = x_159.x_AdditionalShadowParams[x_906].x;
      let x_910 : f32 = u_xlat30;
      u_xlat29 = ((x_905 * x_908) + x_910);
      let x_913 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_913);
      let x_916 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_916 >= 1.0f);
      let x_919 : bool = u_xlatb30;
      let x_921 : bool = u_xlatb7.x;
      u_xlatb30 = (x_919 | x_921);
      let x_923 : bool = u_xlatb30;
      let x_924 : f32 = u_xlat29;
      u_xlat29 = select(x_924, 1.0f, x_923);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_927 : f32 = u_xlat29;
    u_xlat30 = (-(x_927) + 1.0f);
    let x_931 : f32 = u_xlat1.x;
    let x_932 : f32 = u_xlat30;
    let x_934 : f32 = u_xlat29;
    u_xlat29 = ((x_931 * x_932) + x_934);
    let x_936 : f32 = u_xlat28;
    let x_937 : f32 = u_xlat29;
    u_xlat28 = (x_936 * x_937);
    let x_939 : f32 = u_xlat28;
    let x_941 : i32 = u_xlati27;
    let x_943 : vec4<f32> = x_670.x_AdditionalLightsColor[x_941];
    let x_945 : vec3<f32> = (vec3<f32>(x_939, x_939, x_939) * vec3<f32>(x_943.x, x_943.y, x_943.z));
    let x_946 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
    let x_948 : vec4<f32> = u_xlat2;
    let x_950 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_948.x, x_948.y, x_948.z), x_950);
    let x_952 : f32 = u_xlat27;
    u_xlat27 = clamp(x_952, 0.0f, 1.0f);
    let x_954 : f32 = u_xlat27;
    let x_956 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_954, x_954, x_954) * vec3<f32>(x_956.x, x_956.y, x_956.z));
    let x_959 : vec4<f32> = u_xlat1;
    let x_961 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_959.y, x_959.z, x_959.w) * x_961);
    let x_963 : vec3<f32> = u_xlat6;
    let x_964 : vec4<f32> = u_xlat0;
    let x_967 : vec4<f32> = u_xlat5;
    let x_969 : vec3<f32> = ((x_963 * vec3<f32>(x_964.x, x_964.x, x_964.x)) + vec3<f32>(x_967.x, x_967.y, x_967.z));
    let x_970 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);

    continuing {
      let x_972 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_972 + bitcast<u32>(1i));
    }
  }
  let x_974 : vec4<f32> = u_xlat4;
  let x_976 : vec4<f32> = u_xlat1;
  let x_979 : vec4<f32> = u_xlat3;
  let x_981 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(x_976.y, x_976.z, x_976.w)) + vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec4<f32> = u_xlat5;
  let x_986 : vec4<f32> = u_xlat1;
  let x_988 : vec3<f32> = (vec3<f32>(x_984.x, x_984.y, x_984.z) + vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : f32 = u_xlat8;
  let x_992 : f32 = u_xlat8;
  u_xlat8 = (x_991 * -(x_992));
  let x_995 : f32 = u_xlat8;
  u_xlat8 = exp2(x_995);
  let x_997 : vec4<f32> = u_xlat1;
  let x_1000 : vec4<f32> = x_28.unity_FogColor;
  let x_1003 : vec3<f32> = (vec3<f32>(x_997.x, x_997.y, x_997.z) + -(vec3<f32>(x_1000.x, x_1000.y, x_1000.z)));
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1008 : f32 = u_xlat8;
  let x_1010 : vec4<f32> = u_xlat1;
  let x_1014 : vec4<f32> = x_28.unity_FogColor;
  let x_1016 : vec3<f32> = ((vec3<f32>(x_1008, x_1008, x_1008) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z)) + vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1020 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_1020 == 1.0f);
  let x_1022 : bool = u_xlatb8;
  let x_1023 : bool = u_xlatb16;
  u_xlatb8 = (x_1022 | x_1023);
  let x_1025 : bool = u_xlatb8;
  if (x_1025) {
    let x_1030 : f32 = u_xlat0.x;
    x_1026 = x_1030;
  } else {
    x_1026 = 1.0f;
  }
  let x_1032 : f32 = x_1026;
  SV_Target0.w = x_1032;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


