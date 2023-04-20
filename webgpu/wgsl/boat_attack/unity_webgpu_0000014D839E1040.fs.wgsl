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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_96 : UnityPerDraw;

var<private> u_xlatb78 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_196 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat56 : f32;

@group(1) @binding(5) var<uniform> x_1925 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu59 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlati59 : i32;

@group(1) @binding(1) var<uniform> x_2345 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlati88 : i32;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlatb12 : vec3<bool>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat63 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb89 : bool;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb37 : bool;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlati63 : i32;

var<private> u_xlatb64 : vec2<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu30 : u32;

var<private> u_xlatb59 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_167 : vec3<f32>;
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
  var x_1880 : f32;
  var x_2005 : f32;
  var x_2016 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2486 : f32;
  var x_2497 : f32;
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
  var x_4165 : f32;
  var x_4178 : f32;
  var x_4235 : f32;
  var x_4246 : vec3<f32>;
  var x_4444 : f32;
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
  let x_67 : vec4<f32> = hlslcc_FragCoord;
  let x_71 : f32 = x_45.x_DitheringTextureInvSize;
  let x_73 : vec2<f32> = (vec2<f32>(x_67.x, x_67.y) * vec2<f32>(x_71, x_71));
  let x_74 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_73.x, x_73.y, x_74.z);
  let x_83 : vec3<f32> = u_xlat2;
  let x_86 : f32 = x_45.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_83.x, x_83.y), x_86);
  u_xlat78 = x_87.w;
  let x_98 : f32 = x_96.unity_LODFade.x;
  u_xlatb2 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb2;
  if (x_101) {
    let x_106 : f32 = u_xlat78;
    x_103 = abs(x_106);
  } else {
    let x_109 : f32 = u_xlat78;
    x_103 = -(abs(x_109));
  }
  let x_112 : f32 = x_103;
  u_xlat78 = x_112;
  let x_113 : f32 = u_xlat78;
  let x_116 : f32 = x_96.unity_LODFade.x;
  u_xlat78 = (-(x_113) + x_116);
  let x_119 : f32 = u_xlat78;
  u_xlatb78 = (x_119 < 0.0f);
  let x_121 : bool = u_xlatb78;
  if (((select(0i, 1i, x_121) * -1i) != 0i)) {
    discard;
  }
  let x_132 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb78 = (x_132 == 0.0f);
  let x_136 : vec3<f32> = vs_TEXCOORD1;
  let x_141 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_136) + x_141);
  let x_144 : vec3<f32> = u_xlat2;
  let x_145 : vec3<f32> = u_xlat2;
  u_xlat80 = dot(x_144, x_145);
  let x_147 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_147);
  let x_149 : f32 = u_xlat80;
  let x_151 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_149, x_149, x_149) * x_151);
  let x_156 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat3.x = x_156;
  let x_159 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat3.y = x_159;
  let x_163 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat3.z = x_163;
  let x_165 : bool = u_xlatb78;
  if (x_165) {
    let x_170 : vec3<f32> = u_xlat2;
    x_167 = x_170;
  } else {
    let x_172 : vec4<f32> = u_xlat3;
    x_167 = vec3<f32>(x_172.x, x_172.y, x_172.z);
  }
  let x_174 : vec3<f32> = x_167;
  u_xlat2 = x_174;
  let x_176 : vec3<f32> = vs_TEXCOORD2;
  let x_177 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat78;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  let x_184 : vec3<f32> = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : vec3<f32> = vs_TEXCOORD1;
  let x_198 : vec4<f32> = x_196.x_CascadeShadowSplitSpheres0;
  let x_201 : vec3<f32> = (x_188 + -(vec3<f32>(x_198.x, x_198.y, x_198.z)));
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec3<f32> = vs_TEXCOORD1;
  let x_207 : vec4<f32> = x_196.x_CascadeShadowSplitSpheres1;
  let x_210 : vec3<f32> = (x_205 + -(vec3<f32>(x_207.x, x_207.y, x_207.z)));
  let x_211 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : vec3<f32> = vs_TEXCOORD1;
  let x_217 : vec4<f32> = x_196.x_CascadeShadowSplitSpheres2;
  let x_220 : vec3<f32> = (x_214 + -(vec3<f32>(x_217.x, x_217.y, x_217.z)));
  let x_221 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : vec3<f32> = vs_TEXCOORD1;
  let x_226 : vec4<f32> = x_196.x_CascadeShadowSplitSpheres3;
  let x_229 : vec3<f32> = (x_224 + -(vec3<f32>(x_226.x, x_226.y, x_226.z)));
  let x_230 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat4;
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_238 : vec4<f32> = u_xlat5;
  let x_240 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_244 : vec4<f32> = u_xlat6;
  let x_246 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_250 : vec4<f32> = u_xlat7;
  let x_252 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_259 : vec4<f32> = u_xlat4;
  let x_262 : vec4<f32> = x_196.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_259 < x_262);
  let x_265 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_265);
  let x_269 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_269);
  let x_273 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_273);
  let x_277 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_281);
  let x_287 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_287);
  let x_291 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_291);
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = u_xlat5;
  let x_298 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) + vec3<f32>(x_296.y, x_296.z, x_296.w));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat4;
  let x_304 : vec3<f32> = max(vec3<f32>(x_301.x, x_301.y, x_301.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_305 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_305.x, x_304.x, x_304.y, x_304.z);
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_307, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_313 : f32 = u_xlat78;
  u_xlat78 = (-(x_313) + 4.0f);
  let x_318 : f32 = u_xlat78;
  u_xlatu78 = u32(x_318);
  let x_322 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_322) << bitcast<u32>(2i));
  let x_325 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : i32 = u_xlati78;
  let x_330 : i32 = u_xlati78;
  let x_334 : vec4<f32> = x_196.x_MainLightWorldToShadow[((x_327 + 1i) / 4i)][((x_330 + 1i) % 4i)];
  let x_336 : vec3<f32> = (vec3<f32>(x_325.y, x_325.y, x_325.y) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : i32 = u_xlati78;
  let x_341 : i32 = u_xlati78;
  let x_344 : vec4<f32> = x_196.x_MainLightWorldToShadow[(x_339 / 4i)][(x_341 % 4i)];
  let x_346 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.x, x_346.x)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : i32 = u_xlati78;
  let x_357 : i32 = u_xlati78;
  let x_361 : vec4<f32> = x_196.x_MainLightWorldToShadow[((x_354 + 2i) / 4i)][((x_357 + 2i) % 4i)];
  let x_363 : vec3<f32> = vs_TEXCOORD1;
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.z, x_363.z, x_363.z)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_373 : i32 = u_xlati78;
  let x_376 : i32 = u_xlati78;
  let x_380 : vec4<f32> = x_196.x_MainLightWorldToShadow[((x_373 + 3i) / 4i)][((x_376 + 3i) % 4i)];
  let x_382 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = vs_TEXCOORD1.y;
  let x_388 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat78 = (x_386 * x_388);
  let x_391 : f32 = x_45.unity_MatrixV[0i].z;
  let x_393 : f32 = vs_TEXCOORD1.x;
  let x_395 : f32 = u_xlat78;
  u_xlat78 = ((x_391 * x_393) + x_395);
  let x_398 : f32 = x_45.unity_MatrixV[2i].z;
  let x_400 : f32 = vs_TEXCOORD1.z;
  let x_402 : f32 = u_xlat78;
  u_xlat78 = ((x_398 * x_400) + x_402);
  let x_404 : f32 = u_xlat78;
  let x_406 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat78 = (x_404 + x_406);
  let x_408 : f32 = u_xlat78;
  let x_411 : f32 = x_45.x_ProjectionParams.y;
  u_xlat78 = (-(x_408) + -(x_411));
  let x_414 : f32 = u_xlat78;
  u_xlat78 = max(x_414, 0.0f);
  let x_416 : f32 = u_xlat78;
  let x_419 : f32 = x_45.unity_FogParams.x;
  u_xlat78 = (x_416 * x_419);
  u_xlat3.w = 1.0f;
  let x_424 : vec4<f32> = x_96.unity_SHAr;
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_424, x_425);
  let x_430 : vec4<f32> = x_96.unity_SHAg;
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_430, x_431);
  let x_436 : vec4<f32> = x_96.unity_SHAb;
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_436, x_437);
  let x_440 : vec4<f32> = u_xlat3;
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_440.y, x_440.z, x_440.z, x_440.x) * vec4<f32>(x_442.x, x_442.y, x_442.z, x_442.z));
  let x_447 : vec4<f32> = x_96.unity_SHBr;
  let x_448 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_447, x_448);
  let x_453 : vec4<f32> = x_96.unity_SHBg;
  let x_454 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_453, x_454);
  let x_459 : vec4<f32> = x_96.unity_SHBb;
  let x_460 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_459, x_460);
  let x_464 : f32 = u_xlat3.y;
  let x_466 : f32 = u_xlat3.y;
  u_xlat80 = (x_464 * x_466);
  let x_469 : f32 = u_xlat3.x;
  let x_471 : f32 = u_xlat3.x;
  let x_473 : f32 = u_xlat80;
  u_xlat80 = ((x_469 * x_471) + -(x_473));
  let x_478 : vec4<f32> = x_96.unity_SHC;
  let x_480 : f32 = u_xlat80;
  let x_483 : vec4<f32> = u_xlat7;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480, x_480, x_480)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat5;
  let x_490 : vec4<f32> = u_xlat6;
  let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat5;
  let x_497 : vec3<f32> = max(vec3<f32>(x_495.x, x_495.y, x_495.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_498 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = x_58.x_Metallic;
  u_xlat80 = ((-(x_501) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_507 : f32 = u_xlat80;
  u_xlat81 = (-(x_507) + 1.0f);
  let x_511 : vec4<f32> = u_xlat1;
  let x_513 : f32 = u_xlat80;
  u_xlat27 = (vec3<f32>(x_511.y, x_511.z, x_511.w) * vec3<f32>(x_513, x_513, x_513));
  let x_516 : vec4<f32> = u_xlat0;
  let x_519 : vec4<f32> = x_58.x_BaseColor;
  let x_524 : vec3<f32> = ((vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(x_519.x, x_519.y, x_519.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_525 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_528 : f32 = x_58.x_Metallic;
  let x_530 : f32 = x_58.x_Metallic;
  let x_532 : f32 = x_58.x_Metallic;
  let x_533 : vec3<f32> = vec3<f32>(x_528, x_530, x_532);
  let x_538 : vec4<f32> = u_xlat0;
  let x_543 : vec3<f32> = ((vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_538.x, x_538.y, x_538.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_544 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_547 : f32 = x_58.x_Smoothness;
  u_xlat80 = (-(x_547) + 1.0f);
  let x_551 : f32 = u_xlat80;
  let x_552 : f32 = u_xlat80;
  u_xlat82 = (x_551 * x_552);
  let x_554 : f32 = u_xlat82;
  u_xlat82 = max(x_554, 0.0078125f);
  let x_558 : f32 = u_xlat82;
  let x_559 : f32 = u_xlat82;
  u_xlat83 = (x_558 * x_559);
  let x_561 : f32 = u_xlat81;
  let x_563 : f32 = x_58.x_Smoothness;
  u_xlat81 = (x_561 + x_563);
  let x_565 : f32 = u_xlat81;
  u_xlat81 = clamp(x_565, 0.0f, 1.0f);
  let x_567 : f32 = u_xlat82;
  u_xlat6.x = ((x_567 * 4.0f) + 2.0f);
  let x_576 : f32 = x_196.x_MainLightShadowParams.y;
  u_xlatb32.x = (0.0f < x_576);
  let x_580 : bool = u_xlatb32.x;
  if (x_580) {
    let x_584 : f32 = x_196.x_MainLightShadowParams.y;
    u_xlatb32.x = (x_584 == 1.0f);
    let x_588 : bool = u_xlatb32.x;
    if (x_588) {
      let x_591 : vec4<f32> = u_xlat4;
      let x_594 : vec4<f32> = x_196.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y) + x_594);
      let x_597 : vec4<f32> = u_xlat7;
      let x_598 : vec2<f32> = vec2<f32>(x_597.x, x_597.y);
      let x_600 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_598.x, x_598.y, x_600);
      let x_613 : vec3<f32> = txVec0;
      let x_615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_613.xy, x_613.z);
      u_xlat8.x = x_615;
      let x_618 : vec4<f32> = u_xlat7;
      let x_619 : vec2<f32> = vec2<f32>(x_618.z, x_618.w);
      let x_621 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_619.x, x_619.y, x_621);
      let x_628 : vec3<f32> = txVec1;
      let x_630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_628.xy, x_628.z);
      u_xlat8.y = x_630;
      let x_632 : vec4<f32> = u_xlat4;
      let x_635 : vec4<f32> = x_196.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y) + x_635);
      let x_638 : vec4<f32> = u_xlat7;
      let x_639 : vec2<f32> = vec2<f32>(x_638.x, x_638.y);
      let x_641 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_639.x, x_639.y, x_641);
      let x_648 : vec3<f32> = txVec2;
      let x_650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_648.xy, x_648.z);
      u_xlat8.z = x_650;
      let x_653 : vec4<f32> = u_xlat7;
      let x_654 : vec2<f32> = vec2<f32>(x_653.z, x_653.w);
      let x_656 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_654.x, x_654.y, x_656);
      let x_663 : vec3<f32> = txVec3;
      let x_665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_663.xy, x_663.z);
      u_xlat8.w = x_665;
      let x_668 : vec4<f32> = u_xlat8;
      u_xlat32.x = dot(x_668, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_676 : f32 = x_196.x_MainLightShadowParams.y;
      u_xlatb58 = (x_676 == 2.0f);
      let x_678 : bool = u_xlatb58;
      if (x_678) {
        let x_683 : vec4<f32> = u_xlat4;
        let x_686 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_683.x, x_683.y) * vec2<f32>(x_686.z, x_686.w)) + vec2<f32>(0.5f, 0.5f));
        let x_692 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_692);
        let x_694 : vec4<f32> = u_xlat4;
        let x_697 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_700 : vec2<f32> = u_xlat58;
        let x_702 : vec2<f32> = ((vec2<f32>(x_694.x, x_694.y) * vec2<f32>(x_697.z, x_697.w)) + -(x_700));
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_705.x, x_705.x, x_705.y, x_705.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_710 : vec4<f32> = u_xlat8;
        let x_712 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_710.x, x_710.x, x_710.z, x_710.z) * vec4<f32>(x_712.x, x_712.x, x_712.z, x_712.z));
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_716.y, x_716.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_721 : vec4<f32> = u_xlat9;
        let x_724 : vec4<f32> = u_xlat7;
        let x_727 : vec2<f32> = ((vec2<f32>(x_721.x, x_721.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_724.x, x_724.y)));
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_727.x, x_728.y, x_727.y, x_728.w);
        let x_730 : vec4<f32> = u_xlat7;
        let x_734 : vec2<f32> = (-(vec2<f32>(x_730.x, x_730.y)) + vec2<f32>(1.0f, 1.0f));
        let x_735 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_738 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_738.x, x_738.y), vec2<f32>(0.0f, 0.0f));
        let x_742 : vec2<f32> = u_xlat61;
        let x_744 : vec2<f32> = u_xlat61;
        let x_746 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_742) * x_744) + vec2<f32>(x_746.x, x_746.y));
        let x_749 : vec4<f32> = u_xlat7;
        let x_751 : vec2<f32> = max(vec2<f32>(x_749.x, x_749.y), vec2<f32>(0.0f, 0.0f));
        let x_752 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat7;
        let x_757 : vec4<f32> = u_xlat7;
        let x_760 : vec4<f32> = u_xlat8;
        let x_762 : vec2<f32> = ((-(vec2<f32>(x_754.x, x_754.y)) * vec2<f32>(x_757.x, x_757.y)) + vec2<f32>(x_760.y, x_760.w));
        let x_763 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_765 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_765 + vec2<f32>(1.0f, 1.0f));
        let x_767 : vec4<f32> = u_xlat7;
        let x_769 : vec2<f32> = (vec2<f32>(x_767.x, x_767.y) + vec2<f32>(1.0f, 1.0f));
        let x_770 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_773 : vec4<f32> = u_xlat8;
        let x_777 : vec2<f32> = (vec2<f32>(x_773.x, x_773.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_778 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_778.w);
        let x_781 : vec4<f32> = u_xlat9;
        let x_783 : vec2<f32> = (vec2<f32>(x_781.x, x_781.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_784 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec2<f32> = u_xlat61;
        let x_787 : vec2<f32> = (x_786 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_788 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
        let x_791 : vec4<f32> = u_xlat7;
        let x_793 : vec2<f32> = (vec2<f32>(x_791.x, x_791.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_794 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_793.x, x_793.y, x_794.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat8;
        let x_798 : vec2<f32> = (vec2<f32>(x_796.y, x_796.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_799 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_798.x, x_798.y, x_799.z, x_799.w);
        let x_802 : f32 = u_xlat9.x;
        u_xlat10.z = x_802;
        let x_805 : f32 = u_xlat7.x;
        u_xlat10.w = x_805;
        let x_808 : f32 = u_xlat12.x;
        u_xlat11.z = x_808;
        let x_811 : f32 = u_xlat59.x;
        u_xlat11.w = x_811;
        let x_813 : vec4<f32> = u_xlat10;
        let x_815 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_813.z, x_813.w, x_813.x, x_813.z) + vec4<f32>(x_815.z, x_815.w, x_815.x, x_815.z));
        let x_819 : f32 = u_xlat10.y;
        u_xlat9.z = x_819;
        let x_822 : f32 = u_xlat7.y;
        u_xlat9.w = x_822;
        let x_825 : f32 = u_xlat11.y;
        u_xlat12.z = x_825;
        let x_828 : f32 = u_xlat59.y;
        u_xlat12.w = x_828;
        let x_830 : vec4<f32> = u_xlat9;
        let x_832 : vec4<f32> = u_xlat12;
        let x_834 : vec3<f32> = (vec3<f32>(x_830.z, x_830.y, x_830.w) + vec3<f32>(x_832.z, x_832.y, x_832.w));
        let x_835 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat11;
        let x_839 : vec4<f32> = u_xlat8;
        let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.z, x_837.w) / vec3<f32>(x_839.z, x_839.w, x_839.y));
        let x_842 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat9;
        let x_850 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_851 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat12;
        let x_855 : vec4<f32> = u_xlat7;
        let x_857 : vec3<f32> = (vec3<f32>(x_853.z, x_853.y, x_853.w) / vec3<f32>(x_855.x, x_855.y, x_855.z));
        let x_858 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
        let x_860 : vec4<f32> = u_xlat10;
        let x_862 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_863 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat9;
        let x_868 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_870 : vec3<f32> = (vec3<f32>(x_865.y, x_865.x, x_865.z) * vec3<f32>(x_868.x, x_868.x, x_868.x));
        let x_871 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat10;
        let x_876 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_878 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_876.y, x_876.y, x_876.y));
        let x_879 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
        let x_882 : f32 = u_xlat10.x;
        u_xlat9.w = x_882;
        let x_884 : vec2<f32> = u_xlat58;
        let x_887 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_890 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_884.x, x_884.y, x_884.x, x_884.y) * vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.y)) + vec4<f32>(x_890.y, x_890.w, x_890.x, x_890.w));
        let x_893 : vec2<f32> = u_xlat58;
        let x_895 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_898 : vec4<f32> = u_xlat9;
        let x_900 : vec2<f32> = ((x_893 * vec2<f32>(x_895.x, x_895.y)) + vec2<f32>(x_898.z, x_898.w));
        let x_901 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_904 : f32 = u_xlat9.y;
        u_xlat10.w = x_904;
        let x_906 : vec4<f32> = u_xlat10;
        let x_907 : vec2<f32> = vec2<f32>(x_906.y, x_906.z);
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_908.x, x_907.x, x_908.z, x_907.y);
        let x_911 : vec2<f32> = u_xlat58;
        let x_914 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_911.x, x_911.y, x_911.x, x_911.y) * vec4<f32>(x_914.x, x_914.y, x_914.x, x_914.y)) + vec4<f32>(x_917.x, x_917.y, x_917.z, x_917.y));
        let x_920 : vec2<f32> = u_xlat58;
        let x_923 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_926 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_920.x, x_920.y, x_920.x, x_920.y) * vec4<f32>(x_923.x, x_923.y, x_923.x, x_923.y)) + vec4<f32>(x_926.w, x_926.y, x_926.w, x_926.z));
        let x_929 : vec2<f32> = u_xlat58;
        let x_932 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_935 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_929.x, x_929.y, x_929.x, x_929.y) * vec4<f32>(x_932.x, x_932.y, x_932.x, x_932.y)) + vec4<f32>(x_935.x, x_935.w, x_935.z, x_935.w));
        let x_939 : vec4<f32> = u_xlat7;
        let x_941 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_939.x, x_939.x, x_939.x, x_939.y) * vec4<f32>(x_941.z, x_941.w, x_941.y, x_941.z));
        let x_945 : vec4<f32> = u_xlat7;
        let x_947 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_945.y, x_945.y, x_945.z, x_945.z) * x_947);
        let x_950 : f32 = u_xlat7.z;
        let x_952 : f32 = u_xlat8.y;
        u_xlat58.x = (x_950 * x_952);
        let x_956 : vec4<f32> = u_xlat11;
        let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
        let x_959 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_957.x, x_957.y, x_959);
        let x_967 : vec3<f32> = txVec4;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_967.xy, x_967.z);
        u_xlat84 = x_969;
        let x_971 : vec4<f32> = u_xlat11;
        let x_972 : vec2<f32> = vec2<f32>(x_971.z, x_971.w);
        let x_974 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_972.x, x_972.y, x_974);
        let x_981 : vec3<f32> = txVec5;
        let x_983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_981.xy, x_981.z);
        u_xlat7.x = x_983;
        let x_986 : f32 = u_xlat7.x;
        let x_988 : f32 = u_xlat14.y;
        u_xlat7.x = (x_986 * x_988);
        let x_992 : f32 = u_xlat14.x;
        let x_993 : f32 = u_xlat84;
        let x_996 : f32 = u_xlat7.x;
        u_xlat84 = ((x_992 * x_993) + x_996);
        let x_999 : vec4<f32> = u_xlat12;
        let x_1000 : vec2<f32> = vec2<f32>(x_999.x, x_999.y);
        let x_1002 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
        let x_1009 : vec3<f32> = txVec6;
        let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1009.xy, x_1009.z);
        u_xlat7.x = x_1011;
        let x_1014 : f32 = u_xlat14.z;
        let x_1016 : f32 = u_xlat7.x;
        let x_1018 : f32 = u_xlat84;
        u_xlat84 = ((x_1014 * x_1016) + x_1018);
        let x_1021 : vec4<f32> = u_xlat10;
        let x_1022 : vec2<f32> = vec2<f32>(x_1021.x, x_1021.y);
        let x_1024 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
        let x_1031 : vec3<f32> = txVec7;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1031.xy, x_1031.z);
        u_xlat7.x = x_1033;
        let x_1036 : f32 = u_xlat14.w;
        let x_1038 : f32 = u_xlat7.x;
        let x_1040 : f32 = u_xlat84;
        u_xlat84 = ((x_1036 * x_1038) + x_1040);
        let x_1043 : vec4<f32> = u_xlat13;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.x, x_1043.y);
        let x_1046 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1053 : vec3<f32> = txVec8;
        let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1053.xy, x_1053.z);
        u_xlat7.x = x_1055;
        let x_1058 : f32 = u_xlat15.x;
        let x_1060 : f32 = u_xlat7.x;
        let x_1062 : f32 = u_xlat84;
        u_xlat84 = ((x_1058 * x_1060) + x_1062);
        let x_1065 : vec4<f32> = u_xlat13;
        let x_1066 : vec2<f32> = vec2<f32>(x_1065.z, x_1065.w);
        let x_1068 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1066.x, x_1066.y, x_1068);
        let x_1075 : vec3<f32> = txVec9;
        let x_1077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1075.xy, x_1075.z);
        u_xlat7.x = x_1077;
        let x_1080 : f32 = u_xlat15.y;
        let x_1082 : f32 = u_xlat7.x;
        let x_1084 : f32 = u_xlat84;
        u_xlat84 = ((x_1080 * x_1082) + x_1084);
        let x_1087 : vec4<f32> = u_xlat10;
        let x_1088 : vec2<f32> = vec2<f32>(x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec10;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
        u_xlat7.x = x_1099;
        let x_1102 : f32 = u_xlat15.z;
        let x_1104 : f32 = u_xlat7.x;
        let x_1106 : f32 = u_xlat84;
        u_xlat84 = ((x_1102 * x_1104) + x_1106);
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec11;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1119.xy, x_1119.z);
        u_xlat7.x = x_1121;
        let x_1124 : f32 = u_xlat15.w;
        let x_1126 : f32 = u_xlat7.x;
        let x_1128 : f32 = u_xlat84;
        u_xlat84 = ((x_1124 * x_1126) + x_1128);
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.z, x_1131.w);
        let x_1134 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec12;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1141.xy, x_1141.z);
        u_xlat7.x = x_1143;
        let x_1146 : f32 = u_xlat58.x;
        let x_1148 : f32 = u_xlat7.x;
        let x_1150 : f32 = u_xlat84;
        u_xlat32.x = ((x_1146 * x_1148) + x_1150);
      } else {
        let x_1154 : vec4<f32> = u_xlat4;
        let x_1157 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1157.z, x_1157.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1161 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1161);
        let x_1163 : vec4<f32> = u_xlat4;
        let x_1166 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1169 : vec2<f32> = u_xlat58;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(x_1166.z, x_1166.w)) + -(x_1169));
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1174.x, x_1174.x, x_1174.y, x_1174.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1177 : vec4<f32> = u_xlat8;
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1177.x, x_1177.x, x_1177.z, x_1177.z) * vec4<f32>(x_1179.x, x_1179.x, x_1179.z, x_1179.z));
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1186 : vec2<f32> = (vec2<f32>(x_1182.y, x_1182.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1187 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1187.x, x_1186.x, x_1187.z, x_1186.y);
        let x_1189 : vec4<f32> = u_xlat9;
        let x_1192 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1189.x, x_1189.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1192.x, x_1192.y)));
        let x_1196 : vec4<f32> = u_xlat7;
        let x_1199 : vec2<f32> = (-(vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1200 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1199.x, x_1200.y, x_1199.y, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1204 : vec2<f32> = min(vec2<f32>(x_1202.x, x_1202.y), vec2<f32>(0.0f, 0.0f));
        let x_1205 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1207 : vec4<f32> = u_xlat9;
        let x_1210 : vec4<f32> = u_xlat9;
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1215 : vec2<f32> = ((-(vec2<f32>(x_1207.x, x_1207.y)) * vec2<f32>(x_1210.x, x_1210.y)) + vec2<f32>(x_1213.x, x_1213.z));
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1215.x, x_1216.y, x_1215.y, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1220 : vec2<f32> = max(vec2<f32>(x_1218.x, x_1218.y), vec2<f32>(0.0f, 0.0f));
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat9;
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1231 : vec2<f32> = ((-(vec2<f32>(x_1223.x, x_1223.y)) * vec2<f32>(x_1226.x, x_1226.y)) + vec2<f32>(x_1229.y, x_1229.w));
        let x_1232 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1232.x, x_1231.x, x_1232.z, x_1231.y);
        let x_1234 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1234 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1238 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1238 * 0.08163200318813323975f);
        let x_1242 : vec2<f32> = u_xlat59;
        let x_1245 : vec2<f32> = (vec2<f32>(x_1242.y, x_1242.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1246 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1248.x, x_1248.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1252 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1252 * 0.08163200318813323975f);
        let x_1256 : f32 = u_xlat11.y;
        u_xlat9.x = x_1256;
        let x_1258 : vec4<f32> = u_xlat7;
        let x_1265 : vec2<f32> = ((vec2<f32>(x_1258.x, x_1258.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1266.x, x_1265.x, x_1266.z, x_1265.y);
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1268.x, x_1268.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1272.x, x_1273.y, x_1272.y, x_1273.w);
        let x_1276 : f32 = u_xlat59.x;
        u_xlat8.y = x_1276;
        let x_1279 : f32 = u_xlat10.y;
        u_xlat8.w = x_1279;
        let x_1281 : vec4<f32> = u_xlat8;
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1281 + x_1282);
        let x_1284 : vec4<f32> = u_xlat7;
        let x_1287 : vec2<f32> = ((vec2<f32>(x_1284.y, x_1284.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1288 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1288.x, x_1287.x, x_1288.z, x_1287.y);
        let x_1290 : vec4<f32> = u_xlat7;
        let x_1293 : vec2<f32> = ((vec2<f32>(x_1290.y, x_1290.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1294 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1293.x, x_1294.y, x_1293.y, x_1294.w);
        let x_1297 : f32 = u_xlat59.y;
        u_xlat10.y = x_1297;
        let x_1299 : vec4<f32> = u_xlat10;
        let x_1300 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1299 + x_1300);
        let x_1302 : vec4<f32> = u_xlat8;
        let x_1303 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1302 / x_1303);
        let x_1305 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1305 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1311 : vec4<f32> = u_xlat10;
        let x_1312 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1311 / x_1312);
        let x_1314 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1314 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1316 : vec4<f32> = u_xlat8;
        let x_1319 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1316.w, x_1316.x, x_1316.y, x_1316.z) * vec4<f32>(x_1319.x, x_1319.x, x_1319.x, x_1319.x));
        let x_1322 : vec4<f32> = u_xlat10;
        let x_1325 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1322.x, x_1322.w, x_1322.y, x_1322.z) * vec4<f32>(x_1325.y, x_1325.y, x_1325.y, x_1325.y));
        let x_1328 : vec4<f32> = u_xlat8;
        let x_1329 : vec3<f32> = vec3<f32>(x_1328.y, x_1328.z, x_1328.w);
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1329.x, x_1330.y, x_1329.y, x_1329.z);
        let x_1333 : f32 = u_xlat10.x;
        u_xlat11.y = x_1333;
        let x_1335 : vec2<f32> = u_xlat58;
        let x_1338 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1341 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y) * vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.y)) + vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1341.y));
        let x_1344 : vec2<f32> = u_xlat58;
        let x_1346 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1349 : vec4<f32> = u_xlat11;
        let x_1351 : vec2<f32> = ((x_1344 * vec2<f32>(x_1346.x, x_1346.y)) + vec2<f32>(x_1349.w, x_1349.y));
        let x_1352 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1355 : f32 = u_xlat11.y;
        u_xlat8.y = x_1355;
        let x_1358 : f32 = u_xlat10.z;
        u_xlat11.y = x_1358;
        let x_1360 : vec2<f32> = u_xlat58;
        let x_1363 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1360.x, x_1360.y, x_1360.x, x_1360.y) * vec4<f32>(x_1363.x, x_1363.y, x_1363.x, x_1363.y)) + vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1366.y));
        let x_1370 : vec2<f32> = u_xlat58;
        let x_1372 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1370 * vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(x_1375.w, x_1375.y));
        let x_1379 : f32 = u_xlat11.y;
        u_xlat8.z = x_1379;
        let x_1381 : vec2<f32> = u_xlat58;
        let x_1384 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1381.x, x_1381.y, x_1381.x, x_1381.y) * vec4<f32>(x_1384.x, x_1384.y, x_1384.x, x_1384.y)) + vec4<f32>(x_1387.x, x_1387.y, x_1387.x, x_1387.z));
        let x_1391 : f32 = u_xlat10.w;
        u_xlat11.y = x_1391;
        let x_1394 : vec2<f32> = u_xlat58;
        let x_1397 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1400 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1394.x, x_1394.y, x_1394.x, x_1394.y) * vec4<f32>(x_1397.x, x_1397.y, x_1397.x, x_1397.y)) + vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1400.y));
        let x_1404 : vec2<f32> = u_xlat58;
        let x_1406 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1409 : vec4<f32> = u_xlat11;
        let x_1411 : vec2<f32> = ((x_1404 * vec2<f32>(x_1406.x, x_1406.y)) + vec2<f32>(x_1409.w, x_1409.y));
        let x_1412 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1411.x, x_1411.y, x_1412.z);
        let x_1415 : f32 = u_xlat11.y;
        u_xlat8.w = x_1415;
        let x_1418 : vec2<f32> = u_xlat58;
        let x_1420 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat8;
        let x_1425 : vec2<f32> = ((x_1418 * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.x, x_1423.w));
        let x_1426 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
        let x_1428 : vec4<f32> = u_xlat11;
        let x_1429 : vec3<f32> = vec3<f32>(x_1428.x, x_1428.z, x_1428.w);
        let x_1430 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1429.x, x_1430.y, x_1429.y, x_1429.z);
        let x_1432 : vec2<f32> = u_xlat58;
        let x_1435 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1432.x, x_1432.y, x_1432.x, x_1432.y) * vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y)) + vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1438.y));
        let x_1442 : vec2<f32> = u_xlat58;
        let x_1444 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1447 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1442 * vec2<f32>(x_1444.x, x_1444.y)) + vec2<f32>(x_1447.w, x_1447.y));
        let x_1451 : f32 = u_xlat8.x;
        u_xlat10.x = x_1451;
        let x_1453 : vec2<f32> = u_xlat58;
        let x_1455 : vec4<f32> = x_196.x_MainLightShadowmapSize;
        let x_1458 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_1453 * vec2<f32>(x_1455.x, x_1455.y)) + vec2<f32>(x_1458.x, x_1458.y));
        let x_1462 : vec4<f32> = u_xlat7;
        let x_1464 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1462.x, x_1462.x, x_1462.x, x_1462.x) * x_1464);
        let x_1467 : vec4<f32> = u_xlat7;
        let x_1469 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1467.y, x_1467.y, x_1467.y, x_1467.y) * x_1469);
        let x_1472 : vec4<f32> = u_xlat7;
        let x_1474 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1472.z, x_1472.z, x_1472.z, x_1472.z) * x_1474);
        let x_1476 : vec4<f32> = u_xlat7;
        let x_1478 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1476.w, x_1476.w, x_1476.w, x_1476.w) * x_1478);
        let x_1481 : vec4<f32> = u_xlat12;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec13;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat8.x = x_1493;
        let x_1496 : vec4<f32> = u_xlat12;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.z, x_1496.w);
        let x_1499 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1507 : vec3<f32> = txVec14;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat86 = x_1509;
        let x_1510 : f32 = u_xlat86;
        let x_1512 : f32 = u_xlat18.y;
        u_xlat86 = (x_1510 * x_1512);
        let x_1515 : f32 = u_xlat18.x;
        let x_1517 : f32 = u_xlat8.x;
        let x_1519 : f32 = u_xlat86;
        u_xlat8.x = ((x_1515 * x_1517) + x_1519);
        let x_1523 : vec4<f32> = u_xlat13;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
        let x_1526 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec15;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
        u_xlat86 = x_1535;
        let x_1537 : f32 = u_xlat18.z;
        let x_1538 : f32 = u_xlat86;
        let x_1541 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1537 * x_1538) + x_1541);
        let x_1545 : vec4<f32> = u_xlat15;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.x, x_1545.y);
        let x_1548 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec16;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat86 = x_1557;
        let x_1559 : f32 = u_xlat18.w;
        let x_1560 : f32 = u_xlat86;
        let x_1563 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1559 * x_1560) + x_1563);
        let x_1567 : vec4<f32> = u_xlat14;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.x, x_1567.y);
        let x_1570 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec17;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat86 = x_1579;
        let x_1581 : f32 = u_xlat19.x;
        let x_1582 : f32 = u_xlat86;
        let x_1585 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1581 * x_1582) + x_1585);
        let x_1589 : vec4<f32> = u_xlat14;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.z, x_1589.w);
        let x_1592 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec18;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat86 = x_1601;
        let x_1603 : f32 = u_xlat19.y;
        let x_1604 : f32 = u_xlat86;
        let x_1607 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1603 * x_1604) + x_1607);
        let x_1611 : vec2<f32> = u_xlat65;
        let x_1613 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec19;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat86 = x_1622;
        let x_1624 : f32 = u_xlat19.z;
        let x_1625 : f32 = u_xlat86;
        let x_1628 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1624 * x_1625) + x_1628);
        let x_1632 : vec4<f32> = u_xlat15;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.z, x_1632.w);
        let x_1635 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec20;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
        u_xlat86 = x_1644;
        let x_1646 : f32 = u_xlat19.w;
        let x_1647 : f32 = u_xlat86;
        let x_1650 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1646 * x_1647) + x_1650);
        let x_1654 : vec4<f32> = u_xlat16;
        let x_1655 : vec2<f32> = vec2<f32>(x_1654.x, x_1654.y);
        let x_1657 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec21;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat86 = x_1666;
        let x_1668 : f32 = u_xlat20.x;
        let x_1669 : f32 = u_xlat86;
        let x_1672 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1668 * x_1669) + x_1672);
        let x_1676 : vec4<f32> = u_xlat16;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.z, x_1676.w);
        let x_1679 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec22;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1686.xy, x_1686.z);
        u_xlat86 = x_1688;
        let x_1690 : f32 = u_xlat20.y;
        let x_1691 : f32 = u_xlat86;
        let x_1694 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1690 * x_1691) + x_1694);
        let x_1698 : vec3<f32> = u_xlat34;
        let x_1699 : vec2<f32> = vec2<f32>(x_1698.x, x_1698.y);
        let x_1701 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec23;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
        u_xlat34.x = x_1710;
        let x_1713 : f32 = u_xlat20.z;
        let x_1715 : f32 = u_xlat34.x;
        let x_1718 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1713 * x_1715) + x_1718);
        let x_1722 : vec4<f32> = u_xlat17;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec24;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1732.xy, x_1732.z);
        u_xlat34.x = x_1734;
        let x_1737 : f32 = u_xlat20.w;
        let x_1739 : f32 = u_xlat34.x;
        let x_1742 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1737 * x_1739) + x_1742);
        let x_1746 : vec4<f32> = u_xlat11;
        let x_1747 : vec2<f32> = vec2<f32>(x_1746.x, x_1746.y);
        let x_1749 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1747.x, x_1747.y, x_1749);
        let x_1756 : vec3<f32> = txVec25;
        let x_1758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1756.xy, x_1756.z);
        u_xlat34.x = x_1758;
        let x_1761 : f32 = u_xlat7.x;
        let x_1763 : f32 = u_xlat34.x;
        let x_1766 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_1761 * x_1763) + x_1766);
        let x_1770 : vec4<f32> = u_xlat11;
        let x_1771 : vec2<f32> = vec2<f32>(x_1770.z, x_1770.w);
        let x_1773 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1771.x, x_1771.y, x_1773);
        let x_1780 : vec3<f32> = txVec26;
        let x_1782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1780.xy, x_1780.z);
        u_xlat8.x = x_1782;
        let x_1785 : f32 = u_xlat7.y;
        let x_1787 : f32 = u_xlat8.x;
        let x_1790 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1785 * x_1787) + x_1790);
        let x_1794 : vec2<f32> = u_xlat62;
        let x_1796 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
        let x_1804 : vec3<f32> = txVec27;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1804.xy, x_1804.z);
        u_xlat33 = x_1806;
        let x_1808 : f32 = u_xlat7.z;
        let x_1809 : f32 = u_xlat33;
        let x_1812 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1808 * x_1809) + x_1812);
        let x_1816 : vec2<f32> = u_xlat58;
        let x_1818 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec28;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1825.xy, x_1825.z);
        u_xlat58.x = x_1827;
        let x_1830 : f32 = u_xlat7.w;
        let x_1832 : f32 = u_xlat58.x;
        let x_1835 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1830 * x_1832) + x_1835);
      }
    }
  } else {
    let x_1840 : vec4<f32> = u_xlat4;
    let x_1841 : vec2<f32> = vec2<f32>(x_1840.x, x_1840.y);
    let x_1843 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
    let x_1850 : vec3<f32> = txVec29;
    let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1850.xy, x_1850.z);
    u_xlat32.x = x_1852;
  }
  let x_1855 : f32 = x_196.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1855) + 1.0f);
  let x_1860 : f32 = u_xlat32.x;
  let x_1862 : f32 = x_196.x_MainLightShadowParams.x;
  let x_1865 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1860 * x_1862) + x_1865);
  let x_1870 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1870);
  let x_1874 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1874 >= 1.0f);
  let x_1876 : bool = u_xlatb56;
  let x_1877 : bool = u_xlatb30;
  u_xlatb30 = (x_1876 | x_1877);
  let x_1879 : bool = u_xlatb30;
  if (x_1879) {
    x_1880 = 1.0f;
  } else {
    let x_1885 : f32 = u_xlat4.x;
    x_1880 = x_1885;
  }
  let x_1886 : f32 = x_1880;
  u_xlat4.x = x_1886;
  let x_1888 : vec3<f32> = vs_TEXCOORD1;
  let x_1890 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat32 = (x_1888 + -(x_1890));
  let x_1894 : vec3<f32> = u_xlat32;
  let x_1895 : vec3<f32> = u_xlat32;
  u_xlat30 = dot(x_1894, x_1895);
  let x_1898 : f32 = u_xlat30;
  let x_1900 : f32 = x_196.x_MainLightShadowParams.z;
  let x_1903 : f32 = x_196.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1898 * x_1900) + x_1903);
  let x_1905 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1905, 0.0f, 1.0f);
  let x_1908 : f32 = u_xlat4.x;
  u_xlat32.x = (-(x_1908) + 1.0f);
  let x_1912 : f32 = u_xlat56;
  let x_1914 : f32 = u_xlat32.x;
  let x_1917 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1912 * x_1914) + x_1917);
  let x_1927 : f32 = x_1925.x_MainLightCookieTextureFormat;
  u_xlatb56 = !((x_1927 == -1.0f));
  let x_1929 : bool = u_xlatb56;
  if (x_1929) {
    let x_1932 : vec3<f32> = vs_TEXCOORD1;
    let x_1935 : vec4<f32> = x_1925.x_MainLightWorldToLight[1i];
    let x_1937 : vec2<f32> = (vec2<f32>(x_1932.y, x_1932.y) * vec2<f32>(x_1935.x, x_1935.y));
    let x_1938 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1937.x, x_1937.y, x_1938.z);
    let x_1941 : vec4<f32> = x_1925.x_MainLightWorldToLight[0i];
    let x_1943 : vec3<f32> = vs_TEXCOORD1;
    let x_1946 : vec3<f32> = u_xlat32;
    let x_1948 : vec2<f32> = ((vec2<f32>(x_1941.x, x_1941.y) * vec2<f32>(x_1943.x, x_1943.x)) + vec2<f32>(x_1946.x, x_1946.y));
    let x_1949 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1948.x, x_1948.y, x_1949.z);
    let x_1952 : vec4<f32> = x_1925.x_MainLightWorldToLight[2i];
    let x_1954 : vec3<f32> = vs_TEXCOORD1;
    let x_1957 : vec3<f32> = u_xlat32;
    let x_1959 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(x_1954.z, x_1954.z)) + vec2<f32>(x_1957.x, x_1957.y));
    let x_1960 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1959.x, x_1959.y, x_1960.z);
    let x_1962 : vec3<f32> = u_xlat32;
    let x_1965 : vec4<f32> = x_1925.x_MainLightWorldToLight[3i];
    let x_1967 : vec2<f32> = (vec2<f32>(x_1962.x, x_1962.y) + vec2<f32>(x_1965.x, x_1965.y));
    let x_1968 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1967.x, x_1967.y, x_1968.z);
    let x_1970 : vec3<f32> = u_xlat32;
    let x_1973 : vec2<f32> = ((vec2<f32>(x_1970.x, x_1970.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1974 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1973.x, x_1973.y, x_1974.z);
    let x_1981 : vec3<f32> = u_xlat32;
    let x_1984 : f32 = x_45.x_GlobalMipBias.x;
    let x_1985 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1981.x, x_1981.y), x_1984);
    u_xlat7 = x_1985;
    let x_1987 : f32 = x_1925.x_MainLightCookieTextureFormat;
    let x_1989 : f32 = x_1925.x_MainLightCookieTextureFormat;
    let x_1991 : f32 = x_1925.x_MainLightCookieTextureFormat;
    let x_1993 : f32 = x_1925.x_MainLightCookieTextureFormat;
    let x_1994 : vec4<f32> = vec4<f32>(x_1987, x_1989, x_1991, x_1993);
    let x_2001 : vec4<bool> = (vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1994.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_2001.x, x_2001.y);
    let x_2004 : bool = u_xlatb32.y;
    if (x_2004) {
      let x_2009 : f32 = u_xlat7.w;
      x_2005 = x_2009;
    } else {
      let x_2012 : f32 = u_xlat7.x;
      x_2005 = x_2012;
    }
    let x_2013 : f32 = x_2005;
    u_xlat56 = x_2013;
    let x_2015 : bool = u_xlatb32.x;
    if (x_2015) {
      let x_2019 : vec4<f32> = u_xlat7;
      x_2016 = vec3<f32>(x_2019.x, x_2019.y, x_2019.z);
    } else {
      let x_2022 : f32 = u_xlat56;
      x_2016 = vec3<f32>(x_2022, x_2022, x_2022);
    }
    let x_2024 : vec3<f32> = x_2016;
    u_xlat32 = x_2024;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_2029 : vec3<f32> = u_xlat32;
  let x_2031 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat32 = (x_2029 * vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
  let x_2034 : vec3<f32> = u_xlat2;
  let x_2036 : vec4<f32> = u_xlat3;
  u_xlat56 = dot(-(x_2034), vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
  let x_2039 : f32 = u_xlat56;
  let x_2040 : f32 = u_xlat56;
  u_xlat56 = (x_2039 + x_2040);
  let x_2042 : vec4<f32> = u_xlat3;
  let x_2044 : f32 = u_xlat56;
  let x_2048 : vec3<f32> = u_xlat2;
  let x_2050 : vec3<f32> = ((vec3<f32>(x_2042.x, x_2042.y, x_2042.z) * -(vec3<f32>(x_2044, x_2044, x_2044))) + -(x_2048));
  let x_2051 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : vec4<f32> = u_xlat3;
  let x_2055 : vec3<f32> = u_xlat2;
  u_xlat56 = dot(vec3<f32>(x_2053.x, x_2053.y, x_2053.z), x_2055);
  let x_2057 : f32 = u_xlat56;
  u_xlat56 = clamp(x_2057, 0.0f, 1.0f);
  let x_2059 : f32 = u_xlat56;
  u_xlat56 = (-(x_2059) + 1.0f);
  let x_2062 : f32 = u_xlat56;
  let x_2063 : f32 = u_xlat56;
  u_xlat56 = (x_2062 * x_2063);
  let x_2065 : f32 = u_xlat56;
  let x_2066 : f32 = u_xlat56;
  u_xlat56 = (x_2065 * x_2066);
  let x_2069 : f32 = u_xlat80;
  u_xlat85 = ((-(x_2069) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2075 : f32 = u_xlat80;
  let x_2076 : f32 = u_xlat85;
  u_xlat80 = (x_2075 * x_2076);
  let x_2078 : f32 = u_xlat80;
  u_xlat80 = (x_2078 * 6.0f);
  let x_2089 : vec4<f32> = u_xlat7;
  let x_2091 : f32 = u_xlat80;
  let x_2092 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2089.x, x_2089.y, x_2089.z), x_2091);
  u_xlat7 = x_2092;
  let x_2094 : f32 = u_xlat7.w;
  u_xlat80 = (x_2094 + -1.0f);
  let x_2097 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_2098 : f32 = u_xlat80;
  u_xlat80 = ((x_2097 * x_2098) + 1.0f);
  let x_2101 : f32 = u_xlat80;
  u_xlat80 = max(x_2101, 0.0f);
  let x_2103 : f32 = u_xlat80;
  u_xlat80 = log2(x_2103);
  let x_2105 : f32 = u_xlat80;
  let x_2107 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_2105 * x_2107);
  let x_2109 : f32 = u_xlat80;
  u_xlat80 = exp2(x_2109);
  let x_2111 : f32 = u_xlat80;
  let x_2113 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_2111 * x_2113);
  let x_2115 : vec4<f32> = u_xlat7;
  let x_2117 : f32 = u_xlat80;
  let x_2119 : vec3<f32> = (vec3<f32>(x_2115.x, x_2115.y, x_2115.z) * vec3<f32>(x_2117, x_2117, x_2117));
  let x_2120 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
  let x_2122 : f32 = u_xlat82;
  let x_2124 : f32 = u_xlat82;
  let x_2128 : vec2<f32> = ((vec2<f32>(x_2122, x_2122) * vec2<f32>(x_2124, x_2124)) + vec2<f32>(-1.0f, 1.0f));
  let x_2129 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2128.x, x_2128.y, x_2129.z, x_2129.w);
  let x_2132 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_2132);
  let x_2134 : vec4<f32> = u_xlat0;
  let x_2137 : f32 = u_xlat81;
  u_xlat34 = (-(vec3<f32>(x_2134.x, x_2134.y, x_2134.z)) + vec3<f32>(x_2137, x_2137, x_2137));
  let x_2140 : f32 = u_xlat56;
  let x_2142 : vec3<f32> = u_xlat34;
  let x_2144 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2140, x_2140, x_2140) * x_2142) + vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
  let x_2147 : f32 = u_xlat80;
  let x_2149 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2147, x_2147, x_2147) * x_2149);
  let x_2151 : vec4<f32> = u_xlat7;
  let x_2153 : vec3<f32> = u_xlat34;
  let x_2154 : vec3<f32> = (vec3<f32>(x_2151.x, x_2151.y, x_2151.z) * x_2153);
  let x_2155 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
  let x_2157 : vec4<f32> = u_xlat5;
  let x_2159 : vec3<f32> = u_xlat27;
  let x_2161 : vec4<f32> = u_xlat7;
  let x_2163 : vec3<f32> = ((vec3<f32>(x_2157.x, x_2157.y, x_2157.z) * x_2159) + vec3<f32>(x_2161.x, x_2161.y, x_2161.z));
  let x_2164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
  let x_2167 : f32 = u_xlat4.x;
  let x_2169 : f32 = x_96.unity_LightData.z;
  u_xlat80 = (x_2167 * x_2169);
  let x_2171 : vec4<f32> = u_xlat3;
  let x_2174 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat81 = dot(vec3<f32>(x_2171.x, x_2171.y, x_2171.z), vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2177 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2177, 0.0f, 1.0f);
  let x_2179 : f32 = u_xlat80;
  let x_2180 : f32 = u_xlat81;
  u_xlat80 = (x_2179 * x_2180);
  let x_2182 : f32 = u_xlat80;
  let x_2184 : vec3<f32> = u_xlat32;
  let x_2185 : vec3<f32> = (vec3<f32>(x_2182, x_2182, x_2182) * x_2184);
  let x_2186 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2185.x, x_2186.y, x_2185.y, x_2185.z);
  let x_2188 : vec3<f32> = u_xlat2;
  let x_2190 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat32 = (x_2188 + vec3<f32>(x_2190.x, x_2190.y, x_2190.z));
  let x_2193 : vec3<f32> = u_xlat32;
  let x_2194 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_2193, x_2194);
  let x_2196 : f32 = u_xlat80;
  u_xlat80 = max(x_2196, 1.17549435e-38f);
  let x_2199 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_2199);
  let x_2201 : f32 = u_xlat80;
  let x_2203 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2201, x_2201, x_2201) * x_2203);
  let x_2205 : vec4<f32> = u_xlat3;
  let x_2207 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(vec3<f32>(x_2205.x, x_2205.y, x_2205.z), x_2207);
  let x_2209 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2209, 0.0f, 1.0f);
  let x_2212 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2214 : vec3<f32> = u_xlat32;
  u_xlat81 = dot(vec3<f32>(x_2212.x, x_2212.y, x_2212.z), x_2214);
  let x_2216 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2216, 0.0f, 1.0f);
  let x_2218 : f32 = u_xlat80;
  let x_2219 : f32 = u_xlat80;
  u_xlat80 = (x_2218 * x_2219);
  let x_2221 : f32 = u_xlat80;
  let x_2223 : f32 = u_xlat8.x;
  u_xlat80 = ((x_2221 * x_2223) + 1.00001001358032226562f);
  let x_2227 : f32 = u_xlat81;
  let x_2228 : f32 = u_xlat81;
  u_xlat81 = (x_2227 * x_2228);
  let x_2230 : f32 = u_xlat80;
  let x_2231 : f32 = u_xlat80;
  u_xlat80 = (x_2230 * x_2231);
  let x_2233 : f32 = u_xlat81;
  u_xlat81 = max(x_2233, 0.10000000149011611938f);
  let x_2236 : f32 = u_xlat80;
  let x_2237 : f32 = u_xlat81;
  u_xlat80 = (x_2236 * x_2237);
  let x_2240 : f32 = u_xlat6.x;
  let x_2241 : f32 = u_xlat80;
  u_xlat80 = (x_2240 * x_2241);
  let x_2243 : f32 = u_xlat83;
  let x_2244 : f32 = u_xlat80;
  u_xlat80 = (x_2243 / x_2244);
  let x_2246 : vec4<f32> = u_xlat0;
  let x_2248 : f32 = u_xlat80;
  let x_2251 : vec3<f32> = u_xlat27;
  u_xlat32 = ((vec3<f32>(x_2246.x, x_2246.y, x_2246.z) * vec3<f32>(x_2248, x_2248, x_2248)) + x_2251);
  let x_2254 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2256 : f32 = x_96.unity_LightData.y;
  u_xlat80 = min(x_2254, x_2256);
  let x_2259 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2259));
  let x_2262 : f32 = u_xlat30;
  let x_2265 : f32 = x_196.x_AdditionalShadowFadeParams.x;
  let x_2268 : f32 = x_196.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2262 * x_2265) + x_2268);
  let x_2270 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2270, 0.0f, 1.0f);
  let x_2274 : f32 = x_1925.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2276 : f32 = x_1925.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2278 : f32 = x_1925.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2280 : f32 = x_1925.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2281 : vec4<f32> = vec4<f32>(x_2274, x_2276, x_2278, x_2280);
  let x_2287 : vec4<bool> = (vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2281.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2287.x, x_2287.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2299 : u32 = u_xlatu_loop_1;
    let x_2300 : u32 = u_xlatu80;
    if ((x_2299 < x_2300)) {
    } else {
      break;
    }
    let x_2303 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_2303 >> 2u);
    let x_2306 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_2306 & 3u));
    let x_2309 : u32 = u_xlatu59;
    let x_2312 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_2309)];
    let x_2322 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2327 : vec4<u32> = indexable[x_2322];
    u_xlat59.x = dot(x_2312, bitcast<vec4<f32>>(x_2327));
    let x_2333 : f32 = u_xlat59.x;
    u_xlati59 = i32(x_2333);
    let x_2335 : vec3<f32> = vs_TEXCOORD1;
    let x_2346 : i32 = u_xlati59;
    let x_2348 : vec4<f32> = x_2345.x_AdditionalLightsPosition[x_2346];
    let x_2351 : i32 = u_xlati59;
    let x_2353 : vec4<f32> = x_2345.x_AdditionalLightsPosition[x_2351];
    let x_2355 : vec3<f32> = ((-(x_2335) * vec3<f32>(x_2348.w, x_2348.w, x_2348.w)) + vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
    let x_2356 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2355.x, x_2355.y, x_2355.z, x_2356.w);
    let x_2358 : vec4<f32> = u_xlat9;
    let x_2360 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_2358.x, x_2358.y, x_2358.z), vec3<f32>(x_2360.x, x_2360.y, x_2360.z));
    let x_2363 : f32 = u_xlat85;
    u_xlat85 = max(x_2363, 0.00006103515625f);
    let x_2367 : f32 = u_xlat85;
    u_xlat87 = inverseSqrt(x_2367);
    let x_2369 : f32 = u_xlat87;
    let x_2371 : vec4<f32> = u_xlat9;
    let x_2373 : vec3<f32> = (vec3<f32>(x_2369, x_2369, x_2369) * vec3<f32>(x_2371.x, x_2371.y, x_2371.z));
    let x_2374 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
    let x_2377 : f32 = u_xlat85;
    u_xlat88 = (1.0f / x_2377);
    let x_2379 : f32 = u_xlat85;
    let x_2380 : i32 = u_xlati59;
    let x_2382 : f32 = x_2345.x_AdditionalLightsAttenuation[x_2380].x;
    u_xlat85 = (x_2379 * x_2382);
    let x_2384 : f32 = u_xlat85;
    let x_2386 : f32 = u_xlat85;
    u_xlat85 = ((-(x_2384) * x_2386) + 1.0f);
    let x_2389 : f32 = u_xlat85;
    u_xlat85 = max(x_2389, 0.0f);
    let x_2391 : f32 = u_xlat85;
    let x_2392 : f32 = u_xlat85;
    u_xlat85 = (x_2391 * x_2392);
    let x_2394 : f32 = u_xlat85;
    let x_2395 : f32 = u_xlat88;
    u_xlat85 = (x_2394 * x_2395);
    let x_2397 : i32 = u_xlati59;
    let x_2399 : vec4<f32> = x_2345.x_AdditionalLightsSpotDir[x_2397];
    let x_2401 : vec4<f32> = u_xlat10;
    u_xlat88 = dot(vec3<f32>(x_2399.x, x_2399.y, x_2399.z), vec3<f32>(x_2401.x, x_2401.y, x_2401.z));
    let x_2404 : f32 = u_xlat88;
    let x_2405 : i32 = u_xlati59;
    let x_2407 : f32 = x_2345.x_AdditionalLightsAttenuation[x_2405].z;
    let x_2409 : i32 = u_xlati59;
    let x_2411 : f32 = x_2345.x_AdditionalLightsAttenuation[x_2409].w;
    u_xlat88 = ((x_2404 * x_2407) + x_2411);
    let x_2413 : f32 = u_xlat88;
    u_xlat88 = clamp(x_2413, 0.0f, 1.0f);
    let x_2415 : f32 = u_xlat88;
    let x_2416 : f32 = u_xlat88;
    u_xlat88 = (x_2415 * x_2416);
    let x_2418 : f32 = u_xlat85;
    let x_2419 : f32 = u_xlat88;
    u_xlat85 = (x_2418 * x_2419);
    let x_2423 : i32 = u_xlati59;
    let x_2425 : f32 = x_196.x_AdditionalShadowParams[x_2423].w;
    u_xlati88 = i32(x_2425);
    let x_2430 : i32 = u_xlati88;
    u_xlatb11.x = (x_2430 >= 0i);
    let x_2434 : bool = u_xlatb11.x;
    if (x_2434) {
      let x_2438 : i32 = u_xlati59;
      let x_2440 : f32 = x_196.x_AdditionalShadowParams[x_2438].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2440, x_2440, x_2440, x_2440))));
      let x_2446 : bool = u_xlatb11.x;
      if (x_2446) {
        let x_2449 : vec4<f32> = u_xlat10;
        let x_2452 : vec4<f32> = u_xlat10;
        let x_2455 : vec4<bool> = (abs(vec4<f32>(x_2449.z, x_2449.z, x_2449.y, x_2449.z)) >= abs(vec4<f32>(x_2452.x, x_2452.y, x_2452.x, x_2452.x)));
        u_xlatb11 = vec3<bool>(x_2455.x, x_2455.y, x_2455.z);
        let x_2458 : bool = u_xlatb11.y;
        let x_2460 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_2458 & x_2460);
        let x_2464 : vec4<f32> = u_xlat10;
        let x_2467 : vec4<bool> = (-(vec4<f32>(x_2464.z, x_2464.y, x_2464.x, x_2464.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_2467.x, x_2467.y, x_2467.z);
        let x_2471 : bool = u_xlatb12.x;
        u_xlat37.x = select(4.0f, 5.0f, x_2471);
        let x_2476 : bool = u_xlatb12.y;
        u_xlat37.z = select(2.0f, 3.0f, x_2476);
        let x_2480 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_2480);
        let x_2485 : bool = u_xlatb11.z;
        if (x_2485) {
          let x_2490 : f32 = u_xlat37.z;
          x_2486 = x_2490;
        } else {
          let x_2493 : f32 = u_xlat12.x;
          x_2486 = x_2493;
        }
        let x_2494 : f32 = x_2486;
        u_xlat63 = x_2494;
        let x_2496 : bool = u_xlatb11.x;
        if (x_2496) {
          let x_2501 : f32 = u_xlat37.x;
          x_2497 = x_2501;
        } else {
          let x_2503 : f32 = u_xlat63;
          x_2497 = x_2503;
        }
        let x_2504 : f32 = x_2497;
        u_xlat11.x = x_2504;
        let x_2506 : i32 = u_xlati59;
        let x_2508 : f32 = x_196.x_AdditionalShadowParams[x_2506].w;
        u_xlat37.x = trunc(x_2508);
        let x_2512 : f32 = u_xlat11.x;
        let x_2514 : f32 = u_xlat37.x;
        u_xlat11.x = (x_2512 + x_2514);
        let x_2518 : f32 = u_xlat11.x;
        u_xlati88 = i32(x_2518);
      }
      let x_2520 : i32 = u_xlati88;
      u_xlati88 = (x_2520 << bitcast<u32>(2i));
      let x_2522 : vec3<f32> = vs_TEXCOORD1;
      let x_2525 : i32 = u_xlati88;
      let x_2528 : i32 = u_xlati88;
      let x_2532 : vec4<f32> = x_196.x_AdditionalLightsWorldToShadow[((x_2525 + 1i) / 4i)][((x_2528 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2522.y, x_2522.y, x_2522.y, x_2522.y) * x_2532);
      let x_2534 : i32 = u_xlati88;
      let x_2536 : i32 = u_xlati88;
      let x_2539 : vec4<f32> = x_196.x_AdditionalLightsWorldToShadow[(x_2534 / 4i)][(x_2536 % 4i)];
      let x_2540 : vec3<f32> = vs_TEXCOORD1;
      let x_2543 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2539 * vec4<f32>(x_2540.x, x_2540.x, x_2540.x, x_2540.x)) + x_2543);
      let x_2545 : i32 = u_xlati88;
      let x_2548 : i32 = u_xlati88;
      let x_2552 : vec4<f32> = x_196.x_AdditionalLightsWorldToShadow[((x_2545 + 2i) / 4i)][((x_2548 + 2i) % 4i)];
      let x_2553 : vec3<f32> = vs_TEXCOORD1;
      let x_2556 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2552 * vec4<f32>(x_2553.z, x_2553.z, x_2553.z, x_2553.z)) + x_2556);
      let x_2558 : vec4<f32> = u_xlat11;
      let x_2559 : i32 = u_xlati88;
      let x_2562 : i32 = u_xlati88;
      let x_2566 : vec4<f32> = x_196.x_AdditionalLightsWorldToShadow[((x_2559 + 3i) / 4i)][((x_2562 + 3i) % 4i)];
      u_xlat11 = (x_2558 + x_2566);
      let x_2568 : vec4<f32> = u_xlat11;
      let x_2570 : vec4<f32> = u_xlat11;
      let x_2572 : vec3<f32> = (vec3<f32>(x_2568.x, x_2568.y, x_2568.z) / vec3<f32>(x_2570.w, x_2570.w, x_2570.w));
      let x_2573 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2573.w);
      let x_2576 : i32 = u_xlati59;
      let x_2578 : f32 = x_196.x_AdditionalShadowParams[x_2576].y;
      u_xlatb88 = (0.0f < x_2578);
      let x_2580 : bool = u_xlatb88;
      if (x_2580) {
        let x_2583 : i32 = u_xlati59;
        let x_2585 : f32 = x_196.x_AdditionalShadowParams[x_2583].y;
        u_xlatb88 = (1.0f == x_2585);
        let x_2587 : bool = u_xlatb88;
        if (x_2587) {
          let x_2590 : vec4<f32> = u_xlat11;
          let x_2593 : vec4<f32> = x_196.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2590.x, x_2590.y, x_2590.x, x_2590.y) + x_2593);
          let x_2596 : vec4<f32> = u_xlat12;
          let x_2597 : vec2<f32> = vec2<f32>(x_2596.x, x_2596.y);
          let x_2599 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2597.x, x_2597.y, x_2599);
          let x_2607 : vec3<f32> = txVec30;
          let x_2609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2607.xy, x_2607.z);
          u_xlat13.x = x_2609;
          let x_2612 : vec4<f32> = u_xlat12;
          let x_2613 : vec2<f32> = vec2<f32>(x_2612.z, x_2612.w);
          let x_2615 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2613.x, x_2613.y, x_2615);
          let x_2622 : vec3<f32> = txVec31;
          let x_2624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2622.xy, x_2622.z);
          u_xlat13.y = x_2624;
          let x_2626 : vec4<f32> = u_xlat11;
          let x_2630 : vec4<f32> = x_196.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2626.x, x_2626.y, x_2626.x, x_2626.y) + x_2630);
          let x_2633 : vec4<f32> = u_xlat12;
          let x_2634 : vec2<f32> = vec2<f32>(x_2633.x, x_2633.y);
          let x_2636 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2634.x, x_2634.y, x_2636);
          let x_2643 : vec3<f32> = txVec32;
          let x_2645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2643.xy, x_2643.z);
          u_xlat13.z = x_2645;
          let x_2648 : vec4<f32> = u_xlat12;
          let x_2649 : vec2<f32> = vec2<f32>(x_2648.z, x_2648.w);
          let x_2651 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2649.x, x_2649.y, x_2651);
          let x_2658 : vec3<f32> = txVec33;
          let x_2660 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2658.xy, x_2658.z);
          u_xlat13.w = x_2660;
          let x_2662 : vec4<f32> = u_xlat13;
          u_xlat88 = dot(x_2662, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2666 : i32 = u_xlati59;
          let x_2668 : f32 = x_196.x_AdditionalShadowParams[x_2666].y;
          u_xlatb89 = (2.0f == x_2668);
          let x_2670 : bool = u_xlatb89;
          if (x_2670) {
            let x_2673 : vec4<f32> = u_xlat11;
            let x_2677 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2680 : vec2<f32> = ((vec2<f32>(x_2673.x, x_2673.y) * vec2<f32>(x_2677.z, x_2677.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2681 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2680.x, x_2680.y, x_2681.z, x_2681.w);
            let x_2683 : vec4<f32> = u_xlat12;
            let x_2685 : vec2<f32> = floor(vec2<f32>(x_2683.x, x_2683.y));
            let x_2686 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2685.x, x_2685.y, x_2686.z, x_2686.w);
            let x_2689 : vec4<f32> = u_xlat11;
            let x_2692 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2695 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(x_2692.z, x_2692.w)) + -(vec2<f32>(x_2695.x, x_2695.y)));
            let x_2699 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2699.x, x_2699.x, x_2699.y, x_2699.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2702 : vec4<f32> = u_xlat13;
            let x_2704 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2702.x, x_2702.x, x_2702.z, x_2702.z) * vec4<f32>(x_2704.x, x_2704.x, x_2704.z, x_2704.z));
            let x_2707 : vec4<f32> = u_xlat14;
            let x_2709 : vec2<f32> = (vec2<f32>(x_2707.y, x_2707.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2710 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2709.x, x_2710.y, x_2709.y, x_2710.w);
            let x_2712 : vec4<f32> = u_xlat14;
            let x_2715 : vec2<f32> = u_xlat64;
            let x_2717 : vec2<f32> = ((vec2<f32>(x_2712.x, x_2712.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2715));
            let x_2718 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2717.x, x_2717.y, x_2718.z, x_2718.w);
            let x_2721 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2721) + vec2<f32>(1.0f, 1.0f));
            let x_2724 : vec2<f32> = u_xlat64;
            let x_2725 : vec2<f32> = min(x_2724, vec2<f32>(0.0f, 0.0f));
            let x_2726 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2725.x, x_2725.y, x_2726.z, x_2726.w);
            let x_2728 : vec4<f32> = u_xlat15;
            let x_2731 : vec4<f32> = u_xlat15;
            let x_2734 : vec2<f32> = u_xlat66;
            let x_2735 : vec2<f32> = ((-(vec2<f32>(x_2728.x, x_2728.y)) * vec2<f32>(x_2731.x, x_2731.y)) + x_2734);
            let x_2736 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2735.x, x_2735.y, x_2736.z, x_2736.w);
            let x_2738 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2738, vec2<f32>(0.0f, 0.0f));
            let x_2740 : vec2<f32> = u_xlat64;
            let x_2742 : vec2<f32> = u_xlat64;
            let x_2744 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2740) * x_2742) + vec2<f32>(x_2744.y, x_2744.w));
            let x_2747 : vec4<f32> = u_xlat15;
            let x_2749 : vec2<f32> = (vec2<f32>(x_2747.x, x_2747.y) + vec2<f32>(1.0f, 1.0f));
            let x_2750 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2749.x, x_2749.y, x_2750.z, x_2750.w);
            let x_2752 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2752 + vec2<f32>(1.0f, 1.0f));
            let x_2754 : vec4<f32> = u_xlat14;
            let x_2756 : vec2<f32> = (vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2757 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2756.x, x_2756.y, x_2757.z, x_2757.w);
            let x_2759 : vec2<f32> = u_xlat66;
            let x_2760 : vec2<f32> = (x_2759 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2761 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
            let x_2763 : vec4<f32> = u_xlat15;
            let x_2765 : vec2<f32> = (vec2<f32>(x_2763.x, x_2763.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2766 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2765.x, x_2765.y, x_2766.z, x_2766.w);
            let x_2768 : vec2<f32> = u_xlat64;
            let x_2769 : vec2<f32> = (x_2768 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2770 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2769.x, x_2769.y, x_2770.z, x_2770.w);
            let x_2772 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2772.y, x_2772.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2776 : f32 = u_xlat15.x;
            u_xlat16.z = x_2776;
            let x_2779 : f32 = u_xlat64.x;
            u_xlat16.w = x_2779;
            let x_2782 : f32 = u_xlat17.x;
            u_xlat14.z = x_2782;
            let x_2785 : f32 = u_xlat13.x;
            u_xlat14.w = x_2785;
            let x_2787 : vec4<f32> = u_xlat14;
            let x_2789 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2787.z, x_2787.w, x_2787.x, x_2787.z) + vec4<f32>(x_2789.z, x_2789.w, x_2789.x, x_2789.z));
            let x_2793 : f32 = u_xlat16.y;
            u_xlat15.z = x_2793;
            let x_2796 : f32 = u_xlat64.y;
            u_xlat15.w = x_2796;
            let x_2799 : f32 = u_xlat14.y;
            u_xlat17.z = x_2799;
            let x_2802 : f32 = u_xlat13.z;
            u_xlat17.w = x_2802;
            let x_2804 : vec4<f32> = u_xlat15;
            let x_2806 : vec4<f32> = u_xlat17;
            let x_2808 : vec3<f32> = (vec3<f32>(x_2804.z, x_2804.y, x_2804.w) + vec3<f32>(x_2806.z, x_2806.y, x_2806.w));
            let x_2809 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2808.x, x_2808.y, x_2808.z, x_2809.w);
            let x_2811 : vec4<f32> = u_xlat14;
            let x_2813 : vec4<f32> = u_xlat18;
            let x_2815 : vec3<f32> = (vec3<f32>(x_2811.x, x_2811.z, x_2811.w) / vec3<f32>(x_2813.z, x_2813.w, x_2813.y));
            let x_2816 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2816.w);
            let x_2818 : vec4<f32> = u_xlat14;
            let x_2820 : vec3<f32> = (vec3<f32>(x_2818.x, x_2818.y, x_2818.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2821 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2820.x, x_2820.y, x_2820.z, x_2821.w);
            let x_2823 : vec4<f32> = u_xlat17;
            let x_2825 : vec4<f32> = u_xlat13;
            let x_2827 : vec3<f32> = (vec3<f32>(x_2823.z, x_2823.y, x_2823.w) / vec3<f32>(x_2825.x, x_2825.y, x_2825.z));
            let x_2828 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2828.w);
            let x_2830 : vec4<f32> = u_xlat15;
            let x_2832 : vec3<f32> = (vec3<f32>(x_2830.x, x_2830.y, x_2830.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2833 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2833.w);
            let x_2835 : vec4<f32> = u_xlat14;
            let x_2838 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2840 : vec3<f32> = (vec3<f32>(x_2835.y, x_2835.x, x_2835.z) * vec3<f32>(x_2838.x, x_2838.x, x_2838.x));
            let x_2841 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
            let x_2843 : vec4<f32> = u_xlat15;
            let x_2846 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2848 : vec3<f32> = (vec3<f32>(x_2843.x, x_2843.y, x_2843.z) * vec3<f32>(x_2846.y, x_2846.y, x_2846.y));
            let x_2849 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2849.w);
            let x_2852 : f32 = u_xlat15.x;
            u_xlat14.w = x_2852;
            let x_2854 : vec4<f32> = u_xlat12;
            let x_2857 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2860 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2854.x, x_2854.y, x_2854.x, x_2854.y) * vec4<f32>(x_2857.x, x_2857.y, x_2857.x, x_2857.y)) + vec4<f32>(x_2860.y, x_2860.w, x_2860.x, x_2860.w));
            let x_2863 : vec4<f32> = u_xlat12;
            let x_2866 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2869 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2863.x, x_2863.y) * vec2<f32>(x_2866.x, x_2866.y)) + vec2<f32>(x_2869.z, x_2869.w));
            let x_2873 : f32 = u_xlat14.y;
            u_xlat15.w = x_2873;
            let x_2875 : vec4<f32> = u_xlat15;
            let x_2876 : vec2<f32> = vec2<f32>(x_2875.y, x_2875.z);
            let x_2877 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2877.x, x_2876.x, x_2877.z, x_2876.y);
            let x_2879 : vec4<f32> = u_xlat12;
            let x_2882 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2885 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y) * vec4<f32>(x_2882.x, x_2882.y, x_2882.x, x_2882.y)) + vec4<f32>(x_2885.x, x_2885.y, x_2885.z, x_2885.y));
            let x_2888 : vec4<f32> = u_xlat12;
            let x_2891 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2894 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y) * vec4<f32>(x_2891.x, x_2891.y, x_2891.x, x_2891.y)) + vec4<f32>(x_2894.w, x_2894.y, x_2894.w, x_2894.z));
            let x_2897 : vec4<f32> = u_xlat12;
            let x_2900 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_2903 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2897.x, x_2897.y, x_2897.x, x_2897.y) * vec4<f32>(x_2900.x, x_2900.y, x_2900.x, x_2900.y)) + vec4<f32>(x_2903.x, x_2903.w, x_2903.z, x_2903.w));
            let x_2906 : vec4<f32> = u_xlat13;
            let x_2908 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2906.x, x_2906.x, x_2906.x, x_2906.y) * vec4<f32>(x_2908.z, x_2908.w, x_2908.y, x_2908.z));
            let x_2911 : vec4<f32> = u_xlat13;
            let x_2913 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2911.y, x_2911.y, x_2911.z, x_2911.z) * x_2913);
            let x_2917 : f32 = u_xlat13.z;
            let x_2919 : f32 = u_xlat18.y;
            u_xlat89 = (x_2917 * x_2919);
            let x_2922 : vec4<f32> = u_xlat16;
            let x_2923 : vec2<f32> = vec2<f32>(x_2922.x, x_2922.y);
            let x_2925 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2923.x, x_2923.y, x_2925);
            let x_2932 : vec3<f32> = txVec34;
            let x_2934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2932.xy, x_2932.z);
            u_xlat12.x = x_2934;
            let x_2937 : vec4<f32> = u_xlat16;
            let x_2938 : vec2<f32> = vec2<f32>(x_2937.z, x_2937.w);
            let x_2940 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
            let x_2948 : vec3<f32> = txVec35;
            let x_2950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
            u_xlat38 = x_2950;
            let x_2951 : f32 = u_xlat38;
            let x_2953 : f32 = u_xlat19.y;
            u_xlat38 = (x_2951 * x_2953);
            let x_2956 : f32 = u_xlat19.x;
            let x_2958 : f32 = u_xlat12.x;
            let x_2960 : f32 = u_xlat38;
            u_xlat12.x = ((x_2956 * x_2958) + x_2960);
            let x_2964 : vec2<f32> = u_xlat64;
            let x_2966 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
            let x_2973 : vec3<f32> = txVec36;
            let x_2975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
            u_xlat38 = x_2975;
            let x_2977 : f32 = u_xlat19.z;
            let x_2978 : f32 = u_xlat38;
            let x_2981 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2977 * x_2978) + x_2981);
            let x_2985 : vec4<f32> = u_xlat15;
            let x_2986 : vec2<f32> = vec2<f32>(x_2985.x, x_2985.y);
            let x_2988 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
            let x_2995 : vec3<f32> = txVec37;
            let x_2997 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
            u_xlat38 = x_2997;
            let x_2999 : f32 = u_xlat19.w;
            let x_3000 : f32 = u_xlat38;
            let x_3003 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2999 * x_3000) + x_3003);
            let x_3007 : vec4<f32> = u_xlat17;
            let x_3008 : vec2<f32> = vec2<f32>(x_3007.x, x_3007.y);
            let x_3010 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
            let x_3017 : vec3<f32> = txVec38;
            let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
            u_xlat38 = x_3019;
            let x_3021 : f32 = u_xlat20.x;
            let x_3022 : f32 = u_xlat38;
            let x_3025 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_3021 * x_3022) + x_3025);
            let x_3029 : vec4<f32> = u_xlat17;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.z, x_3029.w);
            let x_3032 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec39;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat38 = x_3041;
            let x_3043 : f32 = u_xlat20.y;
            let x_3044 : f32 = u_xlat38;
            let x_3047 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_3043 * x_3044) + x_3047);
            let x_3051 : vec4<f32> = u_xlat15;
            let x_3052 : vec2<f32> = vec2<f32>(x_3051.z, x_3051.w);
            let x_3054 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3052.x, x_3052.y, x_3054);
            let x_3061 : vec3<f32> = txVec40;
            let x_3063 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3061.xy, x_3061.z);
            u_xlat38 = x_3063;
            let x_3065 : f32 = u_xlat20.z;
            let x_3066 : f32 = u_xlat38;
            let x_3069 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_3065 * x_3066) + x_3069);
            let x_3073 : vec4<f32> = u_xlat14;
            let x_3074 : vec2<f32> = vec2<f32>(x_3073.x, x_3073.y);
            let x_3076 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
            let x_3083 : vec3<f32> = txVec41;
            let x_3085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
            u_xlat38 = x_3085;
            let x_3087 : f32 = u_xlat20.w;
            let x_3088 : f32 = u_xlat38;
            let x_3091 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_3087 * x_3088) + x_3091);
            let x_3095 : vec4<f32> = u_xlat14;
            let x_3096 : vec2<f32> = vec2<f32>(x_3095.z, x_3095.w);
            let x_3098 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3096.x, x_3096.y, x_3098);
            let x_3105 : vec3<f32> = txVec42;
            let x_3107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3105.xy, x_3105.z);
            u_xlat38 = x_3107;
            let x_3108 : f32 = u_xlat89;
            let x_3109 : f32 = u_xlat38;
            let x_3112 : f32 = u_xlat12.x;
            u_xlat88 = ((x_3108 * x_3109) + x_3112);
          } else {
            let x_3115 : vec4<f32> = u_xlat11;
            let x_3118 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3121 : vec2<f32> = ((vec2<f32>(x_3115.x, x_3115.y) * vec2<f32>(x_3118.z, x_3118.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3122 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3121.x, x_3121.y, x_3122.z, x_3122.w);
            let x_3124 : vec4<f32> = u_xlat12;
            let x_3126 : vec2<f32> = floor(vec2<f32>(x_3124.x, x_3124.y));
            let x_3127 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3126.x, x_3126.y, x_3127.z, x_3127.w);
            let x_3129 : vec4<f32> = u_xlat11;
            let x_3132 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3135 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3129.x, x_3129.y) * vec2<f32>(x_3132.z, x_3132.w)) + -(vec2<f32>(x_3135.x, x_3135.y)));
            let x_3139 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3139.x, x_3139.x, x_3139.y, x_3139.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3142 : vec4<f32> = u_xlat13;
            let x_3144 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3142.x, x_3142.x, x_3142.z, x_3142.z) * vec4<f32>(x_3144.x, x_3144.x, x_3144.z, x_3144.z));
            let x_3147 : vec4<f32> = u_xlat14;
            let x_3149 : vec2<f32> = (vec2<f32>(x_3147.y, x_3147.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3150 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3150.x, x_3149.x, x_3150.z, x_3149.y);
            let x_3152 : vec4<f32> = u_xlat14;
            let x_3155 : vec2<f32> = u_xlat64;
            let x_3157 : vec2<f32> = ((vec2<f32>(x_3152.x, x_3152.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3155));
            let x_3158 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3157.x, x_3158.y, x_3157.y, x_3158.w);
            let x_3160 : vec2<f32> = u_xlat64;
            let x_3162 : vec2<f32> = (-(x_3160) + vec2<f32>(1.0f, 1.0f));
            let x_3163 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3162.x, x_3162.y, x_3163.z, x_3163.w);
            let x_3165 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3165, vec2<f32>(0.0f, 0.0f));
            let x_3167 : vec2<f32> = u_xlat66;
            let x_3169 : vec2<f32> = u_xlat66;
            let x_3171 : vec4<f32> = u_xlat14;
            let x_3173 : vec2<f32> = ((-(x_3167) * x_3169) + vec2<f32>(x_3171.x, x_3171.y));
            let x_3174 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3173.x, x_3173.y, x_3174.z, x_3174.w);
            let x_3176 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3176, vec2<f32>(0.0f, 0.0f));
            let x_3179 : vec2<f32> = u_xlat66;
            let x_3181 : vec2<f32> = u_xlat66;
            let x_3183 : vec4<f32> = u_xlat13;
            let x_3185 : vec2<f32> = ((-(x_3179) * x_3181) + vec2<f32>(x_3183.y, x_3183.w));
            let x_3186 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3185.x, x_3186.y, x_3185.y);
            let x_3188 : vec4<f32> = u_xlat14;
            let x_3191 : vec2<f32> = (vec2<f32>(x_3188.x, x_3188.y) + vec2<f32>(2.0f, 2.0f));
            let x_3192 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3191.x, x_3191.y, x_3192.z, x_3192.w);
            let x_3194 : vec3<f32> = u_xlat39;
            let x_3196 : vec2<f32> = (vec2<f32>(x_3194.x, x_3194.z) + vec2<f32>(2.0f, 2.0f));
            let x_3197 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3197.x, x_3196.x, x_3197.z, x_3196.y);
            let x_3200 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3200 * 0.08163200318813323975f);
            let x_3203 : vec4<f32> = u_xlat13;
            let x_3206 : vec3<f32> = (vec3<f32>(x_3203.z, x_3203.x, x_3203.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3207 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3206.x, x_3206.y, x_3206.z, x_3207.w);
            let x_3209 : vec4<f32> = u_xlat14;
            let x_3211 : vec2<f32> = (vec2<f32>(x_3209.x, x_3209.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3212 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3211.x, x_3211.y, x_3212.z, x_3212.w);
            let x_3215 : f32 = u_xlat17.y;
            u_xlat16.x = x_3215;
            let x_3217 : vec2<f32> = u_xlat64;
            let x_3220 : vec2<f32> = ((vec2<f32>(x_3217.x, x_3217.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3221 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3221.x, x_3220.x, x_3221.z, x_3220.y);
            let x_3223 : vec2<f32> = u_xlat64;
            let x_3226 : vec2<f32> = ((vec2<f32>(x_3223.x, x_3223.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3227 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3226.x, x_3227.y, x_3226.y, x_3227.w);
            let x_3230 : f32 = u_xlat13.x;
            u_xlat14.y = x_3230;
            let x_3233 : f32 = u_xlat15.y;
            u_xlat14.w = x_3233;
            let x_3235 : vec4<f32> = u_xlat14;
            let x_3236 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3235 + x_3236);
            let x_3238 : vec2<f32> = u_xlat64;
            let x_3241 : vec2<f32> = ((vec2<f32>(x_3238.y, x_3238.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3242 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3242.x, x_3241.x, x_3242.z, x_3241.y);
            let x_3244 : vec2<f32> = u_xlat64;
            let x_3247 : vec2<f32> = ((vec2<f32>(x_3244.y, x_3244.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3248 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3247.x, x_3248.y, x_3247.y, x_3248.w);
            let x_3251 : f32 = u_xlat13.y;
            u_xlat15.y = x_3251;
            let x_3253 : vec4<f32> = u_xlat15;
            let x_3254 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3253 + x_3254);
            let x_3256 : vec4<f32> = u_xlat14;
            let x_3257 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3256 / x_3257);
            let x_3259 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3259 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3261 : vec4<f32> = u_xlat15;
            let x_3262 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3261 / x_3262);
            let x_3264 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3264 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3266 : vec4<f32> = u_xlat14;
            let x_3269 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3266.w, x_3266.x, x_3266.y, x_3266.z) * vec4<f32>(x_3269.x, x_3269.x, x_3269.x, x_3269.x));
            let x_3272 : vec4<f32> = u_xlat15;
            let x_3275 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3272.x, x_3272.w, x_3272.y, x_3272.z) * vec4<f32>(x_3275.y, x_3275.y, x_3275.y, x_3275.y));
            let x_3278 : vec4<f32> = u_xlat14;
            let x_3279 : vec3<f32> = vec3<f32>(x_3278.y, x_3278.z, x_3278.w);
            let x_3280 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3279.x, x_3280.y, x_3279.y, x_3279.z);
            let x_3283 : f32 = u_xlat15.x;
            u_xlat17.y = x_3283;
            let x_3285 : vec4<f32> = u_xlat12;
            let x_3288 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3291 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3285.x, x_3285.y, x_3285.x, x_3285.y) * vec4<f32>(x_3288.x, x_3288.y, x_3288.x, x_3288.y)) + vec4<f32>(x_3291.x, x_3291.y, x_3291.z, x_3291.y));
            let x_3294 : vec4<f32> = u_xlat12;
            let x_3297 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3300 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3294.x, x_3294.y) * vec2<f32>(x_3297.x, x_3297.y)) + vec2<f32>(x_3300.w, x_3300.y));
            let x_3304 : f32 = u_xlat17.y;
            u_xlat14.y = x_3304;
            let x_3307 : f32 = u_xlat15.z;
            u_xlat17.y = x_3307;
            let x_3309 : vec4<f32> = u_xlat12;
            let x_3312 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3315 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3309.x, x_3309.y, x_3309.x, x_3309.y) * vec4<f32>(x_3312.x, x_3312.y, x_3312.x, x_3312.y)) + vec4<f32>(x_3315.x, x_3315.y, x_3315.z, x_3315.y));
            let x_3318 : vec4<f32> = u_xlat12;
            let x_3321 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3324 : vec4<f32> = u_xlat17;
            let x_3326 : vec2<f32> = ((vec2<f32>(x_3318.x, x_3318.y) * vec2<f32>(x_3321.x, x_3321.y)) + vec2<f32>(x_3324.w, x_3324.y));
            let x_3327 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3326.x, x_3326.y, x_3327.z, x_3327.w);
            let x_3330 : f32 = u_xlat17.y;
            u_xlat14.z = x_3330;
            let x_3333 : vec4<f32> = u_xlat12;
            let x_3336 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3339 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3333.x, x_3333.y, x_3333.x, x_3333.y) * vec4<f32>(x_3336.x, x_3336.y, x_3336.x, x_3336.y)) + vec4<f32>(x_3339.x, x_3339.y, x_3339.x, x_3339.z));
            let x_3343 : f32 = u_xlat15.w;
            u_xlat17.y = x_3343;
            let x_3346 : vec4<f32> = u_xlat12;
            let x_3349 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3352 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3346.x, x_3346.y, x_3346.x, x_3346.y) * vec4<f32>(x_3349.x, x_3349.y, x_3349.x, x_3349.y)) + vec4<f32>(x_3352.x, x_3352.y, x_3352.z, x_3352.y));
            let x_3356 : vec4<f32> = u_xlat12;
            let x_3359 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3362 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3356.x, x_3356.y) * vec2<f32>(x_3359.x, x_3359.y)) + vec2<f32>(x_3362.w, x_3362.y));
            let x_3366 : f32 = u_xlat17.y;
            u_xlat14.w = x_3366;
            let x_3369 : vec4<f32> = u_xlat12;
            let x_3372 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3375 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3369.x, x_3369.y) * vec2<f32>(x_3372.x, x_3372.y)) + vec2<f32>(x_3375.x, x_3375.w));
            let x_3378 : vec4<f32> = u_xlat17;
            let x_3379 : vec3<f32> = vec3<f32>(x_3378.x, x_3378.z, x_3378.w);
            let x_3380 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3379.x, x_3380.y, x_3379.y, x_3379.z);
            let x_3382 : vec4<f32> = u_xlat12;
            let x_3385 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3388 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3382.x, x_3382.y, x_3382.x, x_3382.y) * vec4<f32>(x_3385.x, x_3385.y, x_3385.x, x_3385.y)) + vec4<f32>(x_3388.x, x_3388.y, x_3388.z, x_3388.y));
            let x_3392 : vec4<f32> = u_xlat12;
            let x_3395 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3398 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3392.x, x_3392.y) * vec2<f32>(x_3395.x, x_3395.y)) + vec2<f32>(x_3398.w, x_3398.y));
            let x_3402 : f32 = u_xlat14.x;
            u_xlat15.x = x_3402;
            let x_3404 : vec4<f32> = u_xlat12;
            let x_3407 : vec4<f32> = x_196.x_AdditionalShadowmapSize;
            let x_3410 : vec4<f32> = u_xlat15;
            let x_3412 : vec2<f32> = ((vec2<f32>(x_3404.x, x_3404.y) * vec2<f32>(x_3407.x, x_3407.y)) + vec2<f32>(x_3410.x, x_3410.y));
            let x_3413 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3412.x, x_3412.y, x_3413.z, x_3413.w);
            let x_3416 : vec4<f32> = u_xlat13;
            let x_3418 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3416.x, x_3416.x, x_3416.x, x_3416.x) * x_3418);
            let x_3421 : vec4<f32> = u_xlat13;
            let x_3423 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3421.y, x_3421.y, x_3421.y, x_3421.y) * x_3423);
            let x_3426 : vec4<f32> = u_xlat13;
            let x_3428 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3426.z, x_3426.z, x_3426.z, x_3426.z) * x_3428);
            let x_3430 : vec4<f32> = u_xlat13;
            let x_3432 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3430.w, x_3430.w, x_3430.w, x_3430.w) * x_3432);
            let x_3435 : vec4<f32> = u_xlat18;
            let x_3436 : vec2<f32> = vec2<f32>(x_3435.x, x_3435.y);
            let x_3438 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3436.x, x_3436.y, x_3438);
            let x_3445 : vec3<f32> = txVec43;
            let x_3447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3445.xy, x_3445.z);
            u_xlat89 = x_3447;
            let x_3449 : vec4<f32> = u_xlat18;
            let x_3450 : vec2<f32> = vec2<f32>(x_3449.z, x_3449.w);
            let x_3452 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3450.x, x_3450.y, x_3452);
            let x_3459 : vec3<f32> = txVec44;
            let x_3461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3459.xy, x_3459.z);
            u_xlat14.x = x_3461;
            let x_3464 : f32 = u_xlat14.x;
            let x_3466 : f32 = u_xlat23.y;
            u_xlat14.x = (x_3464 * x_3466);
            let x_3470 : f32 = u_xlat23.x;
            let x_3471 : f32 = u_xlat89;
            let x_3474 : f32 = u_xlat14.x;
            u_xlat89 = ((x_3470 * x_3471) + x_3474);
            let x_3477 : vec2<f32> = u_xlat64;
            let x_3479 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3477.x, x_3477.y, x_3479);
            let x_3486 : vec3<f32> = txVec45;
            let x_3488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3486.xy, x_3486.z);
            u_xlat64.x = x_3488;
            let x_3491 : f32 = u_xlat23.z;
            let x_3493 : f32 = u_xlat64.x;
            let x_3495 : f32 = u_xlat89;
            u_xlat89 = ((x_3491 * x_3493) + x_3495);
            let x_3498 : vec4<f32> = u_xlat21;
            let x_3499 : vec2<f32> = vec2<f32>(x_3498.x, x_3498.y);
            let x_3501 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3499.x, x_3499.y, x_3501);
            let x_3508 : vec3<f32> = txVec46;
            let x_3510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3508.xy, x_3508.z);
            u_xlat64.x = x_3510;
            let x_3513 : f32 = u_xlat23.w;
            let x_3515 : f32 = u_xlat64.x;
            let x_3517 : f32 = u_xlat89;
            u_xlat89 = ((x_3513 * x_3515) + x_3517);
            let x_3520 : vec4<f32> = u_xlat19;
            let x_3521 : vec2<f32> = vec2<f32>(x_3520.x, x_3520.y);
            let x_3523 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3521.x, x_3521.y, x_3523);
            let x_3530 : vec3<f32> = txVec47;
            let x_3532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3530.xy, x_3530.z);
            u_xlat64.x = x_3532;
            let x_3535 : f32 = u_xlat24.x;
            let x_3537 : f32 = u_xlat64.x;
            let x_3539 : f32 = u_xlat89;
            u_xlat89 = ((x_3535 * x_3537) + x_3539);
            let x_3542 : vec4<f32> = u_xlat19;
            let x_3543 : vec2<f32> = vec2<f32>(x_3542.z, x_3542.w);
            let x_3545 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3543.x, x_3543.y, x_3545);
            let x_3552 : vec3<f32> = txVec48;
            let x_3554 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3552.xy, x_3552.z);
            u_xlat64.x = x_3554;
            let x_3557 : f32 = u_xlat24.y;
            let x_3559 : f32 = u_xlat64.x;
            let x_3561 : f32 = u_xlat89;
            u_xlat89 = ((x_3557 * x_3559) + x_3561);
            let x_3564 : vec4<f32> = u_xlat20;
            let x_3565 : vec2<f32> = vec2<f32>(x_3564.x, x_3564.y);
            let x_3567 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3565.x, x_3565.y, x_3567);
            let x_3574 : vec3<f32> = txVec49;
            let x_3576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3574.xy, x_3574.z);
            u_xlat64.x = x_3576;
            let x_3579 : f32 = u_xlat24.z;
            let x_3581 : f32 = u_xlat64.x;
            let x_3583 : f32 = u_xlat89;
            u_xlat89 = ((x_3579 * x_3581) + x_3583);
            let x_3586 : vec4<f32> = u_xlat21;
            let x_3587 : vec2<f32> = vec2<f32>(x_3586.z, x_3586.w);
            let x_3589 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3587.x, x_3587.y, x_3589);
            let x_3596 : vec3<f32> = txVec50;
            let x_3598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3596.xy, x_3596.z);
            u_xlat64.x = x_3598;
            let x_3601 : f32 = u_xlat24.w;
            let x_3603 : f32 = u_xlat64.x;
            let x_3605 : f32 = u_xlat89;
            u_xlat89 = ((x_3601 * x_3603) + x_3605);
            let x_3608 : vec4<f32> = u_xlat22;
            let x_3609 : vec2<f32> = vec2<f32>(x_3608.x, x_3608.y);
            let x_3611 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3609.x, x_3609.y, x_3611);
            let x_3618 : vec3<f32> = txVec51;
            let x_3620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3618.xy, x_3618.z);
            u_xlat64.x = x_3620;
            let x_3623 : f32 = u_xlat25.x;
            let x_3625 : f32 = u_xlat64.x;
            let x_3627 : f32 = u_xlat89;
            u_xlat89 = ((x_3623 * x_3625) + x_3627);
            let x_3630 : vec4<f32> = u_xlat22;
            let x_3631 : vec2<f32> = vec2<f32>(x_3630.z, x_3630.w);
            let x_3633 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
            let x_3640 : vec3<f32> = txVec52;
            let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
            u_xlat64.x = x_3642;
            let x_3645 : f32 = u_xlat25.y;
            let x_3647 : f32 = u_xlat64.x;
            let x_3649 : f32 = u_xlat89;
            u_xlat89 = ((x_3645 * x_3647) + x_3649);
            let x_3652 : vec2<f32> = u_xlat40;
            let x_3654 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3652.x, x_3652.y, x_3654);
            let x_3661 : vec3<f32> = txVec53;
            let x_3663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3661.xy, x_3661.z);
            u_xlat64.x = x_3663;
            let x_3666 : f32 = u_xlat25.z;
            let x_3668 : f32 = u_xlat64.x;
            let x_3670 : f32 = u_xlat89;
            u_xlat89 = ((x_3666 * x_3668) + x_3670);
            let x_3673 : vec2<f32> = u_xlat72;
            let x_3675 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3673.x, x_3673.y, x_3675);
            let x_3682 : vec3<f32> = txVec54;
            let x_3684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3682.xy, x_3682.z);
            u_xlat64.x = x_3684;
            let x_3687 : f32 = u_xlat25.w;
            let x_3689 : f32 = u_xlat64.x;
            let x_3691 : f32 = u_xlat89;
            u_xlat89 = ((x_3687 * x_3689) + x_3691);
            let x_3694 : vec4<f32> = u_xlat17;
            let x_3695 : vec2<f32> = vec2<f32>(x_3694.x, x_3694.y);
            let x_3697 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3695.x, x_3695.y, x_3697);
            let x_3704 : vec3<f32> = txVec55;
            let x_3706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3704.xy, x_3704.z);
            u_xlat64.x = x_3706;
            let x_3709 : f32 = u_xlat13.x;
            let x_3711 : f32 = u_xlat64.x;
            let x_3713 : f32 = u_xlat89;
            u_xlat89 = ((x_3709 * x_3711) + x_3713);
            let x_3716 : vec4<f32> = u_xlat17;
            let x_3717 : vec2<f32> = vec2<f32>(x_3716.z, x_3716.w);
            let x_3719 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3717.x, x_3717.y, x_3719);
            let x_3726 : vec3<f32> = txVec56;
            let x_3728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3726.xy, x_3726.z);
            u_xlat64.x = x_3728;
            let x_3731 : f32 = u_xlat13.y;
            let x_3733 : f32 = u_xlat64.x;
            let x_3735 : f32 = u_xlat89;
            u_xlat89 = ((x_3731 * x_3733) + x_3735);
            let x_3738 : vec2<f32> = u_xlat67;
            let x_3740 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3738.x, x_3738.y, x_3740);
            let x_3747 : vec3<f32> = txVec57;
            let x_3749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3747.xy, x_3747.z);
            u_xlat64.x = x_3749;
            let x_3752 : f32 = u_xlat13.z;
            let x_3754 : f32 = u_xlat64.x;
            let x_3756 : f32 = u_xlat89;
            u_xlat89 = ((x_3752 * x_3754) + x_3756);
            let x_3759 : vec4<f32> = u_xlat12;
            let x_3760 : vec2<f32> = vec2<f32>(x_3759.x, x_3759.y);
            let x_3762 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3760.x, x_3760.y, x_3762);
            let x_3769 : vec3<f32> = txVec58;
            let x_3771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3769.xy, x_3769.z);
            u_xlat12.x = x_3771;
            let x_3774 : f32 = u_xlat13.w;
            let x_3776 : f32 = u_xlat12.x;
            let x_3778 : f32 = u_xlat89;
            u_xlat88 = ((x_3774 * x_3776) + x_3778);
          }
        }
      } else {
        let x_3782 : vec4<f32> = u_xlat11;
        let x_3783 : vec2<f32> = vec2<f32>(x_3782.x, x_3782.y);
        let x_3785 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3783.x, x_3783.y, x_3785);
        let x_3792 : vec3<f32> = txVec59;
        let x_3794 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3792.xy, x_3792.z);
        u_xlat88 = x_3794;
      }
      let x_3795 : i32 = u_xlati59;
      let x_3797 : f32 = x_196.x_AdditionalShadowParams[x_3795].x;
      u_xlat11.x = (1.0f + -(x_3797));
      let x_3801 : f32 = u_xlat88;
      let x_3802 : i32 = u_xlati59;
      let x_3804 : f32 = x_196.x_AdditionalShadowParams[x_3802].x;
      let x_3807 : f32 = u_xlat11.x;
      u_xlat88 = ((x_3801 * x_3804) + x_3807);
      let x_3810 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_3810);
      let x_3815 : f32 = u_xlat11.z;
      u_xlatb37 = (x_3815 >= 1.0f);
      let x_3817 : bool = u_xlatb37;
      let x_3819 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_3817 | x_3819);
      let x_3823 : bool = u_xlatb11.x;
      let x_3824 : f32 = u_xlat88;
      u_xlat88 = select(x_3824, 1.0f, x_3823);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_3827 : f32 = u_xlat88;
    u_xlat11.x = (-(x_3827) + 1.0f);
    let x_3831 : f32 = u_xlat81;
    let x_3833 : f32 = u_xlat11.x;
    let x_3835 : f32 = u_xlat88;
    u_xlat88 = ((x_3831 * x_3833) + x_3835);
    let x_3838 : i32 = u_xlati59;
    u_xlati11 = (1i << bitcast<u32>((x_3838 & 31i)));
    let x_3842 : i32 = u_xlati11;
    let x_3845 : f32 = x_1925.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_3842) & bitcast<u32>(x_3845)));
    let x_3849 : i32 = u_xlati11;
    if ((x_3849 != 0i)) {
      let x_3853 : i32 = u_xlati59;
      let x_3855 : f32 = x_1925.x_AdditionalLightsLightTypes[x_3853].el;
      u_xlati11 = i32(x_3855);
      let x_3858 : i32 = u_xlati11;
      u_xlati37 = select(1i, 0i, (x_3858 != 0i));
      let x_3862 : i32 = u_xlati59;
      u_xlati63 = (x_3862 << bitcast<u32>(2i));
      let x_3864 : i32 = u_xlati37;
      if ((x_3864 != 0i)) {
        let x_3868 : vec3<f32> = vs_TEXCOORD1;
        let x_3870 : i32 = u_xlati63;
        let x_3873 : i32 = u_xlati63;
        let x_3877 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_3870 + 1i) / 4i)][((x_3873 + 1i) % 4i)];
        let x_3879 : vec3<f32> = (vec3<f32>(x_3868.y, x_3868.y, x_3868.y) * vec3<f32>(x_3877.x, x_3877.y, x_3877.w));
        let x_3880 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3879.x, x_3879.y, x_3879.z, x_3880.w);
        let x_3882 : i32 = u_xlati63;
        let x_3884 : i32 = u_xlati63;
        let x_3887 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[(x_3882 / 4i)][(x_3884 % 4i)];
        let x_3889 : vec3<f32> = vs_TEXCOORD1;
        let x_3892 : vec4<f32> = u_xlat12;
        let x_3894 : vec3<f32> = ((vec3<f32>(x_3887.x, x_3887.y, x_3887.w) * vec3<f32>(x_3889.x, x_3889.x, x_3889.x)) + vec3<f32>(x_3892.x, x_3892.y, x_3892.z));
        let x_3895 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3894.x, x_3894.y, x_3894.z, x_3895.w);
        let x_3897 : i32 = u_xlati63;
        let x_3900 : i32 = u_xlati63;
        let x_3904 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_3897 + 2i) / 4i)][((x_3900 + 2i) % 4i)];
        let x_3906 : vec3<f32> = vs_TEXCOORD1;
        let x_3909 : vec4<f32> = u_xlat12;
        let x_3911 : vec3<f32> = ((vec3<f32>(x_3904.x, x_3904.y, x_3904.w) * vec3<f32>(x_3906.z, x_3906.z, x_3906.z)) + vec3<f32>(x_3909.x, x_3909.y, x_3909.z));
        let x_3912 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3911.x, x_3911.y, x_3911.z, x_3912.w);
        let x_3914 : vec4<f32> = u_xlat12;
        let x_3916 : i32 = u_xlati63;
        let x_3919 : i32 = u_xlati63;
        let x_3923 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_3916 + 3i) / 4i)][((x_3919 + 3i) % 4i)];
        let x_3925 : vec3<f32> = (vec3<f32>(x_3914.x, x_3914.y, x_3914.z) + vec3<f32>(x_3923.x, x_3923.y, x_3923.w));
        let x_3926 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3925.x, x_3925.y, x_3925.z, x_3926.w);
        let x_3928 : vec4<f32> = u_xlat12;
        let x_3930 : vec4<f32> = u_xlat12;
        let x_3932 : vec2<f32> = (vec2<f32>(x_3928.x, x_3928.y) / vec2<f32>(x_3930.z, x_3930.z));
        let x_3933 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3932.x, x_3933.y, x_3932.y);
        let x_3935 : vec3<f32> = u_xlat37;
        let x_3938 : vec2<f32> = ((vec2<f32>(x_3935.x, x_3935.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3939 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3938.x, x_3939.y, x_3938.y);
        let x_3941 : vec3<f32> = u_xlat37;
        let x_3945 : vec2<f32> = clamp(vec2<f32>(x_3941.x, x_3941.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3946 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3945.x, x_3946.y, x_3945.y);
        let x_3948 : i32 = u_xlati59;
        let x_3950 : vec4<f32> = x_1925.x_AdditionalLightsCookieAtlasUVRects[x_3948];
        let x_3952 : vec3<f32> = u_xlat37;
        let x_3955 : i32 = u_xlati59;
        let x_3957 : vec4<f32> = x_1925.x_AdditionalLightsCookieAtlasUVRects[x_3955];
        let x_3959 : vec2<f32> = ((vec2<f32>(x_3950.x, x_3950.y) * vec2<f32>(x_3952.x, x_3952.z)) + vec2<f32>(x_3957.z, x_3957.w));
        let x_3960 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3959.x, x_3960.y, x_3959.y);
      } else {
        let x_3963 : i32 = u_xlati11;
        u_xlatb11.x = (x_3963 == 1i);
        let x_3967 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_3967);
        let x_3969 : i32 = u_xlati11;
        if ((x_3969 != 0i)) {
          let x_3973 : vec3<f32> = vs_TEXCOORD1;
          let x_3975 : i32 = u_xlati63;
          let x_3978 : i32 = u_xlati63;
          let x_3982 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_3975 + 1i) / 4i)][((x_3978 + 1i) % 4i)];
          let x_3984 : vec2<f32> = (vec2<f32>(x_3973.y, x_3973.y) * vec2<f32>(x_3982.x, x_3982.y));
          let x_3985 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3984.x, x_3984.y, x_3985.z, x_3985.w);
          let x_3987 : i32 = u_xlati63;
          let x_3989 : i32 = u_xlati63;
          let x_3992 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[(x_3987 / 4i)][(x_3989 % 4i)];
          let x_3994 : vec3<f32> = vs_TEXCOORD1;
          let x_3997 : vec4<f32> = u_xlat12;
          let x_3999 : vec2<f32> = ((vec2<f32>(x_3992.x, x_3992.y) * vec2<f32>(x_3994.x, x_3994.x)) + vec2<f32>(x_3997.x, x_3997.y));
          let x_4000 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3999.x, x_3999.y, x_4000.z, x_4000.w);
          let x_4002 : i32 = u_xlati63;
          let x_4005 : i32 = u_xlati63;
          let x_4009 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_4002 + 2i) / 4i)][((x_4005 + 2i) % 4i)];
          let x_4011 : vec3<f32> = vs_TEXCOORD1;
          let x_4014 : vec4<f32> = u_xlat12;
          let x_4016 : vec2<f32> = ((vec2<f32>(x_4009.x, x_4009.y) * vec2<f32>(x_4011.z, x_4011.z)) + vec2<f32>(x_4014.x, x_4014.y));
          let x_4017 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4016.x, x_4016.y, x_4017.z, x_4017.w);
          let x_4019 : vec4<f32> = u_xlat12;
          let x_4021 : i32 = u_xlati63;
          let x_4024 : i32 = u_xlati63;
          let x_4028 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_4021 + 3i) / 4i)][((x_4024 + 3i) % 4i)];
          let x_4030 : vec2<f32> = (vec2<f32>(x_4019.x, x_4019.y) + vec2<f32>(x_4028.x, x_4028.y));
          let x_4031 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4030.x, x_4030.y, x_4031.z, x_4031.w);
          let x_4033 : vec4<f32> = u_xlat12;
          let x_4036 : vec2<f32> = ((vec2<f32>(x_4033.x, x_4033.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4037 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4036.x, x_4036.y, x_4037.z, x_4037.w);
          let x_4039 : vec4<f32> = u_xlat12;
          let x_4041 : vec2<f32> = fract(vec2<f32>(x_4039.x, x_4039.y));
          let x_4042 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4041.x, x_4041.y, x_4042.z, x_4042.w);
          let x_4044 : i32 = u_xlati59;
          let x_4046 : vec4<f32> = x_1925.x_AdditionalLightsCookieAtlasUVRects[x_4044];
          let x_4048 : vec4<f32> = u_xlat12;
          let x_4051 : i32 = u_xlati59;
          let x_4053 : vec4<f32> = x_1925.x_AdditionalLightsCookieAtlasUVRects[x_4051];
          let x_4055 : vec2<f32> = ((vec2<f32>(x_4046.x, x_4046.y) * vec2<f32>(x_4048.x, x_4048.y)) + vec2<f32>(x_4053.z, x_4053.w));
          let x_4056 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4055.x, x_4056.y, x_4055.y);
        } else {
          let x_4059 : vec3<f32> = vs_TEXCOORD1;
          let x_4061 : i32 = u_xlati63;
          let x_4064 : i32 = u_xlati63;
          let x_4068 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_4061 + 1i) / 4i)][((x_4064 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4059.y, x_4059.y, x_4059.y, x_4059.y) * x_4068);
          let x_4070 : i32 = u_xlati63;
          let x_4072 : i32 = u_xlati63;
          let x_4075 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[(x_4070 / 4i)][(x_4072 % 4i)];
          let x_4076 : vec3<f32> = vs_TEXCOORD1;
          let x_4079 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4075 * vec4<f32>(x_4076.x, x_4076.x, x_4076.x, x_4076.x)) + x_4079);
          let x_4081 : i32 = u_xlati63;
          let x_4084 : i32 = u_xlati63;
          let x_4088 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_4081 + 2i) / 4i)][((x_4084 + 2i) % 4i)];
          let x_4089 : vec3<f32> = vs_TEXCOORD1;
          let x_4092 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4088 * vec4<f32>(x_4089.z, x_4089.z, x_4089.z, x_4089.z)) + x_4092);
          let x_4094 : vec4<f32> = u_xlat12;
          let x_4095 : i32 = u_xlati63;
          let x_4098 : i32 = u_xlati63;
          let x_4102 : vec4<f32> = x_1925.x_AdditionalLightsWorldToLights[((x_4095 + 3i) / 4i)][((x_4098 + 3i) % 4i)];
          u_xlat12 = (x_4094 + x_4102);
          let x_4104 : vec4<f32> = u_xlat12;
          let x_4106 : vec4<f32> = u_xlat12;
          let x_4108 : vec3<f32> = (vec3<f32>(x_4104.x, x_4104.y, x_4104.z) / vec3<f32>(x_4106.w, x_4106.w, x_4106.w));
          let x_4109 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4108.x, x_4108.y, x_4108.z, x_4109.w);
          let x_4111 : vec4<f32> = u_xlat12;
          let x_4113 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_4111.x, x_4111.y, x_4111.z), vec3<f32>(x_4113.x, x_4113.y, x_4113.z));
          let x_4118 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_4118);
          let x_4121 : vec4<f32> = u_xlat11;
          let x_4123 : vec4<f32> = u_xlat12;
          let x_4125 : vec3<f32> = (vec3<f32>(x_4121.x, x_4121.x, x_4121.x) * vec3<f32>(x_4123.x, x_4123.y, x_4123.z));
          let x_4126 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4125.x, x_4125.y, x_4125.z, x_4126.w);
          let x_4128 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_4128.x, x_4128.y, x_4128.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4135 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_4135, 0.00000099999999747524f);
          let x_4140 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_4140);
          let x_4143 : vec4<f32> = u_xlat11;
          let x_4145 : vec4<f32> = u_xlat12;
          let x_4147 : vec3<f32> = (vec3<f32>(x_4143.x, x_4143.x, x_4143.x) * vec3<f32>(x_4145.z, x_4145.x, x_4145.y));
          let x_4148 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4147.x, x_4147.y, x_4147.z, x_4148.w);
          let x_4151 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4151);
          let x_4155 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4155, 0.0f, 1.0f);
          let x_4159 : vec4<f32> = u_xlat13;
          let x_4161 : vec4<bool> = (vec4<f32>(x_4159.y, x_4159.z, x_4159.y, x_4159.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb64 = vec2<bool>(x_4161.x, x_4161.y);
          let x_4164 : bool = u_xlatb64.x;
          if (x_4164) {
            let x_4169 : f32 = u_xlat13.x;
            x_4165 = x_4169;
          } else {
            let x_4172 : f32 = u_xlat13.x;
            x_4165 = -(x_4172);
          }
          let x_4174 : f32 = x_4165;
          u_xlat64.x = x_4174;
          let x_4177 : bool = u_xlatb64.y;
          if (x_4177) {
            let x_4182 : f32 = u_xlat13.x;
            x_4178 = x_4182;
          } else {
            let x_4185 : f32 = u_xlat13.x;
            x_4178 = -(x_4185);
          }
          let x_4187 : f32 = x_4178;
          u_xlat64.y = x_4187;
          let x_4189 : vec4<f32> = u_xlat12;
          let x_4191 : vec4<f32> = u_xlat11;
          let x_4194 : vec2<f32> = u_xlat64;
          let x_4195 : vec2<f32> = ((vec2<f32>(x_4189.x, x_4189.y) * vec2<f32>(x_4191.x, x_4191.x)) + x_4194);
          let x_4196 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4195.x, x_4196.y, x_4195.y, x_4196.w);
          let x_4198 : vec4<f32> = u_xlat11;
          let x_4201 : vec2<f32> = ((vec2<f32>(x_4198.x, x_4198.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4202 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4201.x, x_4202.y, x_4201.y, x_4202.w);
          let x_4204 : vec4<f32> = u_xlat11;
          let x_4208 : vec2<f32> = clamp(vec2<f32>(x_4204.x, x_4204.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4209 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4208.x, x_4209.y, x_4208.y, x_4209.w);
          let x_4211 : i32 = u_xlati59;
          let x_4213 : vec4<f32> = x_1925.x_AdditionalLightsCookieAtlasUVRects[x_4211];
          let x_4215 : vec4<f32> = u_xlat11;
          let x_4218 : i32 = u_xlati59;
          let x_4220 : vec4<f32> = x_1925.x_AdditionalLightsCookieAtlasUVRects[x_4218];
          let x_4222 : vec2<f32> = ((vec2<f32>(x_4213.x, x_4213.y) * vec2<f32>(x_4215.x, x_4215.z)) + vec2<f32>(x_4220.z, x_4220.w));
          let x_4223 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4222.x, x_4223.y, x_4222.y);
        }
      }
      let x_4230 : vec3<f32> = u_xlat37;
      let x_4232 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4230.x, x_4230.z), 0.0f);
      u_xlat11 = x_4232;
      let x_4234 : bool = u_xlatb7.y;
      if (x_4234) {
        let x_4239 : f32 = u_xlat11.w;
        x_4235 = x_4239;
      } else {
        let x_4242 : f32 = u_xlat11.x;
        x_4235 = x_4242;
      }
      let x_4243 : f32 = x_4235;
      u_xlat89 = x_4243;
      let x_4245 : bool = u_xlatb7.x;
      if (x_4245) {
        let x_4249 : vec4<f32> = u_xlat11;
        x_4246 = vec3<f32>(x_4249.x, x_4249.y, x_4249.z);
      } else {
        let x_4252 : f32 = u_xlat89;
        x_4246 = vec3<f32>(x_4252, x_4252, x_4252);
      }
      let x_4254 : vec3<f32> = x_4246;
      let x_4255 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4254.x, x_4254.y, x_4254.z, x_4255.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4261 : vec4<f32> = u_xlat11;
    let x_4263 : i32 = u_xlati59;
    let x_4265 : vec4<f32> = x_2345.x_AdditionalLightsColor[x_4263];
    let x_4267 : vec3<f32> = (vec3<f32>(x_4261.x, x_4261.y, x_4261.z) * vec3<f32>(x_4265.x, x_4265.y, x_4265.z));
    let x_4268 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4267.x, x_4267.y, x_4267.z, x_4268.w);
    let x_4270 : f32 = u_xlat85;
    let x_4271 : f32 = u_xlat88;
    u_xlat59.x = (x_4270 * x_4271);
    let x_4274 : vec4<f32> = u_xlat3;
    let x_4276 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_4274.x, x_4274.y, x_4274.z), vec3<f32>(x_4276.x, x_4276.y, x_4276.z));
    let x_4279 : f32 = u_xlat85;
    u_xlat85 = clamp(x_4279, 0.0f, 1.0f);
    let x_4281 : f32 = u_xlat85;
    let x_4283 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4281 * x_4283);
    let x_4286 : vec2<f32> = u_xlat59;
    let x_4288 : vec4<f32> = u_xlat11;
    let x_4290 : vec3<f32> = (vec3<f32>(x_4286.x, x_4286.x, x_4286.x) * vec3<f32>(x_4288.x, x_4288.y, x_4288.z));
    let x_4291 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4290.x, x_4290.y, x_4290.z, x_4291.w);
    let x_4293 : vec4<f32> = u_xlat9;
    let x_4295 : f32 = u_xlat87;
    let x_4298 : vec3<f32> = u_xlat2;
    let x_4299 : vec3<f32> = ((vec3<f32>(x_4293.x, x_4293.y, x_4293.z) * vec3<f32>(x_4295, x_4295, x_4295)) + x_4298);
    let x_4300 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4299.x, x_4299.y, x_4299.z, x_4300.w);
    let x_4302 : vec4<f32> = u_xlat9;
    let x_4304 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4302.x, x_4302.y, x_4302.z), vec3<f32>(x_4304.x, x_4304.y, x_4304.z));
    let x_4309 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_4309, 1.17549435e-38f);
    let x_4313 : f32 = u_xlat59.x;
    u_xlat59.x = inverseSqrt(x_4313);
    let x_4316 : vec2<f32> = u_xlat59;
    let x_4318 : vec4<f32> = u_xlat9;
    let x_4320 : vec3<f32> = (vec3<f32>(x_4316.x, x_4316.x, x_4316.x) * vec3<f32>(x_4318.x, x_4318.y, x_4318.z));
    let x_4321 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4320.x, x_4320.y, x_4320.z, x_4321.w);
    let x_4323 : vec4<f32> = u_xlat3;
    let x_4325 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4323.x, x_4323.y, x_4323.z), vec3<f32>(x_4325.x, x_4325.y, x_4325.z));
    let x_4330 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4330, 0.0f, 1.0f);
    let x_4333 : vec4<f32> = u_xlat10;
    let x_4335 : vec4<f32> = u_xlat9;
    u_xlat59.y = dot(vec3<f32>(x_4333.x, x_4333.y, x_4333.z), vec3<f32>(x_4335.x, x_4335.y, x_4335.z));
    let x_4340 : f32 = u_xlat59.y;
    u_xlat59.y = clamp(x_4340, 0.0f, 1.0f);
    let x_4343 : vec2<f32> = u_xlat59;
    let x_4344 : vec2<f32> = u_xlat59;
    u_xlat59 = (x_4343 * x_4344);
    let x_4347 : f32 = u_xlat59.x;
    let x_4349 : f32 = u_xlat8.x;
    u_xlat59.x = ((x_4347 * x_4349) + 1.00001001358032226562f);
    let x_4354 : f32 = u_xlat59.x;
    let x_4356 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4354 * x_4356);
    let x_4360 : f32 = u_xlat59.y;
    u_xlat85 = max(x_4360, 0.10000000149011611938f);
    let x_4362 : f32 = u_xlat85;
    let x_4364 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4362 * x_4364);
    let x_4368 : f32 = u_xlat6.x;
    let x_4370 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4368 * x_4370);
    let x_4373 : f32 = u_xlat83;
    let x_4375 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4373 / x_4375);
    let x_4378 : vec4<f32> = u_xlat0;
    let x_4380 : vec2<f32> = u_xlat59;
    let x_4383 : vec3<f32> = u_xlat27;
    let x_4384 : vec3<f32> = ((vec3<f32>(x_4378.x, x_4378.y, x_4378.z) * vec3<f32>(x_4380.x, x_4380.x, x_4380.x)) + x_4383);
    let x_4385 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4384.x, x_4384.y, x_4384.z, x_4385.w);
    let x_4387 : vec4<f32> = u_xlat9;
    let x_4389 : vec4<f32> = u_xlat11;
    let x_4392 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4387.x, x_4387.y, x_4387.z) * vec3<f32>(x_4389.x, x_4389.y, x_4389.z)) + x_4392);

    continuing {
      let x_4394 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4394 + bitcast<u32>(1i));
    }
  }
  let x_4396 : vec3<f32> = u_xlat32;
  let x_4397 : vec4<f32> = u_xlat4;
  let x_4400 : vec4<f32> = u_xlat5;
  let x_4402 : vec3<f32> = ((x_4396 * vec3<f32>(x_4397.x, x_4397.z, x_4397.w)) + vec3<f32>(x_4400.x, x_4400.y, x_4400.z));
  let x_4403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4402.x, x_4402.y, x_4402.z, x_4403.w);
  let x_4405 : vec3<f32> = u_xlat34;
  let x_4406 : vec4<f32> = u_xlat0;
  let x_4408 : vec3<f32> = (x_4405 + vec3<f32>(x_4406.x, x_4406.y, x_4406.z));
  let x_4409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4408.x, x_4408.y, x_4408.z, x_4409.w);
  let x_4411 : f32 = u_xlat78;
  let x_4412 : f32 = u_xlat78;
  u_xlat78 = (x_4411 * -(x_4412));
  let x_4415 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4415);
  let x_4417 : vec4<f32> = u_xlat0;
  let x_4420 : vec4<f32> = x_45.unity_FogColor;
  let x_4423 : vec3<f32> = (vec3<f32>(x_4417.x, x_4417.y, x_4417.z) + -(vec3<f32>(x_4420.x, x_4420.y, x_4420.z)));
  let x_4424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4423.x, x_4423.y, x_4423.z, x_4424.w);
  let x_4428 : f32 = u_xlat78;
  let x_4430 : vec4<f32> = u_xlat0;
  let x_4434 : vec4<f32> = x_45.unity_FogColor;
  let x_4436 : vec3<f32> = ((vec3<f32>(x_4428, x_4428, x_4428) * vec3<f32>(x_4430.x, x_4430.y, x_4430.z)) + vec3<f32>(x_4434.x, x_4434.y, x_4434.z));
  let x_4437 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4436.x, x_4436.y, x_4436.z, x_4437.w);
  let x_4441 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_4441 == 1.0f);
  let x_4443 : bool = u_xlatb0;
  if (x_4443) {
    let x_4448 : f32 = u_xlat1.x;
    x_4444 = x_4448;
  } else {
    x_4444 = 1.0f;
  }
  let x_4450 : f32 = x_4444;
  SV_Target0.w = x_4450;
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


