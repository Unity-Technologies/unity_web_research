diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(160) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb36 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_217 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat16 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb28 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_933 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu39 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var x_162 : f32;
  var x_174 : f32;
  var x_186 : f32;
  var txVec0 : vec3<f32>;
  var x_596 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1078 : f32;
  var x_1089 : f32;
  var txVec1 : vec3<f32>;
  var x_1206 : f32;
  var x_1356 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_85 : f32 = x_45.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat36 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_105 : f32 = u_xlat36;
    x_102 = abs(x_105);
  } else {
    let x_108 : f32 = u_xlat36;
    x_102 = -(abs(x_108));
  }
  let x_111 : f32 = x_102;
  u_xlat36 = x_111;
  let x_112 : f32 = u_xlat36;
  let x_115 : f32 = x_95.unity_LODFade.x;
  u_xlat36 = (-(x_112) + x_115);
  let x_118 : f32 = u_xlat36;
  u_xlatb36 = (x_118 < 0.0f);
  let x_120 : bool = u_xlatb36;
  if (((select(0i, 1i, x_120) * -1i) != 0i)) {
    discard;
  }
  let x_131 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_131 == 0.0f);
  let x_135 : vec3<f32> = vs_TEXCOORD1;
  let x_140 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_141 : vec3<f32> = (-(x_135) + x_140);
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat38 = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_150);
  let x_152 : f32 = u_xlat38;
  let x_154 : vec4<f32> = u_xlat2;
  let x_156 : vec3<f32> = (vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_161 : bool = u_xlatb36;
  if (x_161) {
    let x_166 : f32 = u_xlat2.x;
    x_162 = x_166;
  } else {
    let x_170 : f32 = x_45.unity_MatrixV[0i].z;
    x_162 = x_170;
  }
  let x_171 : f32 = x_162;
  u_xlat3.x = x_171;
  let x_173 : bool = u_xlatb36;
  if (x_173) {
    let x_179 : f32 = u_xlat2.y;
    x_174 = x_179;
  } else {
    let x_182 : f32 = x_45.unity_MatrixV[1i].z;
    x_174 = x_182;
  }
  let x_183 : f32 = x_174;
  u_xlat3.y = x_183;
  let x_185 : bool = u_xlatb36;
  if (x_185) {
    let x_190 : f32 = u_xlat2.z;
    x_186 = x_190;
  } else {
    let x_193 : f32 = x_45.unity_MatrixV[2i].z;
    x_186 = x_193;
  }
  let x_194 : f32 = x_186;
  u_xlat3.z = x_194;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  let x_198 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_197, x_198);
  let x_200 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_200);
  let x_202 : f32 = u_xlat36;
  let x_204 : vec3<f32> = vs_TEXCOORD2;
  let x_205 : vec3<f32> = (vec3<f32>(x_202, x_202, x_202) * x_204);
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_209 : vec3<f32> = vs_TEXCOORD1;
  let x_219 : vec4<f32> = x_217.x_CascadeShadowSplitSpheres0;
  let x_222 : vec3<f32> = (x_209 + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec3<f32> = vs_TEXCOORD1;
  let x_228 : vec4<f32> = x_217.x_CascadeShadowSplitSpheres1;
  let x_231 : vec3<f32> = (x_226 + -(vec3<f32>(x_228.x, x_228.y, x_228.z)));
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_217.x_CascadeShadowSplitSpheres2;
  let x_241 : vec3<f32> = (x_235 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : vec3<f32> = vs_TEXCOORD1;
  let x_247 : vec4<f32> = x_217.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_245 + -(vec3<f32>(x_247.x, x_247.y, x_247.z)));
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_257 : vec4<f32> = u_xlat5;
  let x_259 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_257.x, x_257.y, x_257.z), vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_263 : vec4<f32> = u_xlat6;
  let x_265 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_269 : vec3<f32> = u_xlat7;
  let x_270 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_269, x_270);
  let x_276 : vec4<f32> = u_xlat4;
  let x_278 : vec4<f32> = x_217.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_276 < x_278);
  let x_281 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_285);
  let x_289 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_293);
  let x_297 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_297);
  let x_303 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_303);
  let x_307 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_307);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : vec4<f32> = u_xlat5;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_312.y, x_312.z, x_312.w));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec3<f32> = max(vec3<f32>(x_317.x, x_317.y, x_317.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_321.x, x_320.x, x_320.y, x_320.z);
  let x_323 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_323, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_329 : f32 = u_xlat36;
  u_xlat36 = (-(x_329) + 4.0f);
  let x_334 : f32 = u_xlat36;
  u_xlatu36 = u32(x_334);
  let x_338 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_338) << bitcast<u32>(2i));
  let x_341 : vec3<f32> = vs_TEXCOORD1;
  let x_343 : i32 = u_xlati36;
  let x_346 : i32 = u_xlati36;
  let x_350 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_343 + 1i) / 4i)][((x_346 + 1i) % 4i)];
  let x_352 : vec3<f32> = (vec3<f32>(x_341.y, x_341.y, x_341.y) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : i32 = u_xlati36;
  let x_357 : i32 = u_xlati36;
  let x_360 : vec4<f32> = x_217.x_MainLightWorldToShadow[(x_355 / 4i)][(x_357 % 4i)];
  let x_362 : vec3<f32> = vs_TEXCOORD1;
  let x_365 : vec4<f32> = u_xlat4;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.x, x_362.x, x_362.x)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : i32 = u_xlati36;
  let x_373 : i32 = u_xlati36;
  let x_377 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_370 + 2i) / 4i)][((x_373 + 2i) % 4i)];
  let x_379 : vec3<f32> = vs_TEXCOORD1;
  let x_382 : vec4<f32> = u_xlat4;
  let x_384 : vec3<f32> = ((vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379.z, x_379.z, x_379.z)) + vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat4;
  let x_389 : i32 = u_xlati36;
  let x_392 : i32 = u_xlati36;
  let x_396 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_389 + 3i) / 4i)][((x_392 + 3i) % 4i)];
  let x_398 : vec3<f32> = (vec3<f32>(x_387.x, x_387.y, x_387.z) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  u_xlat2.w = 1.0f;
  let x_404 : vec4<f32> = x_95.unity_SHAr;
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_404, x_405);
  let x_410 : vec4<f32> = x_95.unity_SHAg;
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_95.unity_SHAb;
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_416, x_417);
  let x_420 : vec4<f32> = u_xlat2;
  let x_422 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_420.y, x_420.z, x_420.z, x_420.x) * vec4<f32>(x_422.x, x_422.y, x_422.z, x_422.z));
  let x_427 : vec4<f32> = x_95.unity_SHBr;
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_427, x_428);
  let x_433 : vec4<f32> = x_95.unity_SHBg;
  let x_434 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_433, x_434);
  let x_439 : vec4<f32> = x_95.unity_SHBb;
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_439, x_440);
  let x_444 : f32 = u_xlat2.y;
  let x_446 : f32 = u_xlat2.y;
  u_xlat36 = (x_444 * x_446);
  let x_449 : f32 = u_xlat2.x;
  let x_451 : f32 = u_xlat2.x;
  let x_453 : f32 = u_xlat36;
  u_xlat36 = ((x_449 * x_451) + -(x_453));
  let x_458 : vec4<f32> = x_95.unity_SHC;
  let x_460 : f32 = u_xlat36;
  let x_463 : vec3<f32> = u_xlat7;
  let x_464 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460, x_460, x_460)) + x_463);
  let x_465 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat5;
  let x_469 : vec4<f32> = u_xlat6;
  let x_471 : vec3<f32> = (vec3<f32>(x_467.x, x_467.y, x_467.z) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : vec3<f32> = max(vec3<f32>(x_474.x, x_474.y, x_474.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_477 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : f32 = x_58.x_Metallic;
  u_xlat36 = ((-(x_480) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_485 : f32 = u_xlat36;
  u_xlat38 = (-(x_485) + 1.0f);
  let x_489 : f32 = u_xlat36;
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_489, x_489, x_489) * vec3<f32>(x_491.y, x_491.z, x_491.w));
  let x_494 : vec4<f32> = u_xlat0;
  let x_497 : vec4<f32> = x_58.x_BaseColor;
  let x_502 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_497.x, x_497.y, x_497.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_503 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = x_58.x_Metallic;
  let x_508 : f32 = x_58.x_Metallic;
  let x_510 : f32 = x_58.x_Metallic;
  let x_511 : vec3<f32> = vec3<f32>(x_506, x_508, x_510);
  let x_516 : vec4<f32> = u_xlat0;
  let x_521 : vec3<f32> = ((vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(x_516.x, x_516.y, x_516.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_522 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : f32 = x_58.x_Smoothness;
  u_xlat36 = (-(x_525) + 1.0f);
  let x_529 : f32 = u_xlat36;
  let x_530 : f32 = u_xlat36;
  u_xlat39 = (x_529 * x_530);
  let x_532 : f32 = u_xlat39;
  u_xlat39 = max(x_532, 0.0078125f);
  let x_536 : f32 = u_xlat39;
  let x_537 : f32 = u_xlat39;
  u_xlat40 = (x_536 * x_537);
  let x_539 : f32 = u_xlat38;
  let x_541 : f32 = x_58.x_Smoothness;
  u_xlat38 = (x_539 + x_541);
  let x_543 : f32 = u_xlat38;
  u_xlat38 = clamp(x_543, 0.0f, 1.0f);
  let x_546 : f32 = u_xlat39;
  u_xlat41 = ((x_546 * 4.0f) + 2.0f);
  let x_551 : vec4<f32> = u_xlat4;
  let x_552 : vec2<f32> = vec2<f32>(x_551.x, x_551.y);
  let x_554 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_552.x, x_552.y, x_554);
  let x_566 : vec3<f32> = txVec0;
  let x_568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_566.xy, x_566.z);
  u_xlat4.x = x_568;
  let x_573 : f32 = x_217.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_573) + 1.0f);
  let x_577 : f32 = u_xlat4.x;
  let x_579 : f32 = x_217.x_MainLightShadowParams.x;
  let x_581 : f32 = u_xlat16;
  u_xlat4.x = ((x_577 * x_579) + x_581);
  let x_586 : f32 = u_xlat4.z;
  u_xlatb16 = (0.0f >= x_586);
  let x_590 : f32 = u_xlat4.z;
  u_xlatb28 = (x_590 >= 1.0f);
  let x_592 : bool = u_xlatb28;
  let x_593 : bool = u_xlatb16;
  u_xlatb16 = (x_592 | x_593);
  let x_595 : bool = u_xlatb16;
  if (x_595) {
    x_596 = 1.0f;
  } else {
    let x_601 : f32 = u_xlat4.x;
    x_596 = x_601;
  }
  let x_602 : f32 = x_596;
  u_xlat4.x = x_602;
  let x_604 : vec3<f32> = vs_TEXCOORD1;
  let x_606 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_608 : vec3<f32> = (x_604 + -(x_606));
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat6;
  let x_613 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_611.x, x_611.y, x_611.z), vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_617 : f32 = u_xlat16;
  let x_619 : f32 = x_217.x_MainLightShadowParams.z;
  let x_622 : f32 = x_217.x_MainLightShadowParams.w;
  u_xlat28 = ((x_617 * x_619) + x_622);
  let x_624 : f32 = u_xlat28;
  u_xlat28 = clamp(x_624, 0.0f, 1.0f);
  let x_627 : f32 = u_xlat4.x;
  u_xlat6.x = (-(x_627) + 1.0f);
  let x_631 : f32 = u_xlat28;
  let x_633 : f32 = u_xlat6.x;
  let x_636 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_631 * x_633) + x_636);
  let x_639 : vec3<f32> = u_xlat3;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(-(x_639), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : f32 = u_xlat28;
  let x_645 : f32 = u_xlat28;
  u_xlat28 = (x_644 + x_645);
  let x_647 : vec4<f32> = u_xlat2;
  let x_649 : f32 = u_xlat28;
  let x_653 : vec3<f32> = u_xlat3;
  let x_655 : vec3<f32> = ((vec3<f32>(x_647.x, x_647.y, x_647.z) * -(vec3<f32>(x_649, x_649, x_649))) + -(x_653));
  let x_656 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat2;
  let x_660 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(vec3<f32>(x_658.x, x_658.y, x_658.z), x_660);
  let x_662 : f32 = u_xlat28;
  u_xlat28 = clamp(x_662, 0.0f, 1.0f);
  let x_664 : f32 = u_xlat28;
  u_xlat28 = (-(x_664) + 1.0f);
  let x_667 : f32 = u_xlat28;
  let x_668 : f32 = u_xlat28;
  u_xlat28 = (x_667 * x_668);
  let x_670 : f32 = u_xlat28;
  let x_671 : f32 = u_xlat28;
  u_xlat28 = (x_670 * x_671);
  let x_674 : f32 = u_xlat36;
  u_xlat42 = ((-(x_674) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_680 : f32 = u_xlat36;
  let x_681 : f32 = u_xlat42;
  u_xlat36 = (x_680 * x_681);
  let x_683 : f32 = u_xlat36;
  u_xlat36 = (x_683 * 6.0f);
  let x_694 : vec4<f32> = u_xlat6;
  let x_696 : f32 = u_xlat36;
  let x_697 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_694.x, x_694.y, x_694.z), x_696);
  u_xlat6 = x_697;
  let x_699 : f32 = u_xlat6.w;
  u_xlat36 = (x_699 + -1.0f);
  let x_702 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_703 : f32 = u_xlat36;
  u_xlat36 = ((x_702 * x_703) + 1.0f);
  let x_706 : f32 = u_xlat36;
  u_xlat36 = max(x_706, 0.0f);
  let x_708 : f32 = u_xlat36;
  u_xlat36 = log2(x_708);
  let x_710 : f32 = u_xlat36;
  let x_712 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_710 * x_712);
  let x_714 : f32 = u_xlat36;
  u_xlat36 = exp2(x_714);
  let x_716 : f32 = u_xlat36;
  let x_718 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_716 * x_718);
  let x_720 : vec4<f32> = u_xlat6;
  let x_722 : f32 = u_xlat36;
  let x_724 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_722, x_722, x_722));
  let x_725 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : f32 = u_xlat39;
  let x_729 : f32 = u_xlat39;
  let x_733 : vec2<f32> = ((vec2<f32>(x_727, x_727) * vec2<f32>(x_729, x_729)) + vec2<f32>(-1.0f, 1.0f));
  let x_734 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_733.x, x_733.y, x_734.z);
  let x_737 : f32 = u_xlat7.y;
  u_xlat36 = (1.0f / x_737);
  let x_740 : vec4<f32> = u_xlat0;
  let x_743 : f32 = u_xlat38;
  u_xlat19 = (-(vec3<f32>(x_740.x, x_740.y, x_740.z)) + vec3<f32>(x_743, x_743, x_743));
  let x_746 : f32 = u_xlat28;
  let x_748 : vec3<f32> = u_xlat19;
  let x_750 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_746, x_746, x_746) * x_748) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : f32 = u_xlat36;
  let x_755 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_753, x_753, x_753) * x_755);
  let x_757 : vec4<f32> = u_xlat6;
  let x_759 : vec3<f32> = u_xlat19;
  let x_760 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * x_759);
  let x_761 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat5;
  let x_765 : vec3<f32> = u_xlat13;
  let x_767 : vec4<f32> = u_xlat6;
  let x_769 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * x_765) + vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_773 : f32 = u_xlat4.x;
  let x_775 : f32 = x_95.unity_LightData.z;
  u_xlat36 = (x_773 * x_775);
  let x_777 : vec4<f32> = u_xlat2;
  let x_780 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_777.x, x_777.y, x_777.z), vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : f32 = u_xlat38;
  u_xlat38 = clamp(x_783, 0.0f, 1.0f);
  let x_785 : f32 = u_xlat36;
  let x_786 : f32 = u_xlat38;
  u_xlat36 = (x_785 * x_786);
  let x_788 : f32 = u_xlat36;
  let x_791 : vec4<f32> = x_45.x_MainLightColor;
  let x_793 : vec3<f32> = (vec3<f32>(x_788, x_788, x_788) * vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec3<f32> = u_xlat3;
  let x_798 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat19 = (x_796 + vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec3<f32> = u_xlat19;
  let x_802 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_801, x_802);
  let x_804 : f32 = u_xlat36;
  u_xlat36 = max(x_804, 1.17549435e-38f);
  let x_807 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_807);
  let x_809 : f32 = u_xlat36;
  let x_811 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_809, x_809, x_809) * x_811);
  let x_813 : vec4<f32> = u_xlat2;
  let x_815 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_813.x, x_813.y, x_813.z), x_815);
  let x_817 : f32 = u_xlat36;
  u_xlat36 = clamp(x_817, 0.0f, 1.0f);
  let x_820 : vec4<f32> = x_45.x_MainLightPosition;
  let x_822 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), x_822);
  let x_824 : f32 = u_xlat38;
  u_xlat38 = clamp(x_824, 0.0f, 1.0f);
  let x_826 : f32 = u_xlat36;
  let x_827 : f32 = u_xlat36;
  u_xlat36 = (x_826 * x_827);
  let x_829 : f32 = u_xlat36;
  let x_831 : f32 = u_xlat7.x;
  u_xlat36 = ((x_829 * x_831) + 1.00001001358032226562f);
  let x_835 : f32 = u_xlat38;
  let x_836 : f32 = u_xlat38;
  u_xlat38 = (x_835 * x_836);
  let x_838 : f32 = u_xlat36;
  let x_839 : f32 = u_xlat36;
  u_xlat36 = (x_838 * x_839);
  let x_841 : f32 = u_xlat38;
  u_xlat38 = max(x_841, 0.10000000149011611938f);
  let x_844 : f32 = u_xlat36;
  let x_845 : f32 = u_xlat38;
  u_xlat36 = (x_844 * x_845);
  let x_847 : f32 = u_xlat41;
  let x_848 : f32 = u_xlat36;
  u_xlat36 = (x_847 * x_848);
  let x_850 : f32 = u_xlat40;
  let x_851 : f32 = u_xlat36;
  u_xlat36 = (x_850 / x_851);
  let x_853 : vec4<f32> = u_xlat0;
  let x_855 : f32 = u_xlat36;
  let x_858 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855, x_855, x_855)) + x_858);
  let x_861 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_863 : f32 = x_95.unity_LightData.y;
  u_xlat36 = min(x_861, x_863);
  let x_865 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_865));
  let x_868 : f32 = u_xlat16;
  let x_871 : f32 = x_217.x_AdditionalShadowFadeParams.x;
  let x_874 : f32 = x_217.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_868 * x_871) + x_874);
  let x_876 : f32 = u_xlat38;
  u_xlat38 = clamp(x_876, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_888 : u32 = u_xlatu_loop_1;
    let x_889 : u32 = u_xlatu36;
    if ((x_888 < x_889)) {
    } else {
      break;
    }
    let x_892 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_892 >> 2u);
    let x_895 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_895 & 3u));
    let x_898 : u32 = u_xlatu42;
    let x_901 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_898)];
    let x_911 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_916 : vec4<u32> = indexable[x_911];
    u_xlat42 = dot(x_901, bitcast<vec4<f32>>(x_916));
    let x_920 : f32 = u_xlat42;
    u_xlati42 = i32(x_920);
    let x_923 : vec3<f32> = vs_TEXCOORD1;
    let x_934 : i32 = u_xlati42;
    let x_936 : vec4<f32> = x_933.x_AdditionalLightsPosition[x_934];
    let x_939 : i32 = u_xlati42;
    let x_941 : vec4<f32> = x_933.x_AdditionalLightsPosition[x_939];
    u_xlat8 = ((-(x_923) * vec3<f32>(x_936.w, x_936.w, x_936.w)) + vec3<f32>(x_941.x, x_941.y, x_941.z));
    let x_945 : vec3<f32> = u_xlat8;
    let x_946 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_945, x_946);
    let x_948 : f32 = u_xlat44;
    u_xlat44 = max(x_948, 0.00006103515625f);
    let x_952 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_952);
    let x_955 : vec3<f32> = u_xlat8;
    let x_956 : f32 = u_xlat9;
    u_xlat21 = (x_955 * vec3<f32>(x_956, x_956, x_956));
    let x_960 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_960);
    let x_963 : f32 = u_xlat44;
    let x_964 : i32 = u_xlati42;
    let x_966 : f32 = x_933.x_AdditionalLightsAttenuation[x_964].x;
    u_xlat44 = (x_963 * x_966);
    let x_968 : f32 = u_xlat44;
    let x_970 : f32 = u_xlat44;
    u_xlat44 = ((-(x_968) * x_970) + 1.0f);
    let x_973 : f32 = u_xlat44;
    u_xlat44 = max(x_973, 0.0f);
    let x_975 : f32 = u_xlat44;
    let x_976 : f32 = u_xlat44;
    u_xlat44 = (x_975 * x_976);
    let x_978 : f32 = u_xlat44;
    let x_980 : f32 = u_xlat10.x;
    u_xlat44 = (x_978 * x_980);
    let x_982 : i32 = u_xlati42;
    let x_984 : vec4<f32> = x_933.x_AdditionalLightsSpotDir[x_982];
    let x_986 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), x_986);
    let x_990 : f32 = u_xlat10.x;
    let x_991 : i32 = u_xlati42;
    let x_993 : f32 = x_933.x_AdditionalLightsAttenuation[x_991].z;
    let x_995 : i32 = u_xlati42;
    let x_997 : f32 = x_933.x_AdditionalLightsAttenuation[x_995].w;
    u_xlat10.x = ((x_990 * x_993) + x_997);
    let x_1001 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1001, 0.0f, 1.0f);
    let x_1005 : f32 = u_xlat10.x;
    let x_1007 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1005 * x_1007);
    let x_1010 : f32 = u_xlat44;
    let x_1012 : f32 = u_xlat10.x;
    u_xlat44 = (x_1010 * x_1012);
    let x_1016 : i32 = u_xlati42;
    let x_1018 : f32 = x_217.x_AdditionalShadowParams[x_1016].w;
    u_xlati10 = i32(x_1018);
    let x_1023 : i32 = u_xlati10;
    u_xlatb22.x = (x_1023 >= 0i);
    let x_1027 : bool = u_xlatb22.x;
    if (x_1027) {
      let x_1031 : i32 = u_xlati42;
      let x_1033 : f32 = x_217.x_AdditionalShadowParams[x_1031].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1033, x_1033, x_1033, x_1033))));
      let x_1039 : bool = u_xlatb22.x;
      if (x_1039) {
        let x_1042 : vec3<f32> = u_xlat21;
        let x_1045 : vec3<f32> = u_xlat21;
        let x_1048 : vec4<bool> = (abs(vec4<f32>(x_1042.z, x_1042.z, x_1042.y, x_1042.y)) >= abs(vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.x)));
        u_xlatb22 = vec3<bool>(x_1048.x, x_1048.y, x_1048.z);
        let x_1051 : bool = u_xlatb22.y;
        let x_1053 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1051 & x_1053);
        let x_1057 : vec3<f32> = u_xlat21;
        let x_1060 : vec4<bool> = (-(vec4<f32>(x_1057.z, x_1057.y, x_1057.x, x_1057.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1060.x, x_1060.y, x_1060.z);
        let x_1064 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1064);
        let x_1069 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1069);
        let x_1074 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1074);
        let x_1077 : bool = u_xlatb22.z;
        if (x_1077) {
          let x_1082 : f32 = u_xlat11.y;
          x_1078 = x_1082;
        } else {
          let x_1084 : f32 = u_xlat34;
          x_1078 = x_1084;
        }
        let x_1085 : f32 = x_1078;
        u_xlat34 = x_1085;
        let x_1088 : bool = u_xlatb22.x;
        if (x_1088) {
          let x_1093 : f32 = u_xlat11.x;
          x_1089 = x_1093;
        } else {
          let x_1095 : f32 = u_xlat34;
          x_1089 = x_1095;
        }
        let x_1096 : f32 = x_1089;
        u_xlat22 = x_1096;
        let x_1097 : i32 = u_xlati42;
        let x_1099 : f32 = x_217.x_AdditionalShadowParams[x_1097].w;
        u_xlat34 = trunc(x_1099);
        let x_1101 : f32 = u_xlat22;
        let x_1102 : f32 = u_xlat34;
        u_xlat22 = (x_1101 + x_1102);
        let x_1104 : f32 = u_xlat22;
        u_xlati10 = i32(x_1104);
      }
      let x_1106 : i32 = u_xlati10;
      u_xlati10 = (x_1106 << bitcast<u32>(2i));
      let x_1108 : vec3<f32> = vs_TEXCOORD1;
      let x_1111 : i32 = u_xlati10;
      let x_1114 : i32 = u_xlati10;
      let x_1118 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_1111 + 1i) / 4i)][((x_1114 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1108.y, x_1108.y, x_1108.y, x_1108.y) * x_1118);
      let x_1120 : i32 = u_xlati10;
      let x_1122 : i32 = u_xlati10;
      let x_1125 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[(x_1120 / 4i)][(x_1122 % 4i)];
      let x_1126 : vec3<f32> = vs_TEXCOORD1;
      let x_1129 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1125 * vec4<f32>(x_1126.x, x_1126.x, x_1126.x, x_1126.x)) + x_1129);
      let x_1131 : i32 = u_xlati10;
      let x_1134 : i32 = u_xlati10;
      let x_1138 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_1131 + 2i) / 4i)][((x_1134 + 2i) % 4i)];
      let x_1139 : vec3<f32> = vs_TEXCOORD1;
      let x_1142 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1138 * vec4<f32>(x_1139.z, x_1139.z, x_1139.z, x_1139.z)) + x_1142);
      let x_1144 : vec4<f32> = u_xlat11;
      let x_1145 : i32 = u_xlati10;
      let x_1148 : i32 = u_xlati10;
      let x_1152 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_1145 + 3i) / 4i)][((x_1148 + 3i) % 4i)];
      u_xlat10 = (x_1144 + x_1152);
      let x_1154 : vec4<f32> = u_xlat10;
      let x_1156 : vec4<f32> = u_xlat10;
      let x_1158 : vec3<f32> = (vec3<f32>(x_1154.x, x_1154.y, x_1154.z) / vec3<f32>(x_1156.w, x_1156.w, x_1156.w));
      let x_1159 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
      let x_1162 : vec4<f32> = u_xlat10;
      let x_1163 : vec2<f32> = vec2<f32>(x_1162.x, x_1162.y);
      let x_1165 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1163.x, x_1163.y, x_1165);
      let x_1173 : vec3<f32> = txVec1;
      let x_1175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1173.xy, x_1173.z);
      u_xlat10.x = x_1175;
      let x_1177 : i32 = u_xlati42;
      let x_1179 : f32 = x_217.x_AdditionalShadowParams[x_1177].x;
      u_xlat22 = (1.0f + -(x_1179));
      let x_1183 : f32 = u_xlat10.x;
      let x_1184 : i32 = u_xlati42;
      let x_1186 : f32 = x_217.x_AdditionalShadowParams[x_1184].x;
      let x_1188 : f32 = u_xlat22;
      u_xlat10.x = ((x_1183 * x_1186) + x_1188);
      let x_1192 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1192);
      let x_1197 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1197 >= 1.0f);
      let x_1199 : bool = u_xlatb34;
      let x_1201 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1199 | x_1201);
      let x_1205 : bool = u_xlatb22.x;
      if (x_1205) {
        x_1206 = 1.0f;
      } else {
        let x_1211 : f32 = u_xlat10.x;
        x_1206 = x_1211;
      }
      let x_1212 : f32 = x_1206;
      u_xlat10.x = x_1212;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1217 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1217) + 1.0f);
    let x_1220 : f32 = u_xlat38;
    let x_1221 : f32 = u_xlat22;
    let x_1224 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1220 * x_1221) + x_1224);
    let x_1227 : f32 = u_xlat44;
    let x_1229 : f32 = u_xlat10.x;
    u_xlat44 = (x_1227 * x_1229);
    let x_1231 : vec4<f32> = u_xlat2;
    let x_1233 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1231.x, x_1231.y, x_1231.z), x_1233);
    let x_1237 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1237, 0.0f, 1.0f);
    let x_1240 : f32 = u_xlat44;
    let x_1242 : f32 = u_xlat10.x;
    u_xlat44 = (x_1240 * x_1242);
    let x_1244 : f32 = u_xlat44;
    let x_1246 : i32 = u_xlati42;
    let x_1248 : vec4<f32> = x_933.x_AdditionalLightsColor[x_1246];
    let x_1250 : vec3<f32> = (vec3<f32>(x_1244, x_1244, x_1244) * vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
    let x_1251 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
    let x_1253 : vec3<f32> = u_xlat8;
    let x_1254 : f32 = u_xlat9;
    let x_1257 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1253 * vec3<f32>(x_1254, x_1254, x_1254)) + x_1257);
    let x_1259 : vec3<f32> = u_xlat8;
    let x_1260 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1259, x_1260);
    let x_1262 : f32 = u_xlat42;
    u_xlat42 = max(x_1262, 1.17549435e-38f);
    let x_1264 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1264);
    let x_1266 : f32 = u_xlat42;
    let x_1268 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1266, x_1266, x_1266) * x_1268);
    let x_1270 : vec4<f32> = u_xlat2;
    let x_1272 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1270.x, x_1270.y, x_1270.z), x_1272);
    let x_1274 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1274, 0.0f, 1.0f);
    let x_1276 : vec3<f32> = u_xlat21;
    let x_1277 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1276, x_1277);
    let x_1281 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1281, 0.0f, 1.0f);
    let x_1284 : f32 = u_xlat42;
    let x_1285 : f32 = u_xlat42;
    u_xlat42 = (x_1284 * x_1285);
    let x_1287 : f32 = u_xlat42;
    let x_1289 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1287 * x_1289) + 1.00001001358032226562f);
    let x_1293 : f32 = u_xlat8.x;
    let x_1295 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1293 * x_1295);
    let x_1298 : f32 = u_xlat42;
    let x_1299 : f32 = u_xlat42;
    u_xlat42 = (x_1298 * x_1299);
    let x_1302 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1302, 0.10000000149011611938f);
    let x_1305 : f32 = u_xlat42;
    let x_1307 : f32 = u_xlat8.x;
    u_xlat42 = (x_1305 * x_1307);
    let x_1309 : f32 = u_xlat41;
    let x_1310 : f32 = u_xlat42;
    u_xlat42 = (x_1309 * x_1310);
    let x_1312 : f32 = u_xlat40;
    let x_1313 : f32 = u_xlat42;
    u_xlat42 = (x_1312 / x_1313);
    let x_1315 : vec4<f32> = u_xlat0;
    let x_1317 : f32 = u_xlat42;
    let x_1320 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317, x_1317, x_1317)) + x_1320);
    let x_1322 : vec3<f32> = u_xlat8;
    let x_1323 : vec4<f32> = u_xlat10;
    let x_1326 : vec4<f32> = u_xlat4;
    let x_1328 : vec3<f32> = ((x_1322 * vec3<f32>(x_1323.x, x_1323.y, x_1323.z)) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1329 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);

    continuing {
      let x_1331 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1331 + bitcast<u32>(1i));
    }
  }
  let x_1333 : vec3<f32> = u_xlat19;
  let x_1334 : vec4<f32> = u_xlat6;
  let x_1337 : vec4<f32> = u_xlat5;
  let x_1339 : vec3<f32> = ((x_1333 * vec3<f32>(x_1334.x, x_1334.y, x_1334.z)) + vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
  let x_1340 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
  let x_1344 : vec4<f32> = u_xlat4;
  let x_1346 : vec4<f32> = u_xlat0;
  let x_1348 : vec3<f32> = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) + vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1349 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1353 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_1353 == 1.0f);
  let x_1355 : bool = u_xlatb0;
  if (x_1355) {
    let x_1360 : f32 = u_xlat1.x;
    x_1356 = x_1360;
  } else {
    x_1356 = 1.0f;
  }
  let x_1362 : f32 = x_1356;
  SV_Target0.w = x_1362;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


