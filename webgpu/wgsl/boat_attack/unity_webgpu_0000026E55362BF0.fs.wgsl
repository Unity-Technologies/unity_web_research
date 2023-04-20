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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb78 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb31 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_266 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(5) var<uniform> x_1607 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1787 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2047 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

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

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

fn main_1() {
  var x_83 : f32;
  var x_96 : f32;
  var x_109 : f32;
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
  var x_1691 : f32;
  var x_1702 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2186 : f32;
  var x_2197 : f32;
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
  var x_3816 : f32;
  var x_3829 : f32;
  var x_3887 : f32;
  var x_3898 : vec3<f32>;
  var x_4046 : f32;
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
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb78 = (x_55 == 0.0f);
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat80 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat80;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_81 : bool = u_xlatb78;
  if (x_81) {
    let x_87 : f32 = u_xlat2.x;
    x_83 = x_87;
  } else {
    let x_92 : f32 = x_28.unity_MatrixV[0i].z;
    x_83 = x_92;
  }
  let x_93 : f32 = x_83;
  u_xlat3.x = x_93;
  let x_95 : bool = u_xlatb78;
  if (x_95) {
    let x_101 : f32 = u_xlat2.y;
    x_96 = x_101;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_96 = x_105;
  }
  let x_106 : f32 = x_96;
  u_xlat3.y = x_106;
  let x_108 : bool = u_xlatb78;
  if (x_108) {
    let x_113 : f32 = u_xlat2.z;
    x_109 = x_113;
  } else {
    let x_116 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_116;
  }
  let x_117 : f32 = x_109;
  u_xlat3.z = x_117;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_121, x_122);
  let x_124 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat78;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_126, x_126, x_126) * x_128);
  let x_137 : vec2<f32> = vs_TEXCOORD8;
  let x_139 : f32 = x_28.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_137, x_139);
  u_xlat4 = x_140;
  let x_146 : vec2<f32> = vs_TEXCOORD8;
  let x_148 : f32 = x_28.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_146, x_148);
  u_xlat5 = vec3<f32>(x_149.x, x_149.y, x_149.z);
  let x_151 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec3<f32> = u_xlat2;
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_158, vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : f32 = u_xlat78;
  u_xlat78 = (x_162 + 0.5f);
  let x_165 : f32 = u_xlat78;
  let x_167 : vec3<f32> = u_xlat5;
  let x_168 : vec3<f32> = (vec3<f32>(x_165, x_165, x_165) * x_167);
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : f32 = u_xlat4.w;
  u_xlat78 = max(x_172, 0.00009999999747378752f);
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : f32 = u_xlat78;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) / vec3<f32>(x_177, x_177, x_177));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : f32 = x_42.x_Metallic;
  u_xlat78 = ((-(x_184) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_189 : f32 = u_xlat78;
  let x_192 : f32 = x_42.x_Smoothness;
  u_xlat80 = (-(x_189) + x_192);
  let x_195 : f32 = u_xlat78;
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat27 = (vec3<f32>(x_195, x_195, x_195) * vec3<f32>(x_197.y, x_197.z, x_197.w));
  let x_200 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = x_42.x_BaseColor;
  let x_208 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : f32 = x_42.x_Metallic;
  let x_214 : f32 = x_42.x_Metallic;
  let x_216 : f32 = x_42.x_Metallic;
  let x_217 : vec3<f32> = vec3<f32>(x_212, x_214, x_216);
  let x_222 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : f32 = x_42.x_Smoothness;
  u_xlat78 = (-(x_231) + 1.0f);
  let x_236 : f32 = u_xlat78;
  let x_237 : f32 = u_xlat78;
  u_xlat81 = (x_236 * x_237);
  let x_239 : f32 = u_xlat81;
  u_xlat81 = max(x_239, 0.0078125f);
  let x_243 : f32 = u_xlat81;
  let x_244 : f32 = u_xlat81;
  u_xlat82 = (x_243 * x_244);
  let x_246 : f32 = u_xlat80;
  u_xlat80 = (x_246 + 1.0f);
  let x_248 : f32 = u_xlat80;
  u_xlat80 = clamp(x_248, 0.0f, 1.0f);
  let x_250 : f32 = u_xlat81;
  u_xlat5.x = ((x_250 * 4.0f) + 2.0f);
  let x_269 : f32 = x_266.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_269);
  let x_273 : bool = u_xlatb31.x;
  if (x_273) {
    let x_277 : f32 = x_266.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_277 == 1.0f);
    let x_281 : bool = u_xlatb31.x;
    if (x_281) {
      let x_287 : vec4<f32> = vs_TEXCOORD6;
      let x_290 : vec4<f32> = x_266.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_287.x, x_287.y, x_287.x, x_287.y) + x_290);
      let x_294 : vec4<f32> = u_xlat6;
      let x_295 : vec2<f32> = vec2<f32>(x_294.x, x_294.y);
      let x_298 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_295.x, x_295.y, x_298);
      let x_311 : vec3<f32> = txVec0;
      let x_313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_311.xy, x_311.z);
      u_xlat7.x = x_313;
      let x_316 : vec4<f32> = u_xlat6;
      let x_317 : vec2<f32> = vec2<f32>(x_316.z, x_316.w);
      let x_319 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_317.x, x_317.y, x_319);
      let x_326 : vec3<f32> = txVec1;
      let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_326.xy, x_326.z);
      u_xlat7.y = x_328;
      let x_330 : vec4<f32> = vs_TEXCOORD6;
      let x_333 : vec4<f32> = x_266.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_330.x, x_330.y, x_330.x, x_330.y) + x_333);
      let x_336 : vec4<f32> = u_xlat6;
      let x_337 : vec2<f32> = vec2<f32>(x_336.x, x_336.y);
      let x_339 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_337.x, x_337.y, x_339);
      let x_346 : vec3<f32> = txVec2;
      let x_348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_346.xy, x_346.z);
      u_xlat7.z = x_348;
      let x_351 : vec4<f32> = u_xlat6;
      let x_352 : vec2<f32> = vec2<f32>(x_351.z, x_351.w);
      let x_354 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_352.x, x_352.y, x_354);
      let x_361 : vec3<f32> = txVec3;
      let x_363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_361.xy, x_361.z);
      u_xlat7.w = x_363;
      let x_366 : vec4<f32> = u_xlat7;
      u_xlat31 = dot(x_366, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_373 : f32 = x_266.x_MainLightShadowParams.y;
      u_xlatb57 = (x_373 == 2.0f);
      let x_375 : bool = u_xlatb57;
      if (x_375) {
        let x_380 : vec4<f32> = vs_TEXCOORD6;
        let x_384 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_384.z, x_384.w)) + vec2<f32>(0.5f, 0.5f));
        let x_389 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_389);
        let x_391 : vec4<f32> = vs_TEXCOORD6;
        let x_394 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_397 : vec2<f32> = u_xlat57;
        let x_399 : vec2<f32> = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_394.z, x_394.w)) + -(x_397));
        let x_400 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
        let x_402 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_402.x, x_402.x, x_402.y, x_402.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_407 : vec4<f32> = u_xlat7;
        let x_409 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_407.x, x_407.x, x_407.z, x_407.z) * vec4<f32>(x_409.x, x_409.x, x_409.z, x_409.z));
        let x_413 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_413.y, x_413.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_418 : vec4<f32> = u_xlat8;
        let x_421 : vec4<f32> = u_xlat6;
        let x_424 : vec2<f32> = ((vec2<f32>(x_418.x, x_418.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_421.x, x_421.y)));
        let x_425 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_424.x, x_425.y, x_424.y, x_425.w);
        let x_427 : vec4<f32> = u_xlat6;
        let x_431 : vec2<f32> = (-(vec2<f32>(x_427.x, x_427.y)) + vec2<f32>(1.0f, 1.0f));
        let x_432 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_435.x, x_435.y), vec2<f32>(0.0f, 0.0f));
        let x_439 : vec2<f32> = u_xlat60;
        let x_441 : vec2<f32> = u_xlat60;
        let x_443 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_439) * x_441) + vec2<f32>(x_443.x, x_443.y));
        let x_446 : vec4<f32> = u_xlat6;
        let x_448 : vec2<f32> = max(vec2<f32>(x_446.x, x_446.y), vec2<f32>(0.0f, 0.0f));
        let x_449 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
        let x_451 : vec4<f32> = u_xlat6;
        let x_454 : vec4<f32> = u_xlat6;
        let x_457 : vec4<f32> = u_xlat7;
        let x_459 : vec2<f32> = ((-(vec2<f32>(x_451.x, x_451.y)) * vec2<f32>(x_454.x, x_454.y)) + vec2<f32>(x_457.y, x_457.w));
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_462 + vec2<f32>(1.0f, 1.0f));
        let x_464 : vec4<f32> = u_xlat6;
        let x_466 : vec2<f32> = (vec2<f32>(x_464.x, x_464.y) + vec2<f32>(1.0f, 1.0f));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_470 : vec4<f32> = u_xlat7;
        let x_474 : vec2<f32> = (vec2<f32>(x_470.x, x_470.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_475 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
        let x_478 : vec4<f32> = u_xlat8;
        let x_480 : vec2<f32> = (vec2<f32>(x_478.x, x_478.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_481 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_483 : vec2<f32> = u_xlat60;
        let x_484 : vec2<f32> = (x_483 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_485 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec2<f32> = (vec2<f32>(x_488.x, x_488.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_491 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat7;
        let x_495 : vec2<f32> = (vec2<f32>(x_493.y, x_493.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_496 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_499 : f32 = u_xlat8.x;
        u_xlat9.z = x_499;
        let x_502 : f32 = u_xlat6.x;
        u_xlat9.w = x_502;
        let x_505 : f32 = u_xlat11.x;
        u_xlat10.z = x_505;
        let x_508 : f32 = u_xlat58.x;
        u_xlat10.w = x_508;
        let x_510 : vec4<f32> = u_xlat9;
        let x_512 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_510.z, x_510.w, x_510.x, x_510.z) + vec4<f32>(x_512.z, x_512.w, x_512.x, x_512.z));
        let x_516 : f32 = u_xlat9.y;
        u_xlat8.z = x_516;
        let x_519 : f32 = u_xlat6.y;
        u_xlat8.w = x_519;
        let x_522 : f32 = u_xlat10.y;
        u_xlat11.z = x_522;
        let x_525 : f32 = u_xlat58.y;
        u_xlat11.w = x_525;
        let x_527 : vec4<f32> = u_xlat8;
        let x_529 : vec4<f32> = u_xlat11;
        let x_531 : vec3<f32> = (vec3<f32>(x_527.z, x_527.y, x_527.w) + vec3<f32>(x_529.z, x_529.y, x_529.w));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat10;
        let x_536 : vec4<f32> = u_xlat7;
        let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.z, x_534.w) / vec3<f32>(x_536.z, x_536.w, x_536.y));
        let x_539 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat8;
        let x_546 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_547 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat11;
        let x_551 : vec4<f32> = u_xlat6;
        let x_553 : vec3<f32> = (vec3<f32>(x_549.z, x_549.y, x_549.w) / vec3<f32>(x_551.x, x_551.y, x_551.z));
        let x_554 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat9;
        let x_558 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_559 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat8;
        let x_564 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_566 : vec3<f32> = (vec3<f32>(x_561.y, x_561.x, x_561.z) * vec3<f32>(x_564.x, x_564.x, x_564.x));
        let x_567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat9;
        let x_572 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_574 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_572.y, x_572.y, x_572.y));
        let x_575 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_578 : f32 = u_xlat9.x;
        u_xlat8.w = x_578;
        let x_580 : vec2<f32> = u_xlat57;
        let x_583 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) * vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y)) + vec4<f32>(x_586.y, x_586.w, x_586.x, x_586.w));
        let x_589 : vec2<f32> = u_xlat57;
        let x_591 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_594 : vec4<f32> = u_xlat8;
        let x_596 : vec2<f32> = ((x_589 * vec2<f32>(x_591.x, x_591.y)) + vec2<f32>(x_594.z, x_594.w));
        let x_597 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
        let x_600 : f32 = u_xlat8.y;
        u_xlat9.w = x_600;
        let x_602 : vec4<f32> = u_xlat9;
        let x_603 : vec2<f32> = vec2<f32>(x_602.y, x_602.z);
        let x_604 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_604.x, x_603.x, x_604.z, x_603.y);
        let x_607 : vec2<f32> = u_xlat57;
        let x_610 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_613 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y) * vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y)) + vec4<f32>(x_613.x, x_613.y, x_613.z, x_613.y));
        let x_616 : vec2<f32> = u_xlat57;
        let x_619 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y) * vec4<f32>(x_619.x, x_619.y, x_619.x, x_619.y)) + vec4<f32>(x_622.w, x_622.y, x_622.w, x_622.z));
        let x_625 : vec2<f32> = u_xlat57;
        let x_628 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y) * vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y)) + vec4<f32>(x_631.x, x_631.w, x_631.z, x_631.w));
        let x_635 : vec4<f32> = u_xlat6;
        let x_637 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_635.x, x_635.x, x_635.x, x_635.y) * vec4<f32>(x_637.z, x_637.w, x_637.y, x_637.z));
        let x_641 : vec4<f32> = u_xlat6;
        let x_643 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_641.y, x_641.y, x_641.z, x_641.z) * x_643);
        let x_646 : f32 = u_xlat6.z;
        let x_648 : f32 = u_xlat7.y;
        u_xlat57.x = (x_646 * x_648);
        let x_652 : vec4<f32> = u_xlat10;
        let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
        let x_655 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_653.x, x_653.y, x_655);
        let x_663 : vec3<f32> = txVec4;
        let x_665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_663.xy, x_663.z);
        u_xlat83 = x_665;
        let x_667 : vec4<f32> = u_xlat10;
        let x_668 : vec2<f32> = vec2<f32>(x_667.z, x_667.w);
        let x_670 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_668.x, x_668.y, x_670);
        let x_677 : vec3<f32> = txVec5;
        let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_677.xy, x_677.z);
        u_xlat6.x = x_679;
        let x_682 : f32 = u_xlat6.x;
        let x_684 : f32 = u_xlat13.y;
        u_xlat6.x = (x_682 * x_684);
        let x_688 : f32 = u_xlat13.x;
        let x_689 : f32 = u_xlat83;
        let x_692 : f32 = u_xlat6.x;
        u_xlat83 = ((x_688 * x_689) + x_692);
        let x_695 : vec4<f32> = u_xlat11;
        let x_696 : vec2<f32> = vec2<f32>(x_695.x, x_695.y);
        let x_698 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_705 : vec3<f32> = txVec6;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_705.xy, x_705.z);
        u_xlat6.x = x_707;
        let x_710 : f32 = u_xlat13.z;
        let x_712 : f32 = u_xlat6.x;
        let x_714 : f32 = u_xlat83;
        u_xlat83 = ((x_710 * x_712) + x_714);
        let x_717 : vec4<f32> = u_xlat9;
        let x_718 : vec2<f32> = vec2<f32>(x_717.x, x_717.y);
        let x_720 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_718.x, x_718.y, x_720);
        let x_727 : vec3<f32> = txVec7;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_727.xy, x_727.z);
        u_xlat6.x = x_729;
        let x_732 : f32 = u_xlat13.w;
        let x_734 : f32 = u_xlat6.x;
        let x_736 : f32 = u_xlat83;
        u_xlat83 = ((x_732 * x_734) + x_736);
        let x_739 : vec4<f32> = u_xlat12;
        let x_740 : vec2<f32> = vec2<f32>(x_739.x, x_739.y);
        let x_742 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_740.x, x_740.y, x_742);
        let x_749 : vec3<f32> = txVec8;
        let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_749.xy, x_749.z);
        u_xlat6.x = x_751;
        let x_754 : f32 = u_xlat14.x;
        let x_756 : f32 = u_xlat6.x;
        let x_758 : f32 = u_xlat83;
        u_xlat83 = ((x_754 * x_756) + x_758);
        let x_761 : vec4<f32> = u_xlat12;
        let x_762 : vec2<f32> = vec2<f32>(x_761.z, x_761.w);
        let x_764 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_762.x, x_762.y, x_764);
        let x_771 : vec3<f32> = txVec9;
        let x_773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_771.xy, x_771.z);
        u_xlat6.x = x_773;
        let x_776 : f32 = u_xlat14.y;
        let x_778 : f32 = u_xlat6.x;
        let x_780 : f32 = u_xlat83;
        u_xlat83 = ((x_776 * x_778) + x_780);
        let x_783 : vec4<f32> = u_xlat9;
        let x_784 : vec2<f32> = vec2<f32>(x_783.z, x_783.w);
        let x_786 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_793 : vec3<f32> = txVec10;
        let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_793.xy, x_793.z);
        u_xlat6.x = x_795;
        let x_798 : f32 = u_xlat14.z;
        let x_800 : f32 = u_xlat6.x;
        let x_802 : f32 = u_xlat83;
        u_xlat83 = ((x_798 * x_800) + x_802);
        let x_805 : vec4<f32> = u_xlat8;
        let x_806 : vec2<f32> = vec2<f32>(x_805.x, x_805.y);
        let x_808 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_806.x, x_806.y, x_808);
        let x_815 : vec3<f32> = txVec11;
        let x_817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_815.xy, x_815.z);
        u_xlat6.x = x_817;
        let x_820 : f32 = u_xlat14.w;
        let x_822 : f32 = u_xlat6.x;
        let x_824 : f32 = u_xlat83;
        u_xlat83 = ((x_820 * x_822) + x_824);
        let x_827 : vec4<f32> = u_xlat8;
        let x_828 : vec2<f32> = vec2<f32>(x_827.z, x_827.w);
        let x_830 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec12;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_837.xy, x_837.z);
        u_xlat6.x = x_839;
        let x_842 : f32 = u_xlat57.x;
        let x_844 : f32 = u_xlat6.x;
        let x_846 : f32 = u_xlat83;
        u_xlat31 = ((x_842 * x_844) + x_846);
      } else {
        let x_849 : vec4<f32> = vs_TEXCOORD6;
        let x_852 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_852.z, x_852.w)) + vec2<f32>(0.5f, 0.5f));
        let x_856 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_856);
        let x_858 : vec4<f32> = vs_TEXCOORD6;
        let x_861 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_864 : vec2<f32> = u_xlat57;
        let x_866 : vec2<f32> = ((vec2<f32>(x_858.x, x_858.y) * vec2<f32>(x_861.z, x_861.w)) + -(x_864));
        let x_867 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_866.x, x_866.y, x_867.z, x_867.w);
        let x_869 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_869.x, x_869.x, x_869.y, x_869.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_872 : vec4<f32> = u_xlat7;
        let x_874 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_872.x, x_872.x, x_872.z, x_872.z) * vec4<f32>(x_874.x, x_874.x, x_874.z, x_874.z));
        let x_877 : vec4<f32> = u_xlat8;
        let x_881 : vec2<f32> = (vec2<f32>(x_877.y, x_877.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_882 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_882.x, x_881.x, x_882.z, x_881.y);
        let x_884 : vec4<f32> = u_xlat8;
        let x_887 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_884.x, x_884.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_887.x, x_887.y)));
        let x_891 : vec4<f32> = u_xlat6;
        let x_894 : vec2<f32> = (-(vec2<f32>(x_891.x, x_891.y)) + vec2<f32>(1.0f, 1.0f));
        let x_895 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_894.x, x_895.y, x_894.y, x_895.w);
        let x_897 : vec4<f32> = u_xlat6;
        let x_899 : vec2<f32> = min(vec2<f32>(x_897.x, x_897.y), vec2<f32>(0.0f, 0.0f));
        let x_900 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat8;
        let x_905 : vec4<f32> = u_xlat8;
        let x_908 : vec4<f32> = u_xlat7;
        let x_910 : vec2<f32> = ((-(vec2<f32>(x_902.x, x_902.y)) * vec2<f32>(x_905.x, x_905.y)) + vec2<f32>(x_908.x, x_908.z));
        let x_911 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_910.x, x_911.y, x_910.y, x_911.w);
        let x_913 : vec4<f32> = u_xlat6;
        let x_915 : vec2<f32> = max(vec2<f32>(x_913.x, x_913.y), vec2<f32>(0.0f, 0.0f));
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec4<f32> = u_xlat8;
        let x_921 : vec4<f32> = u_xlat8;
        let x_924 : vec4<f32> = u_xlat7;
        let x_926 : vec2<f32> = ((-(vec2<f32>(x_918.x, x_918.y)) * vec2<f32>(x_921.x, x_921.y)) + vec2<f32>(x_924.y, x_924.w));
        let x_927 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_927.x, x_926.x, x_927.z, x_926.y);
        let x_929 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_929 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_933 : f32 = u_xlat7.y;
        u_xlat8.z = (x_933 * 0.08163200318813323975f);
        let x_937 : vec2<f32> = u_xlat58;
        let x_940 : vec2<f32> = (vec2<f32>(x_937.y, x_937.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_941 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_943.x, x_943.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_947 : f32 = u_xlat7.w;
        u_xlat10.z = (x_947 * 0.08163200318813323975f);
        let x_951 : f32 = u_xlat10.y;
        u_xlat8.x = x_951;
        let x_953 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = ((vec2<f32>(x_953.x, x_953.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_961 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_961.x, x_960.x, x_961.z, x_960.y);
        let x_963 : vec4<f32> = u_xlat6;
        let x_967 : vec2<f32> = ((vec2<f32>(x_963.x, x_963.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_968 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_967.x, x_968.y, x_967.y, x_968.w);
        let x_971 : f32 = u_xlat58.x;
        u_xlat7.y = x_971;
        let x_974 : f32 = u_xlat9.y;
        u_xlat7.w = x_974;
        let x_976 : vec4<f32> = u_xlat7;
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_976 + x_977);
        let x_979 : vec4<f32> = u_xlat6;
        let x_982 : vec2<f32> = ((vec2<f32>(x_979.y, x_979.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_983 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_983.x, x_982.x, x_983.z, x_982.y);
        let x_985 : vec4<f32> = u_xlat6;
        let x_988 : vec2<f32> = ((vec2<f32>(x_985.y, x_985.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_989.y, x_988.y, x_989.w);
        let x_992 : f32 = u_xlat58.y;
        u_xlat9.y = x_992;
        let x_994 : vec4<f32> = u_xlat9;
        let x_995 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_994 + x_995);
        let x_997 : vec4<f32> = u_xlat7;
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_997 / x_998);
        let x_1000 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1000 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1006 / x_1007);
        let x_1009 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1009 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1011 : vec4<f32> = u_xlat7;
        let x_1014 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1011.w, x_1011.x, x_1011.y, x_1011.z) * vec4<f32>(x_1014.x, x_1014.x, x_1014.x, x_1014.x));
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1020 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1017.x, x_1017.w, x_1017.y, x_1017.z) * vec4<f32>(x_1020.y, x_1020.y, x_1020.y, x_1020.y));
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1024 : vec3<f32> = vec3<f32>(x_1023.y, x_1023.z, x_1023.w);
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1024.x, x_1025.y, x_1024.y, x_1024.z);
        let x_1028 : f32 = u_xlat9.x;
        u_xlat10.y = x_1028;
        let x_1030 : vec2<f32> = u_xlat57;
        let x_1033 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1036 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1030.x, x_1030.y, x_1030.x, x_1030.y) * vec4<f32>(x_1033.x, x_1033.y, x_1033.x, x_1033.y)) + vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1036.y));
        let x_1039 : vec2<f32> = u_xlat57;
        let x_1041 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat10;
        let x_1046 : vec2<f32> = ((x_1039 * vec2<f32>(x_1041.x, x_1041.y)) + vec2<f32>(x_1044.w, x_1044.y));
        let x_1047 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
        let x_1050 : f32 = u_xlat10.y;
        u_xlat7.y = x_1050;
        let x_1053 : f32 = u_xlat9.z;
        u_xlat10.y = x_1053;
        let x_1055 : vec2<f32> = u_xlat57;
        let x_1058 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y) * vec4<f32>(x_1058.x, x_1058.y, x_1058.x, x_1058.y)) + vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.y));
        let x_1065 : vec2<f32> = u_xlat57;
        let x_1067 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1065 * vec2<f32>(x_1067.x, x_1067.y)) + vec2<f32>(x_1070.w, x_1070.y));
        let x_1074 : f32 = u_xlat10.y;
        u_xlat7.z = x_1074;
        let x_1076 : vec2<f32> = u_xlat57;
        let x_1079 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y) * vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y)) + vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.z));
        let x_1086 : f32 = u_xlat9.w;
        u_xlat10.y = x_1086;
        let x_1089 : vec2<f32> = u_xlat57;
        let x_1092 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1099 : vec2<f32> = u_xlat57;
        let x_1101 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1099 * vec2<f32>(x_1101.x, x_1101.y)) + vec2<f32>(x_1104.w, x_1104.y));
        let x_1108 : f32 = u_xlat10.y;
        u_xlat7.w = x_1108;
        let x_1111 : vec2<f32> = u_xlat57;
        let x_1113 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1118 : vec2<f32> = ((x_1111 * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.w));
        let x_1119 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat10;
        let x_1122 : vec3<f32> = vec3<f32>(x_1121.x, x_1121.z, x_1121.w);
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1122.x, x_1123.y, x_1122.y, x_1122.z);
        let x_1125 : vec2<f32> = u_xlat57;
        let x_1128 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1131.y));
        let x_1135 : vec2<f32> = u_xlat57;
        let x_1137 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1135 * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.w, x_1140.y));
        let x_1144 : f32 = u_xlat7.x;
        u_xlat9.x = x_1144;
        let x_1146 : vec2<f32> = u_xlat57;
        let x_1148 : vec4<f32> = x_266.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat57 = ((x_1146 * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.x, x_1151.y));
        let x_1155 : vec4<f32> = u_xlat6;
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.x, x_1155.x) * x_1157);
        let x_1160 : vec4<f32> = u_xlat6;
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1162);
        let x_1165 : vec4<f32> = u_xlat6;
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1165.z, x_1165.z, x_1165.z, x_1165.z) * x_1167);
        let x_1169 : vec4<f32> = u_xlat6;
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1169.w, x_1169.w, x_1169.w, x_1169.w) * x_1171);
        let x_1174 : vec4<f32> = u_xlat11;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.x, x_1174.y);
        let x_1177 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec13;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
        u_xlat7.x = x_1186;
        let x_1189 : vec4<f32> = u_xlat11;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.z, x_1189.w);
        let x_1192 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1200 : vec3<f32> = txVec14;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
        u_xlat85 = x_1202;
        let x_1203 : f32 = u_xlat85;
        let x_1205 : f32 = u_xlat17.y;
        u_xlat85 = (x_1203 * x_1205);
        let x_1208 : f32 = u_xlat17.x;
        let x_1210 : f32 = u_xlat7.x;
        let x_1212 : f32 = u_xlat85;
        u_xlat7.x = ((x_1208 * x_1210) + x_1212);
        let x_1216 : vec4<f32> = u_xlat12;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.x, x_1216.y);
        let x_1219 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec15;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1226.xy, x_1226.z);
        u_xlat85 = x_1228;
        let x_1230 : f32 = u_xlat17.z;
        let x_1231 : f32 = u_xlat85;
        let x_1234 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1230 * x_1231) + x_1234);
        let x_1238 : vec4<f32> = u_xlat14;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
        let x_1241 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec16;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1248.xy, x_1248.z);
        u_xlat85 = x_1250;
        let x_1252 : f32 = u_xlat17.w;
        let x_1253 : f32 = u_xlat85;
        let x_1256 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1252 * x_1253) + x_1256);
        let x_1260 : vec4<f32> = u_xlat13;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.x, x_1260.y);
        let x_1263 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec17;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1270.xy, x_1270.z);
        u_xlat85 = x_1272;
        let x_1274 : f32 = u_xlat18.x;
        let x_1275 : f32 = u_xlat85;
        let x_1278 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1274 * x_1275) + x_1278);
        let x_1282 : vec4<f32> = u_xlat13;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec18;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1292.xy, x_1292.z);
        u_xlat85 = x_1294;
        let x_1296 : f32 = u_xlat18.y;
        let x_1297 : f32 = u_xlat85;
        let x_1300 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1296 * x_1297) + x_1300);
        let x_1304 : vec2<f32> = u_xlat64;
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec19;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat85 = x_1315;
        let x_1317 : f32 = u_xlat18.z;
        let x_1318 : f32 = u_xlat85;
        let x_1321 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1317 * x_1318) + x_1321);
        let x_1325 : vec4<f32> = u_xlat14;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.z, x_1325.w);
        let x_1328 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec20;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1335.xy, x_1335.z);
        u_xlat85 = x_1337;
        let x_1339 : f32 = u_xlat18.w;
        let x_1340 : f32 = u_xlat85;
        let x_1343 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1339 * x_1340) + x_1343);
        let x_1347 : vec4<f32> = u_xlat15;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.x, x_1347.y);
        let x_1350 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec21;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1357.xy, x_1357.z);
        u_xlat85 = x_1359;
        let x_1361 : f32 = u_xlat19.x;
        let x_1362 : f32 = u_xlat85;
        let x_1365 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1361 * x_1362) + x_1365);
        let x_1369 : vec4<f32> = u_xlat15;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.z, x_1369.w);
        let x_1372 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec22;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat85 = x_1381;
        let x_1383 : f32 = u_xlat19.y;
        let x_1384 : f32 = u_xlat85;
        let x_1387 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1383 * x_1384) + x_1387);
        let x_1391 : vec2<f32> = u_xlat33;
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec23;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat33.x = x_1402;
        let x_1405 : f32 = u_xlat19.z;
        let x_1407 : f32 = u_xlat33.x;
        let x_1410 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1405 * x_1407) + x_1410);
        let x_1414 : vec4<f32> = u_xlat16;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.x, x_1414.y);
        let x_1417 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec24;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat33.x = x_1426;
        let x_1429 : f32 = u_xlat19.w;
        let x_1431 : f32 = u_xlat33.x;
        let x_1434 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1429 * x_1431) + x_1434);
        let x_1438 : vec4<f32> = u_xlat10;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.x, x_1438.y);
        let x_1441 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec25;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat33.x = x_1450;
        let x_1453 : f32 = u_xlat6.x;
        let x_1455 : f32 = u_xlat33.x;
        let x_1458 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1453 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat10;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec26;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat7.x = x_1474;
        let x_1477 : f32 = u_xlat6.y;
        let x_1479 : f32 = u_xlat7.x;
        let x_1482 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1477 * x_1479) + x_1482);
        let x_1486 : vec2<f32> = u_xlat61;
        let x_1488 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1496 : vec3<f32> = txVec27;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat32 = x_1498;
        let x_1500 : f32 = u_xlat6.z;
        let x_1501 : f32 = u_xlat32;
        let x_1504 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1500 * x_1501) + x_1504);
        let x_1508 : vec2<f32> = u_xlat57;
        let x_1510 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec28;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat57.x = x_1519;
        let x_1522 : f32 = u_xlat6.w;
        let x_1524 : f32 = u_xlat57.x;
        let x_1527 : f32 = u_xlat6.x;
        u_xlat31 = ((x_1522 * x_1524) + x_1527);
      }
    }
  } else {
    let x_1531 : vec4<f32> = vs_TEXCOORD6;
    let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
    let x_1534 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
    let x_1541 : vec3<f32> = txVec29;
    let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
    u_xlat31 = x_1543;
  }
  let x_1545 : f32 = x_266.x_MainLightShadowParams.x;
  u_xlat57.x = (-(x_1545) + 1.0f);
  let x_1549 : f32 = u_xlat31;
  let x_1551 : f32 = x_266.x_MainLightShadowParams.x;
  let x_1554 : f32 = u_xlat57.x;
  u_xlat31 = ((x_1549 * x_1551) + x_1554);
  let x_1557 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (0.0f >= x_1557);
  let x_1561 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (x_1561 >= 1.0f);
  let x_1563 : bool = u_xlatb83;
  let x_1564 : bool = u_xlatb57;
  u_xlatb57 = (x_1563 | x_1564);
  let x_1566 : bool = u_xlatb57;
  let x_1567 : f32 = u_xlat31;
  u_xlat31 = select(x_1567, 1.0f, x_1566);
  let x_1569 : vec3<f32> = vs_TEXCOORD1;
  let x_1571 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1573 : vec3<f32> = (x_1569 + -(x_1571));
  let x_1574 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
  let x_1576 : vec4<f32> = u_xlat6;
  let x_1578 : vec4<f32> = u_xlat6;
  u_xlat57.x = dot(vec3<f32>(x_1576.x, x_1576.y, x_1576.z), vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1583 : f32 = u_xlat57.x;
  let x_1585 : f32 = x_266.x_MainLightShadowParams.z;
  let x_1588 : f32 = x_266.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1583 * x_1585) + x_1588);
  let x_1590 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1590, 0.0f, 1.0f);
  let x_1592 : f32 = u_xlat31;
  u_xlat6.x = (-(x_1592) + 1.0f);
  let x_1596 : f32 = u_xlat83;
  let x_1598 : f32 = u_xlat6.x;
  let x_1600 : f32 = u_xlat31;
  u_xlat31 = ((x_1596 * x_1598) + x_1600);
  let x_1609 : f32 = x_1607.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1609 == -1.0f));
  let x_1612 : bool = u_xlatb83;
  if (x_1612) {
    let x_1615 : vec3<f32> = vs_TEXCOORD1;
    let x_1618 : vec4<f32> = x_1607.x_MainLightWorldToLight[1i];
    let x_1620 : vec2<f32> = (vec2<f32>(x_1615.y, x_1615.y) * vec2<f32>(x_1618.x, x_1618.y));
    let x_1621 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1620.x, x_1620.y, x_1621.z, x_1621.w);
    let x_1624 : vec4<f32> = x_1607.x_MainLightWorldToLight[0i];
    let x_1626 : vec3<f32> = vs_TEXCOORD1;
    let x_1629 : vec4<f32> = u_xlat6;
    let x_1631 : vec2<f32> = ((vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(x_1626.x, x_1626.x)) + vec2<f32>(x_1629.x, x_1629.y));
    let x_1632 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1631.x, x_1631.y, x_1632.z, x_1632.w);
    let x_1635 : vec4<f32> = x_1607.x_MainLightWorldToLight[2i];
    let x_1637 : vec3<f32> = vs_TEXCOORD1;
    let x_1640 : vec4<f32> = u_xlat6;
    let x_1642 : vec2<f32> = ((vec2<f32>(x_1635.x, x_1635.y) * vec2<f32>(x_1637.z, x_1637.z)) + vec2<f32>(x_1640.x, x_1640.y));
    let x_1643 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1642.x, x_1642.y, x_1643.z, x_1643.w);
    let x_1645 : vec4<f32> = u_xlat6;
    let x_1649 : vec4<f32> = x_1607.x_MainLightWorldToLight[3i];
    let x_1651 : vec2<f32> = (vec2<f32>(x_1645.x, x_1645.y) + vec2<f32>(x_1649.x, x_1649.y));
    let x_1652 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1651.x, x_1651.y, x_1652.z, x_1652.w);
    let x_1654 : vec4<f32> = u_xlat6;
    let x_1657 : vec2<f32> = ((vec2<f32>(x_1654.x, x_1654.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1658 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1657.x, x_1657.y, x_1658.z, x_1658.w);
    let x_1665 : vec4<f32> = u_xlat6;
    let x_1668 : f32 = x_28.x_GlobalMipBias.x;
    let x_1669 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1665.x, x_1665.y), x_1668);
    u_xlat6 = x_1669;
    let x_1672 : f32 = x_1607.x_MainLightCookieTextureFormat;
    let x_1674 : f32 = x_1607.x_MainLightCookieTextureFormat;
    let x_1676 : f32 = x_1607.x_MainLightCookieTextureFormat;
    let x_1678 : f32 = x_1607.x_MainLightCookieTextureFormat;
    let x_1679 : vec4<f32> = vec4<f32>(x_1672, x_1674, x_1676, x_1678);
    let x_1687 : vec4<bool> = (vec4<f32>(x_1679.x, x_1679.y, x_1679.z, x_1679.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1687.x, x_1687.y);
    let x_1690 : bool = u_xlatb7.y;
    if (x_1690) {
      let x_1695 : f32 = u_xlat6.w;
      x_1691 = x_1695;
    } else {
      let x_1698 : f32 = u_xlat6.x;
      x_1691 = x_1698;
    }
    let x_1699 : f32 = x_1691;
    u_xlat83 = x_1699;
    let x_1701 : bool = u_xlatb7.x;
    if (x_1701) {
      let x_1705 : vec4<f32> = u_xlat6;
      x_1702 = vec3<f32>(x_1705.x, x_1705.y, x_1705.z);
    } else {
      let x_1708 : f32 = u_xlat83;
      x_1702 = vec3<f32>(x_1708, x_1708, x_1708);
    }
    let x_1710 : vec3<f32> = x_1702;
    let x_1711 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1717 : vec4<f32> = u_xlat6;
  let x_1720 : vec4<f32> = x_28.x_MainLightColor;
  let x_1722 : vec3<f32> = (vec3<f32>(x_1717.x, x_1717.y, x_1717.z) * vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
  let x_1723 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
  let x_1725 : vec3<f32> = u_xlat3;
  let x_1727 : vec3<f32> = u_xlat2;
  u_xlat83 = dot(-(x_1725), x_1727);
  let x_1729 : f32 = u_xlat83;
  let x_1730 : f32 = u_xlat83;
  u_xlat83 = (x_1729 + x_1730);
  let x_1732 : vec3<f32> = u_xlat2;
  let x_1733 : f32 = u_xlat83;
  let x_1737 : vec3<f32> = u_xlat3;
  let x_1739 : vec3<f32> = ((x_1732 * -(vec3<f32>(x_1733, x_1733, x_1733))) + -(x_1737));
  let x_1740 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
  let x_1742 : vec3<f32> = u_xlat2;
  let x_1743 : vec3<f32> = u_xlat3;
  u_xlat83 = dot(x_1742, x_1743);
  let x_1745 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1745, 0.0f, 1.0f);
  let x_1747 : f32 = u_xlat83;
  u_xlat83 = (-(x_1747) + 1.0f);
  let x_1750 : f32 = u_xlat83;
  let x_1751 : f32 = u_xlat83;
  u_xlat83 = (x_1750 * x_1751);
  let x_1753 : f32 = u_xlat83;
  let x_1754 : f32 = u_xlat83;
  u_xlat83 = (x_1753 * x_1754);
  let x_1757 : f32 = u_xlat78;
  u_xlat84 = ((-(x_1757) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1763 : f32 = u_xlat78;
  let x_1764 : f32 = u_xlat84;
  u_xlat78 = (x_1763 * x_1764);
  let x_1766 : f32 = u_xlat78;
  u_xlat78 = (x_1766 * 6.0f);
  let x_1777 : vec4<f32> = u_xlat7;
  let x_1779 : f32 = u_xlat78;
  let x_1780 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1777.x, x_1777.y, x_1777.z), x_1779);
  u_xlat7 = x_1780;
  let x_1782 : f32 = u_xlat7.w;
  u_xlat78 = (x_1782 + -1.0f);
  let x_1789 : f32 = x_1787.unity_SpecCube0_HDR.w;
  let x_1790 : f32 = u_xlat78;
  u_xlat78 = ((x_1789 * x_1790) + 1.0f);
  let x_1793 : f32 = u_xlat78;
  u_xlat78 = max(x_1793, 0.0f);
  let x_1795 : f32 = u_xlat78;
  u_xlat78 = log2(x_1795);
  let x_1797 : f32 = u_xlat78;
  let x_1799 : f32 = x_1787.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_1797 * x_1799);
  let x_1801 : f32 = u_xlat78;
  u_xlat78 = exp2(x_1801);
  let x_1803 : f32 = u_xlat78;
  let x_1805 : f32 = x_1787.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_1803 * x_1805);
  let x_1807 : vec4<f32> = u_xlat7;
  let x_1809 : f32 = u_xlat78;
  let x_1811 : vec3<f32> = (vec3<f32>(x_1807.x, x_1807.y, x_1807.z) * vec3<f32>(x_1809, x_1809, x_1809));
  let x_1812 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
  let x_1814 : f32 = u_xlat81;
  let x_1816 : f32 = u_xlat81;
  let x_1820 : vec2<f32> = ((vec2<f32>(x_1814, x_1814) * vec2<f32>(x_1816, x_1816)) + vec2<f32>(-1.0f, 1.0f));
  let x_1821 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1820.x, x_1820.y, x_1821.z, x_1821.w);
  let x_1824 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_1824);
  let x_1827 : vec4<f32> = u_xlat0;
  let x_1830 : f32 = u_xlat80;
  u_xlat34 = (-(vec3<f32>(x_1827.x, x_1827.y, x_1827.z)) + vec3<f32>(x_1830, x_1830, x_1830));
  let x_1833 : f32 = u_xlat83;
  let x_1835 : vec3<f32> = u_xlat34;
  let x_1837 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1833, x_1833, x_1833) * x_1835) + vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
  let x_1840 : f32 = u_xlat78;
  let x_1842 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1840, x_1840, x_1840) * x_1842);
  let x_1844 : vec4<f32> = u_xlat7;
  let x_1846 : vec3<f32> = u_xlat34;
  let x_1847 : vec3<f32> = (vec3<f32>(x_1844.x, x_1844.y, x_1844.z) * x_1846);
  let x_1848 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
  let x_1850 : vec4<f32> = u_xlat4;
  let x_1852 : vec3<f32> = u_xlat27;
  let x_1854 : vec4<f32> = u_xlat7;
  let x_1856 : vec3<f32> = ((vec3<f32>(x_1850.x, x_1850.y, x_1850.z) * x_1852) + vec3<f32>(x_1854.x, x_1854.y, x_1854.z));
  let x_1857 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
  let x_1859 : f32 = u_xlat31;
  let x_1861 : f32 = x_1787.unity_LightData.z;
  u_xlat78 = (x_1859 * x_1861);
  let x_1863 : vec3<f32> = u_xlat2;
  let x_1865 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat80 = dot(x_1863, vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
  let x_1868 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1868, 0.0f, 1.0f);
  let x_1870 : f32 = u_xlat78;
  let x_1871 : f32 = u_xlat80;
  u_xlat78 = (x_1870 * x_1871);
  let x_1873 : f32 = u_xlat78;
  let x_1875 : vec4<f32> = u_xlat6;
  let x_1877 : vec3<f32> = (vec3<f32>(x_1873, x_1873, x_1873) * vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
  let x_1880 : vec3<f32> = u_xlat3;
  let x_1882 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1884 : vec3<f32> = (x_1880 + vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
  let x_1885 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  let x_1887 : vec4<f32> = u_xlat7;
  let x_1889 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1887.x, x_1887.y, x_1887.z), vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : f32 = u_xlat78;
  u_xlat78 = max(x_1892, 1.17549435e-38f);
  let x_1895 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1895);
  let x_1897 : f32 = u_xlat78;
  let x_1899 : vec4<f32> = u_xlat7;
  let x_1901 : vec3<f32> = (vec3<f32>(x_1897, x_1897, x_1897) * vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
  let x_1902 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
  let x_1904 : vec3<f32> = u_xlat2;
  let x_1905 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_1904, vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
  let x_1908 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1908, 0.0f, 1.0f);
  let x_1911 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1913 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_1911.x, x_1911.y, x_1911.z), vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1916, 0.0f, 1.0f);
  let x_1918 : f32 = u_xlat78;
  let x_1919 : f32 = u_xlat78;
  u_xlat78 = (x_1918 * x_1919);
  let x_1921 : f32 = u_xlat78;
  let x_1923 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1921 * x_1923) + 1.00001001358032226562f);
  let x_1927 : f32 = u_xlat80;
  let x_1928 : f32 = u_xlat80;
  u_xlat80 = (x_1927 * x_1928);
  let x_1930 : f32 = u_xlat78;
  let x_1931 : f32 = u_xlat78;
  u_xlat78 = (x_1930 * x_1931);
  let x_1933 : f32 = u_xlat80;
  u_xlat80 = max(x_1933, 0.10000000149011611938f);
  let x_1936 : f32 = u_xlat78;
  let x_1937 : f32 = u_xlat80;
  u_xlat78 = (x_1936 * x_1937);
  let x_1940 : f32 = u_xlat5.x;
  let x_1941 : f32 = u_xlat78;
  u_xlat78 = (x_1940 * x_1941);
  let x_1943 : f32 = u_xlat82;
  let x_1944 : f32 = u_xlat78;
  u_xlat78 = (x_1943 / x_1944);
  let x_1946 : vec4<f32> = u_xlat0;
  let x_1948 : f32 = u_xlat78;
  let x_1951 : vec3<f32> = u_xlat27;
  let x_1952 : vec3<f32> = ((vec3<f32>(x_1946.x, x_1946.y, x_1946.z) * vec3<f32>(x_1948, x_1948, x_1948)) + x_1951);
  let x_1953 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
  let x_1956 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1958 : f32 = x_1787.unity_LightData.y;
  u_xlat78 = min(x_1956, x_1958);
  let x_1962 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1962));
  let x_1966 : f32 = u_xlat57.x;
  let x_1969 : f32 = x_266.x_AdditionalShadowFadeParams.x;
  let x_1972 : f32 = x_266.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_1966 * x_1969) + x_1972);
  let x_1974 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1974, 0.0f, 1.0f);
  let x_1977 : f32 = x_1607.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1979 : f32 = x_1607.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1981 : f32 = x_1607.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1983 : f32 = x_1607.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1984 : vec4<f32> = vec4<f32>(x_1977, x_1979, x_1981, x_1983);
  let x_1990 : vec4<bool> = (vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1984.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb31 = vec2<bool>(x_1990.x, x_1990.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2002 : u32 = u_xlatu_loop_1;
    let x_2003 : u32 = u_xlatu78;
    if ((x_2002 < x_2003)) {
    } else {
      break;
    }
    let x_2006 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2006 >> 2u);
    let x_2010 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2010 & 3u));
    let x_2013 : u32 = u_xlatu83;
    let x_2016 : vec4<f32> = x_1787.unity_LightIndices[bitcast<i32>(x_2013)];
    let x_2026 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2031 : vec4<u32> = indexable[x_2026];
    u_xlat83 = dot(x_2016, bitcast<vec4<f32>>(x_2031));
    let x_2035 : f32 = u_xlat83;
    u_xlati83 = i32(x_2035);
    let x_2037 : vec3<f32> = vs_TEXCOORD1;
    let x_2048 : i32 = u_xlati83;
    let x_2050 : vec4<f32> = x_2047.x_AdditionalLightsPosition[x_2048];
    let x_2053 : i32 = u_xlati83;
    let x_2055 : vec4<f32> = x_2047.x_AdditionalLightsPosition[x_2053];
    let x_2057 : vec3<f32> = ((-(x_2037) * vec3<f32>(x_2050.w, x_2050.w, x_2050.w)) + vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
    let x_2058 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
    let x_2060 : vec4<f32> = u_xlat9;
    let x_2062 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2060.x, x_2060.y, x_2060.z), vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
    let x_2065 : f32 = u_xlat84;
    u_xlat84 = max(x_2065, 0.00006103515625f);
    let x_2068 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2068);
    let x_2070 : f32 = u_xlat85;
    let x_2072 : vec4<f32> = u_xlat9;
    let x_2074 : vec3<f32> = (vec3<f32>(x_2070, x_2070, x_2070) * vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
    let x_2075 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
    let x_2078 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2078);
    let x_2080 : f32 = u_xlat84;
    let x_2081 : i32 = u_xlati83;
    let x_2083 : f32 = x_2047.x_AdditionalLightsAttenuation[x_2081].x;
    u_xlat84 = (x_2080 * x_2083);
    let x_2085 : f32 = u_xlat84;
    let x_2087 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2085) * x_2087) + 1.0f);
    let x_2090 : f32 = u_xlat84;
    u_xlat84 = max(x_2090, 0.0f);
    let x_2092 : f32 = u_xlat84;
    let x_2093 : f32 = u_xlat84;
    u_xlat84 = (x_2092 * x_2093);
    let x_2095 : f32 = u_xlat84;
    let x_2096 : f32 = u_xlat87;
    u_xlat84 = (x_2095 * x_2096);
    let x_2098 : i32 = u_xlati83;
    let x_2100 : vec4<f32> = x_2047.x_AdditionalLightsSpotDir[x_2098];
    let x_2102 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
    let x_2105 : f32 = u_xlat87;
    let x_2106 : i32 = u_xlati83;
    let x_2108 : f32 = x_2047.x_AdditionalLightsAttenuation[x_2106].z;
    let x_2110 : i32 = u_xlati83;
    let x_2112 : f32 = x_2047.x_AdditionalLightsAttenuation[x_2110].w;
    u_xlat87 = ((x_2105 * x_2108) + x_2112);
    let x_2114 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2114, 0.0f, 1.0f);
    let x_2116 : f32 = u_xlat87;
    let x_2117 : f32 = u_xlat87;
    u_xlat87 = (x_2116 * x_2117);
    let x_2119 : f32 = u_xlat84;
    let x_2120 : f32 = u_xlat87;
    u_xlat84 = (x_2119 * x_2120);
    let x_2124 : i32 = u_xlati83;
    let x_2126 : f32 = x_266.x_AdditionalShadowParams[x_2124].w;
    u_xlati87 = i32(x_2126);
    let x_2129 : i32 = u_xlati87;
    u_xlatb88 = (x_2129 >= 0i);
    let x_2131 : bool = u_xlatb88;
    if (x_2131) {
      let x_2135 : i32 = u_xlati83;
      let x_2137 : f32 = x_266.x_AdditionalShadowParams[x_2135].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2137, x_2137, x_2137, x_2137))));
      let x_2141 : bool = u_xlatb88;
      if (x_2141) {
        let x_2146 : vec4<f32> = u_xlat10;
        let x_2149 : vec4<f32> = u_xlat10;
        let x_2152 : vec4<bool> = (abs(vec4<f32>(x_2146.z, x_2146.z, x_2146.y, x_2146.z)) >= abs(vec4<f32>(x_2149.x, x_2149.y, x_2149.x, x_2149.x)));
        let x_2154 : vec3<bool> = vec3<bool>(x_2152.x, x_2152.y, x_2152.z);
        let x_2155 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
        let x_2158 : bool = u_xlatb11.y;
        let x_2160 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2158 & x_2160);
        let x_2162 : vec4<f32> = u_xlat10;
        let x_2165 : vec4<bool> = (-(vec4<f32>(x_2162.z, x_2162.y, x_2162.z, x_2162.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2166 : vec3<bool> = vec3<bool>(x_2165.x, x_2165.y, x_2165.w);
        let x_2167 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2166.x, x_2166.y, x_2167.z, x_2166.z);
        let x_2170 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2170);
        let x_2175 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2175);
        let x_2181 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2181);
        let x_2185 : bool = u_xlatb11.z;
        if (x_2185) {
          let x_2190 : f32 = u_xlat11.y;
          x_2186 = x_2190;
        } else {
          let x_2192 : f32 = u_xlat89;
          x_2186 = x_2192;
        }
        let x_2193 : f32 = x_2186;
        u_xlat37.x = x_2193;
        let x_2196 : bool = u_xlatb88;
        if (x_2196) {
          let x_2201 : f32 = u_xlat11.x;
          x_2197 = x_2201;
        } else {
          let x_2204 : f32 = u_xlat37.x;
          x_2197 = x_2204;
        }
        let x_2205 : f32 = x_2197;
        u_xlat88 = x_2205;
        let x_2206 : i32 = u_xlati83;
        let x_2208 : f32 = x_266.x_AdditionalShadowParams[x_2206].w;
        u_xlat11.x = trunc(x_2208);
        let x_2211 : f32 = u_xlat88;
        let x_2213 : f32 = u_xlat11.x;
        u_xlat88 = (x_2211 + x_2213);
        let x_2215 : f32 = u_xlat88;
        u_xlati87 = i32(x_2215);
      }
      let x_2217 : i32 = u_xlati87;
      u_xlati87 = (x_2217 << bitcast<u32>(2i));
      let x_2219 : vec3<f32> = vs_TEXCOORD1;
      let x_2222 : i32 = u_xlati87;
      let x_2225 : i32 = u_xlati87;
      let x_2229 : vec4<f32> = x_266.x_AdditionalLightsWorldToShadow[((x_2222 + 1i) / 4i)][((x_2225 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2219.y, x_2219.y, x_2219.y, x_2219.y) * x_2229);
      let x_2231 : i32 = u_xlati87;
      let x_2233 : i32 = u_xlati87;
      let x_2236 : vec4<f32> = x_266.x_AdditionalLightsWorldToShadow[(x_2231 / 4i)][(x_2233 % 4i)];
      let x_2237 : vec3<f32> = vs_TEXCOORD1;
      let x_2240 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2236 * vec4<f32>(x_2237.x, x_2237.x, x_2237.x, x_2237.x)) + x_2240);
      let x_2242 : i32 = u_xlati87;
      let x_2245 : i32 = u_xlati87;
      let x_2249 : vec4<f32> = x_266.x_AdditionalLightsWorldToShadow[((x_2242 + 2i) / 4i)][((x_2245 + 2i) % 4i)];
      let x_2250 : vec3<f32> = vs_TEXCOORD1;
      let x_2253 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2249 * vec4<f32>(x_2250.z, x_2250.z, x_2250.z, x_2250.z)) + x_2253);
      let x_2255 : vec4<f32> = u_xlat11;
      let x_2256 : i32 = u_xlati87;
      let x_2259 : i32 = u_xlati87;
      let x_2263 : vec4<f32> = x_266.x_AdditionalLightsWorldToShadow[((x_2256 + 3i) / 4i)][((x_2259 + 3i) % 4i)];
      u_xlat11 = (x_2255 + x_2263);
      let x_2265 : vec4<f32> = u_xlat11;
      let x_2267 : vec4<f32> = u_xlat11;
      let x_2269 : vec3<f32> = (vec3<f32>(x_2265.x, x_2265.y, x_2265.z) / vec3<f32>(x_2267.w, x_2267.w, x_2267.w));
      let x_2270 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
      let x_2273 : i32 = u_xlati83;
      let x_2275 : f32 = x_266.x_AdditionalShadowParams[x_2273].y;
      u_xlatb87 = (0.0f < x_2275);
      let x_2277 : bool = u_xlatb87;
      if (x_2277) {
        let x_2280 : i32 = u_xlati83;
        let x_2282 : f32 = x_266.x_AdditionalShadowParams[x_2280].y;
        u_xlatb87 = (1.0f == x_2282);
        let x_2284 : bool = u_xlatb87;
        if (x_2284) {
          let x_2287 : vec4<f32> = u_xlat11;
          let x_2291 : vec4<f32> = x_266.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2287.x, x_2287.y, x_2287.x, x_2287.y) + x_2291);
          let x_2294 : vec4<f32> = u_xlat12;
          let x_2295 : vec2<f32> = vec2<f32>(x_2294.x, x_2294.y);
          let x_2297 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2295.x, x_2295.y, x_2297);
          let x_2305 : vec3<f32> = txVec30;
          let x_2307 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2305.xy, x_2305.z);
          u_xlat13.x = x_2307;
          let x_2310 : vec4<f32> = u_xlat12;
          let x_2311 : vec2<f32> = vec2<f32>(x_2310.z, x_2310.w);
          let x_2313 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2311.x, x_2311.y, x_2313);
          let x_2320 : vec3<f32> = txVec31;
          let x_2322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2320.xy, x_2320.z);
          u_xlat13.y = x_2322;
          let x_2324 : vec4<f32> = u_xlat11;
          let x_2328 : vec4<f32> = x_266.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2324.x, x_2324.y, x_2324.x, x_2324.y) + x_2328);
          let x_2331 : vec4<f32> = u_xlat12;
          let x_2332 : vec2<f32> = vec2<f32>(x_2331.x, x_2331.y);
          let x_2334 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2332.x, x_2332.y, x_2334);
          let x_2341 : vec3<f32> = txVec32;
          let x_2343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2341.xy, x_2341.z);
          u_xlat13.z = x_2343;
          let x_2346 : vec4<f32> = u_xlat12;
          let x_2347 : vec2<f32> = vec2<f32>(x_2346.z, x_2346.w);
          let x_2349 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2347.x, x_2347.y, x_2349);
          let x_2356 : vec3<f32> = txVec33;
          let x_2358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2356.xy, x_2356.z);
          u_xlat13.w = x_2358;
          let x_2360 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2360, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2363 : i32 = u_xlati83;
          let x_2365 : f32 = x_266.x_AdditionalShadowParams[x_2363].y;
          u_xlatb88 = (2.0f == x_2365);
          let x_2367 : bool = u_xlatb88;
          if (x_2367) {
            let x_2370 : vec4<f32> = u_xlat11;
            let x_2374 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2377 : vec2<f32> = ((vec2<f32>(x_2370.x, x_2370.y) * vec2<f32>(x_2374.z, x_2374.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2378 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2377.x, x_2377.y, x_2378.z, x_2378.w);
            let x_2380 : vec4<f32> = u_xlat12;
            let x_2382 : vec2<f32> = floor(vec2<f32>(x_2380.x, x_2380.y));
            let x_2383 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2382.x, x_2382.y, x_2383.z, x_2383.w);
            let x_2385 : vec4<f32> = u_xlat11;
            let x_2388 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2391 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2385.x, x_2385.y) * vec2<f32>(x_2388.z, x_2388.w)) + -(vec2<f32>(x_2391.x, x_2391.y)));
            let x_2395 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2395.x, x_2395.x, x_2395.y, x_2395.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2398 : vec4<f32> = u_xlat13;
            let x_2400 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2398.x, x_2398.x, x_2398.z, x_2398.z) * vec4<f32>(x_2400.x, x_2400.x, x_2400.z, x_2400.z));
            let x_2403 : vec4<f32> = u_xlat14;
            let x_2405 : vec2<f32> = (vec2<f32>(x_2403.y, x_2403.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2406 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2405.x, x_2406.y, x_2405.y, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat14;
            let x_2411 : vec2<f32> = u_xlat64;
            let x_2413 : vec2<f32> = ((vec2<f32>(x_2408.x, x_2408.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2411));
            let x_2414 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
            let x_2417 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2417) + vec2<f32>(1.0f, 1.0f));
            let x_2420 : vec2<f32> = u_xlat64;
            let x_2421 : vec2<f32> = min(x_2420, vec2<f32>(0.0f, 0.0f));
            let x_2422 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2421.x, x_2421.y, x_2422.z, x_2422.w);
            let x_2424 : vec4<f32> = u_xlat15;
            let x_2427 : vec4<f32> = u_xlat15;
            let x_2430 : vec2<f32> = u_xlat66;
            let x_2431 : vec2<f32> = ((-(vec2<f32>(x_2424.x, x_2424.y)) * vec2<f32>(x_2427.x, x_2427.y)) + x_2430);
            let x_2432 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
            let x_2434 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2434, vec2<f32>(0.0f, 0.0f));
            let x_2436 : vec2<f32> = u_xlat64;
            let x_2438 : vec2<f32> = u_xlat64;
            let x_2440 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2436) * x_2438) + vec2<f32>(x_2440.y, x_2440.w));
            let x_2443 : vec4<f32> = u_xlat15;
            let x_2445 : vec2<f32> = (vec2<f32>(x_2443.x, x_2443.y) + vec2<f32>(1.0f, 1.0f));
            let x_2446 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2448 + vec2<f32>(1.0f, 1.0f));
            let x_2450 : vec4<f32> = u_xlat14;
            let x_2452 : vec2<f32> = (vec2<f32>(x_2450.x, x_2450.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2453 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2452.x, x_2452.y, x_2453.z, x_2453.w);
            let x_2455 : vec2<f32> = u_xlat66;
            let x_2456 : vec2<f32> = (x_2455 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2457 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2456.x, x_2456.y, x_2457.z, x_2457.w);
            let x_2459 : vec4<f32> = u_xlat15;
            let x_2461 : vec2<f32> = (vec2<f32>(x_2459.x, x_2459.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2462 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2461.x, x_2461.y, x_2462.z, x_2462.w);
            let x_2464 : vec2<f32> = u_xlat64;
            let x_2465 : vec2<f32> = (x_2464 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2466 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2465.x, x_2465.y, x_2466.z, x_2466.w);
            let x_2468 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2468.y, x_2468.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2472 : f32 = u_xlat15.x;
            u_xlat16.z = x_2472;
            let x_2475 : f32 = u_xlat64.x;
            u_xlat16.w = x_2475;
            let x_2478 : f32 = u_xlat17.x;
            u_xlat14.z = x_2478;
            let x_2481 : f32 = u_xlat13.x;
            u_xlat14.w = x_2481;
            let x_2483 : vec4<f32> = u_xlat14;
            let x_2485 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2483.z, x_2483.w, x_2483.x, x_2483.z) + vec4<f32>(x_2485.z, x_2485.w, x_2485.x, x_2485.z));
            let x_2489 : f32 = u_xlat16.y;
            u_xlat15.z = x_2489;
            let x_2492 : f32 = u_xlat64.y;
            u_xlat15.w = x_2492;
            let x_2495 : f32 = u_xlat14.y;
            u_xlat17.z = x_2495;
            let x_2498 : f32 = u_xlat13.z;
            u_xlat17.w = x_2498;
            let x_2500 : vec4<f32> = u_xlat15;
            let x_2502 : vec4<f32> = u_xlat17;
            let x_2504 : vec3<f32> = (vec3<f32>(x_2500.z, x_2500.y, x_2500.w) + vec3<f32>(x_2502.z, x_2502.y, x_2502.w));
            let x_2505 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
            let x_2507 : vec4<f32> = u_xlat14;
            let x_2509 : vec4<f32> = u_xlat18;
            let x_2511 : vec3<f32> = (vec3<f32>(x_2507.x, x_2507.z, x_2507.w) / vec3<f32>(x_2509.z, x_2509.w, x_2509.y));
            let x_2512 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2511.x, x_2511.y, x_2511.z, x_2512.w);
            let x_2514 : vec4<f32> = u_xlat14;
            let x_2516 : vec3<f32> = (vec3<f32>(x_2514.x, x_2514.y, x_2514.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2517 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
            let x_2519 : vec4<f32> = u_xlat17;
            let x_2521 : vec4<f32> = u_xlat13;
            let x_2523 : vec3<f32> = (vec3<f32>(x_2519.z, x_2519.y, x_2519.w) / vec3<f32>(x_2521.x, x_2521.y, x_2521.z));
            let x_2524 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2524.w);
            let x_2526 : vec4<f32> = u_xlat15;
            let x_2528 : vec3<f32> = (vec3<f32>(x_2526.x, x_2526.y, x_2526.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2529 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat14;
            let x_2534 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2536 : vec3<f32> = (vec3<f32>(x_2531.y, x_2531.x, x_2531.z) * vec3<f32>(x_2534.x, x_2534.x, x_2534.x));
            let x_2537 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2537.w);
            let x_2539 : vec4<f32> = u_xlat15;
            let x_2542 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2544 : vec3<f32> = (vec3<f32>(x_2539.x, x_2539.y, x_2539.z) * vec3<f32>(x_2542.y, x_2542.y, x_2542.y));
            let x_2545 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
            let x_2548 : f32 = u_xlat15.x;
            u_xlat14.w = x_2548;
            let x_2550 : vec4<f32> = u_xlat12;
            let x_2553 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2556 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2550.x, x_2550.y, x_2550.x, x_2550.y) * vec4<f32>(x_2553.x, x_2553.y, x_2553.x, x_2553.y)) + vec4<f32>(x_2556.y, x_2556.w, x_2556.x, x_2556.w));
            let x_2559 : vec4<f32> = u_xlat12;
            let x_2562 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2565 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2559.x, x_2559.y) * vec2<f32>(x_2562.x, x_2562.y)) + vec2<f32>(x_2565.z, x_2565.w));
            let x_2569 : f32 = u_xlat14.y;
            u_xlat15.w = x_2569;
            let x_2571 : vec4<f32> = u_xlat15;
            let x_2572 : vec2<f32> = vec2<f32>(x_2571.y, x_2571.z);
            let x_2573 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2573.x, x_2572.x, x_2573.z, x_2572.y);
            let x_2575 : vec4<f32> = u_xlat12;
            let x_2578 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2581 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y) * vec4<f32>(x_2578.x, x_2578.y, x_2578.x, x_2578.y)) + vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2581.y));
            let x_2584 : vec4<f32> = u_xlat12;
            let x_2587 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2590 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2584.x, x_2584.y, x_2584.x, x_2584.y) * vec4<f32>(x_2587.x, x_2587.y, x_2587.x, x_2587.y)) + vec4<f32>(x_2590.w, x_2590.y, x_2590.w, x_2590.z));
            let x_2593 : vec4<f32> = u_xlat12;
            let x_2596 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2599 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2593.x, x_2593.y, x_2593.x, x_2593.y) * vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.y)) + vec4<f32>(x_2599.x, x_2599.w, x_2599.z, x_2599.w));
            let x_2602 : vec4<f32> = u_xlat13;
            let x_2604 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2602.x, x_2602.x, x_2602.x, x_2602.y) * vec4<f32>(x_2604.z, x_2604.w, x_2604.y, x_2604.z));
            let x_2608 : vec4<f32> = u_xlat13;
            let x_2610 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2608.y, x_2608.y, x_2608.z, x_2608.z) * x_2610);
            let x_2613 : f32 = u_xlat13.z;
            let x_2615 : f32 = u_xlat18.y;
            u_xlat88 = (x_2613 * x_2615);
            let x_2618 : vec4<f32> = u_xlat16;
            let x_2619 : vec2<f32> = vec2<f32>(x_2618.x, x_2618.y);
            let x_2621 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2619.x, x_2619.y, x_2621);
            let x_2628 : vec3<f32> = txVec34;
            let x_2630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2628.xy, x_2628.z);
            u_xlat89 = x_2630;
            let x_2632 : vec4<f32> = u_xlat16;
            let x_2633 : vec2<f32> = vec2<f32>(x_2632.z, x_2632.w);
            let x_2635 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2633.x, x_2633.y, x_2635);
            let x_2642 : vec3<f32> = txVec35;
            let x_2644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2642.xy, x_2642.z);
            u_xlat12.x = x_2644;
            let x_2647 : f32 = u_xlat12.x;
            let x_2649 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2647 * x_2649);
            let x_2653 : f32 = u_xlat19.x;
            let x_2654 : f32 = u_xlat89;
            let x_2657 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2653 * x_2654) + x_2657);
            let x_2660 : vec2<f32> = u_xlat64;
            let x_2662 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2660.x, x_2660.y, x_2662);
            let x_2669 : vec3<f32> = txVec36;
            let x_2671 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2669.xy, x_2669.z);
            u_xlat12.x = x_2671;
            let x_2674 : f32 = u_xlat19.z;
            let x_2676 : f32 = u_xlat12.x;
            let x_2678 : f32 = u_xlat89;
            u_xlat89 = ((x_2674 * x_2676) + x_2678);
            let x_2681 : vec4<f32> = u_xlat15;
            let x_2682 : vec2<f32> = vec2<f32>(x_2681.x, x_2681.y);
            let x_2684 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2682.x, x_2682.y, x_2684);
            let x_2691 : vec3<f32> = txVec37;
            let x_2693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2691.xy, x_2691.z);
            u_xlat12.x = x_2693;
            let x_2696 : f32 = u_xlat19.w;
            let x_2698 : f32 = u_xlat12.x;
            let x_2700 : f32 = u_xlat89;
            u_xlat89 = ((x_2696 * x_2698) + x_2700);
            let x_2703 : vec4<f32> = u_xlat17;
            let x_2704 : vec2<f32> = vec2<f32>(x_2703.x, x_2703.y);
            let x_2706 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2704.x, x_2704.y, x_2706);
            let x_2713 : vec3<f32> = txVec38;
            let x_2715 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2713.xy, x_2713.z);
            u_xlat12.x = x_2715;
            let x_2718 : f32 = u_xlat20.x;
            let x_2720 : f32 = u_xlat12.x;
            let x_2722 : f32 = u_xlat89;
            u_xlat89 = ((x_2718 * x_2720) + x_2722);
            let x_2725 : vec4<f32> = u_xlat17;
            let x_2726 : vec2<f32> = vec2<f32>(x_2725.z, x_2725.w);
            let x_2728 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2726.x, x_2726.y, x_2728);
            let x_2735 : vec3<f32> = txVec39;
            let x_2737 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2735.xy, x_2735.z);
            u_xlat12.x = x_2737;
            let x_2740 : f32 = u_xlat20.y;
            let x_2742 : f32 = u_xlat12.x;
            let x_2744 : f32 = u_xlat89;
            u_xlat89 = ((x_2740 * x_2742) + x_2744);
            let x_2747 : vec4<f32> = u_xlat15;
            let x_2748 : vec2<f32> = vec2<f32>(x_2747.z, x_2747.w);
            let x_2750 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2748.x, x_2748.y, x_2750);
            let x_2757 : vec3<f32> = txVec40;
            let x_2759 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2757.xy, x_2757.z);
            u_xlat12.x = x_2759;
            let x_2762 : f32 = u_xlat20.z;
            let x_2764 : f32 = u_xlat12.x;
            let x_2766 : f32 = u_xlat89;
            u_xlat89 = ((x_2762 * x_2764) + x_2766);
            let x_2769 : vec4<f32> = u_xlat14;
            let x_2770 : vec2<f32> = vec2<f32>(x_2769.x, x_2769.y);
            let x_2772 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2770.x, x_2770.y, x_2772);
            let x_2779 : vec3<f32> = txVec41;
            let x_2781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2779.xy, x_2779.z);
            u_xlat12.x = x_2781;
            let x_2784 : f32 = u_xlat20.w;
            let x_2786 : f32 = u_xlat12.x;
            let x_2788 : f32 = u_xlat89;
            u_xlat89 = ((x_2784 * x_2786) + x_2788);
            let x_2791 : vec4<f32> = u_xlat14;
            let x_2792 : vec2<f32> = vec2<f32>(x_2791.z, x_2791.w);
            let x_2794 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2792.x, x_2792.y, x_2794);
            let x_2801 : vec3<f32> = txVec42;
            let x_2803 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2801.xy, x_2801.z);
            u_xlat12.x = x_2803;
            let x_2805 : f32 = u_xlat88;
            let x_2807 : f32 = u_xlat12.x;
            let x_2809 : f32 = u_xlat89;
            u_xlat87 = ((x_2805 * x_2807) + x_2809);
          } else {
            let x_2812 : vec4<f32> = u_xlat11;
            let x_2815 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2818 : vec2<f32> = ((vec2<f32>(x_2812.x, x_2812.y) * vec2<f32>(x_2815.z, x_2815.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2819 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2818.x, x_2818.y, x_2819.z, x_2819.w);
            let x_2821 : vec4<f32> = u_xlat12;
            let x_2823 : vec2<f32> = floor(vec2<f32>(x_2821.x, x_2821.y));
            let x_2824 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2823.x, x_2823.y, x_2824.z, x_2824.w);
            let x_2826 : vec4<f32> = u_xlat11;
            let x_2829 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2832 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2826.x, x_2826.y) * vec2<f32>(x_2829.z, x_2829.w)) + -(vec2<f32>(x_2832.x, x_2832.y)));
            let x_2836 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2836.x, x_2836.x, x_2836.y, x_2836.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2839 : vec4<f32> = u_xlat13;
            let x_2841 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2839.x, x_2839.x, x_2839.z, x_2839.z) * vec4<f32>(x_2841.x, x_2841.x, x_2841.z, x_2841.z));
            let x_2844 : vec4<f32> = u_xlat14;
            let x_2846 : vec2<f32> = (vec2<f32>(x_2844.y, x_2844.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2847 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2847.x, x_2846.x, x_2847.z, x_2846.y);
            let x_2849 : vec4<f32> = u_xlat14;
            let x_2852 : vec2<f32> = u_xlat64;
            let x_2854 : vec2<f32> = ((vec2<f32>(x_2849.x, x_2849.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2852));
            let x_2855 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2854.x, x_2855.y, x_2854.y, x_2855.w);
            let x_2857 : vec2<f32> = u_xlat64;
            let x_2859 : vec2<f32> = (-(x_2857) + vec2<f32>(1.0f, 1.0f));
            let x_2860 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2859.x, x_2859.y, x_2860.z, x_2860.w);
            let x_2862 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2862, vec2<f32>(0.0f, 0.0f));
            let x_2864 : vec2<f32> = u_xlat66;
            let x_2866 : vec2<f32> = u_xlat66;
            let x_2868 : vec4<f32> = u_xlat14;
            let x_2870 : vec2<f32> = ((-(x_2864) * x_2866) + vec2<f32>(x_2868.x, x_2868.y));
            let x_2871 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2870.x, x_2870.y, x_2871.z, x_2871.w);
            let x_2873 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2873, vec2<f32>(0.0f, 0.0f));
            let x_2876 : vec2<f32> = u_xlat66;
            let x_2878 : vec2<f32> = u_xlat66;
            let x_2880 : vec4<f32> = u_xlat13;
            let x_2882 : vec2<f32> = ((-(x_2876) * x_2878) + vec2<f32>(x_2880.y, x_2880.w));
            let x_2883 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2882.x, x_2883.y, x_2882.y);
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2888 : vec2<f32> = (vec2<f32>(x_2885.x, x_2885.y) + vec2<f32>(2.0f, 2.0f));
            let x_2889 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2888.x, x_2888.y, x_2889.z, x_2889.w);
            let x_2891 : vec3<f32> = u_xlat39;
            let x_2893 : vec2<f32> = (vec2<f32>(x_2891.x, x_2891.z) + vec2<f32>(2.0f, 2.0f));
            let x_2894 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2894.x, x_2893.x, x_2894.z, x_2893.y);
            let x_2897 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2897 * 0.08163200318813323975f);
            let x_2900 : vec4<f32> = u_xlat13;
            let x_2903 : vec3<f32> = (vec3<f32>(x_2900.z, x_2900.x, x_2900.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2904 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2903.x, x_2903.y, x_2903.z, x_2904.w);
            let x_2906 : vec4<f32> = u_xlat14;
            let x_2908 : vec2<f32> = (vec2<f32>(x_2906.x, x_2906.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2909 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2908.x, x_2908.y, x_2909.z, x_2909.w);
            let x_2912 : f32 = u_xlat17.y;
            u_xlat16.x = x_2912;
            let x_2914 : vec2<f32> = u_xlat64;
            let x_2917 : vec2<f32> = ((vec2<f32>(x_2914.x, x_2914.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2918 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2918.x, x_2917.x, x_2918.z, x_2917.y);
            let x_2920 : vec2<f32> = u_xlat64;
            let x_2923 : vec2<f32> = ((vec2<f32>(x_2920.x, x_2920.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2924 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2923.x, x_2924.y, x_2923.y, x_2924.w);
            let x_2927 : f32 = u_xlat13.x;
            u_xlat14.y = x_2927;
            let x_2930 : f32 = u_xlat15.y;
            u_xlat14.w = x_2930;
            let x_2932 : vec4<f32> = u_xlat14;
            let x_2933 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2932 + x_2933);
            let x_2935 : vec2<f32> = u_xlat64;
            let x_2938 : vec2<f32> = ((vec2<f32>(x_2935.y, x_2935.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2939 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2939.x, x_2938.x, x_2939.z, x_2938.y);
            let x_2941 : vec2<f32> = u_xlat64;
            let x_2944 : vec2<f32> = ((vec2<f32>(x_2941.y, x_2941.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2945 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2944.x, x_2945.y, x_2944.y, x_2945.w);
            let x_2948 : f32 = u_xlat13.y;
            u_xlat15.y = x_2948;
            let x_2950 : vec4<f32> = u_xlat15;
            let x_2951 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2950 + x_2951);
            let x_2953 : vec4<f32> = u_xlat14;
            let x_2954 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2953 / x_2954);
            let x_2956 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2956 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2958 : vec4<f32> = u_xlat15;
            let x_2959 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2958 / x_2959);
            let x_2961 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2961 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2963 : vec4<f32> = u_xlat14;
            let x_2966 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2963.w, x_2963.x, x_2963.y, x_2963.z) * vec4<f32>(x_2966.x, x_2966.x, x_2966.x, x_2966.x));
            let x_2969 : vec4<f32> = u_xlat15;
            let x_2972 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2969.x, x_2969.w, x_2969.y, x_2969.z) * vec4<f32>(x_2972.y, x_2972.y, x_2972.y, x_2972.y));
            let x_2975 : vec4<f32> = u_xlat14;
            let x_2976 : vec3<f32> = vec3<f32>(x_2975.y, x_2975.z, x_2975.w);
            let x_2977 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2976.x, x_2977.y, x_2976.y, x_2976.z);
            let x_2980 : f32 = u_xlat15.x;
            u_xlat17.y = x_2980;
            let x_2982 : vec4<f32> = u_xlat12;
            let x_2985 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2988 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2982.x, x_2982.y, x_2982.x, x_2982.y) * vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y)) + vec4<f32>(x_2988.x, x_2988.y, x_2988.z, x_2988.y));
            let x_2991 : vec4<f32> = u_xlat12;
            let x_2994 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_2997 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2991.x, x_2991.y) * vec2<f32>(x_2994.x, x_2994.y)) + vec2<f32>(x_2997.w, x_2997.y));
            let x_3001 : f32 = u_xlat17.y;
            u_xlat14.y = x_3001;
            let x_3004 : f32 = u_xlat15.z;
            u_xlat17.y = x_3004;
            let x_3006 : vec4<f32> = u_xlat12;
            let x_3009 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3012 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y) * vec4<f32>(x_3009.x, x_3009.y, x_3009.x, x_3009.y)) + vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3012.y));
            let x_3015 : vec4<f32> = u_xlat12;
            let x_3018 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3021 : vec4<f32> = u_xlat17;
            let x_3023 : vec2<f32> = ((vec2<f32>(x_3015.x, x_3015.y) * vec2<f32>(x_3018.x, x_3018.y)) + vec2<f32>(x_3021.w, x_3021.y));
            let x_3024 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3023.x, x_3023.y, x_3024.z, x_3024.w);
            let x_3027 : f32 = u_xlat17.y;
            u_xlat14.z = x_3027;
            let x_3030 : vec4<f32> = u_xlat12;
            let x_3033 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3030.x, x_3030.y, x_3030.x, x_3030.y) * vec4<f32>(x_3033.x, x_3033.y, x_3033.x, x_3033.y)) + vec4<f32>(x_3036.x, x_3036.y, x_3036.x, x_3036.z));
            let x_3040 : f32 = u_xlat15.w;
            u_xlat17.y = x_3040;
            let x_3043 : vec4<f32> = u_xlat12;
            let x_3046 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3043.x, x_3043.y, x_3043.x, x_3043.y) * vec4<f32>(x_3046.x, x_3046.y, x_3046.x, x_3046.y)) + vec4<f32>(x_3049.x, x_3049.y, x_3049.z, x_3049.y));
            let x_3053 : vec4<f32> = u_xlat12;
            let x_3056 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3059 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3053.x, x_3053.y) * vec2<f32>(x_3056.x, x_3056.y)) + vec2<f32>(x_3059.w, x_3059.y));
            let x_3063 : f32 = u_xlat17.y;
            u_xlat14.w = x_3063;
            let x_3066 : vec4<f32> = u_xlat12;
            let x_3069 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3072 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3066.x, x_3066.y) * vec2<f32>(x_3069.x, x_3069.y)) + vec2<f32>(x_3072.x, x_3072.w));
            let x_3075 : vec4<f32> = u_xlat17;
            let x_3076 : vec3<f32> = vec3<f32>(x_3075.x, x_3075.z, x_3075.w);
            let x_3077 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3076.x, x_3077.y, x_3076.y, x_3076.z);
            let x_3079 : vec4<f32> = u_xlat12;
            let x_3082 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3085 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3079.x, x_3079.y, x_3079.x, x_3079.y) * vec4<f32>(x_3082.x, x_3082.y, x_3082.x, x_3082.y)) + vec4<f32>(x_3085.x, x_3085.y, x_3085.z, x_3085.y));
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3092 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3095 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3089.x, x_3089.y) * vec2<f32>(x_3092.x, x_3092.y)) + vec2<f32>(x_3095.w, x_3095.y));
            let x_3099 : f32 = u_xlat14.x;
            u_xlat15.x = x_3099;
            let x_3101 : vec4<f32> = u_xlat12;
            let x_3104 : vec4<f32> = x_266.x_AdditionalShadowmapSize;
            let x_3107 : vec4<f32> = u_xlat15;
            let x_3109 : vec2<f32> = ((vec2<f32>(x_3101.x, x_3101.y) * vec2<f32>(x_3104.x, x_3104.y)) + vec2<f32>(x_3107.x, x_3107.y));
            let x_3110 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3109.x, x_3109.y, x_3110.z, x_3110.w);
            let x_3113 : vec4<f32> = u_xlat13;
            let x_3115 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3113.x, x_3113.x, x_3113.x, x_3113.x) * x_3115);
            let x_3118 : vec4<f32> = u_xlat13;
            let x_3120 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3118.y, x_3118.y, x_3118.y, x_3118.y) * x_3120);
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3125 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3123.z, x_3123.z, x_3123.z, x_3123.z) * x_3125);
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3129 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3127.w, x_3127.w, x_3127.w, x_3127.w) * x_3129);
            let x_3132 : vec4<f32> = u_xlat18;
            let x_3133 : vec2<f32> = vec2<f32>(x_3132.x, x_3132.y);
            let x_3135 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
            let x_3142 : vec3<f32> = txVec43;
            let x_3144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
            u_xlat88 = x_3144;
            let x_3146 : vec4<f32> = u_xlat18;
            let x_3147 : vec2<f32> = vec2<f32>(x_3146.z, x_3146.w);
            let x_3149 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3156 : vec3<f32> = txVec44;
            let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
            u_xlat89 = x_3158;
            let x_3159 : f32 = u_xlat89;
            let x_3161 : f32 = u_xlat23.y;
            u_xlat89 = (x_3159 * x_3161);
            let x_3164 : f32 = u_xlat23.x;
            let x_3165 : f32 = u_xlat88;
            let x_3167 : f32 = u_xlat89;
            u_xlat88 = ((x_3164 * x_3165) + x_3167);
            let x_3170 : vec2<f32> = u_xlat64;
            let x_3172 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec45;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat89 = x_3181;
            let x_3183 : f32 = u_xlat23.z;
            let x_3184 : f32 = u_xlat89;
            let x_3186 : f32 = u_xlat88;
            u_xlat88 = ((x_3183 * x_3184) + x_3186);
            let x_3189 : vec4<f32> = u_xlat21;
            let x_3190 : vec2<f32> = vec2<f32>(x_3189.x, x_3189.y);
            let x_3192 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
            let x_3199 : vec3<f32> = txVec46;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat89 = x_3201;
            let x_3203 : f32 = u_xlat23.w;
            let x_3204 : f32 = u_xlat89;
            let x_3206 : f32 = u_xlat88;
            u_xlat88 = ((x_3203 * x_3204) + x_3206);
            let x_3209 : vec4<f32> = u_xlat19;
            let x_3210 : vec2<f32> = vec2<f32>(x_3209.x, x_3209.y);
            let x_3212 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec47;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat89 = x_3221;
            let x_3223 : f32 = u_xlat24.x;
            let x_3224 : f32 = u_xlat89;
            let x_3226 : f32 = u_xlat88;
            u_xlat88 = ((x_3223 * x_3224) + x_3226);
            let x_3229 : vec4<f32> = u_xlat19;
            let x_3230 : vec2<f32> = vec2<f32>(x_3229.z, x_3229.w);
            let x_3232 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3230.x, x_3230.y, x_3232);
            let x_3239 : vec3<f32> = txVec48;
            let x_3241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3239.xy, x_3239.z);
            u_xlat89 = x_3241;
            let x_3243 : f32 = u_xlat24.y;
            let x_3244 : f32 = u_xlat89;
            let x_3246 : f32 = u_xlat88;
            u_xlat88 = ((x_3243 * x_3244) + x_3246);
            let x_3249 : vec4<f32> = u_xlat20;
            let x_3250 : vec2<f32> = vec2<f32>(x_3249.x, x_3249.y);
            let x_3252 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3250.x, x_3250.y, x_3252);
            let x_3259 : vec3<f32> = txVec49;
            let x_3261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3259.xy, x_3259.z);
            u_xlat89 = x_3261;
            let x_3263 : f32 = u_xlat24.z;
            let x_3264 : f32 = u_xlat89;
            let x_3266 : f32 = u_xlat88;
            u_xlat88 = ((x_3263 * x_3264) + x_3266);
            let x_3269 : vec4<f32> = u_xlat21;
            let x_3270 : vec2<f32> = vec2<f32>(x_3269.z, x_3269.w);
            let x_3272 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3270.x, x_3270.y, x_3272);
            let x_3279 : vec3<f32> = txVec50;
            let x_3281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3279.xy, x_3279.z);
            u_xlat89 = x_3281;
            let x_3283 : f32 = u_xlat24.w;
            let x_3284 : f32 = u_xlat89;
            let x_3286 : f32 = u_xlat88;
            u_xlat88 = ((x_3283 * x_3284) + x_3286);
            let x_3289 : vec4<f32> = u_xlat22;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.x, x_3289.y);
            let x_3292 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec51;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat89 = x_3301;
            let x_3303 : f32 = u_xlat25.x;
            let x_3304 : f32 = u_xlat89;
            let x_3306 : f32 = u_xlat88;
            u_xlat88 = ((x_3303 * x_3304) + x_3306);
            let x_3309 : vec4<f32> = u_xlat22;
            let x_3310 : vec2<f32> = vec2<f32>(x_3309.z, x_3309.w);
            let x_3312 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3310.x, x_3310.y, x_3312);
            let x_3319 : vec3<f32> = txVec52;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat89 = x_3321;
            let x_3323 : f32 = u_xlat25.y;
            let x_3324 : f32 = u_xlat89;
            let x_3326 : f32 = u_xlat88;
            u_xlat88 = ((x_3323 * x_3324) + x_3326);
            let x_3329 : vec2<f32> = u_xlat40;
            let x_3331 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
            let x_3338 : vec3<f32> = txVec53;
            let x_3340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
            u_xlat89 = x_3340;
            let x_3342 : f32 = u_xlat25.z;
            let x_3343 : f32 = u_xlat89;
            let x_3345 : f32 = u_xlat88;
            u_xlat88 = ((x_3342 * x_3343) + x_3345);
            let x_3348 : vec2<f32> = u_xlat72;
            let x_3350 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec54;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat89 = x_3359;
            let x_3361 : f32 = u_xlat25.w;
            let x_3362 : f32 = u_xlat89;
            let x_3364 : f32 = u_xlat88;
            u_xlat88 = ((x_3361 * x_3362) + x_3364);
            let x_3367 : vec4<f32> = u_xlat17;
            let x_3368 : vec2<f32> = vec2<f32>(x_3367.x, x_3367.y);
            let x_3370 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3368.x, x_3368.y, x_3370);
            let x_3377 : vec3<f32> = txVec55;
            let x_3379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3377.xy, x_3377.z);
            u_xlat89 = x_3379;
            let x_3381 : f32 = u_xlat13.x;
            let x_3382 : f32 = u_xlat89;
            let x_3384 : f32 = u_xlat88;
            u_xlat88 = ((x_3381 * x_3382) + x_3384);
            let x_3387 : vec4<f32> = u_xlat17;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.z, x_3387.w);
            let x_3390 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec56;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat89 = x_3399;
            let x_3401 : f32 = u_xlat13.y;
            let x_3402 : f32 = u_xlat89;
            let x_3404 : f32 = u_xlat88;
            u_xlat88 = ((x_3401 * x_3402) + x_3404);
            let x_3407 : vec2<f32> = u_xlat67;
            let x_3409 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
            let x_3416 : vec3<f32> = txVec57;
            let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
            u_xlat89 = x_3418;
            let x_3420 : f32 = u_xlat13.z;
            let x_3421 : f32 = u_xlat89;
            let x_3423 : f32 = u_xlat88;
            u_xlat88 = ((x_3420 * x_3421) + x_3423);
            let x_3426 : vec4<f32> = u_xlat12;
            let x_3427 : vec2<f32> = vec2<f32>(x_3426.x, x_3426.y);
            let x_3429 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec58;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat89 = x_3438;
            let x_3440 : f32 = u_xlat13.w;
            let x_3441 : f32 = u_xlat89;
            let x_3443 : f32 = u_xlat88;
            u_xlat87 = ((x_3440 * x_3441) + x_3443);
          }
        }
      } else {
        let x_3447 : vec4<f32> = u_xlat11;
        let x_3448 : vec2<f32> = vec2<f32>(x_3447.x, x_3447.y);
        let x_3450 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
        let x_3457 : vec3<f32> = txVec59;
        let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
        u_xlat87 = x_3459;
      }
      let x_3460 : i32 = u_xlati83;
      let x_3462 : f32 = x_266.x_AdditionalShadowParams[x_3460].x;
      u_xlat88 = (1.0f + -(x_3462));
      let x_3465 : f32 = u_xlat87;
      let x_3466 : i32 = u_xlati83;
      let x_3468 : f32 = x_266.x_AdditionalShadowParams[x_3466].x;
      let x_3470 : f32 = u_xlat88;
      u_xlat87 = ((x_3465 * x_3468) + x_3470);
      let x_3473 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3473);
      let x_3476 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3476 >= 1.0f);
      let x_3479 : bool = u_xlatb88;
      let x_3481 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3479 | x_3481);
      let x_3483 : bool = u_xlatb88;
      let x_3484 : f32 = u_xlat87;
      u_xlat87 = select(x_3484, 1.0f, x_3483);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3487 : f32 = u_xlat87;
    u_xlat88 = (-(x_3487) + 1.0f);
    let x_3490 : f32 = u_xlat80;
    let x_3491 : f32 = u_xlat88;
    let x_3493 : f32 = u_xlat87;
    u_xlat87 = ((x_3490 * x_3491) + x_3493);
    let x_3496 : i32 = u_xlati83;
    u_xlati88 = (1i << bitcast<u32>((x_3496 & 31i)));
    let x_3500 : i32 = u_xlati88;
    let x_3503 : f32 = x_1607.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3500) & bitcast<u32>(x_3503)));
    let x_3507 : i32 = u_xlati88;
    if ((x_3507 != 0i)) {
      let x_3511 : i32 = u_xlati83;
      let x_3513 : f32 = x_1607.x_AdditionalLightsLightTypes[x_3511].el;
      u_xlati88 = i32(x_3513);
      let x_3516 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3516 != 0i));
      let x_3520 : i32 = u_xlati83;
      u_xlati37 = (x_3520 << bitcast<u32>(2i));
      let x_3522 : i32 = u_xlati11;
      if ((x_3522 != 0i)) {
        let x_3526 : vec3<f32> = vs_TEXCOORD1;
        let x_3528 : i32 = u_xlati37;
        let x_3531 : i32 = u_xlati37;
        let x_3535 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3528 + 1i) / 4i)][((x_3531 + 1i) % 4i)];
        let x_3537 : vec3<f32> = (vec3<f32>(x_3526.y, x_3526.y, x_3526.y) * vec3<f32>(x_3535.x, x_3535.y, x_3535.w));
        let x_3538 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3537.x, x_3538.y, x_3537.y, x_3537.z);
        let x_3540 : i32 = u_xlati37;
        let x_3542 : i32 = u_xlati37;
        let x_3545 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[(x_3540 / 4i)][(x_3542 % 4i)];
        let x_3547 : vec3<f32> = vs_TEXCOORD1;
        let x_3550 : vec4<f32> = u_xlat11;
        let x_3552 : vec3<f32> = ((vec3<f32>(x_3545.x, x_3545.y, x_3545.w) * vec3<f32>(x_3547.x, x_3547.x, x_3547.x)) + vec3<f32>(x_3550.x, x_3550.z, x_3550.w));
        let x_3553 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3552.x, x_3553.y, x_3552.y, x_3552.z);
        let x_3555 : i32 = u_xlati37;
        let x_3558 : i32 = u_xlati37;
        let x_3562 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3555 + 2i) / 4i)][((x_3558 + 2i) % 4i)];
        let x_3564 : vec3<f32> = vs_TEXCOORD1;
        let x_3567 : vec4<f32> = u_xlat11;
        let x_3569 : vec3<f32> = ((vec3<f32>(x_3562.x, x_3562.y, x_3562.w) * vec3<f32>(x_3564.z, x_3564.z, x_3564.z)) + vec3<f32>(x_3567.x, x_3567.z, x_3567.w));
        let x_3570 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3569.x, x_3570.y, x_3569.y, x_3569.z);
        let x_3572 : vec4<f32> = u_xlat11;
        let x_3574 : i32 = u_xlati37;
        let x_3577 : i32 = u_xlati37;
        let x_3581 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3574 + 3i) / 4i)][((x_3577 + 3i) % 4i)];
        let x_3583 : vec3<f32> = (vec3<f32>(x_3572.x, x_3572.z, x_3572.w) + vec3<f32>(x_3581.x, x_3581.y, x_3581.w));
        let x_3584 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3583.x, x_3584.y, x_3583.y, x_3583.z);
        let x_3586 : vec4<f32> = u_xlat11;
        let x_3588 : vec4<f32> = u_xlat11;
        let x_3590 : vec2<f32> = (vec2<f32>(x_3586.x, x_3586.z) / vec2<f32>(x_3588.w, x_3588.w));
        let x_3591 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3590.x, x_3591.y, x_3590.y, x_3591.w);
        let x_3593 : vec4<f32> = u_xlat11;
        let x_3596 : vec2<f32> = ((vec2<f32>(x_3593.x, x_3593.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3597 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3596.x, x_3597.y, x_3596.y, x_3597.w);
        let x_3599 : vec4<f32> = u_xlat11;
        let x_3603 : vec2<f32> = clamp(vec2<f32>(x_3599.x, x_3599.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3604 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3603.x, x_3604.y, x_3603.y, x_3604.w);
        let x_3606 : i32 = u_xlati83;
        let x_3608 : vec4<f32> = x_1607.x_AdditionalLightsCookieAtlasUVRects[x_3606];
        let x_3610 : vec4<f32> = u_xlat11;
        let x_3613 : i32 = u_xlati83;
        let x_3615 : vec4<f32> = x_1607.x_AdditionalLightsCookieAtlasUVRects[x_3613];
        let x_3617 : vec2<f32> = ((vec2<f32>(x_3608.x, x_3608.y) * vec2<f32>(x_3610.x, x_3610.z)) + vec2<f32>(x_3615.z, x_3615.w));
        let x_3618 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3617.x, x_3618.y, x_3617.y, x_3618.w);
      } else {
        let x_3621 : i32 = u_xlati88;
        u_xlatb88 = (x_3621 == 1i);
        let x_3623 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3623);
        let x_3625 : i32 = u_xlati88;
        if ((x_3625 != 0i)) {
          let x_3629 : vec3<f32> = vs_TEXCOORD1;
          let x_3631 : i32 = u_xlati37;
          let x_3634 : i32 = u_xlati37;
          let x_3638 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3631 + 1i) / 4i)][((x_3634 + 1i) % 4i)];
          let x_3640 : vec2<f32> = (vec2<f32>(x_3629.y, x_3629.y) * vec2<f32>(x_3638.x, x_3638.y));
          let x_3641 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3640.x, x_3640.y, x_3641.z, x_3641.w);
          let x_3643 : i32 = u_xlati37;
          let x_3645 : i32 = u_xlati37;
          let x_3648 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[(x_3643 / 4i)][(x_3645 % 4i)];
          let x_3650 : vec3<f32> = vs_TEXCOORD1;
          let x_3653 : vec4<f32> = u_xlat12;
          let x_3655 : vec2<f32> = ((vec2<f32>(x_3648.x, x_3648.y) * vec2<f32>(x_3650.x, x_3650.x)) + vec2<f32>(x_3653.x, x_3653.y));
          let x_3656 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3655.x, x_3655.y, x_3656.z, x_3656.w);
          let x_3658 : i32 = u_xlati37;
          let x_3661 : i32 = u_xlati37;
          let x_3665 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3658 + 2i) / 4i)][((x_3661 + 2i) % 4i)];
          let x_3667 : vec3<f32> = vs_TEXCOORD1;
          let x_3670 : vec4<f32> = u_xlat12;
          let x_3672 : vec2<f32> = ((vec2<f32>(x_3665.x, x_3665.y) * vec2<f32>(x_3667.z, x_3667.z)) + vec2<f32>(x_3670.x, x_3670.y));
          let x_3673 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3672.x, x_3672.y, x_3673.z, x_3673.w);
          let x_3675 : vec4<f32> = u_xlat12;
          let x_3677 : i32 = u_xlati37;
          let x_3680 : i32 = u_xlati37;
          let x_3684 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3677 + 3i) / 4i)][((x_3680 + 3i) % 4i)];
          let x_3686 : vec2<f32> = (vec2<f32>(x_3675.x, x_3675.y) + vec2<f32>(x_3684.x, x_3684.y));
          let x_3687 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3686.x, x_3686.y, x_3687.z, x_3687.w);
          let x_3689 : vec4<f32> = u_xlat12;
          let x_3692 : vec2<f32> = ((vec2<f32>(x_3689.x, x_3689.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3693 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3692.x, x_3692.y, x_3693.z, x_3693.w);
          let x_3695 : vec4<f32> = u_xlat12;
          let x_3697 : vec2<f32> = fract(vec2<f32>(x_3695.x, x_3695.y));
          let x_3698 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3697.x, x_3697.y, x_3698.z, x_3698.w);
          let x_3700 : i32 = u_xlati83;
          let x_3702 : vec4<f32> = x_1607.x_AdditionalLightsCookieAtlasUVRects[x_3700];
          let x_3704 : vec4<f32> = u_xlat12;
          let x_3707 : i32 = u_xlati83;
          let x_3709 : vec4<f32> = x_1607.x_AdditionalLightsCookieAtlasUVRects[x_3707];
          let x_3711 : vec2<f32> = ((vec2<f32>(x_3702.x, x_3702.y) * vec2<f32>(x_3704.x, x_3704.y)) + vec2<f32>(x_3709.z, x_3709.w));
          let x_3712 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3711.x, x_3712.y, x_3711.y, x_3712.w);
        } else {
          let x_3715 : vec3<f32> = vs_TEXCOORD1;
          let x_3717 : i32 = u_xlati37;
          let x_3720 : i32 = u_xlati37;
          let x_3724 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3717 + 1i) / 4i)][((x_3720 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3715.y, x_3715.y, x_3715.y, x_3715.y) * x_3724);
          let x_3726 : i32 = u_xlati37;
          let x_3728 : i32 = u_xlati37;
          let x_3731 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[(x_3726 / 4i)][(x_3728 % 4i)];
          let x_3732 : vec3<f32> = vs_TEXCOORD1;
          let x_3735 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3731 * vec4<f32>(x_3732.x, x_3732.x, x_3732.x, x_3732.x)) + x_3735);
          let x_3737 : i32 = u_xlati37;
          let x_3740 : i32 = u_xlati37;
          let x_3744 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3737 + 2i) / 4i)][((x_3740 + 2i) % 4i)];
          let x_3745 : vec3<f32> = vs_TEXCOORD1;
          let x_3748 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3744 * vec4<f32>(x_3745.z, x_3745.z, x_3745.z, x_3745.z)) + x_3748);
          let x_3750 : vec4<f32> = u_xlat12;
          let x_3751 : i32 = u_xlati37;
          let x_3754 : i32 = u_xlati37;
          let x_3758 : vec4<f32> = x_1607.x_AdditionalLightsWorldToLights[((x_3751 + 3i) / 4i)][((x_3754 + 3i) % 4i)];
          u_xlat12 = (x_3750 + x_3758);
          let x_3760 : vec4<f32> = u_xlat12;
          let x_3762 : vec4<f32> = u_xlat12;
          let x_3764 : vec3<f32> = (vec3<f32>(x_3760.x, x_3760.y, x_3760.z) / vec3<f32>(x_3762.w, x_3762.w, x_3762.w));
          let x_3765 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3764.x, x_3764.y, x_3764.z, x_3765.w);
          let x_3767 : vec4<f32> = u_xlat12;
          let x_3769 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3767.x, x_3767.y, x_3767.z), vec3<f32>(x_3769.x, x_3769.y, x_3769.z));
          let x_3772 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3772);
          let x_3774 : f32 = u_xlat88;
          let x_3776 : vec4<f32> = u_xlat12;
          let x_3778 : vec3<f32> = (vec3<f32>(x_3774, x_3774, x_3774) * vec3<f32>(x_3776.x, x_3776.y, x_3776.z));
          let x_3779 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3778.x, x_3778.y, x_3778.z, x_3779.w);
          let x_3781 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3781.x, x_3781.y, x_3781.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3786 : f32 = u_xlat88;
          u_xlat88 = max(x_3786, 0.00000099999999747524f);
          let x_3789 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3789);
          let x_3791 : f32 = u_xlat88;
          let x_3793 : vec4<f32> = u_xlat12;
          let x_3795 : vec3<f32> = (vec3<f32>(x_3791, x_3791, x_3791) * vec3<f32>(x_3793.z, x_3793.x, x_3793.y));
          let x_3796 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3795.x, x_3795.y, x_3795.z, x_3796.w);
          let x_3799 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3799);
          let x_3803 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3803, 0.0f, 1.0f);
          let x_3808 : vec4<f32> = u_xlat13;
          let x_3810 : vec4<bool> = (vec4<f32>(x_3808.y, x_3808.y, x_3808.z, x_3808.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3811 : vec2<bool> = vec2<bool>(x_3810.x, x_3810.z);
          let x_3812 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3811.x, x_3812.y, x_3811.y);
          let x_3815 : bool = u_xlatb37.x;
          if (x_3815) {
            let x_3820 : f32 = u_xlat13.x;
            x_3816 = x_3820;
          } else {
            let x_3823 : f32 = u_xlat13.x;
            x_3816 = -(x_3823);
          }
          let x_3825 : f32 = x_3816;
          u_xlat37.x = x_3825;
          let x_3828 : bool = u_xlatb37.z;
          if (x_3828) {
            let x_3833 : f32 = u_xlat13.x;
            x_3829 = x_3833;
          } else {
            let x_3836 : f32 = u_xlat13.x;
            x_3829 = -(x_3836);
          }
          let x_3838 : f32 = x_3829;
          u_xlat37.z = x_3838;
          let x_3840 : vec4<f32> = u_xlat12;
          let x_3842 : f32 = u_xlat88;
          let x_3845 : vec3<f32> = u_xlat37;
          let x_3847 : vec2<f32> = ((vec2<f32>(x_3840.x, x_3840.y) * vec2<f32>(x_3842, x_3842)) + vec2<f32>(x_3845.x, x_3845.z));
          let x_3848 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3847.x, x_3848.y, x_3847.y);
          let x_3850 : vec3<f32> = u_xlat37;
          let x_3853 : vec2<f32> = ((vec2<f32>(x_3850.x, x_3850.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3854 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3853.x, x_3854.y, x_3853.y);
          let x_3856 : vec3<f32> = u_xlat37;
          let x_3860 : vec2<f32> = clamp(vec2<f32>(x_3856.x, x_3856.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3861 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3860.x, x_3861.y, x_3860.y);
          let x_3863 : i32 = u_xlati83;
          let x_3865 : vec4<f32> = x_1607.x_AdditionalLightsCookieAtlasUVRects[x_3863];
          let x_3867 : vec3<f32> = u_xlat37;
          let x_3870 : i32 = u_xlati83;
          let x_3872 : vec4<f32> = x_1607.x_AdditionalLightsCookieAtlasUVRects[x_3870];
          let x_3874 : vec2<f32> = ((vec2<f32>(x_3865.x, x_3865.y) * vec2<f32>(x_3867.x, x_3867.z)) + vec2<f32>(x_3872.z, x_3872.w));
          let x_3875 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3874.x, x_3875.y, x_3874.y, x_3875.w);
        }
      }
      let x_3882 : vec4<f32> = u_xlat11;
      let x_3884 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3882.x, x_3882.z), 0.0f);
      u_xlat11 = x_3884;
      let x_3886 : bool = u_xlatb31.y;
      if (x_3886) {
        let x_3891 : f32 = u_xlat11.w;
        x_3887 = x_3891;
      } else {
        let x_3894 : f32 = u_xlat11.x;
        x_3887 = x_3894;
      }
      let x_3895 : f32 = x_3887;
      u_xlat88 = x_3895;
      let x_3897 : bool = u_xlatb31.x;
      if (x_3897) {
        let x_3901 : vec4<f32> = u_xlat11;
        x_3898 = vec3<f32>(x_3901.x, x_3901.y, x_3901.z);
      } else {
        let x_3904 : f32 = u_xlat88;
        x_3898 = vec3<f32>(x_3904, x_3904, x_3904);
      }
      let x_3906 : vec3<f32> = x_3898;
      let x_3907 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3906.x, x_3906.y, x_3906.z, x_3907.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3913 : vec4<f32> = u_xlat11;
    let x_3915 : i32 = u_xlati83;
    let x_3917 : vec4<f32> = x_2047.x_AdditionalLightsColor[x_3915];
    let x_3919 : vec3<f32> = (vec3<f32>(x_3913.x, x_3913.y, x_3913.z) * vec3<f32>(x_3917.x, x_3917.y, x_3917.z));
    let x_3920 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3919.x, x_3919.y, x_3919.z, x_3920.w);
    let x_3922 : f32 = u_xlat84;
    let x_3923 : f32 = u_xlat87;
    u_xlat83 = (x_3922 * x_3923);
    let x_3925 : vec3<f32> = u_xlat2;
    let x_3926 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_3925, vec3<f32>(x_3926.x, x_3926.y, x_3926.z));
    let x_3929 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3929, 0.0f, 1.0f);
    let x_3931 : f32 = u_xlat83;
    let x_3932 : f32 = u_xlat84;
    u_xlat83 = (x_3931 * x_3932);
    let x_3934 : f32 = u_xlat83;
    let x_3936 : vec4<f32> = u_xlat11;
    let x_3938 : vec3<f32> = (vec3<f32>(x_3934, x_3934, x_3934) * vec3<f32>(x_3936.x, x_3936.y, x_3936.z));
    let x_3939 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3938.x, x_3938.y, x_3938.z, x_3939.w);
    let x_3941 : vec4<f32> = u_xlat9;
    let x_3943 : f32 = u_xlat85;
    let x_3946 : vec3<f32> = u_xlat3;
    let x_3947 : vec3<f32> = ((vec3<f32>(x_3941.x, x_3941.y, x_3941.z) * vec3<f32>(x_3943, x_3943, x_3943)) + x_3946);
    let x_3948 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3947.x, x_3947.y, x_3947.z, x_3948.w);
    let x_3950 : vec4<f32> = u_xlat9;
    let x_3952 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3950.x, x_3950.y, x_3950.z), vec3<f32>(x_3952.x, x_3952.y, x_3952.z));
    let x_3955 : f32 = u_xlat83;
    u_xlat83 = max(x_3955, 1.17549435e-38f);
    let x_3957 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_3957);
    let x_3959 : f32 = u_xlat83;
    let x_3961 : vec4<f32> = u_xlat9;
    let x_3963 : vec3<f32> = (vec3<f32>(x_3959, x_3959, x_3959) * vec3<f32>(x_3961.x, x_3961.y, x_3961.z));
    let x_3964 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3963.x, x_3963.y, x_3963.z, x_3964.w);
    let x_3966 : vec3<f32> = u_xlat2;
    let x_3967 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_3966, vec3<f32>(x_3967.x, x_3967.y, x_3967.z));
    let x_3970 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3970, 0.0f, 1.0f);
    let x_3972 : vec4<f32> = u_xlat10;
    let x_3974 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3972.x, x_3972.y, x_3972.z), vec3<f32>(x_3974.x, x_3974.y, x_3974.z));
    let x_3977 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3977, 0.0f, 1.0f);
    let x_3979 : f32 = u_xlat83;
    let x_3980 : f32 = u_xlat83;
    u_xlat83 = (x_3979 * x_3980);
    let x_3982 : f32 = u_xlat83;
    let x_3984 : f32 = u_xlat8.x;
    u_xlat83 = ((x_3982 * x_3984) + 1.00001001358032226562f);
    let x_3987 : f32 = u_xlat84;
    let x_3988 : f32 = u_xlat84;
    u_xlat84 = (x_3987 * x_3988);
    let x_3990 : f32 = u_xlat83;
    let x_3991 : f32 = u_xlat83;
    u_xlat83 = (x_3990 * x_3991);
    let x_3993 : f32 = u_xlat84;
    u_xlat84 = max(x_3993, 0.10000000149011611938f);
    let x_3995 : f32 = u_xlat83;
    let x_3996 : f32 = u_xlat84;
    u_xlat83 = (x_3995 * x_3996);
    let x_3999 : f32 = u_xlat5.x;
    let x_4000 : f32 = u_xlat83;
    u_xlat83 = (x_3999 * x_4000);
    let x_4002 : f32 = u_xlat82;
    let x_4003 : f32 = u_xlat83;
    u_xlat83 = (x_4002 / x_4003);
    let x_4005 : vec4<f32> = u_xlat0;
    let x_4007 : f32 = u_xlat83;
    let x_4010 : vec3<f32> = u_xlat27;
    let x_4011 : vec3<f32> = ((vec3<f32>(x_4005.x, x_4005.y, x_4005.z) * vec3<f32>(x_4007, x_4007, x_4007)) + x_4010);
    let x_4012 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4011.x, x_4011.y, x_4011.z, x_4012.w);
    let x_4014 : vec4<f32> = u_xlat9;
    let x_4016 : vec4<f32> = u_xlat11;
    let x_4019 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4014.x, x_4014.y, x_4014.z) * vec3<f32>(x_4016.x, x_4016.y, x_4016.z)) + x_4019);

    continuing {
      let x_4021 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4021 + bitcast<u32>(1i));
    }
  }
  let x_4023 : vec4<f32> = u_xlat7;
  let x_4025 : vec4<f32> = u_xlat6;
  let x_4028 : vec4<f32> = u_xlat4;
  let x_4030 : vec3<f32> = ((vec3<f32>(x_4023.x, x_4023.y, x_4023.z) * vec3<f32>(x_4025.x, x_4025.y, x_4025.z)) + vec3<f32>(x_4028.x, x_4028.y, x_4028.z));
  let x_4031 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4030.x, x_4030.y, x_4030.z, x_4031.w);
  let x_4035 : vec3<f32> = u_xlat34;
  let x_4036 : vec4<f32> = u_xlat0;
  let x_4038 : vec3<f32> = (x_4035 + vec3<f32>(x_4036.x, x_4036.y, x_4036.z));
  let x_4039 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4038.x, x_4038.y, x_4038.z, x_4039.w);
  let x_4043 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_4043 == 1.0f);
  let x_4045 : bool = u_xlatb0;
  if (x_4045) {
    let x_4050 : f32 = u_xlat1.x;
    x_4046 = x_4050;
  } else {
    x_4046 = 1.0f;
  }
  let x_4052 : f32 = x_4046;
  SV_Target0.w = x_4052;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


