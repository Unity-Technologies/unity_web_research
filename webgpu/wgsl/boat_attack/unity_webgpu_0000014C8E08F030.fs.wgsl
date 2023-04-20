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

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_385 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat57 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(5) var<uniform> x_1712 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu84 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2149 : AdditionalLights;

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

var<private> u_xlat20 : vec4<f32>;

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

var<private> u_xlatu82 : u32;

var<private> u_xlatb84 : bool;

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
  var x_1796 : f32;
  var x_1807 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2291 : f32;
  var x_2302 : f32;
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
  var x_3968 : f32;
  var x_3981 : f32;
  var x_4038 : f32;
  var x_4049 : vec3<f32>;
  var x_4224 : f32;
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
  let x_188 : f32 = vs_TEXCOORD1.y;
  let x_190 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat78 = (x_188 * x_190);
  let x_193 : f32 = x_45.unity_MatrixV[0i].z;
  let x_195 : f32 = vs_TEXCOORD1.x;
  let x_197 : f32 = u_xlat78;
  u_xlat78 = ((x_193 * x_195) + x_197);
  let x_200 : f32 = x_45.unity_MatrixV[2i].z;
  let x_202 : f32 = vs_TEXCOORD1.z;
  let x_204 : f32 = u_xlat78;
  u_xlat78 = ((x_200 * x_202) + x_204);
  let x_206 : f32 = u_xlat78;
  let x_209 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat78 = (x_206 + x_209);
  let x_211 : f32 = u_xlat78;
  let x_215 : f32 = x_45.x_ProjectionParams.y;
  u_xlat78 = (-(x_211) + -(x_215));
  let x_218 : f32 = u_xlat78;
  u_xlat78 = max(x_218, 0.0f);
  let x_220 : f32 = u_xlat78;
  let x_223 : f32 = x_45.unity_FogParams.x;
  u_xlat78 = (x_220 * x_223);
  u_xlat3.w = 1.0f;
  let x_229 : vec4<f32> = x_96.unity_SHAr;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_229, x_230);
  let x_235 : vec4<f32> = x_96.unity_SHAg;
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_235, x_236);
  let x_241 : vec4<f32> = x_96.unity_SHAb;
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_241, x_242);
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_246.y, x_246.z, x_246.z, x_246.x) * vec4<f32>(x_248.x, x_248.y, x_248.z, x_248.z));
  let x_254 : vec4<f32> = x_96.unity_SHBr;
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_254, x_255);
  let x_260 : vec4<f32> = x_96.unity_SHBg;
  let x_261 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_260, x_261);
  let x_266 : vec4<f32> = x_96.unity_SHBb;
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_266, x_267);
  let x_271 : f32 = u_xlat3.y;
  let x_273 : f32 = u_xlat3.y;
  u_xlat80 = (x_271 * x_273);
  let x_276 : f32 = u_xlat3.x;
  let x_278 : f32 = u_xlat3.x;
  let x_280 : f32 = u_xlat80;
  u_xlat80 = ((x_276 * x_278) + -(x_280));
  let x_285 : vec4<f32> = x_96.unity_SHC;
  let x_287 : f32 = u_xlat80;
  let x_290 : vec4<f32> = u_xlat6;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287, x_287, x_287)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec3<f32> = u_xlat4;
  let x_296 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_295 + vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_299, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_303 : f32 = x_58.x_Metallic;
  u_xlat80 = ((-(x_303) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_309 : f32 = u_xlat80;
  let x_312 : f32 = x_58.x_Smoothness;
  u_xlat81 = (-(x_309) + x_312);
  let x_315 : vec4<f32> = u_xlat1;
  let x_317 : f32 = u_xlat80;
  u_xlat27 = (vec3<f32>(x_315.y, x_315.z, x_315.w) * vec3<f32>(x_317, x_317, x_317));
  let x_320 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = x_58.x_BaseColor;
  let x_328 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : f32 = x_58.x_Metallic;
  let x_334 : f32 = x_58.x_Metallic;
  let x_336 : f32 = x_58.x_Metallic;
  let x_337 : vec3<f32> = vec3<f32>(x_332, x_334, x_336);
  let x_342 : vec4<f32> = u_xlat0;
  let x_347 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_348 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_351 : f32 = x_58.x_Smoothness;
  u_xlat80 = (-(x_351) + 1.0f);
  let x_355 : f32 = u_xlat80;
  let x_356 : f32 = u_xlat80;
  u_xlat82 = (x_355 * x_356);
  let x_358 : f32 = u_xlat82;
  u_xlat82 = max(x_358, 0.0078125f);
  let x_361 : f32 = u_xlat82;
  let x_362 : f32 = u_xlat82;
  u_xlat5.x = (x_361 * x_362);
  let x_365 : f32 = u_xlat81;
  u_xlat81 = (x_365 + 1.0f);
  let x_367 : f32 = u_xlat81;
  u_xlat81 = clamp(x_367, 0.0f, 1.0f);
  let x_370 : f32 = u_xlat82;
  u_xlat31 = ((x_370 * 4.0f) + 2.0f);
  let x_388 : f32 = x_385.x_MainLightShadowParams.y;
  u_xlatb57.x = (0.0f < x_388);
  let x_392 : bool = u_xlatb57.x;
  if (x_392) {
    let x_396 : f32 = x_385.x_MainLightShadowParams.y;
    u_xlatb57.x = (x_396 == 1.0f);
    let x_400 : bool = u_xlatb57.x;
    if (x_400) {
      let x_404 : vec4<f32> = vs_TEXCOORD6;
      let x_407 : vec4<f32> = x_385.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_404.x, x_404.y, x_404.x, x_404.y) + x_407);
      let x_410 : vec4<f32> = u_xlat6;
      let x_411 : vec2<f32> = vec2<f32>(x_410.x, x_410.y);
      let x_413 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_411.x, x_411.y, x_413);
      let x_426 : vec3<f32> = txVec0;
      let x_428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_426.xy, x_426.z);
      u_xlat7.x = x_428;
      let x_431 : vec4<f32> = u_xlat6;
      let x_432 : vec2<f32> = vec2<f32>(x_431.z, x_431.w);
      let x_434 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_432.x, x_432.y, x_434);
      let x_441 : vec3<f32> = txVec1;
      let x_443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_441.xy, x_441.z);
      u_xlat7.y = x_443;
      let x_445 : vec4<f32> = vs_TEXCOORD6;
      let x_448 : vec4<f32> = x_385.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_445.x, x_445.y, x_445.x, x_445.y) + x_448);
      let x_451 : vec4<f32> = u_xlat6;
      let x_452 : vec2<f32> = vec2<f32>(x_451.x, x_451.y);
      let x_454 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_452.x, x_452.y, x_454);
      let x_461 : vec3<f32> = txVec2;
      let x_463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_461.xy, x_461.z);
      u_xlat7.z = x_463;
      let x_466 : vec4<f32> = u_xlat6;
      let x_467 : vec2<f32> = vec2<f32>(x_466.z, x_466.w);
      let x_469 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_467.x, x_467.y, x_469);
      let x_476 : vec3<f32> = txVec3;
      let x_478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_476.xy, x_476.z);
      u_xlat7.w = x_478;
      let x_481 : vec4<f32> = u_xlat7;
      u_xlat57 = dot(x_481, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_488 : f32 = x_385.x_MainLightShadowParams.y;
      u_xlatb83 = (x_488 == 2.0f);
      let x_490 : bool = u_xlatb83;
      if (x_490) {
        let x_493 : vec4<f32> = vs_TEXCOORD6;
        let x_496 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_501 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(x_496.z, x_496.w)) + vec2<f32>(0.5f, 0.5f));
        let x_502 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec4<f32> = u_xlat6;
        let x_506 : vec2<f32> = floor(vec2<f32>(x_504.x, x_504.y));
        let x_507 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_511 : vec4<f32> = vs_TEXCOORD6;
        let x_514 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_517 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_514.z, x_514.w)) + -(vec2<f32>(x_517.x, x_517.y)));
        let x_521 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_521.x, x_521.x, x_521.y, x_521.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_526 : vec4<f32> = u_xlat7;
        let x_528 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_526.x, x_526.x, x_526.z, x_526.z) * vec4<f32>(x_528.x, x_528.x, x_528.z, x_528.z));
        let x_531 : vec4<f32> = u_xlat8;
        let x_535 : vec2<f32> = (vec2<f32>(x_531.y, x_531.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_536 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_535.x, x_536.y, x_535.y, x_536.w);
        let x_538 : vec4<f32> = u_xlat8;
        let x_541 : vec2<f32> = u_xlat58;
        let x_543 : vec2<f32> = ((vec2<f32>(x_538.x, x_538.z) * vec2<f32>(0.5f, 0.5f)) + -(x_541));
        let x_544 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
        let x_547 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_547) + vec2<f32>(1.0f, 1.0f));
        let x_552 : vec2<f32> = u_xlat58;
        let x_554 : vec2<f32> = min(x_552, vec2<f32>(0.0f, 0.0f));
        let x_555 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat9;
        let x_560 : vec4<f32> = u_xlat9;
        let x_563 : vec2<f32> = u_xlat60;
        let x_564 : vec2<f32> = ((-(vec2<f32>(x_557.x, x_557.y)) * vec2<f32>(x_560.x, x_560.y)) + x_563);
        let x_565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_567 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_567, vec2<f32>(0.0f, 0.0f));
        let x_569 : vec2<f32> = u_xlat58;
        let x_571 : vec2<f32> = u_xlat58;
        let x_573 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_569) * x_571) + vec2<f32>(x_573.y, x_573.w));
        let x_576 : vec4<f32> = u_xlat9;
        let x_578 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) + vec2<f32>(1.0f, 1.0f));
        let x_579 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
        let x_581 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_581 + vec2<f32>(1.0f, 1.0f));
        let x_584 : vec4<f32> = u_xlat8;
        let x_588 : vec2<f32> = (vec2<f32>(x_584.x, x_584.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_589 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_591 : vec2<f32> = u_xlat60;
        let x_592 : vec2<f32> = (x_591 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_595 : vec4<f32> = u_xlat9;
        let x_597 : vec2<f32> = (vec2<f32>(x_595.x, x_595.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_598 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_601 : vec2<f32> = u_xlat58;
        let x_602 : vec2<f32> = (x_601 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_603 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_605.y, x_605.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_609 : f32 = u_xlat9.x;
        u_xlat10.z = x_609;
        let x_612 : f32 = u_xlat58.x;
        u_xlat10.w = x_612;
        let x_615 : f32 = u_xlat11.x;
        u_xlat8.z = x_615;
        let x_618 : f32 = u_xlat7.x;
        u_xlat8.w = x_618;
        let x_621 : vec4<f32> = u_xlat8;
        let x_623 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_621.z, x_621.w, x_621.x, x_621.z) + vec4<f32>(x_623.z, x_623.w, x_623.x, x_623.z));
        let x_627 : f32 = u_xlat10.y;
        u_xlat9.z = x_627;
        let x_630 : f32 = u_xlat58.y;
        u_xlat9.w = x_630;
        let x_633 : f32 = u_xlat8.y;
        u_xlat11.z = x_633;
        let x_636 : f32 = u_xlat7.z;
        u_xlat11.w = x_636;
        let x_638 : vec4<f32> = u_xlat9;
        let x_640 : vec4<f32> = u_xlat11;
        let x_642 : vec3<f32> = (vec3<f32>(x_638.z, x_638.y, x_638.w) + vec3<f32>(x_640.z, x_640.y, x_640.w));
        let x_643 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
        let x_645 : vec4<f32> = u_xlat8;
        let x_647 : vec4<f32> = u_xlat12;
        let x_649 : vec3<f32> = (vec3<f32>(x_645.x, x_645.z, x_645.w) / vec3<f32>(x_647.z, x_647.w, x_647.y));
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat8;
        let x_658 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_659 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
        let x_661 : vec4<f32> = u_xlat11;
        let x_663 : vec4<f32> = u_xlat7;
        let x_665 : vec3<f32> = (vec3<f32>(x_661.z, x_661.y, x_661.w) / vec3<f32>(x_663.x, x_663.y, x_663.z));
        let x_666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat9;
        let x_670 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_671 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat8;
        let x_676 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_678 : vec3<f32> = (vec3<f32>(x_673.y, x_673.x, x_673.z) * vec3<f32>(x_676.x, x_676.x, x_676.x));
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat9;
        let x_684 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_686 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_684.y, x_684.y, x_684.y));
        let x_687 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_690 : f32 = u_xlat9.x;
        u_xlat8.w = x_690;
        let x_692 : vec4<f32> = u_xlat6;
        let x_695 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_698 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_692.x, x_692.y, x_692.x, x_692.y) * vec4<f32>(x_695.x, x_695.y, x_695.x, x_695.y)) + vec4<f32>(x_698.y, x_698.w, x_698.x, x_698.w));
        let x_701 : vec4<f32> = u_xlat6;
        let x_704 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_707 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_701.x, x_701.y) * vec2<f32>(x_704.x, x_704.y)) + vec2<f32>(x_707.z, x_707.w));
        let x_711 : f32 = u_xlat8.y;
        u_xlat9.w = x_711;
        let x_713 : vec4<f32> = u_xlat9;
        let x_714 : vec2<f32> = vec2<f32>(x_713.y, x_713.z);
        let x_715 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_715.x, x_714.x, x_715.z, x_714.y);
        let x_717 : vec4<f32> = u_xlat6;
        let x_720 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_723 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y) * vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y)) + vec4<f32>(x_723.x, x_723.y, x_723.z, x_723.y));
        let x_726 : vec4<f32> = u_xlat6;
        let x_729 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_726.x, x_726.y, x_726.x, x_726.y) * vec4<f32>(x_729.x, x_729.y, x_729.x, x_729.y)) + vec4<f32>(x_732.w, x_732.y, x_732.w, x_732.z));
        let x_735 : vec4<f32> = u_xlat6;
        let x_738 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_741 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.y) * vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y)) + vec4<f32>(x_741.x, x_741.w, x_741.z, x_741.w));
        let x_745 : vec4<f32> = u_xlat7;
        let x_747 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_745.x, x_745.x, x_745.x, x_745.y) * vec4<f32>(x_747.z, x_747.w, x_747.y, x_747.z));
        let x_751 : vec4<f32> = u_xlat7;
        let x_753 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_751.y, x_751.y, x_751.z, x_751.z) * x_753);
        let x_757 : f32 = u_xlat7.z;
        let x_759 : f32 = u_xlat12.y;
        u_xlat83 = (x_757 * x_759);
        let x_762 : vec4<f32> = u_xlat10;
        let x_763 : vec2<f32> = vec2<f32>(x_762.x, x_762.y);
        let x_765 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_763.x, x_763.y, x_765);
        let x_772 : vec3<f32> = txVec4;
        let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_772.xy, x_772.z);
        u_xlat6.x = x_774;
        let x_777 : vec4<f32> = u_xlat10;
        let x_778 : vec2<f32> = vec2<f32>(x_777.z, x_777.w);
        let x_780 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_778.x, x_778.y, x_780);
        let x_788 : vec3<f32> = txVec5;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_788.xy, x_788.z);
        u_xlat32 = x_790;
        let x_791 : f32 = u_xlat32;
        let x_793 : f32 = u_xlat13.y;
        u_xlat32 = (x_791 * x_793);
        let x_796 : f32 = u_xlat13.x;
        let x_798 : f32 = u_xlat6.x;
        let x_800 : f32 = u_xlat32;
        u_xlat6.x = ((x_796 * x_798) + x_800);
        let x_804 : vec2<f32> = u_xlat58;
        let x_806 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_813 : vec3<f32> = txVec6;
        let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_813.xy, x_813.z);
        u_xlat32 = x_815;
        let x_817 : f32 = u_xlat13.z;
        let x_818 : f32 = u_xlat32;
        let x_821 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_817 * x_818) + x_821);
        let x_825 : vec4<f32> = u_xlat9;
        let x_826 : vec2<f32> = vec2<f32>(x_825.x, x_825.y);
        let x_828 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec7;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat32 = x_837;
        let x_839 : f32 = u_xlat13.w;
        let x_840 : f32 = u_xlat32;
        let x_843 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_839 * x_840) + x_843);
        let x_847 : vec4<f32> = u_xlat11;
        let x_848 : vec2<f32> = vec2<f32>(x_847.x, x_847.y);
        let x_850 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec8;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_857.xy, x_857.z);
        u_xlat32 = x_859;
        let x_861 : f32 = u_xlat14.x;
        let x_862 : f32 = u_xlat32;
        let x_865 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_861 * x_862) + x_865);
        let x_869 : vec4<f32> = u_xlat11;
        let x_870 : vec2<f32> = vec2<f32>(x_869.z, x_869.w);
        let x_872 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_870.x, x_870.y, x_872);
        let x_879 : vec3<f32> = txVec9;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_879.xy, x_879.z);
        u_xlat32 = x_881;
        let x_883 : f32 = u_xlat14.y;
        let x_884 : f32 = u_xlat32;
        let x_887 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_883 * x_884) + x_887);
        let x_891 : vec4<f32> = u_xlat9;
        let x_892 : vec2<f32> = vec2<f32>(x_891.z, x_891.w);
        let x_894 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_892.x, x_892.y, x_894);
        let x_901 : vec3<f32> = txVec10;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_901.xy, x_901.z);
        u_xlat32 = x_903;
        let x_905 : f32 = u_xlat14.z;
        let x_906 : f32 = u_xlat32;
        let x_909 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_905 * x_906) + x_909);
        let x_913 : vec4<f32> = u_xlat8;
        let x_914 : vec2<f32> = vec2<f32>(x_913.x, x_913.y);
        let x_916 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_914.x, x_914.y, x_916);
        let x_923 : vec3<f32> = txVec11;
        let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_923.xy, x_923.z);
        u_xlat32 = x_925;
        let x_927 : f32 = u_xlat14.w;
        let x_928 : f32 = u_xlat32;
        let x_931 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_927 * x_928) + x_931);
        let x_935 : vec4<f32> = u_xlat8;
        let x_936 : vec2<f32> = vec2<f32>(x_935.z, x_935.w);
        let x_938 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_936.x, x_936.y, x_938);
        let x_945 : vec3<f32> = txVec12;
        let x_947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_945.xy, x_945.z);
        u_xlat32 = x_947;
        let x_948 : f32 = u_xlat83;
        let x_949 : f32 = u_xlat32;
        let x_952 : f32 = u_xlat6.x;
        u_xlat57 = ((x_948 * x_949) + x_952);
      } else {
        let x_955 : vec4<f32> = vs_TEXCOORD6;
        let x_958 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_961 : vec2<f32> = ((vec2<f32>(x_955.x, x_955.y) * vec2<f32>(x_958.z, x_958.w)) + vec2<f32>(0.5f, 0.5f));
        let x_962 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat6;
        let x_966 : vec2<f32> = floor(vec2<f32>(x_964.x, x_964.y));
        let x_967 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec4<f32> = vs_TEXCOORD6;
        let x_972 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_975 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_969.x, x_969.y) * vec2<f32>(x_972.z, x_972.w)) + -(vec2<f32>(x_975.x, x_975.y)));
        let x_979 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_979.x, x_979.x, x_979.y, x_979.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_982 : vec4<f32> = u_xlat7;
        let x_984 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_982.x, x_982.x, x_982.z, x_982.z) * vec4<f32>(x_984.x, x_984.x, x_984.z, x_984.z));
        let x_987 : vec4<f32> = u_xlat8;
        let x_991 : vec2<f32> = (vec2<f32>(x_987.y, x_987.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_992 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_992.x, x_991.x, x_992.z, x_991.y);
        let x_994 : vec4<f32> = u_xlat8;
        let x_997 : vec2<f32> = u_xlat58;
        let x_999 : vec2<f32> = ((vec2<f32>(x_994.x, x_994.z) * vec2<f32>(0.5f, 0.5f)) + -(x_997));
        let x_1000 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_999.x, x_1000.y, x_999.y, x_1000.w);
        let x_1002 : vec2<f32> = u_xlat58;
        let x_1004 : vec2<f32> = (-(x_1002) + vec2<f32>(1.0f, 1.0f));
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1007 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1007, vec2<f32>(0.0f, 0.0f));
        let x_1009 : vec2<f32> = u_xlat60;
        let x_1011 : vec2<f32> = u_xlat60;
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1015 : vec2<f32> = ((-(x_1009) * x_1011) + vec2<f32>(x_1013.x, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1018 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1018, vec2<f32>(0.0f, 0.0f));
        let x_1021 : vec2<f32> = u_xlat60;
        let x_1023 : vec2<f32> = u_xlat60;
        let x_1025 : vec4<f32> = u_xlat7;
        let x_1027 : vec2<f32> = ((-(x_1021) * x_1023) + vec2<f32>(x_1025.y, x_1025.w));
        let x_1028 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1027.x, x_1028.y, x_1027.y);
        let x_1030 : vec4<f32> = u_xlat8;
        let x_1033 : vec2<f32> = (vec2<f32>(x_1030.x, x_1030.y) + vec2<f32>(2.0f, 2.0f));
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec3<f32> = u_xlat33;
        let x_1038 : vec2<f32> = (vec2<f32>(x_1036.x, x_1036.z) + vec2<f32>(2.0f, 2.0f));
        let x_1039 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1039.x, x_1038.x, x_1039.z, x_1038.y);
        let x_1042 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1042 * 0.08163200318813323975f);
        let x_1046 : vec4<f32> = u_xlat7;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1046.z, x_1046.x, x_1046.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1050 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat8;
        let x_1055 : vec2<f32> = (vec2<f32>(x_1052.x, x_1052.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1059 : f32 = u_xlat11.y;
        u_xlat10.x = x_1059;
        let x_1061 : vec2<f32> = u_xlat58;
        let x_1068 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1069 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1069.x, x_1068.x, x_1069.z, x_1068.y);
        let x_1071 : vec2<f32> = u_xlat58;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1076 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1075.x, x_1076.y, x_1075.y, x_1076.w);
        let x_1079 : f32 = u_xlat7.x;
        u_xlat8.y = x_1079;
        let x_1082 : f32 = u_xlat9.y;
        u_xlat8.w = x_1082;
        let x_1084 : vec4<f32> = u_xlat8;
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1084 + x_1085);
        let x_1087 : vec2<f32> = u_xlat58;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1087.y, x_1087.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1091 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1091.x, x_1090.x, x_1091.z, x_1090.y);
        let x_1093 : vec2<f32> = u_xlat58;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1093.y, x_1093.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1096.x, x_1097.y, x_1096.y, x_1097.w);
        let x_1100 : f32 = u_xlat7.y;
        u_xlat9.y = x_1100;
        let x_1102 : vec4<f32> = u_xlat9;
        let x_1103 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1102 + x_1103);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1106 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1105 / x_1106);
        let x_1108 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1108 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1114 : vec4<f32> = u_xlat9;
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1114 / x_1115);
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1117 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1119 : vec4<f32> = u_xlat8;
        let x_1122 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1119.w, x_1119.x, x_1119.y, x_1119.z) * vec4<f32>(x_1122.x, x_1122.x, x_1122.x, x_1122.x));
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1128 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1125.x, x_1125.w, x_1125.y, x_1125.z) * vec4<f32>(x_1128.y, x_1128.y, x_1128.y, x_1128.y));
        let x_1131 : vec4<f32> = u_xlat8;
        let x_1132 : vec3<f32> = vec3<f32>(x_1131.y, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1132.x, x_1133.y, x_1132.y, x_1132.z);
        let x_1136 : f32 = u_xlat9.x;
        u_xlat11.y = x_1136;
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1141 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1147 : vec4<f32> = u_xlat6;
        let x_1150 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(x_1150.x, x_1150.y)) + vec2<f32>(x_1153.w, x_1153.y));
        let x_1157 : f32 = u_xlat11.y;
        u_xlat8.y = x_1157;
        let x_1160 : f32 = u_xlat9.z;
        u_xlat11.y = x_1160;
        let x_1162 : vec4<f32> = u_xlat6;
        let x_1165 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.y) * vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y)) + vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1168.y));
        let x_1171 : vec4<f32> = u_xlat6;
        let x_1174 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat11;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1171.x, x_1171.y) * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1177.w, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1183 : f32 = u_xlat11.y;
        u_xlat8.z = x_1183;
        let x_1186 : vec4<f32> = u_xlat6;
        let x_1189 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y) * vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y)) + vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.z));
        let x_1196 : f32 = u_xlat9.w;
        u_xlat11.y = x_1196;
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1202 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.y) * vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y)) + vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1205.y));
        let x_1209 : vec4<f32> = u_xlat6;
        let x_1212 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1215 : vec4<f32> = u_xlat11;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1209.x, x_1209.y) * vec2<f32>(x_1212.x, x_1212.y)) + vec2<f32>(x_1215.w, x_1215.y));
        let x_1218 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1217.x, x_1217.y, x_1218.z);
        let x_1221 : f32 = u_xlat11.y;
        u_xlat8.w = x_1221;
        let x_1224 : vec4<f32> = u_xlat6;
        let x_1227 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.x, x_1230.w));
        let x_1233 : vec4<f32> = u_xlat11;
        let x_1234 : vec3<f32> = vec3<f32>(x_1233.x, x_1233.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1234.x, x_1235.y, x_1234.y, x_1234.z);
        let x_1237 : vec4<f32> = u_xlat6;
        let x_1240 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y) * vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.y)) + vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1243.y));
        let x_1247 : vec4<f32> = u_xlat6;
        let x_1250 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1247.x, x_1247.y) * vec2<f32>(x_1250.x, x_1250.y)) + vec2<f32>(x_1253.w, x_1253.y));
        let x_1257 : f32 = u_xlat8.x;
        u_xlat9.x = x_1257;
        let x_1259 : vec4<f32> = u_xlat6;
        let x_1262 : vec4<f32> = x_385.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1267 : vec2<f32> = ((vec2<f32>(x_1259.x, x_1259.y) * vec2<f32>(x_1262.x, x_1262.y)) + vec2<f32>(x_1265.x, x_1265.y));
        let x_1268 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1267.x, x_1267.y, x_1268.z, x_1268.w);
        let x_1271 : vec4<f32> = u_xlat7;
        let x_1273 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1271.x, x_1271.x, x_1271.x, x_1271.x) * x_1273);
        let x_1276 : vec4<f32> = u_xlat7;
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1276.y, x_1276.y, x_1276.y, x_1276.y) * x_1278);
        let x_1281 : vec4<f32> = u_xlat7;
        let x_1283 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1281.z, x_1281.z, x_1281.z, x_1281.z) * x_1283);
        let x_1285 : vec4<f32> = u_xlat7;
        let x_1287 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1285.w, x_1285.w, x_1285.w, x_1285.w) * x_1287);
        let x_1290 : vec4<f32> = u_xlat12;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.x, x_1290.y);
        let x_1293 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec13;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat83 = x_1302;
        let x_1304 : vec4<f32> = u_xlat12;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.z, x_1304.w);
        let x_1307 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec14;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat8.x = x_1316;
        let x_1319 : f32 = u_xlat8.x;
        let x_1321 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1319 * x_1321);
        let x_1325 : f32 = u_xlat17.x;
        let x_1326 : f32 = u_xlat83;
        let x_1329 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1325 * x_1326) + x_1329);
        let x_1332 : vec2<f32> = u_xlat58;
        let x_1334 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec15;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat58.x = x_1343;
        let x_1346 : f32 = u_xlat17.z;
        let x_1348 : f32 = u_xlat58.x;
        let x_1350 : f32 = u_xlat83;
        u_xlat83 = ((x_1346 * x_1348) + x_1350);
        let x_1353 : vec4<f32> = u_xlat15;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.x, x_1353.y);
        let x_1356 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec16;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat58.x = x_1365;
        let x_1368 : f32 = u_xlat17.w;
        let x_1370 : f32 = u_xlat58.x;
        let x_1372 : f32 = u_xlat83;
        u_xlat83 = ((x_1368 * x_1370) + x_1372);
        let x_1375 : vec4<f32> = u_xlat13;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.x, x_1375.y);
        let x_1378 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec17;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat58.x = x_1387;
        let x_1390 : f32 = u_xlat18.x;
        let x_1392 : f32 = u_xlat58.x;
        let x_1394 : f32 = u_xlat83;
        u_xlat83 = ((x_1390 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat13;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec18;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat58.x = x_1409;
        let x_1412 : f32 = u_xlat18.y;
        let x_1414 : f32 = u_xlat58.x;
        let x_1416 : f32 = u_xlat83;
        u_xlat83 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat14;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec19;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat58.x = x_1431;
        let x_1434 : f32 = u_xlat18.z;
        let x_1436 : f32 = u_xlat58.x;
        let x_1438 : f32 = u_xlat83;
        u_xlat83 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat15;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec20;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat58.x = x_1453;
        let x_1456 : f32 = u_xlat18.w;
        let x_1458 : f32 = u_xlat58.x;
        let x_1460 : f32 = u_xlat83;
        u_xlat83 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat16;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec21;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat58.x = x_1475;
        let x_1478 : f32 = u_xlat19.x;
        let x_1480 : f32 = u_xlat58.x;
        let x_1482 : f32 = u_xlat83;
        u_xlat83 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat16;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.z, x_1485.w);
        let x_1488 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec22;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat58.x = x_1497;
        let x_1500 : f32 = u_xlat19.y;
        let x_1502 : f32 = u_xlat58.x;
        let x_1504 : f32 = u_xlat83;
        u_xlat83 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec3<f32> = u_xlat34;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec23;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat58.x = x_1519;
        let x_1522 : f32 = u_xlat19.z;
        let x_1524 : f32 = u_xlat58.x;
        let x_1526 : f32 = u_xlat83;
        u_xlat83 = ((x_1522 * x_1524) + x_1526);
        let x_1529 : vec2<f32> = u_xlat66;
        let x_1531 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec24;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat58.x = x_1540;
        let x_1543 : f32 = u_xlat19.w;
        let x_1545 : f32 = u_xlat58.x;
        let x_1547 : f32 = u_xlat83;
        u_xlat83 = ((x_1543 * x_1545) + x_1547);
        let x_1550 : vec4<f32> = u_xlat11;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.y);
        let x_1553 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec25;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat58.x = x_1562;
        let x_1565 : f32 = u_xlat7.x;
        let x_1567 : f32 = u_xlat58.x;
        let x_1569 : f32 = u_xlat83;
        u_xlat83 = ((x_1565 * x_1567) + x_1569);
        let x_1572 : vec4<f32> = u_xlat11;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.z, x_1572.w);
        let x_1575 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec26;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat58.x = x_1584;
        let x_1587 : f32 = u_xlat7.y;
        let x_1589 : f32 = u_xlat58.x;
        let x_1591 : f32 = u_xlat83;
        u_xlat83 = ((x_1587 * x_1589) + x_1591);
        let x_1594 : vec2<f32> = u_xlat61;
        let x_1596 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec27;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat58.x = x_1605;
        let x_1608 : f32 = u_xlat7.z;
        let x_1610 : f32 = u_xlat58.x;
        let x_1612 : f32 = u_xlat83;
        u_xlat83 = ((x_1608 * x_1610) + x_1612);
        let x_1615 : vec4<f32> = u_xlat6;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.x, x_1615.y);
        let x_1618 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec28;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat6.x = x_1627;
        let x_1630 : f32 = u_xlat7.w;
        let x_1632 : f32 = u_xlat6.x;
        let x_1634 : f32 = u_xlat83;
        u_xlat57 = ((x_1630 * x_1632) + x_1634);
      }
    }
  } else {
    let x_1638 : vec4<f32> = vs_TEXCOORD6;
    let x_1639 : vec2<f32> = vec2<f32>(x_1638.x, x_1638.y);
    let x_1641 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
    let x_1648 : vec3<f32> = txVec29;
    let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
    u_xlat57 = x_1650;
  }
  let x_1652 : f32 = x_385.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1652) + 1.0f);
  let x_1655 : f32 = u_xlat57;
  let x_1657 : f32 = x_385.x_MainLightShadowParams.x;
  let x_1659 : f32 = u_xlat83;
  u_xlat57 = ((x_1655 * x_1657) + x_1659);
  let x_1662 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (0.0f >= x_1662);
  let x_1666 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1666 >= 1.0f);
  let x_1668 : bool = u_xlatb83;
  let x_1669 : bool = u_xlatb6;
  u_xlatb83 = (x_1668 | x_1669);
  let x_1671 : bool = u_xlatb83;
  let x_1672 : f32 = u_xlat57;
  u_xlat57 = select(x_1672, 1.0f, x_1671);
  let x_1674 : vec3<f32> = vs_TEXCOORD1;
  let x_1676 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1678 : vec3<f32> = (x_1674 + -(x_1676));
  let x_1679 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
  let x_1681 : vec4<f32> = u_xlat6;
  let x_1683 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1681.x, x_1681.y, x_1681.z), vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : f32 = u_xlat83;
  let x_1688 : f32 = x_385.x_MainLightShadowParams.z;
  let x_1691 : f32 = x_385.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1686 * x_1688) + x_1691);
  let x_1695 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1695, 0.0f, 1.0f);
  let x_1698 : f32 = u_xlat57;
  u_xlat32 = (-(x_1698) + 1.0f);
  let x_1702 : f32 = u_xlat6.x;
  let x_1703 : f32 = u_xlat32;
  let x_1705 : f32 = u_xlat57;
  u_xlat57 = ((x_1702 * x_1703) + x_1705);
  let x_1714 : f32 = x_1712.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1714 == -1.0f));
  let x_1717 : bool = u_xlatb6;
  if (x_1717) {
    let x_1720 : vec3<f32> = vs_TEXCOORD1;
    let x_1723 : vec4<f32> = x_1712.x_MainLightWorldToLight[1i];
    let x_1725 : vec2<f32> = (vec2<f32>(x_1720.y, x_1720.y) * vec2<f32>(x_1723.x, x_1723.y));
    let x_1726 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
    let x_1729 : vec4<f32> = x_1712.x_MainLightWorldToLight[0i];
    let x_1731 : vec3<f32> = vs_TEXCOORD1;
    let x_1734 : vec4<f32> = u_xlat6;
    let x_1736 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1731.x, x_1731.x)) + vec2<f32>(x_1734.x, x_1734.y));
    let x_1737 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1736.x, x_1736.y, x_1737.z, x_1737.w);
    let x_1740 : vec4<f32> = x_1712.x_MainLightWorldToLight[2i];
    let x_1742 : vec3<f32> = vs_TEXCOORD1;
    let x_1745 : vec4<f32> = u_xlat6;
    let x_1747 : vec2<f32> = ((vec2<f32>(x_1740.x, x_1740.y) * vec2<f32>(x_1742.z, x_1742.z)) + vec2<f32>(x_1745.x, x_1745.y));
    let x_1748 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1747.x, x_1747.y, x_1748.z, x_1748.w);
    let x_1750 : vec4<f32> = u_xlat6;
    let x_1753 : vec4<f32> = x_1712.x_MainLightWorldToLight[3i];
    let x_1755 : vec2<f32> = (vec2<f32>(x_1750.x, x_1750.y) + vec2<f32>(x_1753.x, x_1753.y));
    let x_1756 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1755.x, x_1755.y, x_1756.z, x_1756.w);
    let x_1758 : vec4<f32> = u_xlat6;
    let x_1761 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1762 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1761.x, x_1761.y, x_1762.z, x_1762.w);
    let x_1769 : vec4<f32> = u_xlat6;
    let x_1772 : f32 = x_45.x_GlobalMipBias.x;
    let x_1773 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1769.x, x_1769.y), x_1772);
    u_xlat6 = x_1773;
    let x_1776 : f32 = x_1712.x_MainLightCookieTextureFormat;
    let x_1778 : f32 = x_1712.x_MainLightCookieTextureFormat;
    let x_1780 : f32 = x_1712.x_MainLightCookieTextureFormat;
    let x_1782 : f32 = x_1712.x_MainLightCookieTextureFormat;
    let x_1783 : vec4<f32> = vec4<f32>(x_1776, x_1778, x_1780, x_1782);
    let x_1791 : vec4<bool> = (vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1783.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1791.x, x_1791.y);
    let x_1795 : bool = u_xlatb7.y;
    if (x_1795) {
      let x_1800 : f32 = u_xlat6.w;
      x_1796 = x_1800;
    } else {
      let x_1803 : f32 = u_xlat6.x;
      x_1796 = x_1803;
    }
    let x_1804 : f32 = x_1796;
    u_xlat84 = x_1804;
    let x_1806 : bool = u_xlatb7.x;
    if (x_1806) {
      let x_1810 : vec4<f32> = u_xlat6;
      x_1807 = vec3<f32>(x_1810.x, x_1810.y, x_1810.z);
    } else {
      let x_1813 : f32 = u_xlat84;
      x_1807 = vec3<f32>(x_1813, x_1813, x_1813);
    }
    let x_1815 : vec3<f32> = x_1807;
    let x_1816 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1822 : vec4<f32> = u_xlat6;
  let x_1825 : vec4<f32> = x_45.x_MainLightColor;
  let x_1827 : vec3<f32> = (vec3<f32>(x_1822.x, x_1822.y, x_1822.z) * vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
  let x_1830 : vec3<f32> = u_xlat2;
  let x_1832 : vec4<f32> = u_xlat3;
  u_xlat84 = dot(-(x_1830), vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
  let x_1835 : f32 = u_xlat84;
  let x_1836 : f32 = u_xlat84;
  u_xlat84 = (x_1835 + x_1836);
  let x_1838 : vec4<f32> = u_xlat3;
  let x_1840 : f32 = u_xlat84;
  let x_1844 : vec3<f32> = u_xlat2;
  let x_1846 : vec3<f32> = ((vec3<f32>(x_1838.x, x_1838.y, x_1838.z) * -(vec3<f32>(x_1840, x_1840, x_1840))) + -(x_1844));
  let x_1847 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
  let x_1849 : vec4<f32> = u_xlat3;
  let x_1851 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_1849.x, x_1849.y, x_1849.z), x_1851);
  let x_1853 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1853, 0.0f, 1.0f);
  let x_1855 : f32 = u_xlat84;
  u_xlat84 = (-(x_1855) + 1.0f);
  let x_1858 : f32 = u_xlat84;
  let x_1859 : f32 = u_xlat84;
  u_xlat84 = (x_1858 * x_1859);
  let x_1861 : f32 = u_xlat84;
  let x_1862 : f32 = u_xlat84;
  u_xlat84 = (x_1861 * x_1862);
  let x_1865 : f32 = u_xlat80;
  u_xlat85 = ((-(x_1865) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1871 : f32 = u_xlat80;
  let x_1872 : f32 = u_xlat85;
  u_xlat80 = (x_1871 * x_1872);
  let x_1874 : f32 = u_xlat80;
  u_xlat80 = (x_1874 * 6.0f);
  let x_1885 : vec4<f32> = u_xlat7;
  let x_1887 : f32 = u_xlat80;
  let x_1888 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1885.x, x_1885.y, x_1885.z), x_1887);
  u_xlat7 = x_1888;
  let x_1890 : f32 = u_xlat7.w;
  u_xlat80 = (x_1890 + -1.0f);
  let x_1893 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_1894 : f32 = u_xlat80;
  u_xlat80 = ((x_1893 * x_1894) + 1.0f);
  let x_1897 : f32 = u_xlat80;
  u_xlat80 = max(x_1897, 0.0f);
  let x_1899 : f32 = u_xlat80;
  u_xlat80 = log2(x_1899);
  let x_1901 : f32 = u_xlat80;
  let x_1903 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1901 * x_1903);
  let x_1905 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1905);
  let x_1907 : f32 = u_xlat80;
  let x_1909 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1907 * x_1909);
  let x_1911 : vec4<f32> = u_xlat7;
  let x_1913 : f32 = u_xlat80;
  let x_1915 : vec3<f32> = (vec3<f32>(x_1911.x, x_1911.y, x_1911.z) * vec3<f32>(x_1913, x_1913, x_1913));
  let x_1916 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
  let x_1918 : f32 = u_xlat82;
  let x_1920 : f32 = u_xlat82;
  let x_1924 : vec2<f32> = ((vec2<f32>(x_1918, x_1918) * vec2<f32>(x_1920, x_1920)) + vec2<f32>(-1.0f, 1.0f));
  let x_1925 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1924.x, x_1924.y, x_1925.z, x_1925.w);
  let x_1928 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_1928);
  let x_1930 : vec4<f32> = u_xlat0;
  let x_1933 : f32 = u_xlat81;
  u_xlat34 = (-(vec3<f32>(x_1930.x, x_1930.y, x_1930.z)) + vec3<f32>(x_1933, x_1933, x_1933));
  let x_1936 : f32 = u_xlat84;
  let x_1938 : vec3<f32> = u_xlat34;
  let x_1940 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1936, x_1936, x_1936) * x_1938) + vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : f32 = u_xlat80;
  let x_1945 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1943, x_1943, x_1943) * x_1945);
  let x_1947 : vec4<f32> = u_xlat7;
  let x_1949 : vec3<f32> = u_xlat34;
  let x_1950 : vec3<f32> = (vec3<f32>(x_1947.x, x_1947.y, x_1947.z) * x_1949);
  let x_1951 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1953 : vec3<f32> = u_xlat4;
  let x_1954 : vec3<f32> = u_xlat27;
  let x_1956 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1953 * x_1954) + vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
  let x_1959 : f32 = u_xlat57;
  let x_1961 : f32 = x_96.unity_LightData.z;
  u_xlat80 = (x_1959 * x_1961);
  let x_1963 : vec4<f32> = u_xlat3;
  let x_1966 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat81 = dot(vec3<f32>(x_1963.x, x_1963.y, x_1963.z), vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
  let x_1969 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1969, 0.0f, 1.0f);
  let x_1971 : f32 = u_xlat80;
  let x_1972 : f32 = u_xlat81;
  u_xlat80 = (x_1971 * x_1972);
  let x_1974 : f32 = u_xlat80;
  let x_1976 : vec4<f32> = u_xlat6;
  let x_1978 : vec3<f32> = (vec3<f32>(x_1974, x_1974, x_1974) * vec3<f32>(x_1976.x, x_1976.y, x_1976.z));
  let x_1979 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1981 : vec3<f32> = u_xlat2;
  let x_1983 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1985 : vec3<f32> = (x_1981 + vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
  let x_1986 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
  let x_1988 : vec4<f32> = u_xlat7;
  let x_1990 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_1988.x, x_1988.y, x_1988.z), vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
  let x_1993 : f32 = u_xlat80;
  u_xlat80 = max(x_1993, 1.17549435e-38f);
  let x_1996 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1996);
  let x_1998 : f32 = u_xlat80;
  let x_2000 : vec4<f32> = u_xlat7;
  let x_2002 : vec3<f32> = (vec3<f32>(x_1998, x_1998, x_1998) * vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
  let x_2003 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);
  let x_2005 : vec4<f32> = u_xlat3;
  let x_2007 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2005.x, x_2005.y, x_2005.z), vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
  let x_2010 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2010, 0.0f, 1.0f);
  let x_2013 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2015 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_2013.x, x_2013.y, x_2013.z), vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
  let x_2018 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2018, 0.0f, 1.0f);
  let x_2020 : f32 = u_xlat80;
  let x_2021 : f32 = u_xlat80;
  u_xlat80 = (x_2020 * x_2021);
  let x_2023 : f32 = u_xlat80;
  let x_2025 : f32 = u_xlat8.x;
  u_xlat80 = ((x_2023 * x_2025) + 1.00001001358032226562f);
  let x_2029 : f32 = u_xlat81;
  let x_2030 : f32 = u_xlat81;
  u_xlat81 = (x_2029 * x_2030);
  let x_2032 : f32 = u_xlat80;
  let x_2033 : f32 = u_xlat80;
  u_xlat80 = (x_2032 * x_2033);
  let x_2035 : f32 = u_xlat81;
  u_xlat81 = max(x_2035, 0.10000000149011611938f);
  let x_2038 : f32 = u_xlat80;
  let x_2039 : f32 = u_xlat81;
  u_xlat80 = (x_2038 * x_2039);
  let x_2041 : f32 = u_xlat31;
  let x_2042 : f32 = u_xlat80;
  u_xlat80 = (x_2041 * x_2042);
  let x_2045 : f32 = u_xlat5.x;
  let x_2046 : f32 = u_xlat80;
  u_xlat80 = (x_2045 / x_2046);
  let x_2048 : vec4<f32> = u_xlat0;
  let x_2050 : f32 = u_xlat80;
  let x_2053 : vec3<f32> = u_xlat27;
  let x_2054 : vec3<f32> = ((vec3<f32>(x_2048.x, x_2048.y, x_2048.z) * vec3<f32>(x_2050, x_2050, x_2050)) + x_2053);
  let x_2055 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  let x_2058 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2060 : f32 = x_96.unity_LightData.y;
  u_xlat80 = min(x_2058, x_2060);
  let x_2064 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2064));
  let x_2067 : f32 = u_xlat83;
  let x_2070 : f32 = x_385.x_AdditionalShadowFadeParams.x;
  let x_2073 : f32 = x_385.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2067 * x_2070) + x_2073);
  let x_2075 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2075, 0.0f, 1.0f);
  let x_2078 : f32 = x_1712.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2080 : f32 = x_1712.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2082 : f32 = x_1712.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2084 : f32 = x_1712.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2085 : vec4<f32> = vec4<f32>(x_2078, x_2080, x_2082, x_2084);
  let x_2092 : vec4<bool> = (vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2085.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb57 = vec2<bool>(x_2092.x, x_2092.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2104 : u32 = u_xlatu_loop_1;
    let x_2105 : u32 = u_xlatu80;
    if ((x_2104 < x_2105)) {
    } else {
      break;
    }
    let x_2108 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2108 >> 2u);
    let x_2112 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_2112 & 3u));
    let x_2115 : u32 = u_xlatu84;
    let x_2118 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_2115)];
    let x_2128 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2133 : vec4<u32> = indexable[x_2128];
    u_xlat84 = dot(x_2118, bitcast<vec4<f32>>(x_2133));
    let x_2137 : f32 = u_xlat84;
    u_xlati84 = i32(x_2137);
    let x_2139 : vec3<f32> = vs_TEXCOORD1;
    let x_2150 : i32 = u_xlati84;
    let x_2152 : vec4<f32> = x_2149.x_AdditionalLightsPosition[x_2150];
    let x_2155 : i32 = u_xlati84;
    let x_2157 : vec4<f32> = x_2149.x_AdditionalLightsPosition[x_2155];
    let x_2159 : vec3<f32> = ((-(x_2139) * vec3<f32>(x_2152.w, x_2152.w, x_2152.w)) + vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
    let x_2162 : vec4<f32> = u_xlat9;
    let x_2164 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_2162.x, x_2162.y, x_2162.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
    let x_2167 : f32 = u_xlat85;
    u_xlat85 = max(x_2167, 0.00006103515625f);
    let x_2171 : f32 = u_xlat85;
    u_xlat87 = inverseSqrt(x_2171);
    let x_2173 : f32 = u_xlat87;
    let x_2175 : vec4<f32> = u_xlat9;
    let x_2177 : vec3<f32> = (vec3<f32>(x_2173, x_2173, x_2173) * vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
    let x_2178 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
    let x_2181 : f32 = u_xlat85;
    u_xlat88 = (1.0f / x_2181);
    let x_2183 : f32 = u_xlat85;
    let x_2184 : i32 = u_xlati84;
    let x_2186 : f32 = x_2149.x_AdditionalLightsAttenuation[x_2184].x;
    u_xlat85 = (x_2183 * x_2186);
    let x_2188 : f32 = u_xlat85;
    let x_2190 : f32 = u_xlat85;
    u_xlat85 = ((-(x_2188) * x_2190) + 1.0f);
    let x_2193 : f32 = u_xlat85;
    u_xlat85 = max(x_2193, 0.0f);
    let x_2195 : f32 = u_xlat85;
    let x_2196 : f32 = u_xlat85;
    u_xlat85 = (x_2195 * x_2196);
    let x_2198 : f32 = u_xlat85;
    let x_2199 : f32 = u_xlat88;
    u_xlat85 = (x_2198 * x_2199);
    let x_2201 : i32 = u_xlati84;
    let x_2203 : vec4<f32> = x_2149.x_AdditionalLightsSpotDir[x_2201];
    let x_2205 : vec4<f32> = u_xlat10;
    u_xlat88 = dot(vec3<f32>(x_2203.x, x_2203.y, x_2203.z), vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
    let x_2208 : f32 = u_xlat88;
    let x_2209 : i32 = u_xlati84;
    let x_2211 : f32 = x_2149.x_AdditionalLightsAttenuation[x_2209].z;
    let x_2213 : i32 = u_xlati84;
    let x_2215 : f32 = x_2149.x_AdditionalLightsAttenuation[x_2213].w;
    u_xlat88 = ((x_2208 * x_2211) + x_2215);
    let x_2217 : f32 = u_xlat88;
    u_xlat88 = clamp(x_2217, 0.0f, 1.0f);
    let x_2219 : f32 = u_xlat88;
    let x_2220 : f32 = u_xlat88;
    u_xlat88 = (x_2219 * x_2220);
    let x_2222 : f32 = u_xlat85;
    let x_2223 : f32 = u_xlat88;
    u_xlat85 = (x_2222 * x_2223);
    let x_2227 : i32 = u_xlati84;
    let x_2229 : f32 = x_385.x_AdditionalShadowParams[x_2227].w;
    u_xlati88 = i32(x_2229);
    let x_2234 : i32 = u_xlati88;
    u_xlatb11.x = (x_2234 >= 0i);
    let x_2238 : bool = u_xlatb11.x;
    if (x_2238) {
      let x_2242 : i32 = u_xlati84;
      let x_2244 : f32 = x_385.x_AdditionalShadowParams[x_2242].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2244, x_2244, x_2244, x_2244))));
      let x_2250 : bool = u_xlatb11.x;
      if (x_2250) {
        let x_2253 : vec4<f32> = u_xlat10;
        let x_2256 : vec4<f32> = u_xlat10;
        let x_2259 : vec4<bool> = (abs(vec4<f32>(x_2253.z, x_2253.z, x_2253.y, x_2253.z)) >= abs(vec4<f32>(x_2256.x, x_2256.y, x_2256.x, x_2256.x)));
        u_xlatb11 = vec3<bool>(x_2259.x, x_2259.y, x_2259.z);
        let x_2262 : bool = u_xlatb11.y;
        let x_2264 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_2262 & x_2264);
        let x_2268 : vec4<f32> = u_xlat10;
        let x_2271 : vec4<bool> = (-(vec4<f32>(x_2268.z, x_2268.y, x_2268.x, x_2268.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_2271.x, x_2271.y, x_2271.z);
        let x_2275 : bool = u_xlatb12.x;
        u_xlat37.x = select(4.0f, 5.0f, x_2275);
        let x_2280 : bool = u_xlatb12.y;
        u_xlat37.z = select(2.0f, 3.0f, x_2280);
        let x_2285 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_2285);
        let x_2290 : bool = u_xlatb11.z;
        if (x_2290) {
          let x_2295 : f32 = u_xlat37.z;
          x_2291 = x_2295;
        } else {
          let x_2298 : f32 = u_xlat12.x;
          x_2291 = x_2298;
        }
        let x_2299 : f32 = x_2291;
        u_xlat63 = x_2299;
        let x_2301 : bool = u_xlatb11.x;
        if (x_2301) {
          let x_2306 : f32 = u_xlat37.x;
          x_2302 = x_2306;
        } else {
          let x_2308 : f32 = u_xlat63;
          x_2302 = x_2308;
        }
        let x_2309 : f32 = x_2302;
        u_xlat11.x = x_2309;
        let x_2311 : i32 = u_xlati84;
        let x_2313 : f32 = x_385.x_AdditionalShadowParams[x_2311].w;
        u_xlat37.x = trunc(x_2313);
        let x_2317 : f32 = u_xlat11.x;
        let x_2319 : f32 = u_xlat37.x;
        u_xlat11.x = (x_2317 + x_2319);
        let x_2323 : f32 = u_xlat11.x;
        u_xlati88 = i32(x_2323);
      }
      let x_2325 : i32 = u_xlati88;
      u_xlati88 = (x_2325 << bitcast<u32>(2i));
      let x_2327 : vec3<f32> = vs_TEXCOORD1;
      let x_2330 : i32 = u_xlati88;
      let x_2333 : i32 = u_xlati88;
      let x_2337 : vec4<f32> = x_385.x_AdditionalLightsWorldToShadow[((x_2330 + 1i) / 4i)][((x_2333 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2327.y, x_2327.y, x_2327.y, x_2327.y) * x_2337);
      let x_2339 : i32 = u_xlati88;
      let x_2341 : i32 = u_xlati88;
      let x_2344 : vec4<f32> = x_385.x_AdditionalLightsWorldToShadow[(x_2339 / 4i)][(x_2341 % 4i)];
      let x_2345 : vec3<f32> = vs_TEXCOORD1;
      let x_2348 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2344 * vec4<f32>(x_2345.x, x_2345.x, x_2345.x, x_2345.x)) + x_2348);
      let x_2350 : i32 = u_xlati88;
      let x_2353 : i32 = u_xlati88;
      let x_2357 : vec4<f32> = x_385.x_AdditionalLightsWorldToShadow[((x_2350 + 2i) / 4i)][((x_2353 + 2i) % 4i)];
      let x_2358 : vec3<f32> = vs_TEXCOORD1;
      let x_2361 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2357 * vec4<f32>(x_2358.z, x_2358.z, x_2358.z, x_2358.z)) + x_2361);
      let x_2363 : vec4<f32> = u_xlat11;
      let x_2364 : i32 = u_xlati88;
      let x_2367 : i32 = u_xlati88;
      let x_2371 : vec4<f32> = x_385.x_AdditionalLightsWorldToShadow[((x_2364 + 3i) / 4i)][((x_2367 + 3i) % 4i)];
      u_xlat11 = (x_2363 + x_2371);
      let x_2373 : vec4<f32> = u_xlat11;
      let x_2375 : vec4<f32> = u_xlat11;
      let x_2377 : vec3<f32> = (vec3<f32>(x_2373.x, x_2373.y, x_2373.z) / vec3<f32>(x_2375.w, x_2375.w, x_2375.w));
      let x_2378 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
      let x_2381 : i32 = u_xlati84;
      let x_2383 : f32 = x_385.x_AdditionalShadowParams[x_2381].y;
      u_xlatb88 = (0.0f < x_2383);
      let x_2385 : bool = u_xlatb88;
      if (x_2385) {
        let x_2388 : i32 = u_xlati84;
        let x_2390 : f32 = x_385.x_AdditionalShadowParams[x_2388].y;
        u_xlatb88 = (1.0f == x_2390);
        let x_2392 : bool = u_xlatb88;
        if (x_2392) {
          let x_2395 : vec4<f32> = u_xlat11;
          let x_2398 : vec4<f32> = x_385.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2395.x, x_2395.y, x_2395.x, x_2395.y) + x_2398);
          let x_2401 : vec4<f32> = u_xlat12;
          let x_2402 : vec2<f32> = vec2<f32>(x_2401.x, x_2401.y);
          let x_2404 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2402.x, x_2402.y, x_2404);
          let x_2412 : vec3<f32> = txVec30;
          let x_2414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2412.xy, x_2412.z);
          u_xlat13.x = x_2414;
          let x_2417 : vec4<f32> = u_xlat12;
          let x_2418 : vec2<f32> = vec2<f32>(x_2417.z, x_2417.w);
          let x_2420 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
          let x_2427 : vec3<f32> = txVec31;
          let x_2429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
          u_xlat13.y = x_2429;
          let x_2431 : vec4<f32> = u_xlat11;
          let x_2435 : vec4<f32> = x_385.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2431.x, x_2431.y, x_2431.x, x_2431.y) + x_2435);
          let x_2438 : vec4<f32> = u_xlat12;
          let x_2439 : vec2<f32> = vec2<f32>(x_2438.x, x_2438.y);
          let x_2441 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2439.x, x_2439.y, x_2441);
          let x_2448 : vec3<f32> = txVec32;
          let x_2450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2448.xy, x_2448.z);
          u_xlat13.z = x_2450;
          let x_2453 : vec4<f32> = u_xlat12;
          let x_2454 : vec2<f32> = vec2<f32>(x_2453.z, x_2453.w);
          let x_2456 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2454.x, x_2454.y, x_2456);
          let x_2463 : vec3<f32> = txVec33;
          let x_2465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2463.xy, x_2463.z);
          u_xlat13.w = x_2465;
          let x_2467 : vec4<f32> = u_xlat13;
          u_xlat88 = dot(x_2467, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2471 : i32 = u_xlati84;
          let x_2473 : f32 = x_385.x_AdditionalShadowParams[x_2471].y;
          u_xlatb89 = (2.0f == x_2473);
          let x_2475 : bool = u_xlatb89;
          if (x_2475) {
            let x_2478 : vec4<f32> = u_xlat11;
            let x_2482 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2485 : vec2<f32> = ((vec2<f32>(x_2478.x, x_2478.y) * vec2<f32>(x_2482.z, x_2482.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2486 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
            let x_2488 : vec4<f32> = u_xlat12;
            let x_2490 : vec2<f32> = floor(vec2<f32>(x_2488.x, x_2488.y));
            let x_2491 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2490.x, x_2490.y, x_2491.z, x_2491.w);
            let x_2494 : vec4<f32> = u_xlat11;
            let x_2497 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2500 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2494.x, x_2494.y) * vec2<f32>(x_2497.z, x_2497.w)) + -(vec2<f32>(x_2500.x, x_2500.y)));
            let x_2504 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2504.x, x_2504.x, x_2504.y, x_2504.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2507 : vec4<f32> = u_xlat13;
            let x_2509 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2507.x, x_2507.x, x_2507.z, x_2507.z) * vec4<f32>(x_2509.x, x_2509.x, x_2509.z, x_2509.z));
            let x_2512 : vec4<f32> = u_xlat14;
            let x_2514 : vec2<f32> = (vec2<f32>(x_2512.y, x_2512.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2515 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2514.x, x_2515.y, x_2514.y, x_2515.w);
            let x_2517 : vec4<f32> = u_xlat14;
            let x_2520 : vec2<f32> = u_xlat64;
            let x_2522 : vec2<f32> = ((vec2<f32>(x_2517.x, x_2517.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2520));
            let x_2523 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2522.x, x_2522.y, x_2523.z, x_2523.w);
            let x_2525 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2525) + vec2<f32>(1.0f, 1.0f));
            let x_2528 : vec2<f32> = u_xlat64;
            let x_2529 : vec2<f32> = min(x_2528, vec2<f32>(0.0f, 0.0f));
            let x_2530 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2529.x, x_2529.y, x_2530.z, x_2530.w);
            let x_2532 : vec4<f32> = u_xlat15;
            let x_2535 : vec4<f32> = u_xlat15;
            let x_2538 : vec2<f32> = u_xlat66;
            let x_2539 : vec2<f32> = ((-(vec2<f32>(x_2532.x, x_2532.y)) * vec2<f32>(x_2535.x, x_2535.y)) + x_2538);
            let x_2540 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2539.x, x_2539.y, x_2540.z, x_2540.w);
            let x_2542 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2542, vec2<f32>(0.0f, 0.0f));
            let x_2544 : vec2<f32> = u_xlat64;
            let x_2546 : vec2<f32> = u_xlat64;
            let x_2548 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2544) * x_2546) + vec2<f32>(x_2548.y, x_2548.w));
            let x_2551 : vec4<f32> = u_xlat15;
            let x_2553 : vec2<f32> = (vec2<f32>(x_2551.x, x_2551.y) + vec2<f32>(1.0f, 1.0f));
            let x_2554 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2553.x, x_2553.y, x_2554.z, x_2554.w);
            let x_2556 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2556 + vec2<f32>(1.0f, 1.0f));
            let x_2558 : vec4<f32> = u_xlat14;
            let x_2560 : vec2<f32> = (vec2<f32>(x_2558.x, x_2558.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2561 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2560.x, x_2560.y, x_2561.z, x_2561.w);
            let x_2563 : vec2<f32> = u_xlat66;
            let x_2564 : vec2<f32> = (x_2563 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2565 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2564.x, x_2564.y, x_2565.z, x_2565.w);
            let x_2567 : vec4<f32> = u_xlat15;
            let x_2569 : vec2<f32> = (vec2<f32>(x_2567.x, x_2567.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2570 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2569.x, x_2569.y, x_2570.z, x_2570.w);
            let x_2572 : vec2<f32> = u_xlat64;
            let x_2573 : vec2<f32> = (x_2572 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2574 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2573.x, x_2573.y, x_2574.z, x_2574.w);
            let x_2576 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2576.y, x_2576.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2580 : f32 = u_xlat15.x;
            u_xlat16.z = x_2580;
            let x_2583 : f32 = u_xlat64.x;
            u_xlat16.w = x_2583;
            let x_2586 : f32 = u_xlat17.x;
            u_xlat14.z = x_2586;
            let x_2589 : f32 = u_xlat13.x;
            u_xlat14.w = x_2589;
            let x_2591 : vec4<f32> = u_xlat14;
            let x_2593 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2591.z, x_2591.w, x_2591.x, x_2591.z) + vec4<f32>(x_2593.z, x_2593.w, x_2593.x, x_2593.z));
            let x_2597 : f32 = u_xlat16.y;
            u_xlat15.z = x_2597;
            let x_2600 : f32 = u_xlat64.y;
            u_xlat15.w = x_2600;
            let x_2603 : f32 = u_xlat14.y;
            u_xlat17.z = x_2603;
            let x_2606 : f32 = u_xlat13.z;
            u_xlat17.w = x_2606;
            let x_2608 : vec4<f32> = u_xlat15;
            let x_2610 : vec4<f32> = u_xlat17;
            let x_2612 : vec3<f32> = (vec3<f32>(x_2608.z, x_2608.y, x_2608.w) + vec3<f32>(x_2610.z, x_2610.y, x_2610.w));
            let x_2613 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
            let x_2615 : vec4<f32> = u_xlat14;
            let x_2617 : vec4<f32> = u_xlat18;
            let x_2619 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.z, x_2615.w) / vec3<f32>(x_2617.z, x_2617.w, x_2617.y));
            let x_2620 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
            let x_2622 : vec4<f32> = u_xlat14;
            let x_2624 : vec3<f32> = (vec3<f32>(x_2622.x, x_2622.y, x_2622.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2625 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2624.x, x_2624.y, x_2624.z, x_2625.w);
            let x_2627 : vec4<f32> = u_xlat17;
            let x_2629 : vec4<f32> = u_xlat13;
            let x_2631 : vec3<f32> = (vec3<f32>(x_2627.z, x_2627.y, x_2627.w) / vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
            let x_2632 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
            let x_2634 : vec4<f32> = u_xlat15;
            let x_2636 : vec3<f32> = (vec3<f32>(x_2634.x, x_2634.y, x_2634.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2637 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
            let x_2639 : vec4<f32> = u_xlat14;
            let x_2642 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2644 : vec3<f32> = (vec3<f32>(x_2639.y, x_2639.x, x_2639.z) * vec3<f32>(x_2642.x, x_2642.x, x_2642.x));
            let x_2645 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
            let x_2647 : vec4<f32> = u_xlat15;
            let x_2650 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2652 : vec3<f32> = (vec3<f32>(x_2647.x, x_2647.y, x_2647.z) * vec3<f32>(x_2650.y, x_2650.y, x_2650.y));
            let x_2653 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2653.w);
            let x_2656 : f32 = u_xlat15.x;
            u_xlat14.w = x_2656;
            let x_2658 : vec4<f32> = u_xlat12;
            let x_2661 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2664 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2658.x, x_2658.y, x_2658.x, x_2658.y) * vec4<f32>(x_2661.x, x_2661.y, x_2661.x, x_2661.y)) + vec4<f32>(x_2664.y, x_2664.w, x_2664.x, x_2664.w));
            let x_2667 : vec4<f32> = u_xlat12;
            let x_2670 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2673 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2667.x, x_2667.y) * vec2<f32>(x_2670.x, x_2670.y)) + vec2<f32>(x_2673.z, x_2673.w));
            let x_2677 : f32 = u_xlat14.y;
            u_xlat15.w = x_2677;
            let x_2679 : vec4<f32> = u_xlat15;
            let x_2680 : vec2<f32> = vec2<f32>(x_2679.y, x_2679.z);
            let x_2681 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2681.x, x_2680.x, x_2681.z, x_2680.y);
            let x_2683 : vec4<f32> = u_xlat12;
            let x_2686 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2689 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2683.x, x_2683.y, x_2683.x, x_2683.y) * vec4<f32>(x_2686.x, x_2686.y, x_2686.x, x_2686.y)) + vec4<f32>(x_2689.x, x_2689.y, x_2689.z, x_2689.y));
            let x_2692 : vec4<f32> = u_xlat12;
            let x_2695 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2698 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2692.x, x_2692.y, x_2692.x, x_2692.y) * vec4<f32>(x_2695.x, x_2695.y, x_2695.x, x_2695.y)) + vec4<f32>(x_2698.w, x_2698.y, x_2698.w, x_2698.z));
            let x_2701 : vec4<f32> = u_xlat12;
            let x_2704 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2707 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2701.x, x_2701.y, x_2701.x, x_2701.y) * vec4<f32>(x_2704.x, x_2704.y, x_2704.x, x_2704.y)) + vec4<f32>(x_2707.x, x_2707.w, x_2707.z, x_2707.w));
            let x_2710 : vec4<f32> = u_xlat13;
            let x_2712 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2710.x, x_2710.x, x_2710.x, x_2710.y) * vec4<f32>(x_2712.z, x_2712.w, x_2712.y, x_2712.z));
            let x_2716 : vec4<f32> = u_xlat13;
            let x_2718 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2716.y, x_2716.y, x_2716.z, x_2716.z) * x_2718);
            let x_2722 : f32 = u_xlat13.z;
            let x_2724 : f32 = u_xlat18.y;
            u_xlat89 = (x_2722 * x_2724);
            let x_2727 : vec4<f32> = u_xlat16;
            let x_2728 : vec2<f32> = vec2<f32>(x_2727.x, x_2727.y);
            let x_2730 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2728.x, x_2728.y, x_2730);
            let x_2737 : vec3<f32> = txVec34;
            let x_2739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2737.xy, x_2737.z);
            u_xlat12.x = x_2739;
            let x_2742 : vec4<f32> = u_xlat16;
            let x_2743 : vec2<f32> = vec2<f32>(x_2742.z, x_2742.w);
            let x_2745 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2743.x, x_2743.y, x_2745);
            let x_2753 : vec3<f32> = txVec35;
            let x_2755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2753.xy, x_2753.z);
            u_xlat38 = x_2755;
            let x_2756 : f32 = u_xlat38;
            let x_2758 : f32 = u_xlat19.y;
            u_xlat38 = (x_2756 * x_2758);
            let x_2761 : f32 = u_xlat19.x;
            let x_2763 : f32 = u_xlat12.x;
            let x_2765 : f32 = u_xlat38;
            u_xlat12.x = ((x_2761 * x_2763) + x_2765);
            let x_2769 : vec2<f32> = u_xlat64;
            let x_2771 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2769.x, x_2769.y, x_2771);
            let x_2778 : vec3<f32> = txVec36;
            let x_2780 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2778.xy, x_2778.z);
            u_xlat38 = x_2780;
            let x_2782 : f32 = u_xlat19.z;
            let x_2783 : f32 = u_xlat38;
            let x_2786 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2782 * x_2783) + x_2786);
            let x_2790 : vec4<f32> = u_xlat15;
            let x_2791 : vec2<f32> = vec2<f32>(x_2790.x, x_2790.y);
            let x_2793 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2791.x, x_2791.y, x_2793);
            let x_2800 : vec3<f32> = txVec37;
            let x_2802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2800.xy, x_2800.z);
            u_xlat38 = x_2802;
            let x_2804 : f32 = u_xlat19.w;
            let x_2805 : f32 = u_xlat38;
            let x_2808 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2804 * x_2805) + x_2808);
            let x_2812 : vec4<f32> = u_xlat17;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.x, x_2812.y);
            let x_2815 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec38;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat38 = x_2824;
            let x_2826 : f32 = u_xlat20.x;
            let x_2827 : f32 = u_xlat38;
            let x_2830 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2826 * x_2827) + x_2830);
            let x_2834 : vec4<f32> = u_xlat17;
            let x_2835 : vec2<f32> = vec2<f32>(x_2834.z, x_2834.w);
            let x_2837 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2835.x, x_2835.y, x_2837);
            let x_2844 : vec3<f32> = txVec39;
            let x_2846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2844.xy, x_2844.z);
            u_xlat38 = x_2846;
            let x_2848 : f32 = u_xlat20.y;
            let x_2849 : f32 = u_xlat38;
            let x_2852 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2848 * x_2849) + x_2852);
            let x_2856 : vec4<f32> = u_xlat15;
            let x_2857 : vec2<f32> = vec2<f32>(x_2856.z, x_2856.w);
            let x_2859 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2857.x, x_2857.y, x_2859);
            let x_2866 : vec3<f32> = txVec40;
            let x_2868 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2866.xy, x_2866.z);
            u_xlat38 = x_2868;
            let x_2870 : f32 = u_xlat20.z;
            let x_2871 : f32 = u_xlat38;
            let x_2874 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2870 * x_2871) + x_2874);
            let x_2878 : vec4<f32> = u_xlat14;
            let x_2879 : vec2<f32> = vec2<f32>(x_2878.x, x_2878.y);
            let x_2881 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2879.x, x_2879.y, x_2881);
            let x_2888 : vec3<f32> = txVec41;
            let x_2890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2888.xy, x_2888.z);
            u_xlat38 = x_2890;
            let x_2892 : f32 = u_xlat20.w;
            let x_2893 : f32 = u_xlat38;
            let x_2896 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2892 * x_2893) + x_2896);
            let x_2900 : vec4<f32> = u_xlat14;
            let x_2901 : vec2<f32> = vec2<f32>(x_2900.z, x_2900.w);
            let x_2903 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2901.x, x_2901.y, x_2903);
            let x_2910 : vec3<f32> = txVec42;
            let x_2912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2910.xy, x_2910.z);
            u_xlat38 = x_2912;
            let x_2913 : f32 = u_xlat89;
            let x_2914 : f32 = u_xlat38;
            let x_2917 : f32 = u_xlat12.x;
            u_xlat88 = ((x_2913 * x_2914) + x_2917);
          } else {
            let x_2920 : vec4<f32> = u_xlat11;
            let x_2923 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2926 : vec2<f32> = ((vec2<f32>(x_2920.x, x_2920.y) * vec2<f32>(x_2923.z, x_2923.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2927 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2926.x, x_2926.y, x_2927.z, x_2927.w);
            let x_2929 : vec4<f32> = u_xlat12;
            let x_2931 : vec2<f32> = floor(vec2<f32>(x_2929.x, x_2929.y));
            let x_2932 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2931.x, x_2931.y, x_2932.z, x_2932.w);
            let x_2934 : vec4<f32> = u_xlat11;
            let x_2937 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_2940 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2934.x, x_2934.y) * vec2<f32>(x_2937.z, x_2937.w)) + -(vec2<f32>(x_2940.x, x_2940.y)));
            let x_2944 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2944.x, x_2944.x, x_2944.y, x_2944.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2947 : vec4<f32> = u_xlat13;
            let x_2949 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2947.x, x_2947.x, x_2947.z, x_2947.z) * vec4<f32>(x_2949.x, x_2949.x, x_2949.z, x_2949.z));
            let x_2952 : vec4<f32> = u_xlat14;
            let x_2954 : vec2<f32> = (vec2<f32>(x_2952.y, x_2952.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2955 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2955.x, x_2954.x, x_2955.z, x_2954.y);
            let x_2957 : vec4<f32> = u_xlat14;
            let x_2960 : vec2<f32> = u_xlat64;
            let x_2962 : vec2<f32> = ((vec2<f32>(x_2957.x, x_2957.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2960));
            let x_2963 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2962.x, x_2963.y, x_2962.y, x_2963.w);
            let x_2965 : vec2<f32> = u_xlat64;
            let x_2967 : vec2<f32> = (-(x_2965) + vec2<f32>(1.0f, 1.0f));
            let x_2968 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2970 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2970, vec2<f32>(0.0f, 0.0f));
            let x_2972 : vec2<f32> = u_xlat66;
            let x_2974 : vec2<f32> = u_xlat66;
            let x_2976 : vec4<f32> = u_xlat14;
            let x_2978 : vec2<f32> = ((-(x_2972) * x_2974) + vec2<f32>(x_2976.x, x_2976.y));
            let x_2979 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2978.x, x_2978.y, x_2979.z, x_2979.w);
            let x_2981 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2981, vec2<f32>(0.0f, 0.0f));
            let x_2984 : vec2<f32> = u_xlat66;
            let x_2986 : vec2<f32> = u_xlat66;
            let x_2988 : vec4<f32> = u_xlat13;
            let x_2990 : vec2<f32> = ((-(x_2984) * x_2986) + vec2<f32>(x_2988.y, x_2988.w));
            let x_2991 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2990.x, x_2991.y, x_2990.y);
            let x_2993 : vec4<f32> = u_xlat14;
            let x_2995 : vec2<f32> = (vec2<f32>(x_2993.x, x_2993.y) + vec2<f32>(2.0f, 2.0f));
            let x_2996 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2995.x, x_2995.y, x_2996.z, x_2996.w);
            let x_2998 : vec3<f32> = u_xlat39;
            let x_3000 : vec2<f32> = (vec2<f32>(x_2998.x, x_2998.z) + vec2<f32>(2.0f, 2.0f));
            let x_3001 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3001.x, x_3000.x, x_3001.z, x_3000.y);
            let x_3004 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3004 * 0.08163200318813323975f);
            let x_3007 : vec4<f32> = u_xlat13;
            let x_3009 : vec3<f32> = (vec3<f32>(x_3007.z, x_3007.x, x_3007.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3010 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3009.x, x_3009.y, x_3009.z, x_3010.w);
            let x_3012 : vec4<f32> = u_xlat14;
            let x_3014 : vec2<f32> = (vec2<f32>(x_3012.x, x_3012.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3015 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3014.x, x_3014.y, x_3015.z, x_3015.w);
            let x_3018 : f32 = u_xlat17.y;
            u_xlat16.x = x_3018;
            let x_3020 : vec2<f32> = u_xlat64;
            let x_3023 : vec2<f32> = ((vec2<f32>(x_3020.x, x_3020.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3024 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3024.x, x_3023.x, x_3024.z, x_3023.y);
            let x_3026 : vec2<f32> = u_xlat64;
            let x_3029 : vec2<f32> = ((vec2<f32>(x_3026.x, x_3026.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3030 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3029.x, x_3030.y, x_3029.y, x_3030.w);
            let x_3033 : f32 = u_xlat13.x;
            u_xlat14.y = x_3033;
            let x_3036 : f32 = u_xlat15.y;
            u_xlat14.w = x_3036;
            let x_3038 : vec4<f32> = u_xlat14;
            let x_3039 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3038 + x_3039);
            let x_3041 : vec2<f32> = u_xlat64;
            let x_3044 : vec2<f32> = ((vec2<f32>(x_3041.y, x_3041.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3045 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3045.x, x_3044.x, x_3045.z, x_3044.y);
            let x_3047 : vec2<f32> = u_xlat64;
            let x_3050 : vec2<f32> = ((vec2<f32>(x_3047.y, x_3047.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3051 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3050.x, x_3051.y, x_3050.y, x_3051.w);
            let x_3054 : f32 = u_xlat13.y;
            u_xlat15.y = x_3054;
            let x_3056 : vec4<f32> = u_xlat15;
            let x_3057 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3056 + x_3057);
            let x_3059 : vec4<f32> = u_xlat14;
            let x_3060 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3059 / x_3060);
            let x_3062 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3062 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3064 : vec4<f32> = u_xlat15;
            let x_3065 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3064 / x_3065);
            let x_3067 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3067 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3069 : vec4<f32> = u_xlat14;
            let x_3072 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3069.w, x_3069.x, x_3069.y, x_3069.z) * vec4<f32>(x_3072.x, x_3072.x, x_3072.x, x_3072.x));
            let x_3075 : vec4<f32> = u_xlat15;
            let x_3078 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3075.x, x_3075.w, x_3075.y, x_3075.z) * vec4<f32>(x_3078.y, x_3078.y, x_3078.y, x_3078.y));
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3082 : vec3<f32> = vec3<f32>(x_3081.y, x_3081.z, x_3081.w);
            let x_3083 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3082.x, x_3083.y, x_3082.y, x_3082.z);
            let x_3086 : f32 = u_xlat15.x;
            u_xlat17.y = x_3086;
            let x_3088 : vec4<f32> = u_xlat12;
            let x_3091 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3094 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3088.x, x_3088.y, x_3088.x, x_3088.y) * vec4<f32>(x_3091.x, x_3091.y, x_3091.x, x_3091.y)) + vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3094.y));
            let x_3097 : vec4<f32> = u_xlat12;
            let x_3100 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3097.x, x_3097.y) * vec2<f32>(x_3100.x, x_3100.y)) + vec2<f32>(x_3103.w, x_3103.y));
            let x_3107 : f32 = u_xlat17.y;
            u_xlat14.y = x_3107;
            let x_3110 : f32 = u_xlat15.z;
            u_xlat17.y = x_3110;
            let x_3112 : vec4<f32> = u_xlat12;
            let x_3115 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3112.x, x_3112.y, x_3112.x, x_3112.y) * vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y)) + vec4<f32>(x_3118.x, x_3118.y, x_3118.z, x_3118.y));
            let x_3121 : vec4<f32> = u_xlat12;
            let x_3124 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3127 : vec4<f32> = u_xlat17;
            let x_3129 : vec2<f32> = ((vec2<f32>(x_3121.x, x_3121.y) * vec2<f32>(x_3124.x, x_3124.y)) + vec2<f32>(x_3127.w, x_3127.y));
            let x_3130 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3129.x, x_3129.y, x_3130.z, x_3130.w);
            let x_3133 : f32 = u_xlat17.y;
            u_xlat14.z = x_3133;
            let x_3136 : vec4<f32> = u_xlat12;
            let x_3139 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3142 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3136.x, x_3136.y, x_3136.x, x_3136.y) * vec4<f32>(x_3139.x, x_3139.y, x_3139.x, x_3139.y)) + vec4<f32>(x_3142.x, x_3142.y, x_3142.x, x_3142.z));
            let x_3146 : f32 = u_xlat15.w;
            u_xlat17.y = x_3146;
            let x_3149 : vec4<f32> = u_xlat12;
            let x_3152 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3155 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3149.x, x_3149.y, x_3149.x, x_3149.y) * vec4<f32>(x_3152.x, x_3152.y, x_3152.x, x_3152.y)) + vec4<f32>(x_3155.x, x_3155.y, x_3155.z, x_3155.y));
            let x_3159 : vec4<f32> = u_xlat12;
            let x_3162 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3165 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3159.x, x_3159.y) * vec2<f32>(x_3162.x, x_3162.y)) + vec2<f32>(x_3165.w, x_3165.y));
            let x_3169 : f32 = u_xlat17.y;
            u_xlat14.w = x_3169;
            let x_3172 : vec4<f32> = u_xlat12;
            let x_3175 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3178 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3172.x, x_3172.y) * vec2<f32>(x_3175.x, x_3175.y)) + vec2<f32>(x_3178.x, x_3178.w));
            let x_3181 : vec4<f32> = u_xlat17;
            let x_3182 : vec3<f32> = vec3<f32>(x_3181.x, x_3181.z, x_3181.w);
            let x_3183 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3182.x, x_3183.y, x_3182.y, x_3182.z);
            let x_3185 : vec4<f32> = u_xlat12;
            let x_3188 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3191 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3185.x, x_3185.y, x_3185.x, x_3185.y) * vec4<f32>(x_3188.x, x_3188.y, x_3188.x, x_3188.y)) + vec4<f32>(x_3191.x, x_3191.y, x_3191.z, x_3191.y));
            let x_3195 : vec4<f32> = u_xlat12;
            let x_3198 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3201 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3195.x, x_3195.y) * vec2<f32>(x_3198.x, x_3198.y)) + vec2<f32>(x_3201.w, x_3201.y));
            let x_3205 : f32 = u_xlat14.x;
            u_xlat15.x = x_3205;
            let x_3207 : vec4<f32> = u_xlat12;
            let x_3210 : vec4<f32> = x_385.x_AdditionalShadowmapSize;
            let x_3213 : vec4<f32> = u_xlat15;
            let x_3215 : vec2<f32> = ((vec2<f32>(x_3207.x, x_3207.y) * vec2<f32>(x_3210.x, x_3210.y)) + vec2<f32>(x_3213.x, x_3213.y));
            let x_3216 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3215.x, x_3215.y, x_3216.z, x_3216.w);
            let x_3219 : vec4<f32> = u_xlat13;
            let x_3221 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3219.x, x_3219.x, x_3219.x, x_3219.x) * x_3221);
            let x_3224 : vec4<f32> = u_xlat13;
            let x_3226 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3224.y, x_3224.y, x_3224.y, x_3224.y) * x_3226);
            let x_3229 : vec4<f32> = u_xlat13;
            let x_3231 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3229.z, x_3229.z, x_3229.z, x_3229.z) * x_3231);
            let x_3233 : vec4<f32> = u_xlat13;
            let x_3235 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3233.w, x_3233.w, x_3233.w, x_3233.w) * x_3235);
            let x_3238 : vec4<f32> = u_xlat18;
            let x_3239 : vec2<f32> = vec2<f32>(x_3238.x, x_3238.y);
            let x_3241 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3239.x, x_3239.y, x_3241);
            let x_3248 : vec3<f32> = txVec43;
            let x_3250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3248.xy, x_3248.z);
            u_xlat89 = x_3250;
            let x_3252 : vec4<f32> = u_xlat18;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.z, x_3252.w);
            let x_3255 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec44;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat14.x = x_3264;
            let x_3267 : f32 = u_xlat14.x;
            let x_3269 : f32 = u_xlat23.y;
            u_xlat14.x = (x_3267 * x_3269);
            let x_3273 : f32 = u_xlat23.x;
            let x_3274 : f32 = u_xlat89;
            let x_3277 : f32 = u_xlat14.x;
            u_xlat89 = ((x_3273 * x_3274) + x_3277);
            let x_3280 : vec2<f32> = u_xlat64;
            let x_3282 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3280.x, x_3280.y, x_3282);
            let x_3289 : vec3<f32> = txVec45;
            let x_3291 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3289.xy, x_3289.z);
            u_xlat64.x = x_3291;
            let x_3294 : f32 = u_xlat23.z;
            let x_3296 : f32 = u_xlat64.x;
            let x_3298 : f32 = u_xlat89;
            u_xlat89 = ((x_3294 * x_3296) + x_3298);
            let x_3301 : vec4<f32> = u_xlat21;
            let x_3302 : vec2<f32> = vec2<f32>(x_3301.x, x_3301.y);
            let x_3304 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3302.x, x_3302.y, x_3304);
            let x_3311 : vec3<f32> = txVec46;
            let x_3313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3311.xy, x_3311.z);
            u_xlat64.x = x_3313;
            let x_3316 : f32 = u_xlat23.w;
            let x_3318 : f32 = u_xlat64.x;
            let x_3320 : f32 = u_xlat89;
            u_xlat89 = ((x_3316 * x_3318) + x_3320);
            let x_3323 : vec4<f32> = u_xlat19;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.x, x_3323.y);
            let x_3326 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec47;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat64.x = x_3335;
            let x_3338 : f32 = u_xlat24.x;
            let x_3340 : f32 = u_xlat64.x;
            let x_3342 : f32 = u_xlat89;
            u_xlat89 = ((x_3338 * x_3340) + x_3342);
            let x_3345 : vec4<f32> = u_xlat19;
            let x_3346 : vec2<f32> = vec2<f32>(x_3345.z, x_3345.w);
            let x_3348 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3346.x, x_3346.y, x_3348);
            let x_3355 : vec3<f32> = txVec48;
            let x_3357 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3355.xy, x_3355.z);
            u_xlat64.x = x_3357;
            let x_3360 : f32 = u_xlat24.y;
            let x_3362 : f32 = u_xlat64.x;
            let x_3364 : f32 = u_xlat89;
            u_xlat89 = ((x_3360 * x_3362) + x_3364);
            let x_3367 : vec4<f32> = u_xlat20;
            let x_3368 : vec2<f32> = vec2<f32>(x_3367.x, x_3367.y);
            let x_3370 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3368.x, x_3368.y, x_3370);
            let x_3377 : vec3<f32> = txVec49;
            let x_3379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3377.xy, x_3377.z);
            u_xlat64.x = x_3379;
            let x_3382 : f32 = u_xlat24.z;
            let x_3384 : f32 = u_xlat64.x;
            let x_3386 : f32 = u_xlat89;
            u_xlat89 = ((x_3382 * x_3384) + x_3386);
            let x_3389 : vec4<f32> = u_xlat21;
            let x_3390 : vec2<f32> = vec2<f32>(x_3389.z, x_3389.w);
            let x_3392 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3390.x, x_3390.y, x_3392);
            let x_3399 : vec3<f32> = txVec50;
            let x_3401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3399.xy, x_3399.z);
            u_xlat64.x = x_3401;
            let x_3404 : f32 = u_xlat24.w;
            let x_3406 : f32 = u_xlat64.x;
            let x_3408 : f32 = u_xlat89;
            u_xlat89 = ((x_3404 * x_3406) + x_3408);
            let x_3411 : vec4<f32> = u_xlat22;
            let x_3412 : vec2<f32> = vec2<f32>(x_3411.x, x_3411.y);
            let x_3414 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3412.x, x_3412.y, x_3414);
            let x_3421 : vec3<f32> = txVec51;
            let x_3423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3421.xy, x_3421.z);
            u_xlat64.x = x_3423;
            let x_3426 : f32 = u_xlat25.x;
            let x_3428 : f32 = u_xlat64.x;
            let x_3430 : f32 = u_xlat89;
            u_xlat89 = ((x_3426 * x_3428) + x_3430);
            let x_3433 : vec4<f32> = u_xlat22;
            let x_3434 : vec2<f32> = vec2<f32>(x_3433.z, x_3433.w);
            let x_3436 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3434.x, x_3434.y, x_3436);
            let x_3443 : vec3<f32> = txVec52;
            let x_3445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3443.xy, x_3443.z);
            u_xlat64.x = x_3445;
            let x_3448 : f32 = u_xlat25.y;
            let x_3450 : f32 = u_xlat64.x;
            let x_3452 : f32 = u_xlat89;
            u_xlat89 = ((x_3448 * x_3450) + x_3452);
            let x_3455 : vec2<f32> = u_xlat40;
            let x_3457 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3455.x, x_3455.y, x_3457);
            let x_3464 : vec3<f32> = txVec53;
            let x_3466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3464.xy, x_3464.z);
            u_xlat64.x = x_3466;
            let x_3469 : f32 = u_xlat25.z;
            let x_3471 : f32 = u_xlat64.x;
            let x_3473 : f32 = u_xlat89;
            u_xlat89 = ((x_3469 * x_3471) + x_3473);
            let x_3476 : vec2<f32> = u_xlat72;
            let x_3478 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3476.x, x_3476.y, x_3478);
            let x_3485 : vec3<f32> = txVec54;
            let x_3487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3485.xy, x_3485.z);
            u_xlat64.x = x_3487;
            let x_3490 : f32 = u_xlat25.w;
            let x_3492 : f32 = u_xlat64.x;
            let x_3494 : f32 = u_xlat89;
            u_xlat89 = ((x_3490 * x_3492) + x_3494);
            let x_3497 : vec4<f32> = u_xlat17;
            let x_3498 : vec2<f32> = vec2<f32>(x_3497.x, x_3497.y);
            let x_3500 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3498.x, x_3498.y, x_3500);
            let x_3507 : vec3<f32> = txVec55;
            let x_3509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3507.xy, x_3507.z);
            u_xlat64.x = x_3509;
            let x_3512 : f32 = u_xlat13.x;
            let x_3514 : f32 = u_xlat64.x;
            let x_3516 : f32 = u_xlat89;
            u_xlat89 = ((x_3512 * x_3514) + x_3516);
            let x_3519 : vec4<f32> = u_xlat17;
            let x_3520 : vec2<f32> = vec2<f32>(x_3519.z, x_3519.w);
            let x_3522 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3520.x, x_3520.y, x_3522);
            let x_3529 : vec3<f32> = txVec56;
            let x_3531 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3529.xy, x_3529.z);
            u_xlat64.x = x_3531;
            let x_3534 : f32 = u_xlat13.y;
            let x_3536 : f32 = u_xlat64.x;
            let x_3538 : f32 = u_xlat89;
            u_xlat89 = ((x_3534 * x_3536) + x_3538);
            let x_3541 : vec2<f32> = u_xlat67;
            let x_3543 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3541.x, x_3541.y, x_3543);
            let x_3550 : vec3<f32> = txVec57;
            let x_3552 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3550.xy, x_3550.z);
            u_xlat64.x = x_3552;
            let x_3555 : f32 = u_xlat13.z;
            let x_3557 : f32 = u_xlat64.x;
            let x_3559 : f32 = u_xlat89;
            u_xlat89 = ((x_3555 * x_3557) + x_3559);
            let x_3562 : vec4<f32> = u_xlat12;
            let x_3563 : vec2<f32> = vec2<f32>(x_3562.x, x_3562.y);
            let x_3565 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3563.x, x_3563.y, x_3565);
            let x_3572 : vec3<f32> = txVec58;
            let x_3574 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3572.xy, x_3572.z);
            u_xlat12.x = x_3574;
            let x_3577 : f32 = u_xlat13.w;
            let x_3579 : f32 = u_xlat12.x;
            let x_3581 : f32 = u_xlat89;
            u_xlat88 = ((x_3577 * x_3579) + x_3581);
          }
        }
      } else {
        let x_3585 : vec4<f32> = u_xlat11;
        let x_3586 : vec2<f32> = vec2<f32>(x_3585.x, x_3585.y);
        let x_3588 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3586.x, x_3586.y, x_3588);
        let x_3595 : vec3<f32> = txVec59;
        let x_3597 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3595.xy, x_3595.z);
        u_xlat88 = x_3597;
      }
      let x_3598 : i32 = u_xlati84;
      let x_3600 : f32 = x_385.x_AdditionalShadowParams[x_3598].x;
      u_xlat11.x = (1.0f + -(x_3600));
      let x_3604 : f32 = u_xlat88;
      let x_3605 : i32 = u_xlati84;
      let x_3607 : f32 = x_385.x_AdditionalShadowParams[x_3605].x;
      let x_3610 : f32 = u_xlat11.x;
      u_xlat88 = ((x_3604 * x_3607) + x_3610);
      let x_3613 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_3613);
      let x_3618 : f32 = u_xlat11.z;
      u_xlatb37 = (x_3618 >= 1.0f);
      let x_3620 : bool = u_xlatb37;
      let x_3622 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_3620 | x_3622);
      let x_3626 : bool = u_xlatb11.x;
      let x_3627 : f32 = u_xlat88;
      u_xlat88 = select(x_3627, 1.0f, x_3626);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_3630 : f32 = u_xlat88;
    u_xlat11.x = (-(x_3630) + 1.0f);
    let x_3634 : f32 = u_xlat81;
    let x_3636 : f32 = u_xlat11.x;
    let x_3638 : f32 = u_xlat88;
    u_xlat88 = ((x_3634 * x_3636) + x_3638);
    let x_3641 : i32 = u_xlati84;
    u_xlati11 = (1i << bitcast<u32>((x_3641 & 31i)));
    let x_3645 : i32 = u_xlati11;
    let x_3648 : f32 = x_1712.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_3645) & bitcast<u32>(x_3648)));
    let x_3652 : i32 = u_xlati11;
    if ((x_3652 != 0i)) {
      let x_3656 : i32 = u_xlati84;
      let x_3658 : f32 = x_1712.x_AdditionalLightsLightTypes[x_3656].el;
      u_xlati11 = i32(x_3658);
      let x_3661 : i32 = u_xlati11;
      u_xlati37 = select(1i, 0i, (x_3661 != 0i));
      let x_3665 : i32 = u_xlati84;
      u_xlati63 = (x_3665 << bitcast<u32>(2i));
      let x_3667 : i32 = u_xlati37;
      if ((x_3667 != 0i)) {
        let x_3671 : vec3<f32> = vs_TEXCOORD1;
        let x_3673 : i32 = u_xlati63;
        let x_3676 : i32 = u_xlati63;
        let x_3680 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3673 + 1i) / 4i)][((x_3676 + 1i) % 4i)];
        let x_3682 : vec3<f32> = (vec3<f32>(x_3671.y, x_3671.y, x_3671.y) * vec3<f32>(x_3680.x, x_3680.y, x_3680.w));
        let x_3683 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3682.x, x_3682.y, x_3682.z, x_3683.w);
        let x_3685 : i32 = u_xlati63;
        let x_3687 : i32 = u_xlati63;
        let x_3690 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[(x_3685 / 4i)][(x_3687 % 4i)];
        let x_3692 : vec3<f32> = vs_TEXCOORD1;
        let x_3695 : vec4<f32> = u_xlat12;
        let x_3697 : vec3<f32> = ((vec3<f32>(x_3690.x, x_3690.y, x_3690.w) * vec3<f32>(x_3692.x, x_3692.x, x_3692.x)) + vec3<f32>(x_3695.x, x_3695.y, x_3695.z));
        let x_3698 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3697.x, x_3697.y, x_3697.z, x_3698.w);
        let x_3700 : i32 = u_xlati63;
        let x_3703 : i32 = u_xlati63;
        let x_3707 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3700 + 2i) / 4i)][((x_3703 + 2i) % 4i)];
        let x_3709 : vec3<f32> = vs_TEXCOORD1;
        let x_3712 : vec4<f32> = u_xlat12;
        let x_3714 : vec3<f32> = ((vec3<f32>(x_3707.x, x_3707.y, x_3707.w) * vec3<f32>(x_3709.z, x_3709.z, x_3709.z)) + vec3<f32>(x_3712.x, x_3712.y, x_3712.z));
        let x_3715 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3714.x, x_3714.y, x_3714.z, x_3715.w);
        let x_3717 : vec4<f32> = u_xlat12;
        let x_3719 : i32 = u_xlati63;
        let x_3722 : i32 = u_xlati63;
        let x_3726 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3719 + 3i) / 4i)][((x_3722 + 3i) % 4i)];
        let x_3728 : vec3<f32> = (vec3<f32>(x_3717.x, x_3717.y, x_3717.z) + vec3<f32>(x_3726.x, x_3726.y, x_3726.w));
        let x_3729 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3728.x, x_3728.y, x_3728.z, x_3729.w);
        let x_3731 : vec4<f32> = u_xlat12;
        let x_3733 : vec4<f32> = u_xlat12;
        let x_3735 : vec2<f32> = (vec2<f32>(x_3731.x, x_3731.y) / vec2<f32>(x_3733.z, x_3733.z));
        let x_3736 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3735.x, x_3736.y, x_3735.y);
        let x_3738 : vec3<f32> = u_xlat37;
        let x_3741 : vec2<f32> = ((vec2<f32>(x_3738.x, x_3738.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3742 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3741.x, x_3742.y, x_3741.y);
        let x_3744 : vec3<f32> = u_xlat37;
        let x_3748 : vec2<f32> = clamp(vec2<f32>(x_3744.x, x_3744.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3749 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3748.x, x_3749.y, x_3748.y);
        let x_3751 : i32 = u_xlati84;
        let x_3753 : vec4<f32> = x_1712.x_AdditionalLightsCookieAtlasUVRects[x_3751];
        let x_3755 : vec3<f32> = u_xlat37;
        let x_3758 : i32 = u_xlati84;
        let x_3760 : vec4<f32> = x_1712.x_AdditionalLightsCookieAtlasUVRects[x_3758];
        let x_3762 : vec2<f32> = ((vec2<f32>(x_3753.x, x_3753.y) * vec2<f32>(x_3755.x, x_3755.z)) + vec2<f32>(x_3760.z, x_3760.w));
        let x_3763 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3762.x, x_3763.y, x_3762.y);
      } else {
        let x_3766 : i32 = u_xlati11;
        u_xlatb11.x = (x_3766 == 1i);
        let x_3770 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_3770);
        let x_3772 : i32 = u_xlati11;
        if ((x_3772 != 0i)) {
          let x_3776 : vec3<f32> = vs_TEXCOORD1;
          let x_3778 : i32 = u_xlati63;
          let x_3781 : i32 = u_xlati63;
          let x_3785 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3778 + 1i) / 4i)][((x_3781 + 1i) % 4i)];
          let x_3787 : vec2<f32> = (vec2<f32>(x_3776.y, x_3776.y) * vec2<f32>(x_3785.x, x_3785.y));
          let x_3788 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3787.x, x_3787.y, x_3788.z, x_3788.w);
          let x_3790 : i32 = u_xlati63;
          let x_3792 : i32 = u_xlati63;
          let x_3795 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[(x_3790 / 4i)][(x_3792 % 4i)];
          let x_3797 : vec3<f32> = vs_TEXCOORD1;
          let x_3800 : vec4<f32> = u_xlat12;
          let x_3802 : vec2<f32> = ((vec2<f32>(x_3795.x, x_3795.y) * vec2<f32>(x_3797.x, x_3797.x)) + vec2<f32>(x_3800.x, x_3800.y));
          let x_3803 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3802.x, x_3802.y, x_3803.z, x_3803.w);
          let x_3805 : i32 = u_xlati63;
          let x_3808 : i32 = u_xlati63;
          let x_3812 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3805 + 2i) / 4i)][((x_3808 + 2i) % 4i)];
          let x_3814 : vec3<f32> = vs_TEXCOORD1;
          let x_3817 : vec4<f32> = u_xlat12;
          let x_3819 : vec2<f32> = ((vec2<f32>(x_3812.x, x_3812.y) * vec2<f32>(x_3814.z, x_3814.z)) + vec2<f32>(x_3817.x, x_3817.y));
          let x_3820 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3819.x, x_3819.y, x_3820.z, x_3820.w);
          let x_3822 : vec4<f32> = u_xlat12;
          let x_3824 : i32 = u_xlati63;
          let x_3827 : i32 = u_xlati63;
          let x_3831 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3824 + 3i) / 4i)][((x_3827 + 3i) % 4i)];
          let x_3833 : vec2<f32> = (vec2<f32>(x_3822.x, x_3822.y) + vec2<f32>(x_3831.x, x_3831.y));
          let x_3834 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3833.x, x_3833.y, x_3834.z, x_3834.w);
          let x_3836 : vec4<f32> = u_xlat12;
          let x_3839 : vec2<f32> = ((vec2<f32>(x_3836.x, x_3836.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3840 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3839.x, x_3839.y, x_3840.z, x_3840.w);
          let x_3842 : vec4<f32> = u_xlat12;
          let x_3844 : vec2<f32> = fract(vec2<f32>(x_3842.x, x_3842.y));
          let x_3845 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3844.x, x_3844.y, x_3845.z, x_3845.w);
          let x_3847 : i32 = u_xlati84;
          let x_3849 : vec4<f32> = x_1712.x_AdditionalLightsCookieAtlasUVRects[x_3847];
          let x_3851 : vec4<f32> = u_xlat12;
          let x_3854 : i32 = u_xlati84;
          let x_3856 : vec4<f32> = x_1712.x_AdditionalLightsCookieAtlasUVRects[x_3854];
          let x_3858 : vec2<f32> = ((vec2<f32>(x_3849.x, x_3849.y) * vec2<f32>(x_3851.x, x_3851.y)) + vec2<f32>(x_3856.z, x_3856.w));
          let x_3859 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3858.x, x_3859.y, x_3858.y);
        } else {
          let x_3862 : vec3<f32> = vs_TEXCOORD1;
          let x_3864 : i32 = u_xlati63;
          let x_3867 : i32 = u_xlati63;
          let x_3871 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3864 + 1i) / 4i)][((x_3867 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3862.y, x_3862.y, x_3862.y, x_3862.y) * x_3871);
          let x_3873 : i32 = u_xlati63;
          let x_3875 : i32 = u_xlati63;
          let x_3878 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[(x_3873 / 4i)][(x_3875 % 4i)];
          let x_3879 : vec3<f32> = vs_TEXCOORD1;
          let x_3882 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3878 * vec4<f32>(x_3879.x, x_3879.x, x_3879.x, x_3879.x)) + x_3882);
          let x_3884 : i32 = u_xlati63;
          let x_3887 : i32 = u_xlati63;
          let x_3891 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3884 + 2i) / 4i)][((x_3887 + 2i) % 4i)];
          let x_3892 : vec3<f32> = vs_TEXCOORD1;
          let x_3895 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3891 * vec4<f32>(x_3892.z, x_3892.z, x_3892.z, x_3892.z)) + x_3895);
          let x_3897 : vec4<f32> = u_xlat12;
          let x_3898 : i32 = u_xlati63;
          let x_3901 : i32 = u_xlati63;
          let x_3905 : vec4<f32> = x_1712.x_AdditionalLightsWorldToLights[((x_3898 + 3i) / 4i)][((x_3901 + 3i) % 4i)];
          u_xlat12 = (x_3897 + x_3905);
          let x_3907 : vec4<f32> = u_xlat12;
          let x_3909 : vec4<f32> = u_xlat12;
          let x_3911 : vec3<f32> = (vec3<f32>(x_3907.x, x_3907.y, x_3907.z) / vec3<f32>(x_3909.w, x_3909.w, x_3909.w));
          let x_3912 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3911.x, x_3911.y, x_3911.z, x_3912.w);
          let x_3914 : vec4<f32> = u_xlat12;
          let x_3916 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_3914.x, x_3914.y, x_3914.z), vec3<f32>(x_3916.x, x_3916.y, x_3916.z));
          let x_3921 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_3921);
          let x_3924 : vec4<f32> = u_xlat11;
          let x_3926 : vec4<f32> = u_xlat12;
          let x_3928 : vec3<f32> = (vec3<f32>(x_3924.x, x_3924.x, x_3924.x) * vec3<f32>(x_3926.x, x_3926.y, x_3926.z));
          let x_3929 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3928.x, x_3928.y, x_3928.z, x_3929.w);
          let x_3931 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_3931.x, x_3931.y, x_3931.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3938 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_3938, 0.00000099999999747524f);
          let x_3943 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_3943);
          let x_3946 : vec4<f32> = u_xlat11;
          let x_3948 : vec4<f32> = u_xlat12;
          let x_3950 : vec3<f32> = (vec3<f32>(x_3946.x, x_3946.x, x_3946.x) * vec3<f32>(x_3948.z, x_3948.x, x_3948.y));
          let x_3951 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3950.x, x_3950.y, x_3950.z, x_3951.w);
          let x_3954 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3954);
          let x_3958 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3958, 0.0f, 1.0f);
          let x_3962 : vec4<f32> = u_xlat13;
          let x_3964 : vec4<bool> = (vec4<f32>(x_3962.y, x_3962.z, x_3962.y, x_3962.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb64 = vec2<bool>(x_3964.x, x_3964.y);
          let x_3967 : bool = u_xlatb64.x;
          if (x_3967) {
            let x_3972 : f32 = u_xlat13.x;
            x_3968 = x_3972;
          } else {
            let x_3975 : f32 = u_xlat13.x;
            x_3968 = -(x_3975);
          }
          let x_3977 : f32 = x_3968;
          u_xlat64.x = x_3977;
          let x_3980 : bool = u_xlatb64.y;
          if (x_3980) {
            let x_3985 : f32 = u_xlat13.x;
            x_3981 = x_3985;
          } else {
            let x_3988 : f32 = u_xlat13.x;
            x_3981 = -(x_3988);
          }
          let x_3990 : f32 = x_3981;
          u_xlat64.y = x_3990;
          let x_3992 : vec4<f32> = u_xlat12;
          let x_3994 : vec4<f32> = u_xlat11;
          let x_3997 : vec2<f32> = u_xlat64;
          let x_3998 : vec2<f32> = ((vec2<f32>(x_3992.x, x_3992.y) * vec2<f32>(x_3994.x, x_3994.x)) + x_3997);
          let x_3999 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3998.x, x_3999.y, x_3998.y, x_3999.w);
          let x_4001 : vec4<f32> = u_xlat11;
          let x_4004 : vec2<f32> = ((vec2<f32>(x_4001.x, x_4001.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4005 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4004.x, x_4005.y, x_4004.y, x_4005.w);
          let x_4007 : vec4<f32> = u_xlat11;
          let x_4011 : vec2<f32> = clamp(vec2<f32>(x_4007.x, x_4007.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4012 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4011.x, x_4012.y, x_4011.y, x_4012.w);
          let x_4014 : i32 = u_xlati84;
          let x_4016 : vec4<f32> = x_1712.x_AdditionalLightsCookieAtlasUVRects[x_4014];
          let x_4018 : vec4<f32> = u_xlat11;
          let x_4021 : i32 = u_xlati84;
          let x_4023 : vec4<f32> = x_1712.x_AdditionalLightsCookieAtlasUVRects[x_4021];
          let x_4025 : vec2<f32> = ((vec2<f32>(x_4016.x, x_4016.y) * vec2<f32>(x_4018.x, x_4018.z)) + vec2<f32>(x_4023.z, x_4023.w));
          let x_4026 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4025.x, x_4026.y, x_4025.y);
        }
      }
      let x_4033 : vec3<f32> = u_xlat37;
      let x_4035 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4033.x, x_4033.z), 0.0f);
      u_xlat11 = x_4035;
      let x_4037 : bool = u_xlatb57.y;
      if (x_4037) {
        let x_4042 : f32 = u_xlat11.w;
        x_4038 = x_4042;
      } else {
        let x_4045 : f32 = u_xlat11.x;
        x_4038 = x_4045;
      }
      let x_4046 : f32 = x_4038;
      u_xlat89 = x_4046;
      let x_4048 : bool = u_xlatb57.x;
      if (x_4048) {
        let x_4052 : vec4<f32> = u_xlat11;
        x_4049 = vec3<f32>(x_4052.x, x_4052.y, x_4052.z);
      } else {
        let x_4055 : f32 = u_xlat89;
        x_4049 = vec3<f32>(x_4055, x_4055, x_4055);
      }
      let x_4057 : vec3<f32> = x_4049;
      let x_4058 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4057.x, x_4057.y, x_4057.z, x_4058.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4064 : vec4<f32> = u_xlat11;
    let x_4066 : i32 = u_xlati84;
    let x_4068 : vec4<f32> = x_2149.x_AdditionalLightsColor[x_4066];
    let x_4070 : vec3<f32> = (vec3<f32>(x_4064.x, x_4064.y, x_4064.z) * vec3<f32>(x_4068.x, x_4068.y, x_4068.z));
    let x_4071 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4070.x, x_4070.y, x_4070.z, x_4071.w);
    let x_4073 : f32 = u_xlat85;
    let x_4074 : f32 = u_xlat88;
    u_xlat84 = (x_4073 * x_4074);
    let x_4076 : vec4<f32> = u_xlat3;
    let x_4078 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_4076.x, x_4076.y, x_4076.z), vec3<f32>(x_4078.x, x_4078.y, x_4078.z));
    let x_4081 : f32 = u_xlat85;
    u_xlat85 = clamp(x_4081, 0.0f, 1.0f);
    let x_4083 : f32 = u_xlat84;
    let x_4084 : f32 = u_xlat85;
    u_xlat84 = (x_4083 * x_4084);
    let x_4086 : f32 = u_xlat84;
    let x_4088 : vec4<f32> = u_xlat11;
    let x_4090 : vec3<f32> = (vec3<f32>(x_4086, x_4086, x_4086) * vec3<f32>(x_4088.x, x_4088.y, x_4088.z));
    let x_4091 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4090.x, x_4090.y, x_4090.z, x_4091.w);
    let x_4093 : vec4<f32> = u_xlat9;
    let x_4095 : f32 = u_xlat87;
    let x_4098 : vec3<f32> = u_xlat2;
    let x_4099 : vec3<f32> = ((vec3<f32>(x_4093.x, x_4093.y, x_4093.z) * vec3<f32>(x_4095, x_4095, x_4095)) + x_4098);
    let x_4100 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4099.x, x_4099.y, x_4099.z, x_4100.w);
    let x_4102 : vec4<f32> = u_xlat9;
    let x_4104 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4102.x, x_4102.y, x_4102.z), vec3<f32>(x_4104.x, x_4104.y, x_4104.z));
    let x_4107 : f32 = u_xlat84;
    u_xlat84 = max(x_4107, 1.17549435e-38f);
    let x_4109 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4109);
    let x_4111 : f32 = u_xlat84;
    let x_4113 : vec4<f32> = u_xlat9;
    let x_4115 : vec3<f32> = (vec3<f32>(x_4111, x_4111, x_4111) * vec3<f32>(x_4113.x, x_4113.y, x_4113.z));
    let x_4116 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4115.x, x_4115.y, x_4115.z, x_4116.w);
    let x_4118 : vec4<f32> = u_xlat3;
    let x_4120 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4118.x, x_4118.y, x_4118.z), vec3<f32>(x_4120.x, x_4120.y, x_4120.z));
    let x_4123 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4123, 0.0f, 1.0f);
    let x_4125 : vec4<f32> = u_xlat10;
    let x_4127 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_4125.x, x_4125.y, x_4125.z), vec3<f32>(x_4127.x, x_4127.y, x_4127.z));
    let x_4130 : f32 = u_xlat85;
    u_xlat85 = clamp(x_4130, 0.0f, 1.0f);
    let x_4132 : f32 = u_xlat84;
    let x_4133 : f32 = u_xlat84;
    u_xlat84 = (x_4132 * x_4133);
    let x_4135 : f32 = u_xlat84;
    let x_4137 : f32 = u_xlat8.x;
    u_xlat84 = ((x_4135 * x_4137) + 1.00001001358032226562f);
    let x_4140 : f32 = u_xlat85;
    let x_4141 : f32 = u_xlat85;
    u_xlat85 = (x_4140 * x_4141);
    let x_4143 : f32 = u_xlat84;
    let x_4144 : f32 = u_xlat84;
    u_xlat84 = (x_4143 * x_4144);
    let x_4146 : f32 = u_xlat85;
    u_xlat85 = max(x_4146, 0.10000000149011611938f);
    let x_4148 : f32 = u_xlat84;
    let x_4149 : f32 = u_xlat85;
    u_xlat84 = (x_4148 * x_4149);
    let x_4151 : f32 = u_xlat31;
    let x_4152 : f32 = u_xlat84;
    u_xlat84 = (x_4151 * x_4152);
    let x_4155 : f32 = u_xlat5.x;
    let x_4156 : f32 = u_xlat84;
    u_xlat84 = (x_4155 / x_4156);
    let x_4158 : vec4<f32> = u_xlat0;
    let x_4160 : f32 = u_xlat84;
    let x_4163 : vec3<f32> = u_xlat27;
    let x_4164 : vec3<f32> = ((vec3<f32>(x_4158.x, x_4158.y, x_4158.z) * vec3<f32>(x_4160, x_4160, x_4160)) + x_4163);
    let x_4165 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4164.x, x_4164.y, x_4164.z, x_4165.w);
    let x_4167 : vec4<f32> = u_xlat9;
    let x_4169 : vec4<f32> = u_xlat11;
    let x_4172 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4167.x, x_4167.y, x_4167.z) * vec3<f32>(x_4169.x, x_4169.y, x_4169.z)) + x_4172);

    continuing {
      let x_4174 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4174 + bitcast<u32>(1i));
    }
  }
  let x_4176 : vec4<f32> = u_xlat7;
  let x_4178 : vec4<f32> = u_xlat6;
  let x_4181 : vec3<f32> = u_xlat4;
  let x_4182 : vec3<f32> = ((vec3<f32>(x_4176.x, x_4176.y, x_4176.z) * vec3<f32>(x_4178.x, x_4178.y, x_4178.z)) + x_4181);
  let x_4183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4182.x, x_4182.y, x_4182.z, x_4183.w);
  let x_4185 : vec3<f32> = u_xlat34;
  let x_4186 : vec4<f32> = u_xlat0;
  let x_4188 : vec3<f32> = (x_4185 + vec3<f32>(x_4186.x, x_4186.y, x_4186.z));
  let x_4189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4188.x, x_4188.y, x_4188.z, x_4189.w);
  let x_4191 : f32 = u_xlat78;
  let x_4192 : f32 = u_xlat78;
  u_xlat78 = (x_4191 * -(x_4192));
  let x_4195 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4195);
  let x_4197 : vec4<f32> = u_xlat0;
  let x_4200 : vec4<f32> = x_45.unity_FogColor;
  let x_4203 : vec3<f32> = (vec3<f32>(x_4197.x, x_4197.y, x_4197.z) + -(vec3<f32>(x_4200.x, x_4200.y, x_4200.z)));
  let x_4204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4203.x, x_4203.y, x_4203.z, x_4204.w);
  let x_4208 : f32 = u_xlat78;
  let x_4210 : vec4<f32> = u_xlat0;
  let x_4214 : vec4<f32> = x_45.unity_FogColor;
  let x_4216 : vec3<f32> = ((vec3<f32>(x_4208, x_4208, x_4208) * vec3<f32>(x_4210.x, x_4210.y, x_4210.z)) + vec3<f32>(x_4214.x, x_4214.y, x_4214.z));
  let x_4217 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4216.x, x_4216.y, x_4216.z, x_4217.w);
  let x_4221 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_4221 == 1.0f);
  let x_4223 : bool = u_xlatb0;
  if (x_4223) {
    let x_4228 : f32 = u_xlat1.x;
    x_4224 = x_4228;
  } else {
    x_4224 = 1.0f;
  }
  let x_4230 : f32 = x_4224;
  SV_Target0.w = x_4230;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


