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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb78 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_217 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb32 : bool;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat56 : f32;

@group(1) @binding(5) var<uniform> x_1880 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu56 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati56 : i32;

@group(1) @binding(1) var<uniform> x_2316 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu81 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var x_162 : f32;
  var x_174 : f32;
  var x_186 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1831 : f32;
  var x_1963 : f32;
  var x_1974 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2454 : f32;
  var x_2465 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_4084 : f32;
  var x_4097 : f32;
  var x_4155 : f32;
  var x_4166 : vec3<f32>;
  var x_4315 : f32;
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
  u_xlat78 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_105 : f32 = u_xlat78;
    x_102 = abs(x_105);
  } else {
    let x_108 : f32 = u_xlat78;
    x_102 = -(abs(x_108));
  }
  let x_111 : f32 = x_102;
  u_xlat78 = x_111;
  let x_112 : f32 = u_xlat78;
  let x_115 : f32 = x_95.unity_LODFade.x;
  u_xlat78 = (-(x_112) + x_115);
  let x_118 : f32 = u_xlat78;
  u_xlatb78 = (x_118 < 0.0f);
  let x_120 : bool = u_xlatb78;
  if (((select(0i, 1i, x_120) * -1i) != 0i)) {
    discard;
  }
  let x_131 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb78 = (x_131 == 0.0f);
  let x_135 : vec3<f32> = vs_TEXCOORD1;
  let x_140 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_141 : vec3<f32> = (-(x_135) + x_140);
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat80 = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_150);
  let x_152 : f32 = u_xlat80;
  let x_154 : vec4<f32> = u_xlat2;
  let x_156 : vec3<f32> = (vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_161 : bool = u_xlatb78;
  if (x_161) {
    let x_166 : f32 = u_xlat2.x;
    x_162 = x_166;
  } else {
    let x_170 : f32 = x_45.unity_MatrixV[0i].z;
    x_162 = x_170;
  }
  let x_171 : f32 = x_162;
  u_xlat3.x = x_171;
  let x_173 : bool = u_xlatb78;
  if (x_173) {
    let x_179 : f32 = u_xlat2.y;
    x_174 = x_179;
  } else {
    let x_182 : f32 = x_45.unity_MatrixV[1i].z;
    x_174 = x_182;
  }
  let x_183 : f32 = x_174;
  u_xlat3.y = x_183;
  let x_185 : bool = u_xlatb78;
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
  u_xlat78 = dot(x_197, x_198);
  let x_200 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_200);
  let x_202 : f32 = u_xlat78;
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
  let x_250 : vec3<f32> = (x_245 + -(vec3<f32>(x_247.x, x_247.y, x_247.z)));
  let x_251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_259 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_265 : vec4<f32> = u_xlat6;
  let x_267 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_271 : vec4<f32> = u_xlat7;
  let x_273 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_271.x, x_271.y, x_271.z), vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec4<f32> = x_217.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_280 < x_282);
  let x_285 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_285);
  let x_289 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_293);
  let x_297 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_297);
  let x_301 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_301);
  let x_307 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_307);
  let x_311 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_311);
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : vec4<f32> = u_xlat5;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) + vec3<f32>(x_316.y, x_316.z, x_316.w));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat4;
  let x_324 : vec3<f32> = max(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_325 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_325.x, x_324.x, x_324.y, x_324.z);
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_327, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_333 : f32 = u_xlat78;
  u_xlat78 = (-(x_333) + 4.0f);
  let x_338 : f32 = u_xlat78;
  u_xlatu78 = u32(x_338);
  let x_342 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_342) << bitcast<u32>(2i));
  let x_345 : vec3<f32> = vs_TEXCOORD1;
  let x_347 : i32 = u_xlati78;
  let x_350 : i32 = u_xlati78;
  let x_354 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_347 + 1i) / 4i)][((x_350 + 1i) % 4i)];
  let x_356 : vec3<f32> = (vec3<f32>(x_345.y, x_345.y, x_345.y) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : i32 = u_xlati78;
  let x_361 : i32 = u_xlati78;
  let x_364 : vec4<f32> = x_217.x_MainLightWorldToShadow[(x_359 / 4i)][(x_361 % 4i)];
  let x_366 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec4<f32> = u_xlat4;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.x, x_366.x)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : i32 = u_xlati78;
  let x_377 : i32 = u_xlati78;
  let x_381 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_374 + 2i) / 4i)][((x_377 + 2i) % 4i)];
  let x_383 : vec3<f32> = vs_TEXCOORD1;
  let x_386 : vec4<f32> = u_xlat4;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.z, x_383.z, x_383.z)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat4;
  let x_393 : i32 = u_xlati78;
  let x_396 : i32 = u_xlati78;
  let x_400 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_393 + 3i) / 4i)][((x_396 + 3i) % 4i)];
  let x_402 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  u_xlat2.w = 1.0f;
  let x_408 : vec4<f32> = x_95.unity_SHAr;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_408, x_409);
  let x_414 : vec4<f32> = x_95.unity_SHAg;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_414, x_415);
  let x_420 : vec4<f32> = x_95.unity_SHAb;
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_420, x_421);
  let x_424 : vec4<f32> = u_xlat2;
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_424.y, x_424.z, x_424.z, x_424.x) * vec4<f32>(x_426.x, x_426.y, x_426.z, x_426.z));
  let x_431 : vec4<f32> = x_95.unity_SHBr;
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_431, x_432);
  let x_437 : vec4<f32> = x_95.unity_SHBg;
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_437, x_438);
  let x_443 : vec4<f32> = x_95.unity_SHBb;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_443, x_444);
  let x_448 : f32 = u_xlat2.y;
  let x_450 : f32 = u_xlat2.y;
  u_xlat78 = (x_448 * x_450);
  let x_453 : f32 = u_xlat2.x;
  let x_455 : f32 = u_xlat2.x;
  let x_457 : f32 = u_xlat78;
  u_xlat78 = ((x_453 * x_455) + -(x_457));
  let x_462 : vec4<f32> = x_95.unity_SHC;
  let x_464 : f32 = u_xlat78;
  let x_467 : vec4<f32> = u_xlat7;
  let x_469 : vec3<f32> = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_464, x_464, x_464)) + vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat5;
  let x_474 : vec4<f32> = u_xlat6;
  let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat5;
  let x_481 : vec3<f32> = max(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = x_58.x_Metallic;
  u_xlat78 = ((-(x_485) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_490 : f32 = u_xlat78;
  u_xlat80 = (-(x_490) + 1.0f);
  let x_494 : f32 = u_xlat78;
  let x_496 : vec4<f32> = u_xlat1;
  u_xlat27 = (vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_496.y, x_496.z, x_496.w));
  let x_499 : vec4<f32> = u_xlat0;
  let x_502 : vec4<f32> = x_58.x_BaseColor;
  let x_507 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = x_58.x_Metallic;
  let x_513 : f32 = x_58.x_Metallic;
  let x_515 : f32 = x_58.x_Metallic;
  let x_516 : vec3<f32> = vec3<f32>(x_511, x_513, x_515);
  let x_521 : vec4<f32> = u_xlat0;
  let x_526 : vec3<f32> = ((vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(x_521.x, x_521.y, x_521.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_527 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_530 : f32 = x_58.x_Smoothness;
  u_xlat78 = (-(x_530) + 1.0f);
  let x_534 : f32 = u_xlat78;
  let x_535 : f32 = u_xlat78;
  u_xlat81 = (x_534 * x_535);
  let x_537 : f32 = u_xlat81;
  u_xlat81 = max(x_537, 0.0078125f);
  let x_541 : f32 = u_xlat81;
  let x_542 : f32 = u_xlat81;
  u_xlat82 = (x_541 * x_542);
  let x_544 : f32 = u_xlat80;
  let x_546 : f32 = x_58.x_Smoothness;
  u_xlat80 = (x_544 + x_546);
  let x_548 : f32 = u_xlat80;
  u_xlat80 = clamp(x_548, 0.0f, 1.0f);
  let x_551 : f32 = u_xlat81;
  u_xlat83 = ((x_551 * 4.0f) + 2.0f);
  let x_557 : f32 = x_217.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_557);
  let x_559 : bool = u_xlatb6;
  if (x_559) {
    let x_563 : f32 = x_217.x_MainLightShadowParams.y;
    u_xlatb6 = (x_563 == 1.0f);
    let x_565 : bool = u_xlatb6;
    if (x_565) {
      let x_568 : vec4<f32> = u_xlat4;
      let x_571 : vec4<f32> = x_217.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y) + x_571);
      let x_575 : vec4<f32> = u_xlat6;
      let x_576 : vec2<f32> = vec2<f32>(x_575.x, x_575.y);
      let x_578 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_576.x, x_576.y, x_578);
      let x_590 : vec3<f32> = txVec0;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_590.xy, x_590.z);
      u_xlat7.x = x_592;
      let x_595 : vec4<f32> = u_xlat6;
      let x_596 : vec2<f32> = vec2<f32>(x_595.z, x_595.w);
      let x_598 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_596.x, x_596.y, x_598);
      let x_605 : vec3<f32> = txVec1;
      let x_607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_605.xy, x_605.z);
      u_xlat7.y = x_607;
      let x_609 : vec4<f32> = u_xlat4;
      let x_612 : vec4<f32> = x_217.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_609.x, x_609.y, x_609.x, x_609.y) + x_612);
      let x_615 : vec4<f32> = u_xlat6;
      let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
      let x_618 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_616.x, x_616.y, x_618);
      let x_625 : vec3<f32> = txVec2;
      let x_627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_625.xy, x_625.z);
      u_xlat7.z = x_627;
      let x_630 : vec4<f32> = u_xlat6;
      let x_631 : vec2<f32> = vec2<f32>(x_630.z, x_630.w);
      let x_633 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_631.x, x_631.y, x_633);
      let x_640 : vec3<f32> = txVec3;
      let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_640.xy, x_640.z);
      u_xlat7.w = x_642;
      let x_644 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_644, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_652 : f32 = x_217.x_MainLightShadowParams.y;
      u_xlatb32 = (x_652 == 2.0f);
      let x_654 : bool = u_xlatb32;
      if (x_654) {
        let x_659 : vec4<f32> = u_xlat4;
        let x_663 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_659.x, x_659.y) * vec2<f32>(x_663.z, x_663.w)) + vec2<f32>(0.5f, 0.5f));
        let x_669 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_669);
        let x_671 : vec4<f32> = u_xlat4;
        let x_674 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_677 : vec2<f32> = u_xlat32;
        let x_679 : vec2<f32> = ((vec2<f32>(x_671.x, x_671.y) * vec2<f32>(x_674.z, x_674.w)) + -(x_677));
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_683 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_683.x, x_683.x, x_683.y, x_683.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_688 : vec4<f32> = u_xlat8;
        let x_690 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_688.x, x_688.x, x_688.z, x_688.z) * vec4<f32>(x_690.x, x_690.x, x_690.z, x_690.z));
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_694.y, x_694.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_699 : vec4<f32> = u_xlat9;
        let x_702 : vec4<f32> = u_xlat7;
        let x_705 : vec2<f32> = ((vec2<f32>(x_699.x, x_699.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_702.x, x_702.y)));
        let x_706 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_705.x, x_706.y, x_705.y, x_706.w);
        let x_708 : vec4<f32> = u_xlat7;
        let x_712 : vec2<f32> = (-(vec2<f32>(x_708.x, x_708.y)) + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
        let x_716 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_716.x, x_716.y), vec2<f32>(0.0f, 0.0f));
        let x_720 : vec2<f32> = u_xlat61;
        let x_722 : vec2<f32> = u_xlat61;
        let x_724 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_720) * x_722) + vec2<f32>(x_724.x, x_724.y));
        let x_727 : vec4<f32> = u_xlat7;
        let x_729 : vec2<f32> = max(vec2<f32>(x_727.x, x_727.y), vec2<f32>(0.0f, 0.0f));
        let x_730 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_732 : vec4<f32> = u_xlat7;
        let x_735 : vec4<f32> = u_xlat7;
        let x_738 : vec4<f32> = u_xlat8;
        let x_740 : vec2<f32> = ((-(vec2<f32>(x_732.x, x_732.y)) * vec2<f32>(x_735.x, x_735.y)) + vec2<f32>(x_738.y, x_738.w));
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
        let x_743 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_743 + vec2<f32>(1.0f, 1.0f));
        let x_745 : vec4<f32> = u_xlat7;
        let x_747 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) + vec2<f32>(1.0f, 1.0f));
        let x_748 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
        let x_751 : vec4<f32> = u_xlat8;
        let x_755 : vec2<f32> = (vec2<f32>(x_751.x, x_751.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_756 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_759 : vec4<f32> = u_xlat9;
        let x_761 : vec2<f32> = (vec2<f32>(x_759.x, x_759.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_762 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
        let x_764 : vec2<f32> = u_xlat61;
        let x_765 : vec2<f32> = (x_764 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_766 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
        let x_769 : vec4<f32> = u_xlat7;
        let x_771 : vec2<f32> = (vec2<f32>(x_769.x, x_769.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_772 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat8;
        let x_776 : vec2<f32> = (vec2<f32>(x_774.y, x_774.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_777 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
        let x_780 : f32 = u_xlat9.x;
        u_xlat10.z = x_780;
        let x_783 : f32 = u_xlat7.x;
        u_xlat10.w = x_783;
        let x_786 : f32 = u_xlat12.x;
        u_xlat11.z = x_786;
        let x_789 : f32 = u_xlat59.x;
        u_xlat11.w = x_789;
        let x_791 : vec4<f32> = u_xlat10;
        let x_793 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_791.z, x_791.w, x_791.x, x_791.z) + vec4<f32>(x_793.z, x_793.w, x_793.x, x_793.z));
        let x_797 : f32 = u_xlat10.y;
        u_xlat9.z = x_797;
        let x_800 : f32 = u_xlat7.y;
        u_xlat9.w = x_800;
        let x_803 : f32 = u_xlat11.y;
        u_xlat12.z = x_803;
        let x_806 : f32 = u_xlat59.y;
        u_xlat12.w = x_806;
        let x_808 : vec4<f32> = u_xlat9;
        let x_810 : vec4<f32> = u_xlat12;
        let x_812 : vec3<f32> = (vec3<f32>(x_808.z, x_808.y, x_808.w) + vec3<f32>(x_810.z, x_810.y, x_810.w));
        let x_813 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
        let x_815 : vec4<f32> = u_xlat11;
        let x_817 : vec4<f32> = u_xlat8;
        let x_819 : vec3<f32> = (vec3<f32>(x_815.x, x_815.z, x_815.w) / vec3<f32>(x_817.z, x_817.w, x_817.y));
        let x_820 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat9;
        let x_828 : vec3<f32> = (vec3<f32>(x_822.x, x_822.y, x_822.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_829 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
        let x_831 : vec4<f32> = u_xlat12;
        let x_833 : vec4<f32> = u_xlat7;
        let x_835 : vec3<f32> = (vec3<f32>(x_831.z, x_831.y, x_831.w) / vec3<f32>(x_833.x, x_833.y, x_833.z));
        let x_836 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat10;
        let x_840 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat9;
        let x_846 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_848 : vec3<f32> = (vec3<f32>(x_843.y, x_843.x, x_843.z) * vec3<f32>(x_846.x, x_846.x, x_846.x));
        let x_849 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
        let x_851 : vec4<f32> = u_xlat10;
        let x_854 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_856 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(x_854.y, x_854.y, x_854.y));
        let x_857 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
        let x_860 : f32 = u_xlat10.x;
        u_xlat9.w = x_860;
        let x_862 : vec2<f32> = u_xlat32;
        let x_865 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_862.x, x_862.y, x_862.x, x_862.y) * vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y)) + vec4<f32>(x_868.y, x_868.w, x_868.x, x_868.w));
        let x_871 : vec2<f32> = u_xlat32;
        let x_873 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_876 : vec4<f32> = u_xlat9;
        let x_878 : vec2<f32> = ((x_871 * vec2<f32>(x_873.x, x_873.y)) + vec2<f32>(x_876.z, x_876.w));
        let x_879 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_882 : f32 = u_xlat9.y;
        u_xlat10.w = x_882;
        let x_884 : vec4<f32> = u_xlat10;
        let x_885 : vec2<f32> = vec2<f32>(x_884.y, x_884.z);
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_886.x, x_885.x, x_886.z, x_885.y);
        let x_889 : vec2<f32> = u_xlat32;
        let x_892 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y) * vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y)) + vec4<f32>(x_895.x, x_895.y, x_895.z, x_895.y));
        let x_898 : vec2<f32> = u_xlat32;
        let x_901 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_904 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_898.x, x_898.y, x_898.x, x_898.y) * vec4<f32>(x_901.x, x_901.y, x_901.x, x_901.y)) + vec4<f32>(x_904.w, x_904.y, x_904.w, x_904.z));
        let x_907 : vec2<f32> = u_xlat32;
        let x_910 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_913 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y) * vec4<f32>(x_910.x, x_910.y, x_910.x, x_910.y)) + vec4<f32>(x_913.x, x_913.w, x_913.z, x_913.w));
        let x_917 : vec4<f32> = u_xlat7;
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_917.x, x_917.x, x_917.x, x_917.y) * vec4<f32>(x_919.z, x_919.w, x_919.y, x_919.z));
        let x_923 : vec4<f32> = u_xlat7;
        let x_925 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_923.y, x_923.y, x_923.z, x_923.z) * x_925);
        let x_928 : f32 = u_xlat7.z;
        let x_930 : f32 = u_xlat8.y;
        u_xlat32.x = (x_928 * x_930);
        let x_934 : vec4<f32> = u_xlat11;
        let x_935 : vec2<f32> = vec2<f32>(x_934.x, x_934.y);
        let x_937 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_945 : vec3<f32> = txVec4;
        let x_947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_945.xy, x_945.z);
        u_xlat58 = x_947;
        let x_949 : vec4<f32> = u_xlat11;
        let x_950 : vec2<f32> = vec2<f32>(x_949.z, x_949.w);
        let x_952 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_950.x, x_950.y, x_952);
        let x_960 : vec3<f32> = txVec5;
        let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_960.xy, x_960.z);
        u_xlat84 = x_962;
        let x_963 : f32 = u_xlat84;
        let x_965 : f32 = u_xlat14.y;
        u_xlat84 = (x_963 * x_965);
        let x_968 : f32 = u_xlat14.x;
        let x_969 : f32 = u_xlat58;
        let x_971 : f32 = u_xlat84;
        u_xlat58 = ((x_968 * x_969) + x_971);
        let x_974 : vec4<f32> = u_xlat12;
        let x_975 : vec2<f32> = vec2<f32>(x_974.x, x_974.y);
        let x_977 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_975.x, x_975.y, x_977);
        let x_984 : vec3<f32> = txVec6;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_984.xy, x_984.z);
        u_xlat84 = x_986;
        let x_988 : f32 = u_xlat14.z;
        let x_989 : f32 = u_xlat84;
        let x_991 : f32 = u_xlat58;
        u_xlat58 = ((x_988 * x_989) + x_991);
        let x_994 : vec4<f32> = u_xlat10;
        let x_995 : vec2<f32> = vec2<f32>(x_994.x, x_994.y);
        let x_997 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_995.x, x_995.y, x_997);
        let x_1004 : vec3<f32> = txVec7;
        let x_1006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1004.xy, x_1004.z);
        u_xlat84 = x_1006;
        let x_1008 : f32 = u_xlat14.w;
        let x_1009 : f32 = u_xlat84;
        let x_1011 : f32 = u_xlat58;
        u_xlat58 = ((x_1008 * x_1009) + x_1011);
        let x_1014 : vec4<f32> = u_xlat13;
        let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
        let x_1017 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
        let x_1024 : vec3<f32> = txVec8;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
        u_xlat84 = x_1026;
        let x_1028 : f32 = u_xlat15.x;
        let x_1029 : f32 = u_xlat84;
        let x_1031 : f32 = u_xlat58;
        u_xlat58 = ((x_1028 * x_1029) + x_1031);
        let x_1034 : vec4<f32> = u_xlat13;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
        let x_1037 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec9;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1044.xy, x_1044.z);
        u_xlat84 = x_1046;
        let x_1048 : f32 = u_xlat15.y;
        let x_1049 : f32 = u_xlat84;
        let x_1051 : f32 = u_xlat58;
        u_xlat58 = ((x_1048 * x_1049) + x_1051);
        let x_1054 : vec4<f32> = u_xlat10;
        let x_1055 : vec2<f32> = vec2<f32>(x_1054.z, x_1054.w);
        let x_1057 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1055.x, x_1055.y, x_1057);
        let x_1064 : vec3<f32> = txVec10;
        let x_1066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1064.xy, x_1064.z);
        u_xlat84 = x_1066;
        let x_1068 : f32 = u_xlat15.z;
        let x_1069 : f32 = u_xlat84;
        let x_1071 : f32 = u_xlat58;
        u_xlat58 = ((x_1068 * x_1069) + x_1071);
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1075 : vec2<f32> = vec2<f32>(x_1074.x, x_1074.y);
        let x_1077 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1075.x, x_1075.y, x_1077);
        let x_1084 : vec3<f32> = txVec11;
        let x_1086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1084.xy, x_1084.z);
        u_xlat84 = x_1086;
        let x_1088 : f32 = u_xlat15.w;
        let x_1089 : f32 = u_xlat84;
        let x_1091 : f32 = u_xlat58;
        u_xlat58 = ((x_1088 * x_1089) + x_1091);
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1095 : vec2<f32> = vec2<f32>(x_1094.z, x_1094.w);
        let x_1097 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1095.x, x_1095.y, x_1097);
        let x_1104 : vec3<f32> = txVec12;
        let x_1106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1104.xy, x_1104.z);
        u_xlat84 = x_1106;
        let x_1108 : f32 = u_xlat32.x;
        let x_1109 : f32 = u_xlat84;
        let x_1111 : f32 = u_xlat58;
        u_xlat6.x = ((x_1108 * x_1109) + x_1111);
      } else {
        let x_1115 : vec4<f32> = u_xlat4;
        let x_1118 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1118.z, x_1118.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1122 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_1122);
        let x_1124 : vec4<f32> = u_xlat4;
        let x_1127 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1130 : vec2<f32> = u_xlat32;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1127.z, x_1127.w)) + -(x_1130));
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1135.x, x_1135.x, x_1135.y, x_1135.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.z, x_1138.z) * vec4<f32>(x_1140.x, x_1140.x, x_1140.z, x_1140.z));
        let x_1143 : vec4<f32> = u_xlat9;
        let x_1147 : vec2<f32> = (vec2<f32>(x_1143.y, x_1143.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1148 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1147.x, x_1148.z, x_1147.y);
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1153 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1150.x, x_1150.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1153.x, x_1153.y)));
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = (-(vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1165 : vec2<f32> = min(vec2<f32>(x_1163.x, x_1163.y), vec2<f32>(0.0f, 0.0f));
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat9;
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1176 : vec2<f32> = ((-(vec2<f32>(x_1168.x, x_1168.y)) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.x, x_1174.z));
        let x_1177 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = max(vec2<f32>(x_1179.x, x_1179.y), vec2<f32>(0.0f, 0.0f));
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1187 : vec4<f32> = u_xlat9;
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1192 : vec2<f32> = ((-(vec2<f32>(x_1184.x, x_1184.y)) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.y, x_1190.w));
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1193.x, x_1192.x, x_1193.z, x_1192.y);
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1195 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1199 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1199 * 0.08163200318813323975f);
        let x_1203 : vec2<f32> = u_xlat59;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1203.y, x_1203.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1207 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1209.x, x_1209.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1213 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1213 * 0.08163200318813323975f);
        let x_1217 : f32 = u_xlat11.y;
        u_xlat9.x = x_1217;
        let x_1219 : vec4<f32> = u_xlat7;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1219.x, x_1219.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1226.x, x_1227.z, x_1226.y);
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1233 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1234 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1233.x, x_1234.y, x_1233.y, x_1234.w);
        let x_1237 : f32 = u_xlat59.x;
        u_xlat8.y = x_1237;
        let x_1240 : f32 = u_xlat10.y;
        u_xlat8.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1242 + x_1243);
        let x_1245 : vec4<f32> = u_xlat7;
        let x_1248 : vec2<f32> = ((vec2<f32>(x_1245.y, x_1245.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1249 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1249.x, x_1248.x, x_1249.z, x_1248.y);
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1251.y, x_1251.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1255 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1255.w);
        let x_1258 : f32 = u_xlat59.y;
        u_xlat10.y = x_1258;
        let x_1260 : vec4<f32> = u_xlat10;
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1260 + x_1261);
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1264 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1263 / x_1264);
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1266 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1272 : vec4<f32> = u_xlat10;
        let x_1273 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1272 / x_1273);
        let x_1275 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1275 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1277 : vec4<f32> = u_xlat8;
        let x_1280 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1277.w, x_1277.x, x_1277.y, x_1277.z) * vec4<f32>(x_1280.x, x_1280.x, x_1280.x, x_1280.x));
        let x_1283 : vec4<f32> = u_xlat10;
        let x_1286 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1283.x, x_1283.w, x_1283.y, x_1283.z) * vec4<f32>(x_1286.y, x_1286.y, x_1286.y, x_1286.y));
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1290 : vec3<f32> = vec3<f32>(x_1289.y, x_1289.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1290.x, x_1291.y, x_1290.y, x_1290.z);
        let x_1294 : f32 = u_xlat10.x;
        u_xlat11.y = x_1294;
        let x_1296 : vec2<f32> = u_xlat32;
        let x_1299 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1302.y));
        let x_1305 : vec2<f32> = u_xlat32;
        let x_1307 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = ((x_1305 * vec2<f32>(x_1307.x, x_1307.y)) + vec2<f32>(x_1310.w, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1316 : f32 = u_xlat11.y;
        u_xlat8.y = x_1316;
        let x_1319 : f32 = u_xlat10.z;
        u_xlat11.y = x_1319;
        let x_1321 : vec2<f32> = u_xlat32;
        let x_1324 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y) * vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y)) + vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1327.y));
        let x_1331 : vec2<f32> = u_xlat32;
        let x_1333 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1331 * vec2<f32>(x_1333.x, x_1333.y)) + vec2<f32>(x_1336.w, x_1336.y));
        let x_1340 : f32 = u_xlat11.y;
        u_xlat8.z = x_1340;
        let x_1342 : vec2<f32> = u_xlat32;
        let x_1345 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1348 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y) * vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y)) + vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.z));
        let x_1352 : f32 = u_xlat10.w;
        u_xlat11.y = x_1352;
        let x_1355 : vec2<f32> = u_xlat32;
        let x_1358 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y) * vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y)) + vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1361.y));
        let x_1365 : vec2<f32> = u_xlat32;
        let x_1367 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat11;
        let x_1372 : vec2<f32> = ((x_1365 * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.w, x_1370.y));
        let x_1373 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1372.x, x_1372.y, x_1373.z);
        let x_1376 : f32 = u_xlat11.y;
        u_xlat8.w = x_1376;
        let x_1379 : vec2<f32> = u_xlat32;
        let x_1381 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = ((x_1379 * vec2<f32>(x_1381.x, x_1381.y)) + vec2<f32>(x_1384.x, x_1384.w));
        let x_1387 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1386.x, x_1386.y, x_1387.z, x_1387.w);
        let x_1389 : vec4<f32> = u_xlat11;
        let x_1390 : vec3<f32> = vec3<f32>(x_1389.x, x_1389.z, x_1389.w);
        let x_1391 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1390.x, x_1391.y, x_1390.y, x_1390.z);
        let x_1393 : vec2<f32> = u_xlat32;
        let x_1396 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1393.x, x_1393.y, x_1393.x, x_1393.y) * vec4<f32>(x_1396.x, x_1396.y, x_1396.x, x_1396.y)) + vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1399.y));
        let x_1403 : vec2<f32> = u_xlat32;
        let x_1405 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1408 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1403 * vec2<f32>(x_1405.x, x_1405.y)) + vec2<f32>(x_1408.w, x_1408.y));
        let x_1412 : f32 = u_xlat8.x;
        u_xlat10.x = x_1412;
        let x_1414 : vec2<f32> = u_xlat32;
        let x_1416 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1419 : vec4<f32> = u_xlat10;
        u_xlat32 = ((x_1414 * vec2<f32>(x_1416.x, x_1416.y)) + vec2<f32>(x_1419.x, x_1419.y));
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1425 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1423.x, x_1423.x, x_1423.x, x_1423.x) * x_1425);
        let x_1428 : vec4<f32> = u_xlat7;
        let x_1430 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1428.y, x_1428.y, x_1428.y, x_1428.y) * x_1430);
        let x_1433 : vec4<f32> = u_xlat7;
        let x_1435 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1433.z, x_1433.z, x_1433.z, x_1433.z) * x_1435);
        let x_1437 : vec4<f32> = u_xlat7;
        let x_1439 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1437.w, x_1437.w, x_1437.w, x_1437.w) * x_1439);
        let x_1442 : vec4<f32> = u_xlat12;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.x, x_1442.y);
        let x_1445 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec13;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat84 = x_1454;
        let x_1456 : vec4<f32> = u_xlat12;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.z, x_1456.w);
        let x_1459 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec14;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat8.x = x_1468;
        let x_1471 : f32 = u_xlat8.x;
        let x_1473 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1471 * x_1473);
        let x_1477 : f32 = u_xlat18.x;
        let x_1478 : f32 = u_xlat84;
        let x_1481 : f32 = u_xlat8.x;
        u_xlat84 = ((x_1477 * x_1478) + x_1481);
        let x_1484 : vec4<f32> = u_xlat13;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
        let x_1487 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec15;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat8.x = x_1496;
        let x_1499 : f32 = u_xlat18.z;
        let x_1501 : f32 = u_xlat8.x;
        let x_1503 : f32 = u_xlat84;
        u_xlat84 = ((x_1499 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat15;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.x, x_1506.y);
        let x_1509 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec16;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat8.x = x_1518;
        let x_1521 : f32 = u_xlat18.w;
        let x_1523 : f32 = u_xlat8.x;
        let x_1525 : f32 = u_xlat84;
        u_xlat84 = ((x_1521 * x_1523) + x_1525);
        let x_1528 : vec4<f32> = u_xlat14;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec17;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat8.x = x_1540;
        let x_1543 : f32 = u_xlat19.x;
        let x_1545 : f32 = u_xlat8.x;
        let x_1547 : f32 = u_xlat84;
        u_xlat84 = ((x_1543 * x_1545) + x_1547);
        let x_1550 : vec4<f32> = u_xlat14;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.z, x_1550.w);
        let x_1553 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec18;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat8.x = x_1562;
        let x_1565 : f32 = u_xlat19.y;
        let x_1567 : f32 = u_xlat8.x;
        let x_1569 : f32 = u_xlat84;
        u_xlat84 = ((x_1565 * x_1567) + x_1569);
        let x_1572 : vec2<f32> = u_xlat65;
        let x_1574 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec19;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat8.x = x_1583;
        let x_1586 : f32 = u_xlat19.z;
        let x_1588 : f32 = u_xlat8.x;
        let x_1590 : f32 = u_xlat84;
        u_xlat84 = ((x_1586 * x_1588) + x_1590);
        let x_1593 : vec4<f32> = u_xlat15;
        let x_1594 : vec2<f32> = vec2<f32>(x_1593.z, x_1593.w);
        let x_1596 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec20;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat8.x = x_1605;
        let x_1608 : f32 = u_xlat19.w;
        let x_1610 : f32 = u_xlat8.x;
        let x_1612 : f32 = u_xlat84;
        u_xlat84 = ((x_1608 * x_1610) + x_1612);
        let x_1615 : vec4<f32> = u_xlat16;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.x, x_1615.y);
        let x_1618 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec21;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat8.x = x_1627;
        let x_1630 : f32 = u_xlat20.x;
        let x_1632 : f32 = u_xlat8.x;
        let x_1634 : f32 = u_xlat84;
        u_xlat84 = ((x_1630 * x_1632) + x_1634);
        let x_1637 : vec4<f32> = u_xlat16;
        let x_1638 : vec2<f32> = vec2<f32>(x_1637.z, x_1637.w);
        let x_1640 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1647 : vec3<f32> = txVec22;
        let x_1649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1647.xy, x_1647.z);
        u_xlat8.x = x_1649;
        let x_1652 : f32 = u_xlat20.y;
        let x_1654 : f32 = u_xlat8.x;
        let x_1656 : f32 = u_xlat84;
        u_xlat84 = ((x_1652 * x_1654) + x_1656);
        let x_1659 : vec3<f32> = u_xlat34;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.x, x_1659.y);
        let x_1662 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec23;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat8.x = x_1671;
        let x_1674 : f32 = u_xlat20.z;
        let x_1676 : f32 = u_xlat8.x;
        let x_1678 : f32 = u_xlat84;
        u_xlat84 = ((x_1674 * x_1676) + x_1678);
        let x_1681 : vec4<f32> = u_xlat17;
        let x_1682 : vec2<f32> = vec2<f32>(x_1681.x, x_1681.y);
        let x_1684 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec24;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1691.xy, x_1691.z);
        u_xlat8.x = x_1693;
        let x_1696 : f32 = u_xlat20.w;
        let x_1698 : f32 = u_xlat8.x;
        let x_1700 : f32 = u_xlat84;
        u_xlat84 = ((x_1696 * x_1698) + x_1700);
        let x_1703 : vec4<f32> = u_xlat11;
        let x_1704 : vec2<f32> = vec2<f32>(x_1703.x, x_1703.y);
        let x_1706 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1713 : vec3<f32> = txVec25;
        let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1713.xy, x_1713.z);
        u_xlat8.x = x_1715;
        let x_1718 : f32 = u_xlat7.x;
        let x_1720 : f32 = u_xlat8.x;
        let x_1722 : f32 = u_xlat84;
        u_xlat84 = ((x_1718 * x_1720) + x_1722);
        let x_1725 : vec4<f32> = u_xlat11;
        let x_1726 : vec2<f32> = vec2<f32>(x_1725.z, x_1725.w);
        let x_1728 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
        let x_1735 : vec3<f32> = txVec26;
        let x_1737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1735.xy, x_1735.z);
        u_xlat7.x = x_1737;
        let x_1740 : f32 = u_xlat7.y;
        let x_1742 : f32 = u_xlat7.x;
        let x_1744 : f32 = u_xlat84;
        u_xlat84 = ((x_1740 * x_1742) + x_1744);
        let x_1747 : vec2<f32> = u_xlat62;
        let x_1749 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1747.x, x_1747.y, x_1749);
        let x_1756 : vec3<f32> = txVec27;
        let x_1758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1756.xy, x_1756.z);
        u_xlat7.x = x_1758;
        let x_1761 : f32 = u_xlat7.z;
        let x_1763 : f32 = u_xlat7.x;
        let x_1765 : f32 = u_xlat84;
        u_xlat84 = ((x_1761 * x_1763) + x_1765);
        let x_1768 : vec2<f32> = u_xlat32;
        let x_1770 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1768.x, x_1768.y, x_1770);
        let x_1777 : vec3<f32> = txVec28;
        let x_1779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1777.xy, x_1777.z);
        u_xlat32.x = x_1779;
        let x_1782 : f32 = u_xlat7.w;
        let x_1784 : f32 = u_xlat32.x;
        let x_1786 : f32 = u_xlat84;
        u_xlat6.x = ((x_1782 * x_1784) + x_1786);
      }
    }
  } else {
    let x_1791 : vec4<f32> = u_xlat4;
    let x_1792 : vec2<f32> = vec2<f32>(x_1791.x, x_1791.y);
    let x_1794 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1792.x, x_1792.y, x_1794);
    let x_1801 : vec3<f32> = txVec29;
    let x_1803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1801.xy, x_1801.z);
    u_xlat6.x = x_1803;
  }
  let x_1806 : f32 = x_217.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1806) + 1.0f);
  let x_1811 : f32 = u_xlat6.x;
  let x_1813 : f32 = x_217.x_MainLightShadowParams.x;
  let x_1816 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1811 * x_1813) + x_1816);
  let x_1821 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1821);
  let x_1825 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1825 >= 1.0f);
  let x_1827 : bool = u_xlatb56;
  let x_1828 : bool = u_xlatb30;
  u_xlatb30 = (x_1827 | x_1828);
  let x_1830 : bool = u_xlatb30;
  if (x_1830) {
    x_1831 = 1.0f;
  } else {
    let x_1836 : f32 = u_xlat4.x;
    x_1831 = x_1836;
  }
  let x_1837 : f32 = x_1831;
  u_xlat4.x = x_1837;
  let x_1839 : vec3<f32> = vs_TEXCOORD1;
  let x_1841 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1843 : vec3<f32> = (x_1839 + -(x_1841));
  let x_1844 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
  let x_1847 : vec4<f32> = u_xlat6;
  let x_1849 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1847.x, x_1847.y, x_1847.z), vec3<f32>(x_1849.x, x_1849.y, x_1849.z));
  let x_1853 : f32 = u_xlat30;
  let x_1855 : f32 = x_217.x_MainLightShadowParams.z;
  let x_1858 : f32 = x_217.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1853 * x_1855) + x_1858);
  let x_1860 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1860, 0.0f, 1.0f);
  let x_1863 : f32 = u_xlat4.x;
  u_xlat6.x = (-(x_1863) + 1.0f);
  let x_1867 : f32 = u_xlat56;
  let x_1869 : f32 = u_xlat6.x;
  let x_1872 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1867 * x_1869) + x_1872);
  let x_1882 : f32 = x_1880.x_MainLightCookieTextureFormat;
  u_xlatb56 = !((x_1882 == -1.0f));
  let x_1884 : bool = u_xlatb56;
  if (x_1884) {
    let x_1887 : vec3<f32> = vs_TEXCOORD1;
    let x_1890 : vec4<f32> = x_1880.x_MainLightWorldToLight[1i];
    let x_1892 : vec2<f32> = (vec2<f32>(x_1887.y, x_1887.y) * vec2<f32>(x_1890.x, x_1890.y));
    let x_1893 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1892.x, x_1892.y, x_1893.z, x_1893.w);
    let x_1896 : vec4<f32> = x_1880.x_MainLightWorldToLight[0i];
    let x_1898 : vec3<f32> = vs_TEXCOORD1;
    let x_1901 : vec4<f32> = u_xlat6;
    let x_1903 : vec2<f32> = ((vec2<f32>(x_1896.x, x_1896.y) * vec2<f32>(x_1898.x, x_1898.x)) + vec2<f32>(x_1901.x, x_1901.y));
    let x_1904 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1903.x, x_1903.y, x_1904.z, x_1904.w);
    let x_1907 : vec4<f32> = x_1880.x_MainLightWorldToLight[2i];
    let x_1909 : vec3<f32> = vs_TEXCOORD1;
    let x_1912 : vec4<f32> = u_xlat6;
    let x_1914 : vec2<f32> = ((vec2<f32>(x_1907.x, x_1907.y) * vec2<f32>(x_1909.z, x_1909.z)) + vec2<f32>(x_1912.x, x_1912.y));
    let x_1915 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1914.x, x_1914.y, x_1915.z, x_1915.w);
    let x_1917 : vec4<f32> = u_xlat6;
    let x_1920 : vec4<f32> = x_1880.x_MainLightWorldToLight[3i];
    let x_1922 : vec2<f32> = (vec2<f32>(x_1917.x, x_1917.y) + vec2<f32>(x_1920.x, x_1920.y));
    let x_1923 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1922.x, x_1922.y, x_1923.z, x_1923.w);
    let x_1925 : vec4<f32> = u_xlat6;
    let x_1928 : vec2<f32> = ((vec2<f32>(x_1925.x, x_1925.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1929 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1928.x, x_1928.y, x_1929.z, x_1929.w);
    let x_1936 : vec4<f32> = u_xlat6;
    let x_1939 : f32 = x_45.x_GlobalMipBias.x;
    let x_1940 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1936.x, x_1936.y), x_1939);
    u_xlat6 = x_1940;
    let x_1945 : f32 = x_1880.x_MainLightCookieTextureFormat;
    let x_1947 : f32 = x_1880.x_MainLightCookieTextureFormat;
    let x_1949 : f32 = x_1880.x_MainLightCookieTextureFormat;
    let x_1951 : f32 = x_1880.x_MainLightCookieTextureFormat;
    let x_1952 : vec4<f32> = vec4<f32>(x_1945, x_1947, x_1949, x_1951);
    let x_1959 : vec4<bool> = (vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1952.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1959.x, x_1959.y);
    let x_1962 : bool = u_xlatb7.y;
    if (x_1962) {
      let x_1967 : f32 = u_xlat6.w;
      x_1963 = x_1967;
    } else {
      let x_1970 : f32 = u_xlat6.x;
      x_1963 = x_1970;
    }
    let x_1971 : f32 = x_1963;
    u_xlat56 = x_1971;
    let x_1973 : bool = u_xlatb7.x;
    if (x_1973) {
      let x_1977 : vec4<f32> = u_xlat6;
      x_1974 = vec3<f32>(x_1977.x, x_1977.y, x_1977.z);
    } else {
      let x_1980 : f32 = u_xlat56;
      x_1974 = vec3<f32>(x_1980, x_1980, x_1980);
    }
    let x_1982 : vec3<f32> = x_1974;
    let x_1983 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1989 : vec4<f32> = u_xlat6;
  let x_1992 : vec4<f32> = x_45.x_MainLightColor;
  let x_1994 : vec3<f32> = (vec3<f32>(x_1989.x, x_1989.y, x_1989.z) * vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
  let x_1995 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
  let x_1997 : vec3<f32> = u_xlat3;
  let x_1999 : vec4<f32> = u_xlat2;
  u_xlat56 = dot(-(x_1997), vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
  let x_2002 : f32 = u_xlat56;
  let x_2003 : f32 = u_xlat56;
  u_xlat56 = (x_2002 + x_2003);
  let x_2005 : vec4<f32> = u_xlat2;
  let x_2007 : f32 = u_xlat56;
  let x_2011 : vec3<f32> = u_xlat3;
  let x_2013 : vec3<f32> = ((vec3<f32>(x_2005.x, x_2005.y, x_2005.z) * -(vec3<f32>(x_2007, x_2007, x_2007))) + -(x_2011));
  let x_2014 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
  let x_2016 : vec4<f32> = u_xlat2;
  let x_2018 : vec3<f32> = u_xlat3;
  u_xlat56 = dot(vec3<f32>(x_2016.x, x_2016.y, x_2016.z), x_2018);
  let x_2020 : f32 = u_xlat56;
  u_xlat56 = clamp(x_2020, 0.0f, 1.0f);
  let x_2022 : f32 = u_xlat56;
  u_xlat56 = (-(x_2022) + 1.0f);
  let x_2025 : f32 = u_xlat56;
  let x_2026 : f32 = u_xlat56;
  u_xlat56 = (x_2025 * x_2026);
  let x_2028 : f32 = u_xlat56;
  let x_2029 : f32 = u_xlat56;
  u_xlat56 = (x_2028 * x_2029);
  let x_2031 : f32 = u_xlat78;
  u_xlat84 = ((-(x_2031) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2037 : f32 = u_xlat78;
  let x_2038 : f32 = u_xlat84;
  u_xlat78 = (x_2037 * x_2038);
  let x_2040 : f32 = u_xlat78;
  u_xlat78 = (x_2040 * 6.0f);
  let x_2051 : vec4<f32> = u_xlat7;
  let x_2053 : f32 = u_xlat78;
  let x_2054 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2051.x, x_2051.y, x_2051.z), x_2053);
  u_xlat7 = x_2054;
  let x_2056 : f32 = u_xlat7.w;
  u_xlat78 = (x_2056 + -1.0f);
  let x_2059 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_2060 : f32 = u_xlat78;
  u_xlat78 = ((x_2059 * x_2060) + 1.0f);
  let x_2063 : f32 = u_xlat78;
  u_xlat78 = max(x_2063, 0.0f);
  let x_2065 : f32 = u_xlat78;
  u_xlat78 = log2(x_2065);
  let x_2067 : f32 = u_xlat78;
  let x_2069 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2067 * x_2069);
  let x_2071 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2071);
  let x_2073 : f32 = u_xlat78;
  let x_2075 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2073 * x_2075);
  let x_2077 : vec4<f32> = u_xlat7;
  let x_2079 : f32 = u_xlat78;
  let x_2081 : vec3<f32> = (vec3<f32>(x_2077.x, x_2077.y, x_2077.z) * vec3<f32>(x_2079, x_2079, x_2079));
  let x_2082 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
  let x_2084 : f32 = u_xlat81;
  let x_2086 : f32 = u_xlat81;
  let x_2090 : vec2<f32> = ((vec2<f32>(x_2084, x_2084) * vec2<f32>(x_2086, x_2086)) + vec2<f32>(-1.0f, 1.0f));
  let x_2091 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2090.x, x_2090.y, x_2091.z, x_2091.w);
  let x_2094 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_2094);
  let x_2096 : vec4<f32> = u_xlat0;
  let x_2099 : f32 = u_xlat80;
  u_xlat34 = (-(vec3<f32>(x_2096.x, x_2096.y, x_2096.z)) + vec3<f32>(x_2099, x_2099, x_2099));
  let x_2102 : f32 = u_xlat56;
  let x_2104 : vec3<f32> = u_xlat34;
  let x_2106 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2102, x_2102, x_2102) * x_2104) + vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
  let x_2109 : f32 = u_xlat78;
  let x_2111 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2109, x_2109, x_2109) * x_2111);
  let x_2113 : vec4<f32> = u_xlat7;
  let x_2115 : vec3<f32> = u_xlat34;
  let x_2116 : vec3<f32> = (vec3<f32>(x_2113.x, x_2113.y, x_2113.z) * x_2115);
  let x_2117 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2116.x, x_2116.y, x_2116.z, x_2117.w);
  let x_2119 : vec4<f32> = u_xlat5;
  let x_2121 : vec3<f32> = u_xlat27;
  let x_2123 : vec4<f32> = u_xlat7;
  let x_2125 : vec3<f32> = ((vec3<f32>(x_2119.x, x_2119.y, x_2119.z) * x_2121) + vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
  let x_2126 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
  let x_2129 : f32 = u_xlat4.x;
  let x_2131 : f32 = x_95.unity_LightData.z;
  u_xlat78 = (x_2129 * x_2131);
  let x_2133 : vec4<f32> = u_xlat2;
  let x_2136 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2133.x, x_2133.y, x_2133.z), vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
  let x_2139 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2139, 0.0f, 1.0f);
  let x_2141 : f32 = u_xlat78;
  let x_2142 : f32 = u_xlat80;
  u_xlat78 = (x_2141 * x_2142);
  let x_2144 : f32 = u_xlat78;
  let x_2146 : vec4<f32> = u_xlat6;
  let x_2148 : vec3<f32> = (vec3<f32>(x_2144, x_2144, x_2144) * vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
  let x_2151 : vec3<f32> = u_xlat3;
  let x_2153 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2155 : vec3<f32> = (x_2151 + vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
  let x_2156 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
  let x_2158 : vec4<f32> = u_xlat7;
  let x_2160 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2158.x, x_2158.y, x_2158.z), vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
  let x_2163 : f32 = u_xlat78;
  u_xlat78 = max(x_2163, 1.17549435e-38f);
  let x_2166 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2166);
  let x_2168 : f32 = u_xlat78;
  let x_2170 : vec4<f32> = u_xlat7;
  let x_2172 : vec3<f32> = (vec3<f32>(x_2168, x_2168, x_2168) * vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
  let x_2173 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
  let x_2175 : vec4<f32> = u_xlat2;
  let x_2177 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2175.x, x_2175.y, x_2175.z), vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
  let x_2180 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2180, 0.0f, 1.0f);
  let x_2183 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2185 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2183.x, x_2183.y, x_2183.z), vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
  let x_2188 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2188, 0.0f, 1.0f);
  let x_2190 : f32 = u_xlat78;
  let x_2191 : f32 = u_xlat78;
  u_xlat78 = (x_2190 * x_2191);
  let x_2193 : f32 = u_xlat78;
  let x_2195 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2193 * x_2195) + 1.00001001358032226562f);
  let x_2199 : f32 = u_xlat80;
  let x_2200 : f32 = u_xlat80;
  u_xlat80 = (x_2199 * x_2200);
  let x_2202 : f32 = u_xlat78;
  let x_2203 : f32 = u_xlat78;
  u_xlat78 = (x_2202 * x_2203);
  let x_2205 : f32 = u_xlat80;
  u_xlat80 = max(x_2205, 0.10000000149011611938f);
  let x_2208 : f32 = u_xlat78;
  let x_2209 : f32 = u_xlat80;
  u_xlat78 = (x_2208 * x_2209);
  let x_2211 : f32 = u_xlat83;
  let x_2212 : f32 = u_xlat78;
  u_xlat78 = (x_2211 * x_2212);
  let x_2214 : f32 = u_xlat82;
  let x_2215 : f32 = u_xlat78;
  u_xlat78 = (x_2214 / x_2215);
  let x_2217 : vec4<f32> = u_xlat0;
  let x_2219 : f32 = u_xlat78;
  let x_2222 : vec3<f32> = u_xlat27;
  let x_2223 : vec3<f32> = ((vec3<f32>(x_2217.x, x_2217.y, x_2217.z) * vec3<f32>(x_2219, x_2219, x_2219)) + x_2222);
  let x_2224 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2223.x, x_2223.y, x_2223.z, x_2224.w);
  let x_2227 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2229 : f32 = x_95.unity_LightData.y;
  u_xlat78 = min(x_2227, x_2229);
  let x_2231 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2231));
  let x_2234 : f32 = u_xlat30;
  let x_2237 : f32 = x_217.x_AdditionalShadowFadeParams.x;
  let x_2240 : f32 = x_217.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2234 * x_2237) + x_2240);
  let x_2242 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2242, 0.0f, 1.0f);
  let x_2245 : f32 = x_1880.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2247 : f32 = x_1880.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2249 : f32 = x_1880.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2251 : f32 = x_1880.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2252 : vec4<f32> = vec4<f32>(x_2245, x_2247, x_2249, x_2251);
  let x_2258 : vec4<bool> = (vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2252.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2259 : vec2<bool> = vec2<bool>(x_2258.x, x_2258.y);
  let x_2260 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2272 : u32 = u_xlatu_loop_1;
    let x_2273 : u32 = u_xlatu78;
    if ((x_2272 < x_2273)) {
    } else {
      break;
    }
    let x_2276 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_2276 >> 2u);
    let x_2279 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2279 & 3u));
    let x_2282 : u32 = u_xlatu56;
    let x_2285 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2282)];
    let x_2295 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2300 : vec4<u32> = indexable[x_2295];
    u_xlat56 = dot(x_2285, bitcast<vec4<f32>>(x_2300));
    let x_2304 : f32 = u_xlat56;
    u_xlati56 = i32(x_2304);
    let x_2306 : vec3<f32> = vs_TEXCOORD1;
    let x_2317 : i32 = u_xlati56;
    let x_2319 : vec4<f32> = x_2316.x_AdditionalLightsPosition[x_2317];
    let x_2322 : i32 = u_xlati56;
    let x_2324 : vec4<f32> = x_2316.x_AdditionalLightsPosition[x_2322];
    let x_2326 : vec3<f32> = ((-(x_2306) * vec3<f32>(x_2319.w, x_2319.w, x_2319.w)) + vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
    let x_2327 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
    let x_2329 : vec4<f32> = u_xlat9;
    let x_2331 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2329.x, x_2329.y, x_2329.z), vec3<f32>(x_2331.x, x_2331.y, x_2331.z));
    let x_2334 : f32 = u_xlat84;
    u_xlat84 = max(x_2334, 0.00006103515625f);
    let x_2338 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2338);
    let x_2340 : f32 = u_xlat85;
    let x_2342 : vec4<f32> = u_xlat9;
    let x_2344 : vec3<f32> = (vec3<f32>(x_2340, x_2340, x_2340) * vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
    let x_2345 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
    let x_2348 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2348);
    let x_2350 : f32 = u_xlat84;
    let x_2351 : i32 = u_xlati56;
    let x_2353 : f32 = x_2316.x_AdditionalLightsAttenuation[x_2351].x;
    u_xlat84 = (x_2350 * x_2353);
    let x_2355 : f32 = u_xlat84;
    let x_2357 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2355) * x_2357) + 1.0f);
    let x_2360 : f32 = u_xlat84;
    u_xlat84 = max(x_2360, 0.0f);
    let x_2362 : f32 = u_xlat84;
    let x_2363 : f32 = u_xlat84;
    u_xlat84 = (x_2362 * x_2363);
    let x_2365 : f32 = u_xlat84;
    let x_2366 : f32 = u_xlat87;
    u_xlat84 = (x_2365 * x_2366);
    let x_2368 : i32 = u_xlati56;
    let x_2370 : vec4<f32> = x_2316.x_AdditionalLightsSpotDir[x_2368];
    let x_2372 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2370.x, x_2370.y, x_2370.z), vec3<f32>(x_2372.x, x_2372.y, x_2372.z));
    let x_2375 : f32 = u_xlat87;
    let x_2376 : i32 = u_xlati56;
    let x_2378 : f32 = x_2316.x_AdditionalLightsAttenuation[x_2376].z;
    let x_2380 : i32 = u_xlati56;
    let x_2382 : f32 = x_2316.x_AdditionalLightsAttenuation[x_2380].w;
    u_xlat87 = ((x_2375 * x_2378) + x_2382);
    let x_2384 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2384, 0.0f, 1.0f);
    let x_2386 : f32 = u_xlat87;
    let x_2387 : f32 = u_xlat87;
    u_xlat87 = (x_2386 * x_2387);
    let x_2389 : f32 = u_xlat84;
    let x_2390 : f32 = u_xlat87;
    u_xlat84 = (x_2389 * x_2390);
    let x_2394 : i32 = u_xlati56;
    let x_2396 : f32 = x_217.x_AdditionalShadowParams[x_2394].w;
    u_xlati87 = i32(x_2396);
    let x_2399 : i32 = u_xlati87;
    u_xlatb88 = (x_2399 >= 0i);
    let x_2401 : bool = u_xlatb88;
    if (x_2401) {
      let x_2405 : i32 = u_xlati56;
      let x_2407 : f32 = x_217.x_AdditionalShadowParams[x_2405].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2407, x_2407, x_2407, x_2407))));
      let x_2411 : bool = u_xlatb88;
      if (x_2411) {
        let x_2415 : vec4<f32> = u_xlat10;
        let x_2418 : vec4<f32> = u_xlat10;
        let x_2421 : vec4<bool> = (abs(vec4<f32>(x_2415.z, x_2415.z, x_2415.y, x_2415.z)) >= abs(vec4<f32>(x_2418.x, x_2418.y, x_2418.x, x_2418.x)));
        let x_2423 : vec3<bool> = vec3<bool>(x_2421.x, x_2421.y, x_2421.z);
        let x_2424 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
        let x_2427 : bool = u_xlatb11.y;
        let x_2429 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2427 & x_2429);
        let x_2431 : vec4<f32> = u_xlat10;
        let x_2434 : vec4<bool> = (-(vec4<f32>(x_2431.z, x_2431.y, x_2431.z, x_2431.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2435 : vec3<bool> = vec3<bool>(x_2434.x, x_2434.y, x_2434.w);
        let x_2436 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2435.x, x_2435.y, x_2436.z, x_2435.z);
        let x_2439 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2439);
        let x_2444 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2444);
        let x_2449 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2449);
        let x_2453 : bool = u_xlatb11.z;
        if (x_2453) {
          let x_2458 : f32 = u_xlat11.y;
          x_2454 = x_2458;
        } else {
          let x_2460 : f32 = u_xlat89;
          x_2454 = x_2460;
        }
        let x_2461 : f32 = x_2454;
        u_xlat37.x = x_2461;
        let x_2464 : bool = u_xlatb88;
        if (x_2464) {
          let x_2469 : f32 = u_xlat11.x;
          x_2465 = x_2469;
        } else {
          let x_2472 : f32 = u_xlat37.x;
          x_2465 = x_2472;
        }
        let x_2473 : f32 = x_2465;
        u_xlat88 = x_2473;
        let x_2474 : i32 = u_xlati56;
        let x_2476 : f32 = x_217.x_AdditionalShadowParams[x_2474].w;
        u_xlat11.x = trunc(x_2476);
        let x_2479 : f32 = u_xlat88;
        let x_2481 : f32 = u_xlat11.x;
        u_xlat88 = (x_2479 + x_2481);
        let x_2483 : f32 = u_xlat88;
        u_xlati87 = i32(x_2483);
      }
      let x_2485 : i32 = u_xlati87;
      u_xlati87 = (x_2485 << bitcast<u32>(2i));
      let x_2487 : vec3<f32> = vs_TEXCOORD1;
      let x_2490 : i32 = u_xlati87;
      let x_2493 : i32 = u_xlati87;
      let x_2497 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_2490 + 1i) / 4i)][((x_2493 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2487.y, x_2487.y, x_2487.y, x_2487.y) * x_2497);
      let x_2499 : i32 = u_xlati87;
      let x_2501 : i32 = u_xlati87;
      let x_2504 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[(x_2499 / 4i)][(x_2501 % 4i)];
      let x_2505 : vec3<f32> = vs_TEXCOORD1;
      let x_2508 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2504 * vec4<f32>(x_2505.x, x_2505.x, x_2505.x, x_2505.x)) + x_2508);
      let x_2510 : i32 = u_xlati87;
      let x_2513 : i32 = u_xlati87;
      let x_2517 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_2510 + 2i) / 4i)][((x_2513 + 2i) % 4i)];
      let x_2518 : vec3<f32> = vs_TEXCOORD1;
      let x_2521 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2517 * vec4<f32>(x_2518.z, x_2518.z, x_2518.z, x_2518.z)) + x_2521);
      let x_2523 : vec4<f32> = u_xlat11;
      let x_2524 : i32 = u_xlati87;
      let x_2527 : i32 = u_xlati87;
      let x_2531 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_2524 + 3i) / 4i)][((x_2527 + 3i) % 4i)];
      u_xlat11 = (x_2523 + x_2531);
      let x_2533 : vec4<f32> = u_xlat11;
      let x_2535 : vec4<f32> = u_xlat11;
      let x_2537 : vec3<f32> = (vec3<f32>(x_2533.x, x_2533.y, x_2533.z) / vec3<f32>(x_2535.w, x_2535.w, x_2535.w));
      let x_2538 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);
      let x_2541 : i32 = u_xlati56;
      let x_2543 : f32 = x_217.x_AdditionalShadowParams[x_2541].y;
      u_xlatb87 = (0.0f < x_2543);
      let x_2545 : bool = u_xlatb87;
      if (x_2545) {
        let x_2548 : i32 = u_xlati56;
        let x_2550 : f32 = x_217.x_AdditionalShadowParams[x_2548].y;
        u_xlatb87 = (1.0f == x_2550);
        let x_2552 : bool = u_xlatb87;
        if (x_2552) {
          let x_2555 : vec4<f32> = u_xlat11;
          let x_2559 : vec4<f32> = x_217.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2555.x, x_2555.y, x_2555.x, x_2555.y) + x_2559);
          let x_2562 : vec4<f32> = u_xlat12;
          let x_2563 : vec2<f32> = vec2<f32>(x_2562.x, x_2562.y);
          let x_2565 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2563.x, x_2563.y, x_2565);
          let x_2573 : vec3<f32> = txVec30;
          let x_2575 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2573.xy, x_2573.z);
          u_xlat13.x = x_2575;
          let x_2578 : vec4<f32> = u_xlat12;
          let x_2579 : vec2<f32> = vec2<f32>(x_2578.z, x_2578.w);
          let x_2581 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2579.x, x_2579.y, x_2581);
          let x_2588 : vec3<f32> = txVec31;
          let x_2590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2588.xy, x_2588.z);
          u_xlat13.y = x_2590;
          let x_2592 : vec4<f32> = u_xlat11;
          let x_2596 : vec4<f32> = x_217.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2592.x, x_2592.y, x_2592.x, x_2592.y) + x_2596);
          let x_2599 : vec4<f32> = u_xlat12;
          let x_2600 : vec2<f32> = vec2<f32>(x_2599.x, x_2599.y);
          let x_2602 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2600.x, x_2600.y, x_2602);
          let x_2609 : vec3<f32> = txVec32;
          let x_2611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2609.xy, x_2609.z);
          u_xlat13.z = x_2611;
          let x_2614 : vec4<f32> = u_xlat12;
          let x_2615 : vec2<f32> = vec2<f32>(x_2614.z, x_2614.w);
          let x_2617 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2615.x, x_2615.y, x_2617);
          let x_2624 : vec3<f32> = txVec33;
          let x_2626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2624.xy, x_2624.z);
          u_xlat13.w = x_2626;
          let x_2628 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2628, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2631 : i32 = u_xlati56;
          let x_2633 : f32 = x_217.x_AdditionalShadowParams[x_2631].y;
          u_xlatb88 = (2.0f == x_2633);
          let x_2635 : bool = u_xlatb88;
          if (x_2635) {
            let x_2638 : vec4<f32> = u_xlat11;
            let x_2642 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2645 : vec2<f32> = ((vec2<f32>(x_2638.x, x_2638.y) * vec2<f32>(x_2642.z, x_2642.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2646 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
            let x_2648 : vec4<f32> = u_xlat12;
            let x_2650 : vec2<f32> = floor(vec2<f32>(x_2648.x, x_2648.y));
            let x_2651 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2650.x, x_2650.y, x_2651.z, x_2651.w);
            let x_2654 : vec4<f32> = u_xlat11;
            let x_2657 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2660 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2654.x, x_2654.y) * vec2<f32>(x_2657.z, x_2657.w)) + -(vec2<f32>(x_2660.x, x_2660.y)));
            let x_2664 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2664.x, x_2664.x, x_2664.y, x_2664.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2667 : vec4<f32> = u_xlat13;
            let x_2669 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2667.x, x_2667.x, x_2667.z, x_2667.z) * vec4<f32>(x_2669.x, x_2669.x, x_2669.z, x_2669.z));
            let x_2672 : vec4<f32> = u_xlat14;
            let x_2674 : vec2<f32> = (vec2<f32>(x_2672.y, x_2672.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2675 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2674.x, x_2675.y, x_2674.y, x_2675.w);
            let x_2677 : vec4<f32> = u_xlat14;
            let x_2680 : vec2<f32> = u_xlat64;
            let x_2682 : vec2<f32> = ((vec2<f32>(x_2677.x, x_2677.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2680));
            let x_2683 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2682.x, x_2682.y, x_2683.z, x_2683.w);
            let x_2686 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2686) + vec2<f32>(1.0f, 1.0f));
            let x_2689 : vec2<f32> = u_xlat64;
            let x_2690 : vec2<f32> = min(x_2689, vec2<f32>(0.0f, 0.0f));
            let x_2691 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2690.x, x_2690.y, x_2691.z, x_2691.w);
            let x_2693 : vec4<f32> = u_xlat15;
            let x_2696 : vec4<f32> = u_xlat15;
            let x_2699 : vec2<f32> = u_xlat66;
            let x_2700 : vec2<f32> = ((-(vec2<f32>(x_2693.x, x_2693.y)) * vec2<f32>(x_2696.x, x_2696.y)) + x_2699);
            let x_2701 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2700.x, x_2700.y, x_2701.z, x_2701.w);
            let x_2703 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2703, vec2<f32>(0.0f, 0.0f));
            let x_2705 : vec2<f32> = u_xlat64;
            let x_2707 : vec2<f32> = u_xlat64;
            let x_2709 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2705) * x_2707) + vec2<f32>(x_2709.y, x_2709.w));
            let x_2712 : vec4<f32> = u_xlat15;
            let x_2714 : vec2<f32> = (vec2<f32>(x_2712.x, x_2712.y) + vec2<f32>(1.0f, 1.0f));
            let x_2715 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2714.x, x_2714.y, x_2715.z, x_2715.w);
            let x_2717 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2717 + vec2<f32>(1.0f, 1.0f));
            let x_2719 : vec4<f32> = u_xlat14;
            let x_2721 : vec2<f32> = (vec2<f32>(x_2719.x, x_2719.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2722 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2721.x, x_2721.y, x_2722.z, x_2722.w);
            let x_2724 : vec2<f32> = u_xlat66;
            let x_2725 : vec2<f32> = (x_2724 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2726 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2725.x, x_2725.y, x_2726.z, x_2726.w);
            let x_2728 : vec4<f32> = u_xlat15;
            let x_2730 : vec2<f32> = (vec2<f32>(x_2728.x, x_2728.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2731 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2730.x, x_2730.y, x_2731.z, x_2731.w);
            let x_2733 : vec2<f32> = u_xlat64;
            let x_2734 : vec2<f32> = (x_2733 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2735 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2735.w);
            let x_2737 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2737.y, x_2737.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2741 : f32 = u_xlat15.x;
            u_xlat16.z = x_2741;
            let x_2744 : f32 = u_xlat64.x;
            u_xlat16.w = x_2744;
            let x_2747 : f32 = u_xlat17.x;
            u_xlat14.z = x_2747;
            let x_2750 : f32 = u_xlat13.x;
            u_xlat14.w = x_2750;
            let x_2752 : vec4<f32> = u_xlat14;
            let x_2754 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2752.z, x_2752.w, x_2752.x, x_2752.z) + vec4<f32>(x_2754.z, x_2754.w, x_2754.x, x_2754.z));
            let x_2758 : f32 = u_xlat16.y;
            u_xlat15.z = x_2758;
            let x_2761 : f32 = u_xlat64.y;
            u_xlat15.w = x_2761;
            let x_2764 : f32 = u_xlat14.y;
            u_xlat17.z = x_2764;
            let x_2767 : f32 = u_xlat13.z;
            u_xlat17.w = x_2767;
            let x_2769 : vec4<f32> = u_xlat15;
            let x_2771 : vec4<f32> = u_xlat17;
            let x_2773 : vec3<f32> = (vec3<f32>(x_2769.z, x_2769.y, x_2769.w) + vec3<f32>(x_2771.z, x_2771.y, x_2771.w));
            let x_2774 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
            let x_2776 : vec4<f32> = u_xlat14;
            let x_2778 : vec4<f32> = u_xlat18;
            let x_2780 : vec3<f32> = (vec3<f32>(x_2776.x, x_2776.z, x_2776.w) / vec3<f32>(x_2778.z, x_2778.w, x_2778.y));
            let x_2781 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2781.w);
            let x_2783 : vec4<f32> = u_xlat14;
            let x_2785 : vec3<f32> = (vec3<f32>(x_2783.x, x_2783.y, x_2783.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2786 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2786.w);
            let x_2788 : vec4<f32> = u_xlat17;
            let x_2790 : vec4<f32> = u_xlat13;
            let x_2792 : vec3<f32> = (vec3<f32>(x_2788.z, x_2788.y, x_2788.w) / vec3<f32>(x_2790.x, x_2790.y, x_2790.z));
            let x_2793 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2793.w);
            let x_2795 : vec4<f32> = u_xlat15;
            let x_2797 : vec3<f32> = (vec3<f32>(x_2795.x, x_2795.y, x_2795.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2798 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2798.w);
            let x_2800 : vec4<f32> = u_xlat14;
            let x_2803 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2805 : vec3<f32> = (vec3<f32>(x_2800.y, x_2800.x, x_2800.z) * vec3<f32>(x_2803.x, x_2803.x, x_2803.x));
            let x_2806 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2806.w);
            let x_2808 : vec4<f32> = u_xlat15;
            let x_2811 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2813 : vec3<f32> = (vec3<f32>(x_2808.x, x_2808.y, x_2808.z) * vec3<f32>(x_2811.y, x_2811.y, x_2811.y));
            let x_2814 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
            let x_2817 : f32 = u_xlat15.x;
            u_xlat14.w = x_2817;
            let x_2819 : vec4<f32> = u_xlat12;
            let x_2822 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2825 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2819.x, x_2819.y, x_2819.x, x_2819.y) * vec4<f32>(x_2822.x, x_2822.y, x_2822.x, x_2822.y)) + vec4<f32>(x_2825.y, x_2825.w, x_2825.x, x_2825.w));
            let x_2828 : vec4<f32> = u_xlat12;
            let x_2831 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2834 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2828.x, x_2828.y) * vec2<f32>(x_2831.x, x_2831.y)) + vec2<f32>(x_2834.z, x_2834.w));
            let x_2838 : f32 = u_xlat14.y;
            u_xlat15.w = x_2838;
            let x_2840 : vec4<f32> = u_xlat15;
            let x_2841 : vec2<f32> = vec2<f32>(x_2840.y, x_2840.z);
            let x_2842 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2842.x, x_2841.x, x_2842.z, x_2841.y);
            let x_2844 : vec4<f32> = u_xlat12;
            let x_2847 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2850 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2844.x, x_2844.y, x_2844.x, x_2844.y) * vec4<f32>(x_2847.x, x_2847.y, x_2847.x, x_2847.y)) + vec4<f32>(x_2850.x, x_2850.y, x_2850.z, x_2850.y));
            let x_2853 : vec4<f32> = u_xlat12;
            let x_2856 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2859 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2853.x, x_2853.y, x_2853.x, x_2853.y) * vec4<f32>(x_2856.x, x_2856.y, x_2856.x, x_2856.y)) + vec4<f32>(x_2859.w, x_2859.y, x_2859.w, x_2859.z));
            let x_2862 : vec4<f32> = u_xlat12;
            let x_2865 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2868 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2862.x, x_2862.y, x_2862.x, x_2862.y) * vec4<f32>(x_2865.x, x_2865.y, x_2865.x, x_2865.y)) + vec4<f32>(x_2868.x, x_2868.w, x_2868.z, x_2868.w));
            let x_2871 : vec4<f32> = u_xlat13;
            let x_2873 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2871.x, x_2871.x, x_2871.x, x_2871.y) * vec4<f32>(x_2873.z, x_2873.w, x_2873.y, x_2873.z));
            let x_2876 : vec4<f32> = u_xlat13;
            let x_2878 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2876.y, x_2876.y, x_2876.z, x_2876.z) * x_2878);
            let x_2881 : f32 = u_xlat13.z;
            let x_2883 : f32 = u_xlat18.y;
            u_xlat88 = (x_2881 * x_2883);
            let x_2886 : vec4<f32> = u_xlat16;
            let x_2887 : vec2<f32> = vec2<f32>(x_2886.x, x_2886.y);
            let x_2889 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2887.x, x_2887.y, x_2889);
            let x_2896 : vec3<f32> = txVec34;
            let x_2898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2896.xy, x_2896.z);
            u_xlat89 = x_2898;
            let x_2900 : vec4<f32> = u_xlat16;
            let x_2901 : vec2<f32> = vec2<f32>(x_2900.z, x_2900.w);
            let x_2903 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2901.x, x_2901.y, x_2903);
            let x_2910 : vec3<f32> = txVec35;
            let x_2912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2910.xy, x_2910.z);
            u_xlat12.x = x_2912;
            let x_2915 : f32 = u_xlat12.x;
            let x_2917 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2915 * x_2917);
            let x_2921 : f32 = u_xlat19.x;
            let x_2922 : f32 = u_xlat89;
            let x_2925 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2921 * x_2922) + x_2925);
            let x_2928 : vec2<f32> = u_xlat64;
            let x_2930 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2928.x, x_2928.y, x_2930);
            let x_2937 : vec3<f32> = txVec36;
            let x_2939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2937.xy, x_2937.z);
            u_xlat12.x = x_2939;
            let x_2942 : f32 = u_xlat19.z;
            let x_2944 : f32 = u_xlat12.x;
            let x_2946 : f32 = u_xlat89;
            u_xlat89 = ((x_2942 * x_2944) + x_2946);
            let x_2949 : vec4<f32> = u_xlat15;
            let x_2950 : vec2<f32> = vec2<f32>(x_2949.x, x_2949.y);
            let x_2952 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2950.x, x_2950.y, x_2952);
            let x_2959 : vec3<f32> = txVec37;
            let x_2961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2959.xy, x_2959.z);
            u_xlat12.x = x_2961;
            let x_2964 : f32 = u_xlat19.w;
            let x_2966 : f32 = u_xlat12.x;
            let x_2968 : f32 = u_xlat89;
            u_xlat89 = ((x_2964 * x_2966) + x_2968);
            let x_2971 : vec4<f32> = u_xlat17;
            let x_2972 : vec2<f32> = vec2<f32>(x_2971.x, x_2971.y);
            let x_2974 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2972.x, x_2972.y, x_2974);
            let x_2981 : vec3<f32> = txVec38;
            let x_2983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
            u_xlat12.x = x_2983;
            let x_2986 : f32 = u_xlat20.x;
            let x_2988 : f32 = u_xlat12.x;
            let x_2990 : f32 = u_xlat89;
            u_xlat89 = ((x_2986 * x_2988) + x_2990);
            let x_2993 : vec4<f32> = u_xlat17;
            let x_2994 : vec2<f32> = vec2<f32>(x_2993.z, x_2993.w);
            let x_2996 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2994.x, x_2994.y, x_2996);
            let x_3003 : vec3<f32> = txVec39;
            let x_3005 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3003.xy, x_3003.z);
            u_xlat12.x = x_3005;
            let x_3008 : f32 = u_xlat20.y;
            let x_3010 : f32 = u_xlat12.x;
            let x_3012 : f32 = u_xlat89;
            u_xlat89 = ((x_3008 * x_3010) + x_3012);
            let x_3015 : vec4<f32> = u_xlat15;
            let x_3016 : vec2<f32> = vec2<f32>(x_3015.z, x_3015.w);
            let x_3018 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
            let x_3025 : vec3<f32> = txVec40;
            let x_3027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
            u_xlat12.x = x_3027;
            let x_3030 : f32 = u_xlat20.z;
            let x_3032 : f32 = u_xlat12.x;
            let x_3034 : f32 = u_xlat89;
            u_xlat89 = ((x_3030 * x_3032) + x_3034);
            let x_3037 : vec4<f32> = u_xlat14;
            let x_3038 : vec2<f32> = vec2<f32>(x_3037.x, x_3037.y);
            let x_3040 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
            let x_3047 : vec3<f32> = txVec41;
            let x_3049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3047.xy, x_3047.z);
            u_xlat12.x = x_3049;
            let x_3052 : f32 = u_xlat20.w;
            let x_3054 : f32 = u_xlat12.x;
            let x_3056 : f32 = u_xlat89;
            u_xlat89 = ((x_3052 * x_3054) + x_3056);
            let x_3059 : vec4<f32> = u_xlat14;
            let x_3060 : vec2<f32> = vec2<f32>(x_3059.z, x_3059.w);
            let x_3062 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3060.x, x_3060.y, x_3062);
            let x_3069 : vec3<f32> = txVec42;
            let x_3071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3069.xy, x_3069.z);
            u_xlat12.x = x_3071;
            let x_3073 : f32 = u_xlat88;
            let x_3075 : f32 = u_xlat12.x;
            let x_3077 : f32 = u_xlat89;
            u_xlat87 = ((x_3073 * x_3075) + x_3077);
          } else {
            let x_3080 : vec4<f32> = u_xlat11;
            let x_3083 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3086 : vec2<f32> = ((vec2<f32>(x_3080.x, x_3080.y) * vec2<f32>(x_3083.z, x_3083.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3087 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3091 : vec2<f32> = floor(vec2<f32>(x_3089.x, x_3089.y));
            let x_3092 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3091.x, x_3091.y, x_3092.z, x_3092.w);
            let x_3094 : vec4<f32> = u_xlat11;
            let x_3097 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3094.x, x_3094.y) * vec2<f32>(x_3097.z, x_3097.w)) + -(vec2<f32>(x_3100.x, x_3100.y)));
            let x_3104 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3104.x, x_3104.x, x_3104.y, x_3104.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3107 : vec4<f32> = u_xlat13;
            let x_3109 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3107.x, x_3107.x, x_3107.z, x_3107.z) * vec4<f32>(x_3109.x, x_3109.x, x_3109.z, x_3109.z));
            let x_3112 : vec4<f32> = u_xlat14;
            let x_3114 : vec2<f32> = (vec2<f32>(x_3112.y, x_3112.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3115 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3115.x, x_3114.x, x_3115.z, x_3114.y);
            let x_3117 : vec4<f32> = u_xlat14;
            let x_3120 : vec2<f32> = u_xlat64;
            let x_3122 : vec2<f32> = ((vec2<f32>(x_3117.x, x_3117.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3120));
            let x_3123 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3122.x, x_3123.y, x_3122.y, x_3123.w);
            let x_3125 : vec2<f32> = u_xlat64;
            let x_3127 : vec2<f32> = (-(x_3125) + vec2<f32>(1.0f, 1.0f));
            let x_3128 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3127.x, x_3127.y, x_3128.z, x_3128.w);
            let x_3130 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3130, vec2<f32>(0.0f, 0.0f));
            let x_3132 : vec2<f32> = u_xlat66;
            let x_3134 : vec2<f32> = u_xlat66;
            let x_3136 : vec4<f32> = u_xlat14;
            let x_3138 : vec2<f32> = ((-(x_3132) * x_3134) + vec2<f32>(x_3136.x, x_3136.y));
            let x_3139 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3138.x, x_3138.y, x_3139.z, x_3139.w);
            let x_3141 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3141, vec2<f32>(0.0f, 0.0f));
            let x_3144 : vec2<f32> = u_xlat66;
            let x_3146 : vec2<f32> = u_xlat66;
            let x_3148 : vec4<f32> = u_xlat13;
            let x_3150 : vec2<f32> = ((-(x_3144) * x_3146) + vec2<f32>(x_3148.y, x_3148.w));
            let x_3151 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3150.x, x_3151.y, x_3150.y);
            let x_3153 : vec4<f32> = u_xlat14;
            let x_3156 : vec2<f32> = (vec2<f32>(x_3153.x, x_3153.y) + vec2<f32>(2.0f, 2.0f));
            let x_3157 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3156.x, x_3156.y, x_3157.z, x_3157.w);
            let x_3159 : vec3<f32> = u_xlat39;
            let x_3161 : vec2<f32> = (vec2<f32>(x_3159.x, x_3159.z) + vec2<f32>(2.0f, 2.0f));
            let x_3162 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3162.x, x_3161.x, x_3162.z, x_3161.y);
            let x_3165 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3165 * 0.08163200318813323975f);
            let x_3168 : vec4<f32> = u_xlat13;
            let x_3171 : vec3<f32> = (vec3<f32>(x_3168.z, x_3168.x, x_3168.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3172 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3171.x, x_3171.y, x_3171.z, x_3172.w);
            let x_3174 : vec4<f32> = u_xlat14;
            let x_3176 : vec2<f32> = (vec2<f32>(x_3174.x, x_3174.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3177 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3176.x, x_3176.y, x_3177.z, x_3177.w);
            let x_3180 : f32 = u_xlat17.y;
            u_xlat16.x = x_3180;
            let x_3182 : vec2<f32> = u_xlat64;
            let x_3185 : vec2<f32> = ((vec2<f32>(x_3182.x, x_3182.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3186 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3186.x, x_3185.x, x_3186.z, x_3185.y);
            let x_3188 : vec2<f32> = u_xlat64;
            let x_3191 : vec2<f32> = ((vec2<f32>(x_3188.x, x_3188.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3192 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3191.x, x_3192.y, x_3191.y, x_3192.w);
            let x_3195 : f32 = u_xlat13.x;
            u_xlat14.y = x_3195;
            let x_3198 : f32 = u_xlat15.y;
            u_xlat14.w = x_3198;
            let x_3200 : vec4<f32> = u_xlat14;
            let x_3201 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3200 + x_3201);
            let x_3203 : vec2<f32> = u_xlat64;
            let x_3206 : vec2<f32> = ((vec2<f32>(x_3203.y, x_3203.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3207 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3207.x, x_3206.x, x_3207.z, x_3206.y);
            let x_3209 : vec2<f32> = u_xlat64;
            let x_3212 : vec2<f32> = ((vec2<f32>(x_3209.y, x_3209.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3213 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3212.x, x_3213.y, x_3212.y, x_3213.w);
            let x_3216 : f32 = u_xlat13.y;
            u_xlat15.y = x_3216;
            let x_3218 : vec4<f32> = u_xlat15;
            let x_3219 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3218 + x_3219);
            let x_3221 : vec4<f32> = u_xlat14;
            let x_3222 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3221 / x_3222);
            let x_3224 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3224 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3226 : vec4<f32> = u_xlat15;
            let x_3227 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3226 / x_3227);
            let x_3229 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3229 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3231 : vec4<f32> = u_xlat14;
            let x_3234 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3231.w, x_3231.x, x_3231.y, x_3231.z) * vec4<f32>(x_3234.x, x_3234.x, x_3234.x, x_3234.x));
            let x_3237 : vec4<f32> = u_xlat15;
            let x_3240 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3237.x, x_3237.w, x_3237.y, x_3237.z) * vec4<f32>(x_3240.y, x_3240.y, x_3240.y, x_3240.y));
            let x_3243 : vec4<f32> = u_xlat14;
            let x_3244 : vec3<f32> = vec3<f32>(x_3243.y, x_3243.z, x_3243.w);
            let x_3245 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3244.x, x_3245.y, x_3244.y, x_3244.z);
            let x_3248 : f32 = u_xlat15.x;
            u_xlat17.y = x_3248;
            let x_3250 : vec4<f32> = u_xlat12;
            let x_3253 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3256 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3250.x, x_3250.y, x_3250.x, x_3250.y) * vec4<f32>(x_3253.x, x_3253.y, x_3253.x, x_3253.y)) + vec4<f32>(x_3256.x, x_3256.y, x_3256.z, x_3256.y));
            let x_3259 : vec4<f32> = u_xlat12;
            let x_3262 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3265 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3259.x, x_3259.y) * vec2<f32>(x_3262.x, x_3262.y)) + vec2<f32>(x_3265.w, x_3265.y));
            let x_3269 : f32 = u_xlat17.y;
            u_xlat14.y = x_3269;
            let x_3272 : f32 = u_xlat15.z;
            u_xlat17.y = x_3272;
            let x_3274 : vec4<f32> = u_xlat12;
            let x_3277 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3280 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3274.x, x_3274.y, x_3274.x, x_3274.y) * vec4<f32>(x_3277.x, x_3277.y, x_3277.x, x_3277.y)) + vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3280.y));
            let x_3283 : vec4<f32> = u_xlat12;
            let x_3286 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3289 : vec4<f32> = u_xlat17;
            let x_3291 : vec2<f32> = ((vec2<f32>(x_3283.x, x_3283.y) * vec2<f32>(x_3286.x, x_3286.y)) + vec2<f32>(x_3289.w, x_3289.y));
            let x_3292 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3291.x, x_3291.y, x_3292.z, x_3292.w);
            let x_3295 : f32 = u_xlat17.y;
            u_xlat14.z = x_3295;
            let x_3298 : vec4<f32> = u_xlat12;
            let x_3301 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3304 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3298.x, x_3298.y, x_3298.x, x_3298.y) * vec4<f32>(x_3301.x, x_3301.y, x_3301.x, x_3301.y)) + vec4<f32>(x_3304.x, x_3304.y, x_3304.x, x_3304.z));
            let x_3308 : f32 = u_xlat15.w;
            u_xlat17.y = x_3308;
            let x_3311 : vec4<f32> = u_xlat12;
            let x_3314 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3317 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3311.x, x_3311.y, x_3311.x, x_3311.y) * vec4<f32>(x_3314.x, x_3314.y, x_3314.x, x_3314.y)) + vec4<f32>(x_3317.x, x_3317.y, x_3317.z, x_3317.y));
            let x_3321 : vec4<f32> = u_xlat12;
            let x_3324 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3327 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3321.x, x_3321.y) * vec2<f32>(x_3324.x, x_3324.y)) + vec2<f32>(x_3327.w, x_3327.y));
            let x_3331 : f32 = u_xlat17.y;
            u_xlat14.w = x_3331;
            let x_3334 : vec4<f32> = u_xlat12;
            let x_3337 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3340 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3334.x, x_3334.y) * vec2<f32>(x_3337.x, x_3337.y)) + vec2<f32>(x_3340.x, x_3340.w));
            let x_3343 : vec4<f32> = u_xlat17;
            let x_3344 : vec3<f32> = vec3<f32>(x_3343.x, x_3343.z, x_3343.w);
            let x_3345 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3344.x, x_3345.y, x_3344.y, x_3344.z);
            let x_3347 : vec4<f32> = u_xlat12;
            let x_3350 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3353 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3347.x, x_3347.y, x_3347.x, x_3347.y) * vec4<f32>(x_3350.x, x_3350.y, x_3350.x, x_3350.y)) + vec4<f32>(x_3353.x, x_3353.y, x_3353.z, x_3353.y));
            let x_3357 : vec4<f32> = u_xlat12;
            let x_3360 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3363 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3357.x, x_3357.y) * vec2<f32>(x_3360.x, x_3360.y)) + vec2<f32>(x_3363.w, x_3363.y));
            let x_3367 : f32 = u_xlat14.x;
            u_xlat15.x = x_3367;
            let x_3369 : vec4<f32> = u_xlat12;
            let x_3372 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3375 : vec4<f32> = u_xlat15;
            let x_3377 : vec2<f32> = ((vec2<f32>(x_3369.x, x_3369.y) * vec2<f32>(x_3372.x, x_3372.y)) + vec2<f32>(x_3375.x, x_3375.y));
            let x_3378 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3377.x, x_3377.y, x_3378.z, x_3378.w);
            let x_3381 : vec4<f32> = u_xlat13;
            let x_3383 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3381.x, x_3381.x, x_3381.x, x_3381.x) * x_3383);
            let x_3386 : vec4<f32> = u_xlat13;
            let x_3388 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3386.y, x_3386.y, x_3386.y, x_3386.y) * x_3388);
            let x_3391 : vec4<f32> = u_xlat13;
            let x_3393 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3391.z, x_3391.z, x_3391.z, x_3391.z) * x_3393);
            let x_3395 : vec4<f32> = u_xlat13;
            let x_3397 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3395.w, x_3395.w, x_3395.w, x_3395.w) * x_3397);
            let x_3400 : vec4<f32> = u_xlat18;
            let x_3401 : vec2<f32> = vec2<f32>(x_3400.x, x_3400.y);
            let x_3403 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3401.x, x_3401.y, x_3403);
            let x_3410 : vec3<f32> = txVec43;
            let x_3412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3410.xy, x_3410.z);
            u_xlat88 = x_3412;
            let x_3414 : vec4<f32> = u_xlat18;
            let x_3415 : vec2<f32> = vec2<f32>(x_3414.z, x_3414.w);
            let x_3417 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3415.x, x_3415.y, x_3417);
            let x_3424 : vec3<f32> = txVec44;
            let x_3426 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3424.xy, x_3424.z);
            u_xlat89 = x_3426;
            let x_3427 : f32 = u_xlat89;
            let x_3429 : f32 = u_xlat23.y;
            u_xlat89 = (x_3427 * x_3429);
            let x_3432 : f32 = u_xlat23.x;
            let x_3433 : f32 = u_xlat88;
            let x_3435 : f32 = u_xlat89;
            u_xlat88 = ((x_3432 * x_3433) + x_3435);
            let x_3438 : vec2<f32> = u_xlat64;
            let x_3440 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3438.x, x_3438.y, x_3440);
            let x_3447 : vec3<f32> = txVec45;
            let x_3449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3447.xy, x_3447.z);
            u_xlat89 = x_3449;
            let x_3451 : f32 = u_xlat23.z;
            let x_3452 : f32 = u_xlat89;
            let x_3454 : f32 = u_xlat88;
            u_xlat88 = ((x_3451 * x_3452) + x_3454);
            let x_3457 : vec4<f32> = u_xlat21;
            let x_3458 : vec2<f32> = vec2<f32>(x_3457.x, x_3457.y);
            let x_3460 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3458.x, x_3458.y, x_3460);
            let x_3467 : vec3<f32> = txVec46;
            let x_3469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3467.xy, x_3467.z);
            u_xlat89 = x_3469;
            let x_3471 : f32 = u_xlat23.w;
            let x_3472 : f32 = u_xlat89;
            let x_3474 : f32 = u_xlat88;
            u_xlat88 = ((x_3471 * x_3472) + x_3474);
            let x_3477 : vec4<f32> = u_xlat19;
            let x_3478 : vec2<f32> = vec2<f32>(x_3477.x, x_3477.y);
            let x_3480 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3478.x, x_3478.y, x_3480);
            let x_3487 : vec3<f32> = txVec47;
            let x_3489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3487.xy, x_3487.z);
            u_xlat89 = x_3489;
            let x_3491 : f32 = u_xlat24.x;
            let x_3492 : f32 = u_xlat89;
            let x_3494 : f32 = u_xlat88;
            u_xlat88 = ((x_3491 * x_3492) + x_3494);
            let x_3497 : vec4<f32> = u_xlat19;
            let x_3498 : vec2<f32> = vec2<f32>(x_3497.z, x_3497.w);
            let x_3500 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3498.x, x_3498.y, x_3500);
            let x_3507 : vec3<f32> = txVec48;
            let x_3509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3507.xy, x_3507.z);
            u_xlat89 = x_3509;
            let x_3511 : f32 = u_xlat24.y;
            let x_3512 : f32 = u_xlat89;
            let x_3514 : f32 = u_xlat88;
            u_xlat88 = ((x_3511 * x_3512) + x_3514);
            let x_3517 : vec4<f32> = u_xlat20;
            let x_3518 : vec2<f32> = vec2<f32>(x_3517.x, x_3517.y);
            let x_3520 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3518.x, x_3518.y, x_3520);
            let x_3527 : vec3<f32> = txVec49;
            let x_3529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3527.xy, x_3527.z);
            u_xlat89 = x_3529;
            let x_3531 : f32 = u_xlat24.z;
            let x_3532 : f32 = u_xlat89;
            let x_3534 : f32 = u_xlat88;
            u_xlat88 = ((x_3531 * x_3532) + x_3534);
            let x_3537 : vec4<f32> = u_xlat21;
            let x_3538 : vec2<f32> = vec2<f32>(x_3537.z, x_3537.w);
            let x_3540 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3538.x, x_3538.y, x_3540);
            let x_3547 : vec3<f32> = txVec50;
            let x_3549 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3547.xy, x_3547.z);
            u_xlat89 = x_3549;
            let x_3551 : f32 = u_xlat24.w;
            let x_3552 : f32 = u_xlat89;
            let x_3554 : f32 = u_xlat88;
            u_xlat88 = ((x_3551 * x_3552) + x_3554);
            let x_3557 : vec4<f32> = u_xlat22;
            let x_3558 : vec2<f32> = vec2<f32>(x_3557.x, x_3557.y);
            let x_3560 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3558.x, x_3558.y, x_3560);
            let x_3567 : vec3<f32> = txVec51;
            let x_3569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3567.xy, x_3567.z);
            u_xlat89 = x_3569;
            let x_3571 : f32 = u_xlat25.x;
            let x_3572 : f32 = u_xlat89;
            let x_3574 : f32 = u_xlat88;
            u_xlat88 = ((x_3571 * x_3572) + x_3574);
            let x_3577 : vec4<f32> = u_xlat22;
            let x_3578 : vec2<f32> = vec2<f32>(x_3577.z, x_3577.w);
            let x_3580 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3578.x, x_3578.y, x_3580);
            let x_3587 : vec3<f32> = txVec52;
            let x_3589 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3587.xy, x_3587.z);
            u_xlat89 = x_3589;
            let x_3591 : f32 = u_xlat25.y;
            let x_3592 : f32 = u_xlat89;
            let x_3594 : f32 = u_xlat88;
            u_xlat88 = ((x_3591 * x_3592) + x_3594);
            let x_3597 : vec2<f32> = u_xlat40;
            let x_3599 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3597.x, x_3597.y, x_3599);
            let x_3606 : vec3<f32> = txVec53;
            let x_3608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3606.xy, x_3606.z);
            u_xlat89 = x_3608;
            let x_3610 : f32 = u_xlat25.z;
            let x_3611 : f32 = u_xlat89;
            let x_3613 : f32 = u_xlat88;
            u_xlat88 = ((x_3610 * x_3611) + x_3613);
            let x_3616 : vec2<f32> = u_xlat72;
            let x_3618 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3616.x, x_3616.y, x_3618);
            let x_3625 : vec3<f32> = txVec54;
            let x_3627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3625.xy, x_3625.z);
            u_xlat89 = x_3627;
            let x_3629 : f32 = u_xlat25.w;
            let x_3630 : f32 = u_xlat89;
            let x_3632 : f32 = u_xlat88;
            u_xlat88 = ((x_3629 * x_3630) + x_3632);
            let x_3635 : vec4<f32> = u_xlat17;
            let x_3636 : vec2<f32> = vec2<f32>(x_3635.x, x_3635.y);
            let x_3638 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3636.x, x_3636.y, x_3638);
            let x_3645 : vec3<f32> = txVec55;
            let x_3647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3645.xy, x_3645.z);
            u_xlat89 = x_3647;
            let x_3649 : f32 = u_xlat13.x;
            let x_3650 : f32 = u_xlat89;
            let x_3652 : f32 = u_xlat88;
            u_xlat88 = ((x_3649 * x_3650) + x_3652);
            let x_3655 : vec4<f32> = u_xlat17;
            let x_3656 : vec2<f32> = vec2<f32>(x_3655.z, x_3655.w);
            let x_3658 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3656.x, x_3656.y, x_3658);
            let x_3665 : vec3<f32> = txVec56;
            let x_3667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3665.xy, x_3665.z);
            u_xlat89 = x_3667;
            let x_3669 : f32 = u_xlat13.y;
            let x_3670 : f32 = u_xlat89;
            let x_3672 : f32 = u_xlat88;
            u_xlat88 = ((x_3669 * x_3670) + x_3672);
            let x_3675 : vec2<f32> = u_xlat67;
            let x_3677 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3675.x, x_3675.y, x_3677);
            let x_3684 : vec3<f32> = txVec57;
            let x_3686 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3684.xy, x_3684.z);
            u_xlat89 = x_3686;
            let x_3688 : f32 = u_xlat13.z;
            let x_3689 : f32 = u_xlat89;
            let x_3691 : f32 = u_xlat88;
            u_xlat88 = ((x_3688 * x_3689) + x_3691);
            let x_3694 : vec4<f32> = u_xlat12;
            let x_3695 : vec2<f32> = vec2<f32>(x_3694.x, x_3694.y);
            let x_3697 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3695.x, x_3695.y, x_3697);
            let x_3704 : vec3<f32> = txVec58;
            let x_3706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3704.xy, x_3704.z);
            u_xlat89 = x_3706;
            let x_3708 : f32 = u_xlat13.w;
            let x_3709 : f32 = u_xlat89;
            let x_3711 : f32 = u_xlat88;
            u_xlat87 = ((x_3708 * x_3709) + x_3711);
          }
        }
      } else {
        let x_3715 : vec4<f32> = u_xlat11;
        let x_3716 : vec2<f32> = vec2<f32>(x_3715.x, x_3715.y);
        let x_3718 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3716.x, x_3716.y, x_3718);
        let x_3725 : vec3<f32> = txVec59;
        let x_3727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3725.xy, x_3725.z);
        u_xlat87 = x_3727;
      }
      let x_3728 : i32 = u_xlati56;
      let x_3730 : f32 = x_217.x_AdditionalShadowParams[x_3728].x;
      u_xlat88 = (1.0f + -(x_3730));
      let x_3733 : f32 = u_xlat87;
      let x_3734 : i32 = u_xlati56;
      let x_3736 : f32 = x_217.x_AdditionalShadowParams[x_3734].x;
      let x_3738 : f32 = u_xlat88;
      u_xlat87 = ((x_3733 * x_3736) + x_3738);
      let x_3741 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3741);
      let x_3744 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3744 >= 1.0f);
      let x_3747 : bool = u_xlatb88;
      let x_3749 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3747 | x_3749);
      let x_3751 : bool = u_xlatb88;
      let x_3752 : f32 = u_xlat87;
      u_xlat87 = select(x_3752, 1.0f, x_3751);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3755 : f32 = u_xlat87;
    u_xlat88 = (-(x_3755) + 1.0f);
    let x_3758 : f32 = u_xlat80;
    let x_3759 : f32 = u_xlat88;
    let x_3761 : f32 = u_xlat87;
    u_xlat87 = ((x_3758 * x_3759) + x_3761);
    let x_3764 : i32 = u_xlati56;
    u_xlati88 = (1i << bitcast<u32>((x_3764 & 31i)));
    let x_3768 : i32 = u_xlati88;
    let x_3771 : f32 = x_1880.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3768) & bitcast<u32>(x_3771)));
    let x_3775 : i32 = u_xlati88;
    if ((x_3775 != 0i)) {
      let x_3779 : i32 = u_xlati56;
      let x_3781 : f32 = x_1880.x_AdditionalLightsLightTypes[x_3779].el;
      u_xlati88 = i32(x_3781);
      let x_3784 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3784 != 0i));
      let x_3788 : i32 = u_xlati56;
      u_xlati37 = (x_3788 << bitcast<u32>(2i));
      let x_3790 : i32 = u_xlati11;
      if ((x_3790 != 0i)) {
        let x_3794 : vec3<f32> = vs_TEXCOORD1;
        let x_3796 : i32 = u_xlati37;
        let x_3799 : i32 = u_xlati37;
        let x_3803 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_3796 + 1i) / 4i)][((x_3799 + 1i) % 4i)];
        let x_3805 : vec3<f32> = (vec3<f32>(x_3794.y, x_3794.y, x_3794.y) * vec3<f32>(x_3803.x, x_3803.y, x_3803.w));
        let x_3806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3805.x, x_3806.y, x_3805.y, x_3805.z);
        let x_3808 : i32 = u_xlati37;
        let x_3810 : i32 = u_xlati37;
        let x_3813 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[(x_3808 / 4i)][(x_3810 % 4i)];
        let x_3815 : vec3<f32> = vs_TEXCOORD1;
        let x_3818 : vec4<f32> = u_xlat11;
        let x_3820 : vec3<f32> = ((vec3<f32>(x_3813.x, x_3813.y, x_3813.w) * vec3<f32>(x_3815.x, x_3815.x, x_3815.x)) + vec3<f32>(x_3818.x, x_3818.z, x_3818.w));
        let x_3821 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3820.x, x_3821.y, x_3820.y, x_3820.z);
        let x_3823 : i32 = u_xlati37;
        let x_3826 : i32 = u_xlati37;
        let x_3830 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_3823 + 2i) / 4i)][((x_3826 + 2i) % 4i)];
        let x_3832 : vec3<f32> = vs_TEXCOORD1;
        let x_3835 : vec4<f32> = u_xlat11;
        let x_3837 : vec3<f32> = ((vec3<f32>(x_3830.x, x_3830.y, x_3830.w) * vec3<f32>(x_3832.z, x_3832.z, x_3832.z)) + vec3<f32>(x_3835.x, x_3835.z, x_3835.w));
        let x_3838 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3837.x, x_3838.y, x_3837.y, x_3837.z);
        let x_3840 : vec4<f32> = u_xlat11;
        let x_3842 : i32 = u_xlati37;
        let x_3845 : i32 = u_xlati37;
        let x_3849 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_3842 + 3i) / 4i)][((x_3845 + 3i) % 4i)];
        let x_3851 : vec3<f32> = (vec3<f32>(x_3840.x, x_3840.z, x_3840.w) + vec3<f32>(x_3849.x, x_3849.y, x_3849.w));
        let x_3852 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3851.x, x_3852.y, x_3851.y, x_3851.z);
        let x_3854 : vec4<f32> = u_xlat11;
        let x_3856 : vec4<f32> = u_xlat11;
        let x_3858 : vec2<f32> = (vec2<f32>(x_3854.x, x_3854.z) / vec2<f32>(x_3856.w, x_3856.w));
        let x_3859 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3858.x, x_3859.y, x_3858.y, x_3859.w);
        let x_3861 : vec4<f32> = u_xlat11;
        let x_3864 : vec2<f32> = ((vec2<f32>(x_3861.x, x_3861.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3865 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3864.x, x_3865.y, x_3864.y, x_3865.w);
        let x_3867 : vec4<f32> = u_xlat11;
        let x_3871 : vec2<f32> = clamp(vec2<f32>(x_3867.x, x_3867.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3872 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3871.x, x_3872.y, x_3871.y, x_3872.w);
        let x_3874 : i32 = u_xlati56;
        let x_3876 : vec4<f32> = x_1880.x_AdditionalLightsCookieAtlasUVRects[x_3874];
        let x_3878 : vec4<f32> = u_xlat11;
        let x_3881 : i32 = u_xlati56;
        let x_3883 : vec4<f32> = x_1880.x_AdditionalLightsCookieAtlasUVRects[x_3881];
        let x_3885 : vec2<f32> = ((vec2<f32>(x_3876.x, x_3876.y) * vec2<f32>(x_3878.x, x_3878.z)) + vec2<f32>(x_3883.z, x_3883.w));
        let x_3886 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3885.x, x_3886.y, x_3885.y, x_3886.w);
      } else {
        let x_3889 : i32 = u_xlati88;
        u_xlatb88 = (x_3889 == 1i);
        let x_3891 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3891);
        let x_3893 : i32 = u_xlati88;
        if ((x_3893 != 0i)) {
          let x_3897 : vec3<f32> = vs_TEXCOORD1;
          let x_3899 : i32 = u_xlati37;
          let x_3902 : i32 = u_xlati37;
          let x_3906 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_3899 + 1i) / 4i)][((x_3902 + 1i) % 4i)];
          let x_3908 : vec2<f32> = (vec2<f32>(x_3897.y, x_3897.y) * vec2<f32>(x_3906.x, x_3906.y));
          let x_3909 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3908.x, x_3908.y, x_3909.z, x_3909.w);
          let x_3911 : i32 = u_xlati37;
          let x_3913 : i32 = u_xlati37;
          let x_3916 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[(x_3911 / 4i)][(x_3913 % 4i)];
          let x_3918 : vec3<f32> = vs_TEXCOORD1;
          let x_3921 : vec4<f32> = u_xlat12;
          let x_3923 : vec2<f32> = ((vec2<f32>(x_3916.x, x_3916.y) * vec2<f32>(x_3918.x, x_3918.x)) + vec2<f32>(x_3921.x, x_3921.y));
          let x_3924 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3923.x, x_3923.y, x_3924.z, x_3924.w);
          let x_3926 : i32 = u_xlati37;
          let x_3929 : i32 = u_xlati37;
          let x_3933 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_3926 + 2i) / 4i)][((x_3929 + 2i) % 4i)];
          let x_3935 : vec3<f32> = vs_TEXCOORD1;
          let x_3938 : vec4<f32> = u_xlat12;
          let x_3940 : vec2<f32> = ((vec2<f32>(x_3933.x, x_3933.y) * vec2<f32>(x_3935.z, x_3935.z)) + vec2<f32>(x_3938.x, x_3938.y));
          let x_3941 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3940.x, x_3940.y, x_3941.z, x_3941.w);
          let x_3943 : vec4<f32> = u_xlat12;
          let x_3945 : i32 = u_xlati37;
          let x_3948 : i32 = u_xlati37;
          let x_3952 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_3945 + 3i) / 4i)][((x_3948 + 3i) % 4i)];
          let x_3954 : vec2<f32> = (vec2<f32>(x_3943.x, x_3943.y) + vec2<f32>(x_3952.x, x_3952.y));
          let x_3955 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3954.x, x_3954.y, x_3955.z, x_3955.w);
          let x_3957 : vec4<f32> = u_xlat12;
          let x_3960 : vec2<f32> = ((vec2<f32>(x_3957.x, x_3957.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3961 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3960.x, x_3960.y, x_3961.z, x_3961.w);
          let x_3963 : vec4<f32> = u_xlat12;
          let x_3965 : vec2<f32> = fract(vec2<f32>(x_3963.x, x_3963.y));
          let x_3966 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3965.x, x_3965.y, x_3966.z, x_3966.w);
          let x_3968 : i32 = u_xlati56;
          let x_3970 : vec4<f32> = x_1880.x_AdditionalLightsCookieAtlasUVRects[x_3968];
          let x_3972 : vec4<f32> = u_xlat12;
          let x_3975 : i32 = u_xlati56;
          let x_3977 : vec4<f32> = x_1880.x_AdditionalLightsCookieAtlasUVRects[x_3975];
          let x_3979 : vec2<f32> = ((vec2<f32>(x_3970.x, x_3970.y) * vec2<f32>(x_3972.x, x_3972.y)) + vec2<f32>(x_3977.z, x_3977.w));
          let x_3980 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3979.x, x_3980.y, x_3979.y, x_3980.w);
        } else {
          let x_3983 : vec3<f32> = vs_TEXCOORD1;
          let x_3985 : i32 = u_xlati37;
          let x_3988 : i32 = u_xlati37;
          let x_3992 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_3985 + 1i) / 4i)][((x_3988 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3983.y, x_3983.y, x_3983.y, x_3983.y) * x_3992);
          let x_3994 : i32 = u_xlati37;
          let x_3996 : i32 = u_xlati37;
          let x_3999 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[(x_3994 / 4i)][(x_3996 % 4i)];
          let x_4000 : vec3<f32> = vs_TEXCOORD1;
          let x_4003 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3999 * vec4<f32>(x_4000.x, x_4000.x, x_4000.x, x_4000.x)) + x_4003);
          let x_4005 : i32 = u_xlati37;
          let x_4008 : i32 = u_xlati37;
          let x_4012 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_4005 + 2i) / 4i)][((x_4008 + 2i) % 4i)];
          let x_4013 : vec3<f32> = vs_TEXCOORD1;
          let x_4016 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4012 * vec4<f32>(x_4013.z, x_4013.z, x_4013.z, x_4013.z)) + x_4016);
          let x_4018 : vec4<f32> = u_xlat12;
          let x_4019 : i32 = u_xlati37;
          let x_4022 : i32 = u_xlati37;
          let x_4026 : vec4<f32> = x_1880.x_AdditionalLightsWorldToLights[((x_4019 + 3i) / 4i)][((x_4022 + 3i) % 4i)];
          u_xlat12 = (x_4018 + x_4026);
          let x_4028 : vec4<f32> = u_xlat12;
          let x_4030 : vec4<f32> = u_xlat12;
          let x_4032 : vec3<f32> = (vec3<f32>(x_4028.x, x_4028.y, x_4028.z) / vec3<f32>(x_4030.w, x_4030.w, x_4030.w));
          let x_4033 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4032.x, x_4032.y, x_4032.z, x_4033.w);
          let x_4035 : vec4<f32> = u_xlat12;
          let x_4037 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_4035.x, x_4035.y, x_4035.z), vec3<f32>(x_4037.x, x_4037.y, x_4037.z));
          let x_4040 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_4040);
          let x_4042 : f32 = u_xlat88;
          let x_4044 : vec4<f32> = u_xlat12;
          let x_4046 : vec3<f32> = (vec3<f32>(x_4042, x_4042, x_4042) * vec3<f32>(x_4044.x, x_4044.y, x_4044.z));
          let x_4047 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4046.x, x_4046.y, x_4046.z, x_4047.w);
          let x_4049 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_4049.x, x_4049.y, x_4049.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4054 : f32 = u_xlat88;
          u_xlat88 = max(x_4054, 0.00000099999999747524f);
          let x_4057 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_4057);
          let x_4059 : f32 = u_xlat88;
          let x_4061 : vec4<f32> = u_xlat12;
          let x_4063 : vec3<f32> = (vec3<f32>(x_4059, x_4059, x_4059) * vec3<f32>(x_4061.z, x_4061.x, x_4061.y));
          let x_4064 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4063.x, x_4063.y, x_4063.z, x_4064.w);
          let x_4067 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4067);
          let x_4071 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4071, 0.0f, 1.0f);
          let x_4076 : vec4<f32> = u_xlat13;
          let x_4078 : vec4<bool> = (vec4<f32>(x_4076.y, x_4076.y, x_4076.z, x_4076.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4079 : vec2<bool> = vec2<bool>(x_4078.x, x_4078.z);
          let x_4080 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_4079.x, x_4080.y, x_4079.y);
          let x_4083 : bool = u_xlatb37.x;
          if (x_4083) {
            let x_4088 : f32 = u_xlat13.x;
            x_4084 = x_4088;
          } else {
            let x_4091 : f32 = u_xlat13.x;
            x_4084 = -(x_4091);
          }
          let x_4093 : f32 = x_4084;
          u_xlat37.x = x_4093;
          let x_4096 : bool = u_xlatb37.z;
          if (x_4096) {
            let x_4101 : f32 = u_xlat13.x;
            x_4097 = x_4101;
          } else {
            let x_4104 : f32 = u_xlat13.x;
            x_4097 = -(x_4104);
          }
          let x_4106 : f32 = x_4097;
          u_xlat37.z = x_4106;
          let x_4108 : vec4<f32> = u_xlat12;
          let x_4110 : f32 = u_xlat88;
          let x_4113 : vec3<f32> = u_xlat37;
          let x_4115 : vec2<f32> = ((vec2<f32>(x_4108.x, x_4108.y) * vec2<f32>(x_4110, x_4110)) + vec2<f32>(x_4113.x, x_4113.z));
          let x_4116 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4115.x, x_4116.y, x_4115.y);
          let x_4118 : vec3<f32> = u_xlat37;
          let x_4121 : vec2<f32> = ((vec2<f32>(x_4118.x, x_4118.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4122 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4121.x, x_4122.y, x_4121.y);
          let x_4124 : vec3<f32> = u_xlat37;
          let x_4128 : vec2<f32> = clamp(vec2<f32>(x_4124.x, x_4124.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4129 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4128.x, x_4129.y, x_4128.y);
          let x_4131 : i32 = u_xlati56;
          let x_4133 : vec4<f32> = x_1880.x_AdditionalLightsCookieAtlasUVRects[x_4131];
          let x_4135 : vec3<f32> = u_xlat37;
          let x_4138 : i32 = u_xlati56;
          let x_4140 : vec4<f32> = x_1880.x_AdditionalLightsCookieAtlasUVRects[x_4138];
          let x_4142 : vec2<f32> = ((vec2<f32>(x_4133.x, x_4133.y) * vec2<f32>(x_4135.x, x_4135.z)) + vec2<f32>(x_4140.z, x_4140.w));
          let x_4143 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4142.x, x_4143.y, x_4142.y, x_4143.w);
        }
      }
      let x_4150 : vec4<f32> = u_xlat11;
      let x_4152 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4150.x, x_4150.z), 0.0f);
      u_xlat11 = x_4152;
      let x_4154 : bool = u_xlatb4.y;
      if (x_4154) {
        let x_4159 : f32 = u_xlat11.w;
        x_4155 = x_4159;
      } else {
        let x_4162 : f32 = u_xlat11.x;
        x_4155 = x_4162;
      }
      let x_4163 : f32 = x_4155;
      u_xlat88 = x_4163;
      let x_4165 : bool = u_xlatb4.x;
      if (x_4165) {
        let x_4169 : vec4<f32> = u_xlat11;
        x_4166 = vec3<f32>(x_4169.x, x_4169.y, x_4169.z);
      } else {
        let x_4172 : f32 = u_xlat88;
        x_4166 = vec3<f32>(x_4172, x_4172, x_4172);
      }
      let x_4174 : vec3<f32> = x_4166;
      let x_4175 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4174.x, x_4174.y, x_4174.z, x_4175.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4181 : vec4<f32> = u_xlat11;
    let x_4183 : i32 = u_xlati56;
    let x_4185 : vec4<f32> = x_2316.x_AdditionalLightsColor[x_4183];
    let x_4187 : vec3<f32> = (vec3<f32>(x_4181.x, x_4181.y, x_4181.z) * vec3<f32>(x_4185.x, x_4185.y, x_4185.z));
    let x_4188 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4187.x, x_4187.y, x_4187.z, x_4188.w);
    let x_4190 : f32 = u_xlat84;
    let x_4191 : f32 = u_xlat87;
    u_xlat56 = (x_4190 * x_4191);
    let x_4193 : vec4<f32> = u_xlat2;
    let x_4195 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4193.x, x_4193.y, x_4193.z), vec3<f32>(x_4195.x, x_4195.y, x_4195.z));
    let x_4198 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4198, 0.0f, 1.0f);
    let x_4200 : f32 = u_xlat56;
    let x_4201 : f32 = u_xlat84;
    u_xlat56 = (x_4200 * x_4201);
    let x_4203 : f32 = u_xlat56;
    let x_4205 : vec4<f32> = u_xlat11;
    let x_4207 : vec3<f32> = (vec3<f32>(x_4203, x_4203, x_4203) * vec3<f32>(x_4205.x, x_4205.y, x_4205.z));
    let x_4208 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4207.x, x_4207.y, x_4207.z, x_4208.w);
    let x_4210 : vec4<f32> = u_xlat9;
    let x_4212 : f32 = u_xlat85;
    let x_4215 : vec3<f32> = u_xlat3;
    let x_4216 : vec3<f32> = ((vec3<f32>(x_4210.x, x_4210.y, x_4210.z) * vec3<f32>(x_4212, x_4212, x_4212)) + x_4215);
    let x_4217 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4216.x, x_4216.y, x_4216.z, x_4217.w);
    let x_4219 : vec4<f32> = u_xlat9;
    let x_4221 : vec4<f32> = u_xlat9;
    u_xlat56 = dot(vec3<f32>(x_4219.x, x_4219.y, x_4219.z), vec3<f32>(x_4221.x, x_4221.y, x_4221.z));
    let x_4224 : f32 = u_xlat56;
    u_xlat56 = max(x_4224, 1.17549435e-38f);
    let x_4226 : f32 = u_xlat56;
    u_xlat56 = inverseSqrt(x_4226);
    let x_4228 : f32 = u_xlat56;
    let x_4230 : vec4<f32> = u_xlat9;
    let x_4232 : vec3<f32> = (vec3<f32>(x_4228, x_4228, x_4228) * vec3<f32>(x_4230.x, x_4230.y, x_4230.z));
    let x_4233 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4232.x, x_4232.y, x_4232.z, x_4233.w);
    let x_4235 : vec4<f32> = u_xlat2;
    let x_4237 : vec4<f32> = u_xlat9;
    u_xlat56 = dot(vec3<f32>(x_4235.x, x_4235.y, x_4235.z), vec3<f32>(x_4237.x, x_4237.y, x_4237.z));
    let x_4240 : f32 = u_xlat56;
    u_xlat56 = clamp(x_4240, 0.0f, 1.0f);
    let x_4242 : vec4<f32> = u_xlat10;
    let x_4244 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4242.x, x_4242.y, x_4242.z), vec3<f32>(x_4244.x, x_4244.y, x_4244.z));
    let x_4247 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4247, 0.0f, 1.0f);
    let x_4249 : f32 = u_xlat56;
    let x_4250 : f32 = u_xlat56;
    u_xlat56 = (x_4249 * x_4250);
    let x_4252 : f32 = u_xlat56;
    let x_4254 : f32 = u_xlat8.x;
    u_xlat56 = ((x_4252 * x_4254) + 1.00001001358032226562f);
    let x_4257 : f32 = u_xlat84;
    let x_4258 : f32 = u_xlat84;
    u_xlat84 = (x_4257 * x_4258);
    let x_4260 : f32 = u_xlat56;
    let x_4261 : f32 = u_xlat56;
    u_xlat56 = (x_4260 * x_4261);
    let x_4263 : f32 = u_xlat84;
    u_xlat84 = max(x_4263, 0.10000000149011611938f);
    let x_4265 : f32 = u_xlat56;
    let x_4266 : f32 = u_xlat84;
    u_xlat56 = (x_4265 * x_4266);
    let x_4268 : f32 = u_xlat83;
    let x_4269 : f32 = u_xlat56;
    u_xlat56 = (x_4268 * x_4269);
    let x_4271 : f32 = u_xlat82;
    let x_4272 : f32 = u_xlat56;
    u_xlat56 = (x_4271 / x_4272);
    let x_4274 : vec4<f32> = u_xlat0;
    let x_4276 : f32 = u_xlat56;
    let x_4279 : vec3<f32> = u_xlat27;
    let x_4280 : vec3<f32> = ((vec3<f32>(x_4274.x, x_4274.y, x_4274.z) * vec3<f32>(x_4276, x_4276, x_4276)) + x_4279);
    let x_4281 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4280.x, x_4280.y, x_4280.z, x_4281.w);
    let x_4283 : vec4<f32> = u_xlat9;
    let x_4285 : vec4<f32> = u_xlat11;
    let x_4288 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4283.x, x_4283.y, x_4283.z) * vec3<f32>(x_4285.x, x_4285.y, x_4285.z)) + x_4288);

    continuing {
      let x_4290 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4290 + bitcast<u32>(1i));
    }
  }
  let x_4292 : vec4<f32> = u_xlat7;
  let x_4294 : vec4<f32> = u_xlat6;
  let x_4297 : vec4<f32> = u_xlat5;
  let x_4299 : vec3<f32> = ((vec3<f32>(x_4292.x, x_4292.y, x_4292.z) * vec3<f32>(x_4294.x, x_4294.y, x_4294.z)) + vec3<f32>(x_4297.x, x_4297.y, x_4297.z));
  let x_4300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4299.x, x_4299.y, x_4299.z, x_4300.w);
  let x_4304 : vec3<f32> = u_xlat34;
  let x_4305 : vec4<f32> = u_xlat0;
  let x_4307 : vec3<f32> = (x_4304 + vec3<f32>(x_4305.x, x_4305.y, x_4305.z));
  let x_4308 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4307.x, x_4307.y, x_4307.z, x_4308.w);
  let x_4312 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_4312 == 1.0f);
  let x_4314 : bool = u_xlatb0;
  if (x_4314) {
    let x_4319 : f32 = u_xlat1.x;
    x_4315 = x_4319;
  } else {
    x_4315 = 1.0f;
  }
  let x_4321 : f32 = x_4315;
  SV_Target0.w = x_4321;
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


