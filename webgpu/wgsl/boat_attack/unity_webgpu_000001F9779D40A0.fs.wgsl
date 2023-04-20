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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_96 : UnityPerDraw;

var<private> u_xlatb78 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_208 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1843 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu56 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati56 : i32;

@group(1) @binding(1) var<uniform> x_2274 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu81 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_155 : f32;
  var x_167 : f32;
  var x_179 : f32;
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
  var x_1794 : f32;
  var x_1926 : f32;
  var x_1937 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2412 : f32;
  var x_2423 : f32;
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
  var x_4042 : f32;
  var x_4055 : f32;
  var x_4113 : f32;
  var x_4124 : vec3<f32>;
  var x_4271 : f32;
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
  let x_154 : bool = u_xlatb78;
  if (x_154) {
    let x_159 : f32 = u_xlat2.x;
    x_155 = x_159;
  } else {
    let x_163 : f32 = x_45.unity_MatrixV[0i].z;
    x_155 = x_163;
  }
  let x_164 : f32 = x_155;
  u_xlat3.x = x_164;
  let x_166 : bool = u_xlatb78;
  if (x_166) {
    let x_172 : f32 = u_xlat2.y;
    x_167 = x_172;
  } else {
    let x_175 : f32 = x_45.unity_MatrixV[1i].z;
    x_167 = x_175;
  }
  let x_176 : f32 = x_167;
  u_xlat3.y = x_176;
  let x_178 : bool = u_xlatb78;
  if (x_178) {
    let x_183 : f32 = u_xlat2.z;
    x_179 = x_183;
  } else {
    let x_186 : f32 = x_45.unity_MatrixV[2i].z;
    x_179 = x_186;
  }
  let x_187 : f32 = x_179;
  u_xlat3.z = x_187;
  let x_190 : vec3<f32> = vs_TEXCOORD2;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_190, x_191);
  let x_193 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_193);
  let x_195 : f32 = u_xlat78;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_195, x_195, x_195) * x_197);
  let x_200 : vec3<f32> = vs_TEXCOORD1;
  let x_210 : vec4<f32> = x_208.x_CascadeShadowSplitSpheres0;
  let x_213 : vec3<f32> = (x_200 + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec3<f32> = vs_TEXCOORD1;
  let x_219 : vec4<f32> = x_208.x_CascadeShadowSplitSpheres1;
  let x_222 : vec3<f32> = (x_217 + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec3<f32> = vs_TEXCOORD1;
  let x_229 : vec4<f32> = x_208.x_CascadeShadowSplitSpheres2;
  let x_232 : vec3<f32> = (x_226 + -(vec3<f32>(x_229.x, x_229.y, x_229.z)));
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_208.x_CascadeShadowSplitSpheres3;
  let x_241 : vec3<f32> = (x_236 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_250 : vec4<f32> = u_xlat5;
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec4<f32> = u_xlat6;
  let x_258 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_262 : vec4<f32> = u_xlat7;
  let x_264 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec4<f32> = x_208.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_271 < x_273);
  let x_276 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_276);
  let x_280 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_280);
  let x_284 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_284);
  let x_288 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_288);
  let x_292 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_292);
  let x_298 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_298);
  let x_302 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_302);
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.x, x_305.y, x_305.z) + vec3<f32>(x_307.y, x_307.z, x_307.w));
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat4;
  let x_315 : vec3<f32> = max(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_315.x, x_315.y, x_315.z);
  let x_318 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_318, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_324 : f32 = u_xlat78;
  u_xlat78 = (-(x_324) + 4.0f);
  let x_329 : f32 = u_xlat78;
  u_xlatu78 = u32(x_329);
  let x_333 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_333) << bitcast<u32>(2i));
  let x_336 : vec3<f32> = vs_TEXCOORD1;
  let x_338 : i32 = u_xlati78;
  let x_341 : i32 = u_xlati78;
  let x_345 : vec4<f32> = x_208.x_MainLightWorldToShadow[((x_338 + 1i) / 4i)][((x_341 + 1i) % 4i)];
  let x_347 : vec3<f32> = (vec3<f32>(x_336.y, x_336.y, x_336.y) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : i32 = u_xlati78;
  let x_352 : i32 = u_xlati78;
  let x_355 : vec4<f32> = x_208.x_MainLightWorldToShadow[(x_350 / 4i)][(x_352 % 4i)];
  let x_357 : vec3<f32> = vs_TEXCOORD1;
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : i32 = u_xlati78;
  let x_368 : i32 = u_xlati78;
  let x_372 : vec4<f32> = x_208.x_MainLightWorldToShadow[((x_365 + 2i) / 4i)][((x_368 + 2i) % 4i)];
  let x_374 : vec3<f32> = vs_TEXCOORD1;
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : vec3<f32> = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374.z, x_374.z, x_374.z)) + vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat4;
  let x_384 : i32 = u_xlati78;
  let x_387 : i32 = u_xlati78;
  let x_391 : vec4<f32> = x_208.x_MainLightWorldToShadow[((x_384 + 3i) / 4i)][((x_387 + 3i) % 4i)];
  let x_393 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) + vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_402 : vec2<f32> = vs_TEXCOORD8;
  let x_404 : f32 = x_45.x_GlobalMipBias.x;
  let x_405 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_402, x_404);
  u_xlat5 = x_405;
  let x_410 : vec2<f32> = vs_TEXCOORD8;
  let x_412 : f32 = x_45.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_410, x_412);
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.z);
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat5;
  let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec3<f32> = u_xlat2;
  let x_425 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_424, vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : f32 = u_xlat78;
  u_xlat78 = (x_428 + 0.5f);
  let x_431 : f32 = u_xlat78;
  let x_433 : vec4<f32> = u_xlat6;
  let x_435 : vec3<f32> = (vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : f32 = u_xlat5.w;
  u_xlat78 = max(x_439, 0.00009999999747378752f);
  let x_442 : vec4<f32> = u_xlat5;
  let x_444 : f32 = u_xlat78;
  let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) / vec3<f32>(x_444, x_444, x_444));
  let x_447 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_450 : f32 = x_58.x_Metallic;
  u_xlat78 = ((-(x_450) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_455 : f32 = u_xlat78;
  let x_458 : f32 = x_58.x_Smoothness;
  u_xlat80 = (-(x_455) + x_458);
  let x_461 : f32 = u_xlat78;
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat27 = (vec3<f32>(x_461, x_461, x_461) * vec3<f32>(x_463.y, x_463.z, x_463.w));
  let x_466 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = x_58.x_BaseColor;
  let x_474 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_469.x, x_469.y, x_469.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : f32 = x_58.x_Metallic;
  let x_480 : f32 = x_58.x_Metallic;
  let x_482 : f32 = x_58.x_Metallic;
  let x_483 : vec3<f32> = vec3<f32>(x_478, x_480, x_482);
  let x_488 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_488.x, x_488.y, x_488.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : f32 = x_58.x_Smoothness;
  u_xlat78 = (-(x_497) + 1.0f);
  let x_501 : f32 = u_xlat78;
  let x_502 : f32 = u_xlat78;
  u_xlat81 = (x_501 * x_502);
  let x_504 : f32 = u_xlat81;
  u_xlat81 = max(x_504, 0.0078125f);
  let x_508 : f32 = u_xlat81;
  let x_509 : f32 = u_xlat81;
  u_xlat82 = (x_508 * x_509);
  let x_511 : f32 = u_xlat80;
  u_xlat80 = (x_511 + 1.0f);
  let x_513 : f32 = u_xlat80;
  u_xlat80 = clamp(x_513, 0.0f, 1.0f);
  let x_516 : f32 = u_xlat81;
  u_xlat83 = ((x_516 * 4.0f) + 2.0f);
  let x_522 : f32 = x_208.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_522);
  let x_524 : bool = u_xlatb6;
  if (x_524) {
    let x_528 : f32 = x_208.x_MainLightShadowParams.y;
    u_xlatb6 = (x_528 == 1.0f);
    let x_530 : bool = u_xlatb6;
    if (x_530) {
      let x_533 : vec4<f32> = u_xlat4;
      let x_536 : vec4<f32> = x_208.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_533.x, x_533.y, x_533.x, x_533.y) + x_536);
      let x_540 : vec4<f32> = u_xlat6;
      let x_541 : vec2<f32> = vec2<f32>(x_540.x, x_540.y);
      let x_543 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_541.x, x_541.y, x_543);
      let x_555 : vec3<f32> = txVec0;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat7.x = x_557;
      let x_560 : vec4<f32> = u_xlat6;
      let x_561 : vec2<f32> = vec2<f32>(x_560.z, x_560.w);
      let x_563 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_561.x, x_561.y, x_563);
      let x_570 : vec3<f32> = txVec1;
      let x_572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_570.xy, x_570.z);
      u_xlat7.y = x_572;
      let x_574 : vec4<f32> = u_xlat4;
      let x_577 : vec4<f32> = x_208.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_574.x, x_574.y, x_574.x, x_574.y) + x_577);
      let x_580 : vec4<f32> = u_xlat6;
      let x_581 : vec2<f32> = vec2<f32>(x_580.x, x_580.y);
      let x_583 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_590 : vec3<f32> = txVec2;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_590.xy, x_590.z);
      u_xlat7.z = x_592;
      let x_595 : vec4<f32> = u_xlat6;
      let x_596 : vec2<f32> = vec2<f32>(x_595.z, x_595.w);
      let x_598 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_596.x, x_596.y, x_598);
      let x_605 : vec3<f32> = txVec3;
      let x_607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_605.xy, x_605.z);
      u_xlat7.w = x_607;
      let x_609 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_609, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_617 : f32 = x_208.x_MainLightShadowParams.y;
      u_xlatb32 = (x_617 == 2.0f);
      let x_619 : bool = u_xlatb32;
      if (x_619) {
        let x_624 : vec4<f32> = u_xlat4;
        let x_628 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_628.z, x_628.w)) + vec2<f32>(0.5f, 0.5f));
        let x_633 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_633);
        let x_635 : vec4<f32> = u_xlat4;
        let x_638 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_641 : vec2<f32> = u_xlat32;
        let x_643 : vec2<f32> = ((vec2<f32>(x_635.x, x_635.y) * vec2<f32>(x_638.z, x_638.w)) + -(x_641));
        let x_644 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
        let x_647 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_647.x, x_647.x, x_647.y, x_647.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_652 : vec4<f32> = u_xlat8;
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_652.x, x_652.x, x_652.z, x_652.z) * vec4<f32>(x_654.x, x_654.x, x_654.z, x_654.z));
        let x_658 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_658.y, x_658.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_663 : vec4<f32> = u_xlat9;
        let x_666 : vec4<f32> = u_xlat7;
        let x_669 : vec2<f32> = ((vec2<f32>(x_663.x, x_663.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_666.x, x_666.y)));
        let x_670 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_669.x, x_670.y, x_669.y, x_670.w);
        let x_672 : vec4<f32> = u_xlat7;
        let x_676 : vec2<f32> = (-(vec2<f32>(x_672.x, x_672.y)) + vec2<f32>(1.0f, 1.0f));
        let x_677 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_680.x, x_680.y), vec2<f32>(0.0f, 0.0f));
        let x_684 : vec2<f32> = u_xlat61;
        let x_686 : vec2<f32> = u_xlat61;
        let x_688 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_684) * x_686) + vec2<f32>(x_688.x, x_688.y));
        let x_691 : vec4<f32> = u_xlat7;
        let x_693 : vec2<f32> = max(vec2<f32>(x_691.x, x_691.y), vec2<f32>(0.0f, 0.0f));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat7;
        let x_699 : vec4<f32> = u_xlat7;
        let x_702 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = ((-(vec2<f32>(x_696.x, x_696.y)) * vec2<f32>(x_699.x, x_699.y)) + vec2<f32>(x_702.y, x_702.w));
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_707 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_707 + vec2<f32>(1.0f, 1.0f));
        let x_709 : vec4<f32> = u_xlat7;
        let x_711 : vec2<f32> = (vec2<f32>(x_709.x, x_709.y) + vec2<f32>(1.0f, 1.0f));
        let x_712 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
        let x_715 : vec4<f32> = u_xlat8;
        let x_719 : vec2<f32> = (vec2<f32>(x_715.x, x_715.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_720 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
        let x_723 : vec4<f32> = u_xlat9;
        let x_725 : vec2<f32> = (vec2<f32>(x_723.x, x_723.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_726 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_728 : vec2<f32> = u_xlat61;
        let x_729 : vec2<f32> = (x_728 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_730 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_733 : vec4<f32> = u_xlat7;
        let x_735 : vec2<f32> = (vec2<f32>(x_733.x, x_733.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_736 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
        let x_738 : vec4<f32> = u_xlat8;
        let x_740 : vec2<f32> = (vec2<f32>(x_738.y, x_738.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
        let x_744 : f32 = u_xlat9.x;
        u_xlat10.z = x_744;
        let x_747 : f32 = u_xlat7.x;
        u_xlat10.w = x_747;
        let x_750 : f32 = u_xlat12.x;
        u_xlat11.z = x_750;
        let x_753 : f32 = u_xlat59.x;
        u_xlat11.w = x_753;
        let x_755 : vec4<f32> = u_xlat10;
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_755.z, x_755.w, x_755.x, x_755.z) + vec4<f32>(x_757.z, x_757.w, x_757.x, x_757.z));
        let x_761 : f32 = u_xlat10.y;
        u_xlat9.z = x_761;
        let x_764 : f32 = u_xlat7.y;
        u_xlat9.w = x_764;
        let x_767 : f32 = u_xlat11.y;
        u_xlat12.z = x_767;
        let x_770 : f32 = u_xlat59.y;
        u_xlat12.w = x_770;
        let x_772 : vec4<f32> = u_xlat9;
        let x_774 : vec4<f32> = u_xlat12;
        let x_776 : vec3<f32> = (vec3<f32>(x_772.z, x_772.y, x_772.w) + vec3<f32>(x_774.z, x_774.y, x_774.w));
        let x_777 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
        let x_779 : vec4<f32> = u_xlat11;
        let x_781 : vec4<f32> = u_xlat8;
        let x_783 : vec3<f32> = (vec3<f32>(x_779.x, x_779.z, x_779.w) / vec3<f32>(x_781.z, x_781.w, x_781.y));
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat9;
        let x_791 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_792 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat12;
        let x_796 : vec4<f32> = u_xlat7;
        let x_798 : vec3<f32> = (vec3<f32>(x_794.z, x_794.y, x_794.w) / vec3<f32>(x_796.x, x_796.y, x_796.z));
        let x_799 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat10;
        let x_803 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_804 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
        let x_806 : vec4<f32> = u_xlat9;
        let x_809 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_811 : vec3<f32> = (vec3<f32>(x_806.y, x_806.x, x_806.z) * vec3<f32>(x_809.x, x_809.x, x_809.x));
        let x_812 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat10;
        let x_817 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_819 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_817.y, x_817.y, x_817.y));
        let x_820 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_823 : f32 = u_xlat10.x;
        u_xlat9.w = x_823;
        let x_825 : vec2<f32> = u_xlat32;
        let x_828 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.y) * vec4<f32>(x_828.x, x_828.y, x_828.x, x_828.y)) + vec4<f32>(x_831.y, x_831.w, x_831.x, x_831.w));
        let x_834 : vec2<f32> = u_xlat32;
        let x_836 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_839 : vec4<f32> = u_xlat9;
        let x_841 : vec2<f32> = ((x_834 * vec2<f32>(x_836.x, x_836.y)) + vec2<f32>(x_839.z, x_839.w));
        let x_842 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_845 : f32 = u_xlat9.y;
        u_xlat10.w = x_845;
        let x_847 : vec4<f32> = u_xlat10;
        let x_848 : vec2<f32> = vec2<f32>(x_847.y, x_847.z);
        let x_849 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_849.x, x_848.x, x_849.z, x_848.y);
        let x_852 : vec2<f32> = u_xlat32;
        let x_855 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_858 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_852.x, x_852.y, x_852.x, x_852.y) * vec4<f32>(x_855.x, x_855.y, x_855.x, x_855.y)) + vec4<f32>(x_858.x, x_858.y, x_858.z, x_858.y));
        let x_861 : vec2<f32> = u_xlat32;
        let x_864 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_867 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y) * vec4<f32>(x_864.x, x_864.y, x_864.x, x_864.y)) + vec4<f32>(x_867.w, x_867.y, x_867.w, x_867.z));
        let x_870 : vec2<f32> = u_xlat32;
        let x_873 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_870.x, x_870.y, x_870.x, x_870.y) * vec4<f32>(x_873.x, x_873.y, x_873.x, x_873.y)) + vec4<f32>(x_876.x, x_876.w, x_876.z, x_876.w));
        let x_880 : vec4<f32> = u_xlat7;
        let x_882 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_880.x, x_880.x, x_880.x, x_880.y) * vec4<f32>(x_882.z, x_882.w, x_882.y, x_882.z));
        let x_886 : vec4<f32> = u_xlat7;
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_886.y, x_886.y, x_886.z, x_886.z) * x_888);
        let x_891 : f32 = u_xlat7.z;
        let x_893 : f32 = u_xlat8.y;
        u_xlat32.x = (x_891 * x_893);
        let x_897 : vec4<f32> = u_xlat11;
        let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
        let x_900 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_908 : vec3<f32> = txVec4;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_908.xy, x_908.z);
        u_xlat58 = x_910;
        let x_912 : vec4<f32> = u_xlat11;
        let x_913 : vec2<f32> = vec2<f32>(x_912.z, x_912.w);
        let x_915 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_923 : vec3<f32> = txVec5;
        let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_923.xy, x_923.z);
        u_xlat84 = x_925;
        let x_926 : f32 = u_xlat84;
        let x_928 : f32 = u_xlat14.y;
        u_xlat84 = (x_926 * x_928);
        let x_931 : f32 = u_xlat14.x;
        let x_932 : f32 = u_xlat58;
        let x_934 : f32 = u_xlat84;
        u_xlat58 = ((x_931 * x_932) + x_934);
        let x_937 : vec4<f32> = u_xlat12;
        let x_938 : vec2<f32> = vec2<f32>(x_937.x, x_937.y);
        let x_940 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_938.x, x_938.y, x_940);
        let x_947 : vec3<f32> = txVec6;
        let x_949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_947.xy, x_947.z);
        u_xlat84 = x_949;
        let x_951 : f32 = u_xlat14.z;
        let x_952 : f32 = u_xlat84;
        let x_954 : f32 = u_xlat58;
        u_xlat58 = ((x_951 * x_952) + x_954);
        let x_957 : vec4<f32> = u_xlat10;
        let x_958 : vec2<f32> = vec2<f32>(x_957.x, x_957.y);
        let x_960 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_958.x, x_958.y, x_960);
        let x_967 : vec3<f32> = txVec7;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_967.xy, x_967.z);
        u_xlat84 = x_969;
        let x_971 : f32 = u_xlat14.w;
        let x_972 : f32 = u_xlat84;
        let x_974 : f32 = u_xlat58;
        u_xlat58 = ((x_971 * x_972) + x_974);
        let x_977 : vec4<f32> = u_xlat13;
        let x_978 : vec2<f32> = vec2<f32>(x_977.x, x_977.y);
        let x_980 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec8;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_987.xy, x_987.z);
        u_xlat84 = x_989;
        let x_991 : f32 = u_xlat15.x;
        let x_992 : f32 = u_xlat84;
        let x_994 : f32 = u_xlat58;
        u_xlat58 = ((x_991 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat13;
        let x_998 : vec2<f32> = vec2<f32>(x_997.z, x_997.w);
        let x_1000 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec9;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1007.xy, x_1007.z);
        u_xlat84 = x_1009;
        let x_1011 : f32 = u_xlat15.y;
        let x_1012 : f32 = u_xlat84;
        let x_1014 : f32 = u_xlat58;
        u_xlat58 = ((x_1011 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat10;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.z, x_1017.w);
        let x_1020 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec10;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1027.xy, x_1027.z);
        u_xlat84 = x_1029;
        let x_1031 : f32 = u_xlat15.z;
        let x_1032 : f32 = u_xlat84;
        let x_1034 : f32 = u_xlat58;
        u_xlat58 = ((x_1031 * x_1032) + x_1034);
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
        let x_1040 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec11;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1047.xy, x_1047.z);
        u_xlat84 = x_1049;
        let x_1051 : f32 = u_xlat15.w;
        let x_1052 : f32 = u_xlat84;
        let x_1054 : f32 = u_xlat58;
        u_xlat58 = ((x_1051 * x_1052) + x_1054);
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1058 : vec2<f32> = vec2<f32>(x_1057.z, x_1057.w);
        let x_1060 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
        let x_1067 : vec3<f32> = txVec12;
        let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1067.xy, x_1067.z);
        u_xlat84 = x_1069;
        let x_1071 : f32 = u_xlat32.x;
        let x_1072 : f32 = u_xlat84;
        let x_1074 : f32 = u_xlat58;
        u_xlat6.x = ((x_1071 * x_1072) + x_1074);
      } else {
        let x_1078 : vec4<f32> = u_xlat4;
        let x_1081 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(x_1081.z, x_1081.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1085 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_1085);
        let x_1087 : vec4<f32> = u_xlat4;
        let x_1090 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1093 : vec2<f32> = u_xlat32;
        let x_1095 : vec2<f32> = ((vec2<f32>(x_1087.x, x_1087.y) * vec2<f32>(x_1090.z, x_1090.w)) + -(x_1093));
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1098.x, x_1098.x, x_1098.y, x_1098.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1101.x, x_1101.x, x_1101.z, x_1101.z) * vec4<f32>(x_1103.x, x_1103.x, x_1103.z, x_1103.z));
        let x_1106 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1106.y, x_1106.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1111 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1111.x, x_1110.x, x_1111.z, x_1110.y);
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1113.x, x_1113.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1116.x, x_1116.y)));
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1123 : vec2<f32> = (-(vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1124 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1123.x, x_1124.y, x_1123.y, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1128 : vec2<f32> = min(vec2<f32>(x_1126.x, x_1126.y), vec2<f32>(0.0f, 0.0f));
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1134 : vec4<f32> = u_xlat9;
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1139 : vec2<f32> = ((-(vec2<f32>(x_1131.x, x_1131.y)) * vec2<f32>(x_1134.x, x_1134.y)) + vec2<f32>(x_1137.x, x_1137.z));
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat7;
        let x_1144 : vec2<f32> = max(vec2<f32>(x_1142.x, x_1142.y), vec2<f32>(0.0f, 0.0f));
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1153 : vec4<f32> = u_xlat8;
        let x_1155 : vec2<f32> = ((-(vec2<f32>(x_1147.x, x_1147.y)) * vec2<f32>(x_1150.x, x_1150.y)) + vec2<f32>(x_1153.y, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1156.x, x_1155.x, x_1156.z, x_1155.y);
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1158 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1162 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1162 * 0.08163200318813323975f);
        let x_1166 : vec2<f32> = u_xlat59;
        let x_1169 : vec2<f32> = (vec2<f32>(x_1166.y, x_1166.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1172.x, x_1172.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1176 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1176 * 0.08163200318813323975f);
        let x_1180 : f32 = u_xlat11.y;
        u_xlat9.x = x_1180;
        let x_1182 : vec4<f32> = u_xlat7;
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1182.x, x_1182.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1190 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1190.x, x_1189.x, x_1190.z, x_1189.y);
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1196.x, x_1197.y, x_1196.y, x_1197.w);
        let x_1200 : f32 = u_xlat59.x;
        u_xlat8.y = x_1200;
        let x_1203 : f32 = u_xlat10.y;
        u_xlat8.w = x_1203;
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1205 + x_1206);
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1211 : vec2<f32> = ((vec2<f32>(x_1208.y, x_1208.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1212 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1212.x, x_1211.x, x_1212.z, x_1211.y);
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1214.y, x_1214.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1218 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1217.x, x_1218.y, x_1217.y, x_1218.w);
        let x_1221 : f32 = u_xlat59.y;
        u_xlat10.y = x_1221;
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1224 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1223 + x_1224);
        let x_1226 : vec4<f32> = u_xlat8;
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1226 / x_1227);
        let x_1229 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1229 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1235 / x_1236);
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1238 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1243 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1240.w, x_1240.x, x_1240.y, x_1240.z) * vec4<f32>(x_1243.x, x_1243.x, x_1243.x, x_1243.x));
        let x_1246 : vec4<f32> = u_xlat10;
        let x_1249 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1246.x, x_1246.w, x_1246.y, x_1246.z) * vec4<f32>(x_1249.y, x_1249.y, x_1249.y, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1253 : vec3<f32> = vec3<f32>(x_1252.y, x_1252.z, x_1252.w);
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1253.x, x_1254.y, x_1253.y, x_1253.z);
        let x_1257 : f32 = u_xlat10.x;
        u_xlat11.y = x_1257;
        let x_1259 : vec2<f32> = u_xlat32;
        let x_1262 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1265.y));
        let x_1268 : vec2<f32> = u_xlat32;
        let x_1270 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat11;
        let x_1275 : vec2<f32> = ((x_1268 * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.w, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1279 : f32 = u_xlat11.y;
        u_xlat8.y = x_1279;
        let x_1282 : f32 = u_xlat10.z;
        u_xlat11.y = x_1282;
        let x_1284 : vec2<f32> = u_xlat32;
        let x_1287 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y) * vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y)) + vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1290.y));
        let x_1294 : vec2<f32> = u_xlat32;
        let x_1296 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1294 * vec2<f32>(x_1296.x, x_1296.y)) + vec2<f32>(x_1299.w, x_1299.y));
        let x_1303 : f32 = u_xlat11.y;
        u_xlat8.z = x_1303;
        let x_1305 : vec2<f32> = u_xlat32;
        let x_1308 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y) * vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y)) + vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.z));
        let x_1315 : f32 = u_xlat10.w;
        u_xlat11.y = x_1315;
        let x_1318 : vec2<f32> = u_xlat32;
        let x_1321 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y) * vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y)) + vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1324.y));
        let x_1328 : vec2<f32> = u_xlat32;
        let x_1330 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = ((x_1328 * vec2<f32>(x_1330.x, x_1330.y)) + vec2<f32>(x_1333.w, x_1333.y));
        let x_1336 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1335.x, x_1335.y, x_1336.z);
        let x_1339 : f32 = u_xlat11.y;
        u_xlat8.w = x_1339;
        let x_1342 : vec2<f32> = u_xlat32;
        let x_1344 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat8;
        let x_1349 : vec2<f32> = ((x_1342 * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1347.x, x_1347.w));
        let x_1350 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
        let x_1352 : vec4<f32> = u_xlat11;
        let x_1353 : vec3<f32> = vec3<f32>(x_1352.x, x_1352.z, x_1352.w);
        let x_1354 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1353.x, x_1354.y, x_1353.y, x_1353.z);
        let x_1356 : vec2<f32> = u_xlat32;
        let x_1359 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y) * vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y)) + vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1362.y));
        let x_1366 : vec2<f32> = u_xlat32;
        let x_1368 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1371 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1366 * vec2<f32>(x_1368.x, x_1368.y)) + vec2<f32>(x_1371.w, x_1371.y));
        let x_1375 : f32 = u_xlat8.x;
        u_xlat10.x = x_1375;
        let x_1377 : vec2<f32> = u_xlat32;
        let x_1379 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1382 : vec4<f32> = u_xlat10;
        u_xlat32 = ((x_1377 * vec2<f32>(x_1379.x, x_1379.y)) + vec2<f32>(x_1382.x, x_1382.y));
        let x_1386 : vec4<f32> = u_xlat7;
        let x_1388 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1386.x, x_1386.x, x_1386.x, x_1386.x) * x_1388);
        let x_1391 : vec4<f32> = u_xlat7;
        let x_1393 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1391.y, x_1391.y, x_1391.y, x_1391.y) * x_1393);
        let x_1396 : vec4<f32> = u_xlat7;
        let x_1398 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1396.z, x_1396.z, x_1396.z, x_1396.z) * x_1398);
        let x_1400 : vec4<f32> = u_xlat7;
        let x_1402 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1400.w, x_1400.w, x_1400.w, x_1400.w) * x_1402);
        let x_1405 : vec4<f32> = u_xlat12;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec13;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat84 = x_1417;
        let x_1419 : vec4<f32> = u_xlat12;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.z, x_1419.w);
        let x_1422 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec14;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat8.x = x_1431;
        let x_1434 : f32 = u_xlat8.x;
        let x_1436 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1434 * x_1436);
        let x_1440 : f32 = u_xlat18.x;
        let x_1441 : f32 = u_xlat84;
        let x_1444 : f32 = u_xlat8.x;
        u_xlat84 = ((x_1440 * x_1441) + x_1444);
        let x_1447 : vec4<f32> = u_xlat13;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.x, x_1447.y);
        let x_1450 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec15;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1457.xy, x_1457.z);
        u_xlat8.x = x_1459;
        let x_1462 : f32 = u_xlat18.z;
        let x_1464 : f32 = u_xlat8.x;
        let x_1466 : f32 = u_xlat84;
        u_xlat84 = ((x_1462 * x_1464) + x_1466);
        let x_1469 : vec4<f32> = u_xlat15;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.x, x_1469.y);
        let x_1472 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec16;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat8.x = x_1481;
        let x_1484 : f32 = u_xlat18.w;
        let x_1486 : f32 = u_xlat8.x;
        let x_1488 : f32 = u_xlat84;
        u_xlat84 = ((x_1484 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat14;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec17;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat8.x = x_1503;
        let x_1506 : f32 = u_xlat19.x;
        let x_1508 : f32 = u_xlat8.x;
        let x_1510 : f32 = u_xlat84;
        u_xlat84 = ((x_1506 * x_1508) + x_1510);
        let x_1513 : vec4<f32> = u_xlat14;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.z, x_1513.w);
        let x_1516 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec18;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat8.x = x_1525;
        let x_1528 : f32 = u_xlat19.y;
        let x_1530 : f32 = u_xlat8.x;
        let x_1532 : f32 = u_xlat84;
        u_xlat84 = ((x_1528 * x_1530) + x_1532);
        let x_1535 : vec2<f32> = u_xlat65;
        let x_1537 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec19;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1544.xy, x_1544.z);
        u_xlat8.x = x_1546;
        let x_1549 : f32 = u_xlat19.z;
        let x_1551 : f32 = u_xlat8.x;
        let x_1553 : f32 = u_xlat84;
        u_xlat84 = ((x_1549 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat15;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.z, x_1556.w);
        let x_1559 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec20;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat8.x = x_1568;
        let x_1571 : f32 = u_xlat19.w;
        let x_1573 : f32 = u_xlat8.x;
        let x_1575 : f32 = u_xlat84;
        u_xlat84 = ((x_1571 * x_1573) + x_1575);
        let x_1578 : vec4<f32> = u_xlat16;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.x, x_1578.y);
        let x_1581 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec21;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat8.x = x_1590;
        let x_1593 : f32 = u_xlat20.x;
        let x_1595 : f32 = u_xlat8.x;
        let x_1597 : f32 = u_xlat84;
        u_xlat84 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec4<f32> = u_xlat16;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.z, x_1600.w);
        let x_1603 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec22;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1610.xy, x_1610.z);
        u_xlat8.x = x_1612;
        let x_1615 : f32 = u_xlat20.y;
        let x_1617 : f32 = u_xlat8.x;
        let x_1619 : f32 = u_xlat84;
        u_xlat84 = ((x_1615 * x_1617) + x_1619);
        let x_1622 : vec3<f32> = u_xlat34;
        let x_1623 : vec2<f32> = vec2<f32>(x_1622.x, x_1622.y);
        let x_1625 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec23;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1632.xy, x_1632.z);
        u_xlat8.x = x_1634;
        let x_1637 : f32 = u_xlat20.z;
        let x_1639 : f32 = u_xlat8.x;
        let x_1641 : f32 = u_xlat84;
        u_xlat84 = ((x_1637 * x_1639) + x_1641);
        let x_1644 : vec4<f32> = u_xlat17;
        let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
        let x_1647 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
        let x_1654 : vec3<f32> = txVec24;
        let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1654.xy, x_1654.z);
        u_xlat8.x = x_1656;
        let x_1659 : f32 = u_xlat20.w;
        let x_1661 : f32 = u_xlat8.x;
        let x_1663 : f32 = u_xlat84;
        u_xlat84 = ((x_1659 * x_1661) + x_1663);
        let x_1666 : vec4<f32> = u_xlat11;
        let x_1667 : vec2<f32> = vec2<f32>(x_1666.x, x_1666.y);
        let x_1669 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1667.x, x_1667.y, x_1669);
        let x_1676 : vec3<f32> = txVec25;
        let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1676.xy, x_1676.z);
        u_xlat8.x = x_1678;
        let x_1681 : f32 = u_xlat7.x;
        let x_1683 : f32 = u_xlat8.x;
        let x_1685 : f32 = u_xlat84;
        u_xlat84 = ((x_1681 * x_1683) + x_1685);
        let x_1688 : vec4<f32> = u_xlat11;
        let x_1689 : vec2<f32> = vec2<f32>(x_1688.z, x_1688.w);
        let x_1691 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
        let x_1698 : vec3<f32> = txVec26;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1698.xy, x_1698.z);
        u_xlat7.x = x_1700;
        let x_1703 : f32 = u_xlat7.y;
        let x_1705 : f32 = u_xlat7.x;
        let x_1707 : f32 = u_xlat84;
        u_xlat84 = ((x_1703 * x_1705) + x_1707);
        let x_1710 : vec2<f32> = u_xlat62;
        let x_1712 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec27;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1719.xy, x_1719.z);
        u_xlat7.x = x_1721;
        let x_1724 : f32 = u_xlat7.z;
        let x_1726 : f32 = u_xlat7.x;
        let x_1728 : f32 = u_xlat84;
        u_xlat84 = ((x_1724 * x_1726) + x_1728);
        let x_1731 : vec2<f32> = u_xlat32;
        let x_1733 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1740 : vec3<f32> = txVec28;
        let x_1742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1740.xy, x_1740.z);
        u_xlat32.x = x_1742;
        let x_1745 : f32 = u_xlat7.w;
        let x_1747 : f32 = u_xlat32.x;
        let x_1749 : f32 = u_xlat84;
        u_xlat6.x = ((x_1745 * x_1747) + x_1749);
      }
    }
  } else {
    let x_1754 : vec4<f32> = u_xlat4;
    let x_1755 : vec2<f32> = vec2<f32>(x_1754.x, x_1754.y);
    let x_1757 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1755.x, x_1755.y, x_1757);
    let x_1764 : vec3<f32> = txVec29;
    let x_1766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1764.xy, x_1764.z);
    u_xlat6.x = x_1766;
  }
  let x_1769 : f32 = x_208.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1769) + 1.0f);
  let x_1774 : f32 = u_xlat6.x;
  let x_1776 : f32 = x_208.x_MainLightShadowParams.x;
  let x_1779 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1774 * x_1776) + x_1779);
  let x_1784 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1784);
  let x_1788 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1788 >= 1.0f);
  let x_1790 : bool = u_xlatb56;
  let x_1791 : bool = u_xlatb30;
  u_xlatb30 = (x_1790 | x_1791);
  let x_1793 : bool = u_xlatb30;
  if (x_1793) {
    x_1794 = 1.0f;
  } else {
    let x_1799 : f32 = u_xlat4.x;
    x_1794 = x_1799;
  }
  let x_1800 : f32 = x_1794;
  u_xlat4.x = x_1800;
  let x_1802 : vec3<f32> = vs_TEXCOORD1;
  let x_1804 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1806 : vec3<f32> = (x_1802 + -(x_1804));
  let x_1807 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
  let x_1810 : vec4<f32> = u_xlat6;
  let x_1812 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1810.x, x_1810.y, x_1810.z), vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
  let x_1816 : f32 = u_xlat30;
  let x_1818 : f32 = x_208.x_MainLightShadowParams.z;
  let x_1821 : f32 = x_208.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1816 * x_1818) + x_1821);
  let x_1823 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1823, 0.0f, 1.0f);
  let x_1826 : f32 = u_xlat4.x;
  u_xlat6.x = (-(x_1826) + 1.0f);
  let x_1830 : f32 = u_xlat56;
  let x_1832 : f32 = u_xlat6.x;
  let x_1835 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1830 * x_1832) + x_1835);
  let x_1845 : f32 = x_1843.x_MainLightCookieTextureFormat;
  u_xlatb56 = !((x_1845 == -1.0f));
  let x_1847 : bool = u_xlatb56;
  if (x_1847) {
    let x_1850 : vec3<f32> = vs_TEXCOORD1;
    let x_1853 : vec4<f32> = x_1843.x_MainLightWorldToLight[1i];
    let x_1855 : vec2<f32> = (vec2<f32>(x_1850.y, x_1850.y) * vec2<f32>(x_1853.x, x_1853.y));
    let x_1856 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1855.x, x_1855.y, x_1856.z, x_1856.w);
    let x_1859 : vec4<f32> = x_1843.x_MainLightWorldToLight[0i];
    let x_1861 : vec3<f32> = vs_TEXCOORD1;
    let x_1864 : vec4<f32> = u_xlat6;
    let x_1866 : vec2<f32> = ((vec2<f32>(x_1859.x, x_1859.y) * vec2<f32>(x_1861.x, x_1861.x)) + vec2<f32>(x_1864.x, x_1864.y));
    let x_1867 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1866.x, x_1866.y, x_1867.z, x_1867.w);
    let x_1870 : vec4<f32> = x_1843.x_MainLightWorldToLight[2i];
    let x_1872 : vec3<f32> = vs_TEXCOORD1;
    let x_1875 : vec4<f32> = u_xlat6;
    let x_1877 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(x_1872.z, x_1872.z)) + vec2<f32>(x_1875.x, x_1875.y));
    let x_1878 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
    let x_1880 : vec4<f32> = u_xlat6;
    let x_1883 : vec4<f32> = x_1843.x_MainLightWorldToLight[3i];
    let x_1885 : vec2<f32> = (vec2<f32>(x_1880.x, x_1880.y) + vec2<f32>(x_1883.x, x_1883.y));
    let x_1886 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1885.x, x_1885.y, x_1886.z, x_1886.w);
    let x_1888 : vec4<f32> = u_xlat6;
    let x_1891 : vec2<f32> = ((vec2<f32>(x_1888.x, x_1888.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1892 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1891.x, x_1891.y, x_1892.z, x_1892.w);
    let x_1899 : vec4<f32> = u_xlat6;
    let x_1902 : f32 = x_45.x_GlobalMipBias.x;
    let x_1903 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1899.x, x_1899.y), x_1902);
    u_xlat6 = x_1903;
    let x_1908 : f32 = x_1843.x_MainLightCookieTextureFormat;
    let x_1910 : f32 = x_1843.x_MainLightCookieTextureFormat;
    let x_1912 : f32 = x_1843.x_MainLightCookieTextureFormat;
    let x_1914 : f32 = x_1843.x_MainLightCookieTextureFormat;
    let x_1915 : vec4<f32> = vec4<f32>(x_1908, x_1910, x_1912, x_1914);
    let x_1922 : vec4<bool> = (vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1915.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1922.x, x_1922.y);
    let x_1925 : bool = u_xlatb7.y;
    if (x_1925) {
      let x_1930 : f32 = u_xlat6.w;
      x_1926 = x_1930;
    } else {
      let x_1933 : f32 = u_xlat6.x;
      x_1926 = x_1933;
    }
    let x_1934 : f32 = x_1926;
    u_xlat56 = x_1934;
    let x_1936 : bool = u_xlatb7.x;
    if (x_1936) {
      let x_1940 : vec4<f32> = u_xlat6;
      x_1937 = vec3<f32>(x_1940.x, x_1940.y, x_1940.z);
    } else {
      let x_1943 : f32 = u_xlat56;
      x_1937 = vec3<f32>(x_1943, x_1943, x_1943);
    }
    let x_1945 : vec3<f32> = x_1937;
    let x_1946 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1952 : vec4<f32> = u_xlat6;
  let x_1955 : vec4<f32> = x_45.x_MainLightColor;
  let x_1957 : vec3<f32> = (vec3<f32>(x_1952.x, x_1952.y, x_1952.z) * vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1958 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
  let x_1960 : vec3<f32> = u_xlat3;
  let x_1962 : vec3<f32> = u_xlat2;
  u_xlat56 = dot(-(x_1960), x_1962);
  let x_1964 : f32 = u_xlat56;
  let x_1965 : f32 = u_xlat56;
  u_xlat56 = (x_1964 + x_1965);
  let x_1967 : vec3<f32> = u_xlat2;
  let x_1968 : f32 = u_xlat56;
  let x_1972 : vec3<f32> = u_xlat3;
  let x_1974 : vec3<f32> = ((x_1967 * -(vec3<f32>(x_1968, x_1968, x_1968))) + -(x_1972));
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
  let x_1977 : vec3<f32> = u_xlat2;
  let x_1978 : vec3<f32> = u_xlat3;
  u_xlat56 = dot(x_1977, x_1978);
  let x_1980 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1980, 0.0f, 1.0f);
  let x_1982 : f32 = u_xlat56;
  u_xlat56 = (-(x_1982) + 1.0f);
  let x_1985 : f32 = u_xlat56;
  let x_1986 : f32 = u_xlat56;
  u_xlat56 = (x_1985 * x_1986);
  let x_1988 : f32 = u_xlat56;
  let x_1989 : f32 = u_xlat56;
  u_xlat56 = (x_1988 * x_1989);
  let x_1991 : f32 = u_xlat78;
  u_xlat84 = ((-(x_1991) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1997 : f32 = u_xlat78;
  let x_1998 : f32 = u_xlat84;
  u_xlat78 = (x_1997 * x_1998);
  let x_2000 : f32 = u_xlat78;
  u_xlat78 = (x_2000 * 6.0f);
  let x_2011 : vec4<f32> = u_xlat7;
  let x_2013 : f32 = u_xlat78;
  let x_2014 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2011.x, x_2011.y, x_2011.z), x_2013);
  u_xlat7 = x_2014;
  let x_2016 : f32 = u_xlat7.w;
  u_xlat78 = (x_2016 + -1.0f);
  let x_2019 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_2020 : f32 = u_xlat78;
  u_xlat78 = ((x_2019 * x_2020) + 1.0f);
  let x_2023 : f32 = u_xlat78;
  u_xlat78 = max(x_2023, 0.0f);
  let x_2025 : f32 = u_xlat78;
  u_xlat78 = log2(x_2025);
  let x_2027 : f32 = u_xlat78;
  let x_2029 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2027 * x_2029);
  let x_2031 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2031);
  let x_2033 : f32 = u_xlat78;
  let x_2035 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2033 * x_2035);
  let x_2037 : vec4<f32> = u_xlat7;
  let x_2039 : f32 = u_xlat78;
  let x_2041 : vec3<f32> = (vec3<f32>(x_2037.x, x_2037.y, x_2037.z) * vec3<f32>(x_2039, x_2039, x_2039));
  let x_2042 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  let x_2044 : f32 = u_xlat81;
  let x_2046 : f32 = u_xlat81;
  let x_2050 : vec2<f32> = ((vec2<f32>(x_2044, x_2044) * vec2<f32>(x_2046, x_2046)) + vec2<f32>(-1.0f, 1.0f));
  let x_2051 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2050.x, x_2050.y, x_2051.z, x_2051.w);
  let x_2054 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_2054);
  let x_2056 : vec4<f32> = u_xlat0;
  let x_2059 : f32 = u_xlat80;
  u_xlat34 = (-(vec3<f32>(x_2056.x, x_2056.y, x_2056.z)) + vec3<f32>(x_2059, x_2059, x_2059));
  let x_2062 : f32 = u_xlat56;
  let x_2064 : vec3<f32> = u_xlat34;
  let x_2066 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2062, x_2062, x_2062) * x_2064) + vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
  let x_2069 : f32 = u_xlat78;
  let x_2071 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2069, x_2069, x_2069) * x_2071);
  let x_2073 : vec4<f32> = u_xlat7;
  let x_2075 : vec3<f32> = u_xlat34;
  let x_2076 : vec3<f32> = (vec3<f32>(x_2073.x, x_2073.y, x_2073.z) * x_2075);
  let x_2077 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
  let x_2079 : vec4<f32> = u_xlat5;
  let x_2081 : vec3<f32> = u_xlat27;
  let x_2083 : vec4<f32> = u_xlat7;
  let x_2085 : vec3<f32> = ((vec3<f32>(x_2079.x, x_2079.y, x_2079.z) * x_2081) + vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
  let x_2086 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
  let x_2089 : f32 = u_xlat4.x;
  let x_2091 : f32 = x_96.unity_LightData.z;
  u_xlat78 = (x_2089 * x_2091);
  let x_2093 : vec3<f32> = u_xlat2;
  let x_2095 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat80 = dot(x_2093, vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
  let x_2098 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2098, 0.0f, 1.0f);
  let x_2100 : f32 = u_xlat78;
  let x_2101 : f32 = u_xlat80;
  u_xlat78 = (x_2100 * x_2101);
  let x_2103 : f32 = u_xlat78;
  let x_2105 : vec4<f32> = u_xlat6;
  let x_2107 : vec3<f32> = (vec3<f32>(x_2103, x_2103, x_2103) * vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
  let x_2108 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
  let x_2110 : vec3<f32> = u_xlat3;
  let x_2112 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2114 : vec3<f32> = (x_2110 + vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2117 : vec4<f32> = u_xlat7;
  let x_2119 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2117.x, x_2117.y, x_2117.z), vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
  let x_2122 : f32 = u_xlat78;
  u_xlat78 = max(x_2122, 1.17549435e-38f);
  let x_2125 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2125);
  let x_2127 : f32 = u_xlat78;
  let x_2129 : vec4<f32> = u_xlat7;
  let x_2131 : vec3<f32> = (vec3<f32>(x_2127, x_2127, x_2127) * vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
  let x_2132 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
  let x_2134 : vec3<f32> = u_xlat2;
  let x_2135 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_2134, vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
  let x_2138 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2138, 0.0f, 1.0f);
  let x_2141 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2143 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2141.x, x_2141.y, x_2141.z), vec3<f32>(x_2143.x, x_2143.y, x_2143.z));
  let x_2146 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2146, 0.0f, 1.0f);
  let x_2148 : f32 = u_xlat78;
  let x_2149 : f32 = u_xlat78;
  u_xlat78 = (x_2148 * x_2149);
  let x_2151 : f32 = u_xlat78;
  let x_2153 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2151 * x_2153) + 1.00001001358032226562f);
  let x_2157 : f32 = u_xlat80;
  let x_2158 : f32 = u_xlat80;
  u_xlat80 = (x_2157 * x_2158);
  let x_2160 : f32 = u_xlat78;
  let x_2161 : f32 = u_xlat78;
  u_xlat78 = (x_2160 * x_2161);
  let x_2163 : f32 = u_xlat80;
  u_xlat80 = max(x_2163, 0.10000000149011611938f);
  let x_2166 : f32 = u_xlat78;
  let x_2167 : f32 = u_xlat80;
  u_xlat78 = (x_2166 * x_2167);
  let x_2169 : f32 = u_xlat83;
  let x_2170 : f32 = u_xlat78;
  u_xlat78 = (x_2169 * x_2170);
  let x_2172 : f32 = u_xlat82;
  let x_2173 : f32 = u_xlat78;
  u_xlat78 = (x_2172 / x_2173);
  let x_2175 : vec4<f32> = u_xlat0;
  let x_2177 : f32 = u_xlat78;
  let x_2180 : vec3<f32> = u_xlat27;
  let x_2181 : vec3<f32> = ((vec3<f32>(x_2175.x, x_2175.y, x_2175.z) * vec3<f32>(x_2177, x_2177, x_2177)) + x_2180);
  let x_2182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
  let x_2185 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2187 : f32 = x_96.unity_LightData.y;
  u_xlat78 = min(x_2185, x_2187);
  let x_2189 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2189));
  let x_2192 : f32 = u_xlat30;
  let x_2195 : f32 = x_208.x_AdditionalShadowFadeParams.x;
  let x_2198 : f32 = x_208.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2192 * x_2195) + x_2198);
  let x_2200 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2200, 0.0f, 1.0f);
  let x_2203 : f32 = x_1843.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2205 : f32 = x_1843.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2207 : f32 = x_1843.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2209 : f32 = x_1843.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2210 : vec4<f32> = vec4<f32>(x_2203, x_2205, x_2207, x_2209);
  let x_2216 : vec4<bool> = (vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2210.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2217 : vec2<bool> = vec2<bool>(x_2216.x, x_2216.y);
  let x_2218 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_2217.x, x_2217.y, x_2218.z, x_2218.w);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2230 : u32 = u_xlatu_loop_1;
    let x_2231 : u32 = u_xlatu78;
    if ((x_2230 < x_2231)) {
    } else {
      break;
    }
    let x_2234 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_2234 >> 2u);
    let x_2237 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2237 & 3u));
    let x_2240 : u32 = u_xlatu56;
    let x_2243 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_2240)];
    let x_2253 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2258 : vec4<u32> = indexable[x_2253];
    u_xlat56 = dot(x_2243, bitcast<vec4<f32>>(x_2258));
    let x_2262 : f32 = u_xlat56;
    u_xlati56 = i32(x_2262);
    let x_2264 : vec3<f32> = vs_TEXCOORD1;
    let x_2275 : i32 = u_xlati56;
    let x_2277 : vec4<f32> = x_2274.x_AdditionalLightsPosition[x_2275];
    let x_2280 : i32 = u_xlati56;
    let x_2282 : vec4<f32> = x_2274.x_AdditionalLightsPosition[x_2280];
    let x_2284 : vec3<f32> = ((-(x_2264) * vec3<f32>(x_2277.w, x_2277.w, x_2277.w)) + vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
    let x_2285 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
    let x_2287 : vec4<f32> = u_xlat9;
    let x_2289 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2287.x, x_2287.y, x_2287.z), vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
    let x_2292 : f32 = u_xlat84;
    u_xlat84 = max(x_2292, 0.00006103515625f);
    let x_2296 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2296);
    let x_2298 : f32 = u_xlat85;
    let x_2300 : vec4<f32> = u_xlat9;
    let x_2302 : vec3<f32> = (vec3<f32>(x_2298, x_2298, x_2298) * vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
    let x_2303 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
    let x_2306 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2306);
    let x_2308 : f32 = u_xlat84;
    let x_2309 : i32 = u_xlati56;
    let x_2311 : f32 = x_2274.x_AdditionalLightsAttenuation[x_2309].x;
    u_xlat84 = (x_2308 * x_2311);
    let x_2313 : f32 = u_xlat84;
    let x_2315 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2313) * x_2315) + 1.0f);
    let x_2318 : f32 = u_xlat84;
    u_xlat84 = max(x_2318, 0.0f);
    let x_2320 : f32 = u_xlat84;
    let x_2321 : f32 = u_xlat84;
    u_xlat84 = (x_2320 * x_2321);
    let x_2323 : f32 = u_xlat84;
    let x_2324 : f32 = u_xlat87;
    u_xlat84 = (x_2323 * x_2324);
    let x_2326 : i32 = u_xlati56;
    let x_2328 : vec4<f32> = x_2274.x_AdditionalLightsSpotDir[x_2326];
    let x_2330 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2328.x, x_2328.y, x_2328.z), vec3<f32>(x_2330.x, x_2330.y, x_2330.z));
    let x_2333 : f32 = u_xlat87;
    let x_2334 : i32 = u_xlati56;
    let x_2336 : f32 = x_2274.x_AdditionalLightsAttenuation[x_2334].z;
    let x_2338 : i32 = u_xlati56;
    let x_2340 : f32 = x_2274.x_AdditionalLightsAttenuation[x_2338].w;
    u_xlat87 = ((x_2333 * x_2336) + x_2340);
    let x_2342 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2342, 0.0f, 1.0f);
    let x_2344 : f32 = u_xlat87;
    let x_2345 : f32 = u_xlat87;
    u_xlat87 = (x_2344 * x_2345);
    let x_2347 : f32 = u_xlat84;
    let x_2348 : f32 = u_xlat87;
    u_xlat84 = (x_2347 * x_2348);
    let x_2352 : i32 = u_xlati56;
    let x_2354 : f32 = x_208.x_AdditionalShadowParams[x_2352].w;
    u_xlati87 = i32(x_2354);
    let x_2357 : i32 = u_xlati87;
    u_xlatb88 = (x_2357 >= 0i);
    let x_2359 : bool = u_xlatb88;
    if (x_2359) {
      let x_2363 : i32 = u_xlati56;
      let x_2365 : f32 = x_208.x_AdditionalShadowParams[x_2363].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2365, x_2365, x_2365, x_2365))));
      let x_2369 : bool = u_xlatb88;
      if (x_2369) {
        let x_2373 : vec4<f32> = u_xlat10;
        let x_2376 : vec4<f32> = u_xlat10;
        let x_2379 : vec4<bool> = (abs(vec4<f32>(x_2373.z, x_2373.z, x_2373.y, x_2373.z)) >= abs(vec4<f32>(x_2376.x, x_2376.y, x_2376.x, x_2376.x)));
        let x_2381 : vec3<bool> = vec3<bool>(x_2379.x, x_2379.y, x_2379.z);
        let x_2382 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
        let x_2385 : bool = u_xlatb11.y;
        let x_2387 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2385 & x_2387);
        let x_2389 : vec4<f32> = u_xlat10;
        let x_2392 : vec4<bool> = (-(vec4<f32>(x_2389.z, x_2389.y, x_2389.z, x_2389.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2393 : vec3<bool> = vec3<bool>(x_2392.x, x_2392.y, x_2392.w);
        let x_2394 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2393.x, x_2393.y, x_2394.z, x_2393.z);
        let x_2397 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2397);
        let x_2402 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2402);
        let x_2407 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2407);
        let x_2411 : bool = u_xlatb11.z;
        if (x_2411) {
          let x_2416 : f32 = u_xlat11.y;
          x_2412 = x_2416;
        } else {
          let x_2418 : f32 = u_xlat89;
          x_2412 = x_2418;
        }
        let x_2419 : f32 = x_2412;
        u_xlat37.x = x_2419;
        let x_2422 : bool = u_xlatb88;
        if (x_2422) {
          let x_2427 : f32 = u_xlat11.x;
          x_2423 = x_2427;
        } else {
          let x_2430 : f32 = u_xlat37.x;
          x_2423 = x_2430;
        }
        let x_2431 : f32 = x_2423;
        u_xlat88 = x_2431;
        let x_2432 : i32 = u_xlati56;
        let x_2434 : f32 = x_208.x_AdditionalShadowParams[x_2432].w;
        u_xlat11.x = trunc(x_2434);
        let x_2437 : f32 = u_xlat88;
        let x_2439 : f32 = u_xlat11.x;
        u_xlat88 = (x_2437 + x_2439);
        let x_2441 : f32 = u_xlat88;
        u_xlati87 = i32(x_2441);
      }
      let x_2443 : i32 = u_xlati87;
      u_xlati87 = (x_2443 << bitcast<u32>(2i));
      let x_2445 : vec3<f32> = vs_TEXCOORD1;
      let x_2448 : i32 = u_xlati87;
      let x_2451 : i32 = u_xlati87;
      let x_2455 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_2448 + 1i) / 4i)][((x_2451 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2445.y, x_2445.y, x_2445.y, x_2445.y) * x_2455);
      let x_2457 : i32 = u_xlati87;
      let x_2459 : i32 = u_xlati87;
      let x_2462 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[(x_2457 / 4i)][(x_2459 % 4i)];
      let x_2463 : vec3<f32> = vs_TEXCOORD1;
      let x_2466 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2462 * vec4<f32>(x_2463.x, x_2463.x, x_2463.x, x_2463.x)) + x_2466);
      let x_2468 : i32 = u_xlati87;
      let x_2471 : i32 = u_xlati87;
      let x_2475 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_2468 + 2i) / 4i)][((x_2471 + 2i) % 4i)];
      let x_2476 : vec3<f32> = vs_TEXCOORD1;
      let x_2479 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2475 * vec4<f32>(x_2476.z, x_2476.z, x_2476.z, x_2476.z)) + x_2479);
      let x_2481 : vec4<f32> = u_xlat11;
      let x_2482 : i32 = u_xlati87;
      let x_2485 : i32 = u_xlati87;
      let x_2489 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_2482 + 3i) / 4i)][((x_2485 + 3i) % 4i)];
      u_xlat11 = (x_2481 + x_2489);
      let x_2491 : vec4<f32> = u_xlat11;
      let x_2493 : vec4<f32> = u_xlat11;
      let x_2495 : vec3<f32> = (vec3<f32>(x_2491.x, x_2491.y, x_2491.z) / vec3<f32>(x_2493.w, x_2493.w, x_2493.w));
      let x_2496 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2495.x, x_2495.y, x_2495.z, x_2496.w);
      let x_2499 : i32 = u_xlati56;
      let x_2501 : f32 = x_208.x_AdditionalShadowParams[x_2499].y;
      u_xlatb87 = (0.0f < x_2501);
      let x_2503 : bool = u_xlatb87;
      if (x_2503) {
        let x_2506 : i32 = u_xlati56;
        let x_2508 : f32 = x_208.x_AdditionalShadowParams[x_2506].y;
        u_xlatb87 = (1.0f == x_2508);
        let x_2510 : bool = u_xlatb87;
        if (x_2510) {
          let x_2513 : vec4<f32> = u_xlat11;
          let x_2517 : vec4<f32> = x_208.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2513.x, x_2513.y, x_2513.x, x_2513.y) + x_2517);
          let x_2520 : vec4<f32> = u_xlat12;
          let x_2521 : vec2<f32> = vec2<f32>(x_2520.x, x_2520.y);
          let x_2523 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2521.x, x_2521.y, x_2523);
          let x_2531 : vec3<f32> = txVec30;
          let x_2533 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2531.xy, x_2531.z);
          u_xlat13.x = x_2533;
          let x_2536 : vec4<f32> = u_xlat12;
          let x_2537 : vec2<f32> = vec2<f32>(x_2536.z, x_2536.w);
          let x_2539 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2537.x, x_2537.y, x_2539);
          let x_2546 : vec3<f32> = txVec31;
          let x_2548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2546.xy, x_2546.z);
          u_xlat13.y = x_2548;
          let x_2550 : vec4<f32> = u_xlat11;
          let x_2554 : vec4<f32> = x_208.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2550.x, x_2550.y, x_2550.x, x_2550.y) + x_2554);
          let x_2557 : vec4<f32> = u_xlat12;
          let x_2558 : vec2<f32> = vec2<f32>(x_2557.x, x_2557.y);
          let x_2560 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2558.x, x_2558.y, x_2560);
          let x_2567 : vec3<f32> = txVec32;
          let x_2569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2567.xy, x_2567.z);
          u_xlat13.z = x_2569;
          let x_2572 : vec4<f32> = u_xlat12;
          let x_2573 : vec2<f32> = vec2<f32>(x_2572.z, x_2572.w);
          let x_2575 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2573.x, x_2573.y, x_2575);
          let x_2582 : vec3<f32> = txVec33;
          let x_2584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2582.xy, x_2582.z);
          u_xlat13.w = x_2584;
          let x_2586 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2586, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2589 : i32 = u_xlati56;
          let x_2591 : f32 = x_208.x_AdditionalShadowParams[x_2589].y;
          u_xlatb88 = (2.0f == x_2591);
          let x_2593 : bool = u_xlatb88;
          if (x_2593) {
            let x_2596 : vec4<f32> = u_xlat11;
            let x_2600 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2603 : vec2<f32> = ((vec2<f32>(x_2596.x, x_2596.y) * vec2<f32>(x_2600.z, x_2600.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2604 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2603.x, x_2603.y, x_2604.z, x_2604.w);
            let x_2606 : vec4<f32> = u_xlat12;
            let x_2608 : vec2<f32> = floor(vec2<f32>(x_2606.x, x_2606.y));
            let x_2609 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2608.x, x_2608.y, x_2609.z, x_2609.w);
            let x_2612 : vec4<f32> = u_xlat11;
            let x_2615 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2618 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2612.x, x_2612.y) * vec2<f32>(x_2615.z, x_2615.w)) + -(vec2<f32>(x_2618.x, x_2618.y)));
            let x_2622 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2622.x, x_2622.x, x_2622.y, x_2622.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2625 : vec4<f32> = u_xlat13;
            let x_2627 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2625.x, x_2625.x, x_2625.z, x_2625.z) * vec4<f32>(x_2627.x, x_2627.x, x_2627.z, x_2627.z));
            let x_2630 : vec4<f32> = u_xlat14;
            let x_2632 : vec2<f32> = (vec2<f32>(x_2630.y, x_2630.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2633 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2632.x, x_2633.y, x_2632.y, x_2633.w);
            let x_2635 : vec4<f32> = u_xlat14;
            let x_2638 : vec2<f32> = u_xlat64;
            let x_2640 : vec2<f32> = ((vec2<f32>(x_2635.x, x_2635.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2638));
            let x_2641 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2640.x, x_2640.y, x_2641.z, x_2641.w);
            let x_2644 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2644) + vec2<f32>(1.0f, 1.0f));
            let x_2647 : vec2<f32> = u_xlat64;
            let x_2648 : vec2<f32> = min(x_2647, vec2<f32>(0.0f, 0.0f));
            let x_2649 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2648.x, x_2648.y, x_2649.z, x_2649.w);
            let x_2651 : vec4<f32> = u_xlat15;
            let x_2654 : vec4<f32> = u_xlat15;
            let x_2657 : vec2<f32> = u_xlat66;
            let x_2658 : vec2<f32> = ((-(vec2<f32>(x_2651.x, x_2651.y)) * vec2<f32>(x_2654.x, x_2654.y)) + x_2657);
            let x_2659 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2658.x, x_2658.y, x_2659.z, x_2659.w);
            let x_2661 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2661, vec2<f32>(0.0f, 0.0f));
            let x_2663 : vec2<f32> = u_xlat64;
            let x_2665 : vec2<f32> = u_xlat64;
            let x_2667 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2663) * x_2665) + vec2<f32>(x_2667.y, x_2667.w));
            let x_2670 : vec4<f32> = u_xlat15;
            let x_2672 : vec2<f32> = (vec2<f32>(x_2670.x, x_2670.y) + vec2<f32>(1.0f, 1.0f));
            let x_2673 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2672.x, x_2672.y, x_2673.z, x_2673.w);
            let x_2675 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2675 + vec2<f32>(1.0f, 1.0f));
            let x_2677 : vec4<f32> = u_xlat14;
            let x_2679 : vec2<f32> = (vec2<f32>(x_2677.x, x_2677.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2680 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec2<f32> = u_xlat66;
            let x_2683 : vec2<f32> = (x_2682 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2684 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2683.x, x_2683.y, x_2684.z, x_2684.w);
            let x_2686 : vec4<f32> = u_xlat15;
            let x_2688 : vec2<f32> = (vec2<f32>(x_2686.x, x_2686.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2689 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2688.x, x_2688.y, x_2689.z, x_2689.w);
            let x_2691 : vec2<f32> = u_xlat64;
            let x_2692 : vec2<f32> = (x_2691 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2693 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2692.x, x_2692.y, x_2693.z, x_2693.w);
            let x_2695 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2695.y, x_2695.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2699 : f32 = u_xlat15.x;
            u_xlat16.z = x_2699;
            let x_2702 : f32 = u_xlat64.x;
            u_xlat16.w = x_2702;
            let x_2705 : f32 = u_xlat17.x;
            u_xlat14.z = x_2705;
            let x_2708 : f32 = u_xlat13.x;
            u_xlat14.w = x_2708;
            let x_2710 : vec4<f32> = u_xlat14;
            let x_2712 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2710.z, x_2710.w, x_2710.x, x_2710.z) + vec4<f32>(x_2712.z, x_2712.w, x_2712.x, x_2712.z));
            let x_2716 : f32 = u_xlat16.y;
            u_xlat15.z = x_2716;
            let x_2719 : f32 = u_xlat64.y;
            u_xlat15.w = x_2719;
            let x_2722 : f32 = u_xlat14.y;
            u_xlat17.z = x_2722;
            let x_2725 : f32 = u_xlat13.z;
            u_xlat17.w = x_2725;
            let x_2727 : vec4<f32> = u_xlat15;
            let x_2729 : vec4<f32> = u_xlat17;
            let x_2731 : vec3<f32> = (vec3<f32>(x_2727.z, x_2727.y, x_2727.w) + vec3<f32>(x_2729.z, x_2729.y, x_2729.w));
            let x_2732 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2732.w);
            let x_2734 : vec4<f32> = u_xlat14;
            let x_2736 : vec4<f32> = u_xlat18;
            let x_2738 : vec3<f32> = (vec3<f32>(x_2734.x, x_2734.z, x_2734.w) / vec3<f32>(x_2736.z, x_2736.w, x_2736.y));
            let x_2739 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2739.w);
            let x_2741 : vec4<f32> = u_xlat14;
            let x_2743 : vec3<f32> = (vec3<f32>(x_2741.x, x_2741.y, x_2741.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2744 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
            let x_2746 : vec4<f32> = u_xlat17;
            let x_2748 : vec4<f32> = u_xlat13;
            let x_2750 : vec3<f32> = (vec3<f32>(x_2746.z, x_2746.y, x_2746.w) / vec3<f32>(x_2748.x, x_2748.y, x_2748.z));
            let x_2751 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat15;
            let x_2755 : vec3<f32> = (vec3<f32>(x_2753.x, x_2753.y, x_2753.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2756 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2755.x, x_2755.y, x_2755.z, x_2756.w);
            let x_2758 : vec4<f32> = u_xlat14;
            let x_2761 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2763 : vec3<f32> = (vec3<f32>(x_2758.y, x_2758.x, x_2758.z) * vec3<f32>(x_2761.x, x_2761.x, x_2761.x));
            let x_2764 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2763.x, x_2763.y, x_2763.z, x_2764.w);
            let x_2766 : vec4<f32> = u_xlat15;
            let x_2769 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2771 : vec3<f32> = (vec3<f32>(x_2766.x, x_2766.y, x_2766.z) * vec3<f32>(x_2769.y, x_2769.y, x_2769.y));
            let x_2772 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2772.w);
            let x_2775 : f32 = u_xlat15.x;
            u_xlat14.w = x_2775;
            let x_2777 : vec4<f32> = u_xlat12;
            let x_2780 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2783 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y) * vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y)) + vec4<f32>(x_2783.y, x_2783.w, x_2783.x, x_2783.w));
            let x_2786 : vec4<f32> = u_xlat12;
            let x_2789 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2792 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2786.x, x_2786.y) * vec2<f32>(x_2789.x, x_2789.y)) + vec2<f32>(x_2792.z, x_2792.w));
            let x_2796 : f32 = u_xlat14.y;
            u_xlat15.w = x_2796;
            let x_2798 : vec4<f32> = u_xlat15;
            let x_2799 : vec2<f32> = vec2<f32>(x_2798.y, x_2798.z);
            let x_2800 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2800.x, x_2799.x, x_2800.z, x_2799.y);
            let x_2802 : vec4<f32> = u_xlat12;
            let x_2805 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2808 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y) * vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.y)) + vec4<f32>(x_2808.x, x_2808.y, x_2808.z, x_2808.y));
            let x_2811 : vec4<f32> = u_xlat12;
            let x_2814 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2817 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y) * vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y)) + vec4<f32>(x_2817.w, x_2817.y, x_2817.w, x_2817.z));
            let x_2820 : vec4<f32> = u_xlat12;
            let x_2823 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2826 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2820.x, x_2820.y, x_2820.x, x_2820.y) * vec4<f32>(x_2823.x, x_2823.y, x_2823.x, x_2823.y)) + vec4<f32>(x_2826.x, x_2826.w, x_2826.z, x_2826.w));
            let x_2829 : vec4<f32> = u_xlat13;
            let x_2831 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2829.x, x_2829.x, x_2829.x, x_2829.y) * vec4<f32>(x_2831.z, x_2831.w, x_2831.y, x_2831.z));
            let x_2834 : vec4<f32> = u_xlat13;
            let x_2836 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2834.y, x_2834.y, x_2834.z, x_2834.z) * x_2836);
            let x_2839 : f32 = u_xlat13.z;
            let x_2841 : f32 = u_xlat18.y;
            u_xlat88 = (x_2839 * x_2841);
            let x_2844 : vec4<f32> = u_xlat16;
            let x_2845 : vec2<f32> = vec2<f32>(x_2844.x, x_2844.y);
            let x_2847 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
            let x_2854 : vec3<f32> = txVec34;
            let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
            u_xlat89 = x_2856;
            let x_2858 : vec4<f32> = u_xlat16;
            let x_2859 : vec2<f32> = vec2<f32>(x_2858.z, x_2858.w);
            let x_2861 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2859.x, x_2859.y, x_2861);
            let x_2868 : vec3<f32> = txVec35;
            let x_2870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
            u_xlat12.x = x_2870;
            let x_2873 : f32 = u_xlat12.x;
            let x_2875 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2873 * x_2875);
            let x_2879 : f32 = u_xlat19.x;
            let x_2880 : f32 = u_xlat89;
            let x_2883 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2879 * x_2880) + x_2883);
            let x_2886 : vec2<f32> = u_xlat64;
            let x_2888 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2886.x, x_2886.y, x_2888);
            let x_2895 : vec3<f32> = txVec36;
            let x_2897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2895.xy, x_2895.z);
            u_xlat12.x = x_2897;
            let x_2900 : f32 = u_xlat19.z;
            let x_2902 : f32 = u_xlat12.x;
            let x_2904 : f32 = u_xlat89;
            u_xlat89 = ((x_2900 * x_2902) + x_2904);
            let x_2907 : vec4<f32> = u_xlat15;
            let x_2908 : vec2<f32> = vec2<f32>(x_2907.x, x_2907.y);
            let x_2910 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2908.x, x_2908.y, x_2910);
            let x_2917 : vec3<f32> = txVec37;
            let x_2919 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2917.xy, x_2917.z);
            u_xlat12.x = x_2919;
            let x_2922 : f32 = u_xlat19.w;
            let x_2924 : f32 = u_xlat12.x;
            let x_2926 : f32 = u_xlat89;
            u_xlat89 = ((x_2922 * x_2924) + x_2926);
            let x_2929 : vec4<f32> = u_xlat17;
            let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
            let x_2932 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
            let x_2939 : vec3<f32> = txVec38;
            let x_2941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2939.xy, x_2939.z);
            u_xlat12.x = x_2941;
            let x_2944 : f32 = u_xlat20.x;
            let x_2946 : f32 = u_xlat12.x;
            let x_2948 : f32 = u_xlat89;
            u_xlat89 = ((x_2944 * x_2946) + x_2948);
            let x_2951 : vec4<f32> = u_xlat17;
            let x_2952 : vec2<f32> = vec2<f32>(x_2951.z, x_2951.w);
            let x_2954 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
            let x_2961 : vec3<f32> = txVec39;
            let x_2963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
            u_xlat12.x = x_2963;
            let x_2966 : f32 = u_xlat20.y;
            let x_2968 : f32 = u_xlat12.x;
            let x_2970 : f32 = u_xlat89;
            u_xlat89 = ((x_2966 * x_2968) + x_2970);
            let x_2973 : vec4<f32> = u_xlat15;
            let x_2974 : vec2<f32> = vec2<f32>(x_2973.z, x_2973.w);
            let x_2976 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2974.x, x_2974.y, x_2976);
            let x_2983 : vec3<f32> = txVec40;
            let x_2985 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2983.xy, x_2983.z);
            u_xlat12.x = x_2985;
            let x_2988 : f32 = u_xlat20.z;
            let x_2990 : f32 = u_xlat12.x;
            let x_2992 : f32 = u_xlat89;
            u_xlat89 = ((x_2988 * x_2990) + x_2992);
            let x_2995 : vec4<f32> = u_xlat14;
            let x_2996 : vec2<f32> = vec2<f32>(x_2995.x, x_2995.y);
            let x_2998 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3005 : vec3<f32> = txVec41;
            let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
            u_xlat12.x = x_3007;
            let x_3010 : f32 = u_xlat20.w;
            let x_3012 : f32 = u_xlat12.x;
            let x_3014 : f32 = u_xlat89;
            u_xlat89 = ((x_3010 * x_3012) + x_3014);
            let x_3017 : vec4<f32> = u_xlat14;
            let x_3018 : vec2<f32> = vec2<f32>(x_3017.z, x_3017.w);
            let x_3020 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3018.x, x_3018.y, x_3020);
            let x_3027 : vec3<f32> = txVec42;
            let x_3029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3027.xy, x_3027.z);
            u_xlat12.x = x_3029;
            let x_3031 : f32 = u_xlat88;
            let x_3033 : f32 = u_xlat12.x;
            let x_3035 : f32 = u_xlat89;
            u_xlat87 = ((x_3031 * x_3033) + x_3035);
          } else {
            let x_3038 : vec4<f32> = u_xlat11;
            let x_3041 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3044 : vec2<f32> = ((vec2<f32>(x_3038.x, x_3038.y) * vec2<f32>(x_3041.z, x_3041.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3045 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3044.x, x_3044.y, x_3045.z, x_3045.w);
            let x_3047 : vec4<f32> = u_xlat12;
            let x_3049 : vec2<f32> = floor(vec2<f32>(x_3047.x, x_3047.y));
            let x_3050 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3049.x, x_3049.y, x_3050.z, x_3050.w);
            let x_3052 : vec4<f32> = u_xlat11;
            let x_3055 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3058 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3052.x, x_3052.y) * vec2<f32>(x_3055.z, x_3055.w)) + -(vec2<f32>(x_3058.x, x_3058.y)));
            let x_3062 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3062.x, x_3062.x, x_3062.y, x_3062.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3065 : vec4<f32> = u_xlat13;
            let x_3067 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3065.x, x_3065.x, x_3065.z, x_3065.z) * vec4<f32>(x_3067.x, x_3067.x, x_3067.z, x_3067.z));
            let x_3070 : vec4<f32> = u_xlat14;
            let x_3072 : vec2<f32> = (vec2<f32>(x_3070.y, x_3070.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3073 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3073.x, x_3072.x, x_3073.z, x_3072.y);
            let x_3075 : vec4<f32> = u_xlat14;
            let x_3078 : vec2<f32> = u_xlat64;
            let x_3080 : vec2<f32> = ((vec2<f32>(x_3075.x, x_3075.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3078));
            let x_3081 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3080.x, x_3081.y, x_3080.y, x_3081.w);
            let x_3083 : vec2<f32> = u_xlat64;
            let x_3085 : vec2<f32> = (-(x_3083) + vec2<f32>(1.0f, 1.0f));
            let x_3086 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3085.x, x_3085.y, x_3086.z, x_3086.w);
            let x_3088 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3088, vec2<f32>(0.0f, 0.0f));
            let x_3090 : vec2<f32> = u_xlat66;
            let x_3092 : vec2<f32> = u_xlat66;
            let x_3094 : vec4<f32> = u_xlat14;
            let x_3096 : vec2<f32> = ((-(x_3090) * x_3092) + vec2<f32>(x_3094.x, x_3094.y));
            let x_3097 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3096.x, x_3096.y, x_3097.z, x_3097.w);
            let x_3099 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3099, vec2<f32>(0.0f, 0.0f));
            let x_3102 : vec2<f32> = u_xlat66;
            let x_3104 : vec2<f32> = u_xlat66;
            let x_3106 : vec4<f32> = u_xlat13;
            let x_3108 : vec2<f32> = ((-(x_3102) * x_3104) + vec2<f32>(x_3106.y, x_3106.w));
            let x_3109 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3108.x, x_3109.y, x_3108.y);
            let x_3111 : vec4<f32> = u_xlat14;
            let x_3114 : vec2<f32> = (vec2<f32>(x_3111.x, x_3111.y) + vec2<f32>(2.0f, 2.0f));
            let x_3115 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3114.x, x_3114.y, x_3115.z, x_3115.w);
            let x_3117 : vec3<f32> = u_xlat39;
            let x_3119 : vec2<f32> = (vec2<f32>(x_3117.x, x_3117.z) + vec2<f32>(2.0f, 2.0f));
            let x_3120 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3120.x, x_3119.x, x_3120.z, x_3119.y);
            let x_3123 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3123 * 0.08163200318813323975f);
            let x_3126 : vec4<f32> = u_xlat13;
            let x_3129 : vec3<f32> = (vec3<f32>(x_3126.z, x_3126.x, x_3126.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3130 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3129.x, x_3129.y, x_3129.z, x_3130.w);
            let x_3132 : vec4<f32> = u_xlat14;
            let x_3134 : vec2<f32> = (vec2<f32>(x_3132.x, x_3132.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3135 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3134.x, x_3134.y, x_3135.z, x_3135.w);
            let x_3138 : f32 = u_xlat17.y;
            u_xlat16.x = x_3138;
            let x_3140 : vec2<f32> = u_xlat64;
            let x_3143 : vec2<f32> = ((vec2<f32>(x_3140.x, x_3140.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3144 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3144.x, x_3143.x, x_3144.z, x_3143.y);
            let x_3146 : vec2<f32> = u_xlat64;
            let x_3149 : vec2<f32> = ((vec2<f32>(x_3146.x, x_3146.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3150 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3149.x, x_3150.y, x_3149.y, x_3150.w);
            let x_3153 : f32 = u_xlat13.x;
            u_xlat14.y = x_3153;
            let x_3156 : f32 = u_xlat15.y;
            u_xlat14.w = x_3156;
            let x_3158 : vec4<f32> = u_xlat14;
            let x_3159 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3158 + x_3159);
            let x_3161 : vec2<f32> = u_xlat64;
            let x_3164 : vec2<f32> = ((vec2<f32>(x_3161.y, x_3161.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3165 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3165.x, x_3164.x, x_3165.z, x_3164.y);
            let x_3167 : vec2<f32> = u_xlat64;
            let x_3170 : vec2<f32> = ((vec2<f32>(x_3167.y, x_3167.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3171 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3170.x, x_3171.y, x_3170.y, x_3171.w);
            let x_3174 : f32 = u_xlat13.y;
            u_xlat15.y = x_3174;
            let x_3176 : vec4<f32> = u_xlat15;
            let x_3177 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3176 + x_3177);
            let x_3179 : vec4<f32> = u_xlat14;
            let x_3180 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3179 / x_3180);
            let x_3182 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3182 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3184 : vec4<f32> = u_xlat15;
            let x_3185 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3184 / x_3185);
            let x_3187 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3187 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3189 : vec4<f32> = u_xlat14;
            let x_3192 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3189.w, x_3189.x, x_3189.y, x_3189.z) * vec4<f32>(x_3192.x, x_3192.x, x_3192.x, x_3192.x));
            let x_3195 : vec4<f32> = u_xlat15;
            let x_3198 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3195.x, x_3195.w, x_3195.y, x_3195.z) * vec4<f32>(x_3198.y, x_3198.y, x_3198.y, x_3198.y));
            let x_3201 : vec4<f32> = u_xlat14;
            let x_3202 : vec3<f32> = vec3<f32>(x_3201.y, x_3201.z, x_3201.w);
            let x_3203 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3202.x, x_3203.y, x_3202.y, x_3202.z);
            let x_3206 : f32 = u_xlat15.x;
            u_xlat17.y = x_3206;
            let x_3208 : vec4<f32> = u_xlat12;
            let x_3211 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3214 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3208.x, x_3208.y, x_3208.x, x_3208.y) * vec4<f32>(x_3211.x, x_3211.y, x_3211.x, x_3211.y)) + vec4<f32>(x_3214.x, x_3214.y, x_3214.z, x_3214.y));
            let x_3217 : vec4<f32> = u_xlat12;
            let x_3220 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3223 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3217.x, x_3217.y) * vec2<f32>(x_3220.x, x_3220.y)) + vec2<f32>(x_3223.w, x_3223.y));
            let x_3227 : f32 = u_xlat17.y;
            u_xlat14.y = x_3227;
            let x_3230 : f32 = u_xlat15.z;
            u_xlat17.y = x_3230;
            let x_3232 : vec4<f32> = u_xlat12;
            let x_3235 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3238 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3232.x, x_3232.y, x_3232.x, x_3232.y) * vec4<f32>(x_3235.x, x_3235.y, x_3235.x, x_3235.y)) + vec4<f32>(x_3238.x, x_3238.y, x_3238.z, x_3238.y));
            let x_3241 : vec4<f32> = u_xlat12;
            let x_3244 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3247 : vec4<f32> = u_xlat17;
            let x_3249 : vec2<f32> = ((vec2<f32>(x_3241.x, x_3241.y) * vec2<f32>(x_3244.x, x_3244.y)) + vec2<f32>(x_3247.w, x_3247.y));
            let x_3250 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3249.x, x_3249.y, x_3250.z, x_3250.w);
            let x_3253 : f32 = u_xlat17.y;
            u_xlat14.z = x_3253;
            let x_3256 : vec4<f32> = u_xlat12;
            let x_3259 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3262 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3256.x, x_3256.y, x_3256.x, x_3256.y) * vec4<f32>(x_3259.x, x_3259.y, x_3259.x, x_3259.y)) + vec4<f32>(x_3262.x, x_3262.y, x_3262.x, x_3262.z));
            let x_3266 : f32 = u_xlat15.w;
            u_xlat17.y = x_3266;
            let x_3269 : vec4<f32> = u_xlat12;
            let x_3272 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3275 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3269.x, x_3269.y, x_3269.x, x_3269.y) * vec4<f32>(x_3272.x, x_3272.y, x_3272.x, x_3272.y)) + vec4<f32>(x_3275.x, x_3275.y, x_3275.z, x_3275.y));
            let x_3279 : vec4<f32> = u_xlat12;
            let x_3282 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3285 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3279.x, x_3279.y) * vec2<f32>(x_3282.x, x_3282.y)) + vec2<f32>(x_3285.w, x_3285.y));
            let x_3289 : f32 = u_xlat17.y;
            u_xlat14.w = x_3289;
            let x_3292 : vec4<f32> = u_xlat12;
            let x_3295 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3298 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3292.x, x_3292.y) * vec2<f32>(x_3295.x, x_3295.y)) + vec2<f32>(x_3298.x, x_3298.w));
            let x_3301 : vec4<f32> = u_xlat17;
            let x_3302 : vec3<f32> = vec3<f32>(x_3301.x, x_3301.z, x_3301.w);
            let x_3303 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3302.x, x_3303.y, x_3302.y, x_3302.z);
            let x_3305 : vec4<f32> = u_xlat12;
            let x_3308 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3311 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y) * vec4<f32>(x_3308.x, x_3308.y, x_3308.x, x_3308.y)) + vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3311.y));
            let x_3315 : vec4<f32> = u_xlat12;
            let x_3318 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3321 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3315.x, x_3315.y) * vec2<f32>(x_3318.x, x_3318.y)) + vec2<f32>(x_3321.w, x_3321.y));
            let x_3325 : f32 = u_xlat14.x;
            u_xlat15.x = x_3325;
            let x_3327 : vec4<f32> = u_xlat12;
            let x_3330 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3333 : vec4<f32> = u_xlat15;
            let x_3335 : vec2<f32> = ((vec2<f32>(x_3327.x, x_3327.y) * vec2<f32>(x_3330.x, x_3330.y)) + vec2<f32>(x_3333.x, x_3333.y));
            let x_3336 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3335.x, x_3335.y, x_3336.z, x_3336.w);
            let x_3339 : vec4<f32> = u_xlat13;
            let x_3341 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3339.x, x_3339.x, x_3339.x, x_3339.x) * x_3341);
            let x_3344 : vec4<f32> = u_xlat13;
            let x_3346 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3344.y, x_3344.y, x_3344.y, x_3344.y) * x_3346);
            let x_3349 : vec4<f32> = u_xlat13;
            let x_3351 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3349.z, x_3349.z, x_3349.z, x_3349.z) * x_3351);
            let x_3353 : vec4<f32> = u_xlat13;
            let x_3355 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3353.w, x_3353.w, x_3353.w, x_3353.w) * x_3355);
            let x_3358 : vec4<f32> = u_xlat18;
            let x_3359 : vec2<f32> = vec2<f32>(x_3358.x, x_3358.y);
            let x_3361 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec43;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat88 = x_3370;
            let x_3372 : vec4<f32> = u_xlat18;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.z, x_3372.w);
            let x_3375 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec44;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat89 = x_3384;
            let x_3385 : f32 = u_xlat89;
            let x_3387 : f32 = u_xlat23.y;
            u_xlat89 = (x_3385 * x_3387);
            let x_3390 : f32 = u_xlat23.x;
            let x_3391 : f32 = u_xlat88;
            let x_3393 : f32 = u_xlat89;
            u_xlat88 = ((x_3390 * x_3391) + x_3393);
            let x_3396 : vec2<f32> = u_xlat64;
            let x_3398 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3396.x, x_3396.y, x_3398);
            let x_3405 : vec3<f32> = txVec45;
            let x_3407 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3405.xy, x_3405.z);
            u_xlat89 = x_3407;
            let x_3409 : f32 = u_xlat23.z;
            let x_3410 : f32 = u_xlat89;
            let x_3412 : f32 = u_xlat88;
            u_xlat88 = ((x_3409 * x_3410) + x_3412);
            let x_3415 : vec4<f32> = u_xlat21;
            let x_3416 : vec2<f32> = vec2<f32>(x_3415.x, x_3415.y);
            let x_3418 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3416.x, x_3416.y, x_3418);
            let x_3425 : vec3<f32> = txVec46;
            let x_3427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3425.xy, x_3425.z);
            u_xlat89 = x_3427;
            let x_3429 : f32 = u_xlat23.w;
            let x_3430 : f32 = u_xlat89;
            let x_3432 : f32 = u_xlat88;
            u_xlat88 = ((x_3429 * x_3430) + x_3432);
            let x_3435 : vec4<f32> = u_xlat19;
            let x_3436 : vec2<f32> = vec2<f32>(x_3435.x, x_3435.y);
            let x_3438 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3436.x, x_3436.y, x_3438);
            let x_3445 : vec3<f32> = txVec47;
            let x_3447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3445.xy, x_3445.z);
            u_xlat89 = x_3447;
            let x_3449 : f32 = u_xlat24.x;
            let x_3450 : f32 = u_xlat89;
            let x_3452 : f32 = u_xlat88;
            u_xlat88 = ((x_3449 * x_3450) + x_3452);
            let x_3455 : vec4<f32> = u_xlat19;
            let x_3456 : vec2<f32> = vec2<f32>(x_3455.z, x_3455.w);
            let x_3458 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3456.x, x_3456.y, x_3458);
            let x_3465 : vec3<f32> = txVec48;
            let x_3467 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3465.xy, x_3465.z);
            u_xlat89 = x_3467;
            let x_3469 : f32 = u_xlat24.y;
            let x_3470 : f32 = u_xlat89;
            let x_3472 : f32 = u_xlat88;
            u_xlat88 = ((x_3469 * x_3470) + x_3472);
            let x_3475 : vec4<f32> = u_xlat20;
            let x_3476 : vec2<f32> = vec2<f32>(x_3475.x, x_3475.y);
            let x_3478 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3476.x, x_3476.y, x_3478);
            let x_3485 : vec3<f32> = txVec49;
            let x_3487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3485.xy, x_3485.z);
            u_xlat89 = x_3487;
            let x_3489 : f32 = u_xlat24.z;
            let x_3490 : f32 = u_xlat89;
            let x_3492 : f32 = u_xlat88;
            u_xlat88 = ((x_3489 * x_3490) + x_3492);
            let x_3495 : vec4<f32> = u_xlat21;
            let x_3496 : vec2<f32> = vec2<f32>(x_3495.z, x_3495.w);
            let x_3498 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3496.x, x_3496.y, x_3498);
            let x_3505 : vec3<f32> = txVec50;
            let x_3507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3505.xy, x_3505.z);
            u_xlat89 = x_3507;
            let x_3509 : f32 = u_xlat24.w;
            let x_3510 : f32 = u_xlat89;
            let x_3512 : f32 = u_xlat88;
            u_xlat88 = ((x_3509 * x_3510) + x_3512);
            let x_3515 : vec4<f32> = u_xlat22;
            let x_3516 : vec2<f32> = vec2<f32>(x_3515.x, x_3515.y);
            let x_3518 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3516.x, x_3516.y, x_3518);
            let x_3525 : vec3<f32> = txVec51;
            let x_3527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3525.xy, x_3525.z);
            u_xlat89 = x_3527;
            let x_3529 : f32 = u_xlat25.x;
            let x_3530 : f32 = u_xlat89;
            let x_3532 : f32 = u_xlat88;
            u_xlat88 = ((x_3529 * x_3530) + x_3532);
            let x_3535 : vec4<f32> = u_xlat22;
            let x_3536 : vec2<f32> = vec2<f32>(x_3535.z, x_3535.w);
            let x_3538 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3536.x, x_3536.y, x_3538);
            let x_3545 : vec3<f32> = txVec52;
            let x_3547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3545.xy, x_3545.z);
            u_xlat89 = x_3547;
            let x_3549 : f32 = u_xlat25.y;
            let x_3550 : f32 = u_xlat89;
            let x_3552 : f32 = u_xlat88;
            u_xlat88 = ((x_3549 * x_3550) + x_3552);
            let x_3555 : vec2<f32> = u_xlat40;
            let x_3557 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3555.x, x_3555.y, x_3557);
            let x_3564 : vec3<f32> = txVec53;
            let x_3566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3564.xy, x_3564.z);
            u_xlat89 = x_3566;
            let x_3568 : f32 = u_xlat25.z;
            let x_3569 : f32 = u_xlat89;
            let x_3571 : f32 = u_xlat88;
            u_xlat88 = ((x_3568 * x_3569) + x_3571);
            let x_3574 : vec2<f32> = u_xlat72;
            let x_3576 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3574.x, x_3574.y, x_3576);
            let x_3583 : vec3<f32> = txVec54;
            let x_3585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3583.xy, x_3583.z);
            u_xlat89 = x_3585;
            let x_3587 : f32 = u_xlat25.w;
            let x_3588 : f32 = u_xlat89;
            let x_3590 : f32 = u_xlat88;
            u_xlat88 = ((x_3587 * x_3588) + x_3590);
            let x_3593 : vec4<f32> = u_xlat17;
            let x_3594 : vec2<f32> = vec2<f32>(x_3593.x, x_3593.y);
            let x_3596 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3594.x, x_3594.y, x_3596);
            let x_3603 : vec3<f32> = txVec55;
            let x_3605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3603.xy, x_3603.z);
            u_xlat89 = x_3605;
            let x_3607 : f32 = u_xlat13.x;
            let x_3608 : f32 = u_xlat89;
            let x_3610 : f32 = u_xlat88;
            u_xlat88 = ((x_3607 * x_3608) + x_3610);
            let x_3613 : vec4<f32> = u_xlat17;
            let x_3614 : vec2<f32> = vec2<f32>(x_3613.z, x_3613.w);
            let x_3616 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3614.x, x_3614.y, x_3616);
            let x_3623 : vec3<f32> = txVec56;
            let x_3625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3623.xy, x_3623.z);
            u_xlat89 = x_3625;
            let x_3627 : f32 = u_xlat13.y;
            let x_3628 : f32 = u_xlat89;
            let x_3630 : f32 = u_xlat88;
            u_xlat88 = ((x_3627 * x_3628) + x_3630);
            let x_3633 : vec2<f32> = u_xlat67;
            let x_3635 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3633.x, x_3633.y, x_3635);
            let x_3642 : vec3<f32> = txVec57;
            let x_3644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3642.xy, x_3642.z);
            u_xlat89 = x_3644;
            let x_3646 : f32 = u_xlat13.z;
            let x_3647 : f32 = u_xlat89;
            let x_3649 : f32 = u_xlat88;
            u_xlat88 = ((x_3646 * x_3647) + x_3649);
            let x_3652 : vec4<f32> = u_xlat12;
            let x_3653 : vec2<f32> = vec2<f32>(x_3652.x, x_3652.y);
            let x_3655 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
            let x_3662 : vec3<f32> = txVec58;
            let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
            u_xlat89 = x_3664;
            let x_3666 : f32 = u_xlat13.w;
            let x_3667 : f32 = u_xlat89;
            let x_3669 : f32 = u_xlat88;
            u_xlat87 = ((x_3666 * x_3667) + x_3669);
          }
        }
      } else {
        let x_3673 : vec4<f32> = u_xlat11;
        let x_3674 : vec2<f32> = vec2<f32>(x_3673.x, x_3673.y);
        let x_3676 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3674.x, x_3674.y, x_3676);
        let x_3683 : vec3<f32> = txVec59;
        let x_3685 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3683.xy, x_3683.z);
        u_xlat87 = x_3685;
      }
      let x_3686 : i32 = u_xlati56;
      let x_3688 : f32 = x_208.x_AdditionalShadowParams[x_3686].x;
      u_xlat88 = (1.0f + -(x_3688));
      let x_3691 : f32 = u_xlat87;
      let x_3692 : i32 = u_xlati56;
      let x_3694 : f32 = x_208.x_AdditionalShadowParams[x_3692].x;
      let x_3696 : f32 = u_xlat88;
      u_xlat87 = ((x_3691 * x_3694) + x_3696);
      let x_3699 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3699);
      let x_3702 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3702 >= 1.0f);
      let x_3705 : bool = u_xlatb88;
      let x_3707 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3705 | x_3707);
      let x_3709 : bool = u_xlatb88;
      let x_3710 : f32 = u_xlat87;
      u_xlat87 = select(x_3710, 1.0f, x_3709);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3713 : f32 = u_xlat87;
    u_xlat88 = (-(x_3713) + 1.0f);
    let x_3716 : f32 = u_xlat80;
    let x_3717 : f32 = u_xlat88;
    let x_3719 : f32 = u_xlat87;
    u_xlat87 = ((x_3716 * x_3717) + x_3719);
    let x_3722 : i32 = u_xlati56;
    u_xlati88 = (1i << bitcast<u32>((x_3722 & 31i)));
    let x_3726 : i32 = u_xlati88;
    let x_3729 : f32 = x_1843.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3726) & bitcast<u32>(x_3729)));
    let x_3733 : i32 = u_xlati88;
    if ((x_3733 != 0i)) {
      let x_3737 : i32 = u_xlati56;
      let x_3739 : f32 = x_1843.x_AdditionalLightsLightTypes[x_3737].el;
      u_xlati88 = i32(x_3739);
      let x_3742 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3742 != 0i));
      let x_3746 : i32 = u_xlati56;
      u_xlati37 = (x_3746 << bitcast<u32>(2i));
      let x_3748 : i32 = u_xlati11;
      if ((x_3748 != 0i)) {
        let x_3752 : vec3<f32> = vs_TEXCOORD1;
        let x_3754 : i32 = u_xlati37;
        let x_3757 : i32 = u_xlati37;
        let x_3761 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3754 + 1i) / 4i)][((x_3757 + 1i) % 4i)];
        let x_3763 : vec3<f32> = (vec3<f32>(x_3752.y, x_3752.y, x_3752.y) * vec3<f32>(x_3761.x, x_3761.y, x_3761.w));
        let x_3764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3763.x, x_3764.y, x_3763.y, x_3763.z);
        let x_3766 : i32 = u_xlati37;
        let x_3768 : i32 = u_xlati37;
        let x_3771 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[(x_3766 / 4i)][(x_3768 % 4i)];
        let x_3773 : vec3<f32> = vs_TEXCOORD1;
        let x_3776 : vec4<f32> = u_xlat11;
        let x_3778 : vec3<f32> = ((vec3<f32>(x_3771.x, x_3771.y, x_3771.w) * vec3<f32>(x_3773.x, x_3773.x, x_3773.x)) + vec3<f32>(x_3776.x, x_3776.z, x_3776.w));
        let x_3779 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3778.x, x_3779.y, x_3778.y, x_3778.z);
        let x_3781 : i32 = u_xlati37;
        let x_3784 : i32 = u_xlati37;
        let x_3788 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3781 + 2i) / 4i)][((x_3784 + 2i) % 4i)];
        let x_3790 : vec3<f32> = vs_TEXCOORD1;
        let x_3793 : vec4<f32> = u_xlat11;
        let x_3795 : vec3<f32> = ((vec3<f32>(x_3788.x, x_3788.y, x_3788.w) * vec3<f32>(x_3790.z, x_3790.z, x_3790.z)) + vec3<f32>(x_3793.x, x_3793.z, x_3793.w));
        let x_3796 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3795.x, x_3796.y, x_3795.y, x_3795.z);
        let x_3798 : vec4<f32> = u_xlat11;
        let x_3800 : i32 = u_xlati37;
        let x_3803 : i32 = u_xlati37;
        let x_3807 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3800 + 3i) / 4i)][((x_3803 + 3i) % 4i)];
        let x_3809 : vec3<f32> = (vec3<f32>(x_3798.x, x_3798.z, x_3798.w) + vec3<f32>(x_3807.x, x_3807.y, x_3807.w));
        let x_3810 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3809.x, x_3810.y, x_3809.y, x_3809.z);
        let x_3812 : vec4<f32> = u_xlat11;
        let x_3814 : vec4<f32> = u_xlat11;
        let x_3816 : vec2<f32> = (vec2<f32>(x_3812.x, x_3812.z) / vec2<f32>(x_3814.w, x_3814.w));
        let x_3817 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3816.x, x_3817.y, x_3816.y, x_3817.w);
        let x_3819 : vec4<f32> = u_xlat11;
        let x_3822 : vec2<f32> = ((vec2<f32>(x_3819.x, x_3819.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3823 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3822.x, x_3823.y, x_3822.y, x_3823.w);
        let x_3825 : vec4<f32> = u_xlat11;
        let x_3829 : vec2<f32> = clamp(vec2<f32>(x_3825.x, x_3825.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3830 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3829.x, x_3830.y, x_3829.y, x_3830.w);
        let x_3832 : i32 = u_xlati56;
        let x_3834 : vec4<f32> = x_1843.x_AdditionalLightsCookieAtlasUVRects[x_3832];
        let x_3836 : vec4<f32> = u_xlat11;
        let x_3839 : i32 = u_xlati56;
        let x_3841 : vec4<f32> = x_1843.x_AdditionalLightsCookieAtlasUVRects[x_3839];
        let x_3843 : vec2<f32> = ((vec2<f32>(x_3834.x, x_3834.y) * vec2<f32>(x_3836.x, x_3836.z)) + vec2<f32>(x_3841.z, x_3841.w));
        let x_3844 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3843.x, x_3844.y, x_3843.y, x_3844.w);
      } else {
        let x_3847 : i32 = u_xlati88;
        u_xlatb88 = (x_3847 == 1i);
        let x_3849 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3849);
        let x_3851 : i32 = u_xlati88;
        if ((x_3851 != 0i)) {
          let x_3855 : vec3<f32> = vs_TEXCOORD1;
          let x_3857 : i32 = u_xlati37;
          let x_3860 : i32 = u_xlati37;
          let x_3864 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3857 + 1i) / 4i)][((x_3860 + 1i) % 4i)];
          let x_3866 : vec2<f32> = (vec2<f32>(x_3855.y, x_3855.y) * vec2<f32>(x_3864.x, x_3864.y));
          let x_3867 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3866.x, x_3866.y, x_3867.z, x_3867.w);
          let x_3869 : i32 = u_xlati37;
          let x_3871 : i32 = u_xlati37;
          let x_3874 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[(x_3869 / 4i)][(x_3871 % 4i)];
          let x_3876 : vec3<f32> = vs_TEXCOORD1;
          let x_3879 : vec4<f32> = u_xlat12;
          let x_3881 : vec2<f32> = ((vec2<f32>(x_3874.x, x_3874.y) * vec2<f32>(x_3876.x, x_3876.x)) + vec2<f32>(x_3879.x, x_3879.y));
          let x_3882 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3881.x, x_3881.y, x_3882.z, x_3882.w);
          let x_3884 : i32 = u_xlati37;
          let x_3887 : i32 = u_xlati37;
          let x_3891 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3884 + 2i) / 4i)][((x_3887 + 2i) % 4i)];
          let x_3893 : vec3<f32> = vs_TEXCOORD1;
          let x_3896 : vec4<f32> = u_xlat12;
          let x_3898 : vec2<f32> = ((vec2<f32>(x_3891.x, x_3891.y) * vec2<f32>(x_3893.z, x_3893.z)) + vec2<f32>(x_3896.x, x_3896.y));
          let x_3899 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3898.x, x_3898.y, x_3899.z, x_3899.w);
          let x_3901 : vec4<f32> = u_xlat12;
          let x_3903 : i32 = u_xlati37;
          let x_3906 : i32 = u_xlati37;
          let x_3910 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3903 + 3i) / 4i)][((x_3906 + 3i) % 4i)];
          let x_3912 : vec2<f32> = (vec2<f32>(x_3901.x, x_3901.y) + vec2<f32>(x_3910.x, x_3910.y));
          let x_3913 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3912.x, x_3912.y, x_3913.z, x_3913.w);
          let x_3915 : vec4<f32> = u_xlat12;
          let x_3918 : vec2<f32> = ((vec2<f32>(x_3915.x, x_3915.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3919 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3918.x, x_3918.y, x_3919.z, x_3919.w);
          let x_3921 : vec4<f32> = u_xlat12;
          let x_3923 : vec2<f32> = fract(vec2<f32>(x_3921.x, x_3921.y));
          let x_3924 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3923.x, x_3923.y, x_3924.z, x_3924.w);
          let x_3926 : i32 = u_xlati56;
          let x_3928 : vec4<f32> = x_1843.x_AdditionalLightsCookieAtlasUVRects[x_3926];
          let x_3930 : vec4<f32> = u_xlat12;
          let x_3933 : i32 = u_xlati56;
          let x_3935 : vec4<f32> = x_1843.x_AdditionalLightsCookieAtlasUVRects[x_3933];
          let x_3937 : vec2<f32> = ((vec2<f32>(x_3928.x, x_3928.y) * vec2<f32>(x_3930.x, x_3930.y)) + vec2<f32>(x_3935.z, x_3935.w));
          let x_3938 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3937.x, x_3938.y, x_3937.y, x_3938.w);
        } else {
          let x_3941 : vec3<f32> = vs_TEXCOORD1;
          let x_3943 : i32 = u_xlati37;
          let x_3946 : i32 = u_xlati37;
          let x_3950 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3943 + 1i) / 4i)][((x_3946 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3941.y, x_3941.y, x_3941.y, x_3941.y) * x_3950);
          let x_3952 : i32 = u_xlati37;
          let x_3954 : i32 = u_xlati37;
          let x_3957 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[(x_3952 / 4i)][(x_3954 % 4i)];
          let x_3958 : vec3<f32> = vs_TEXCOORD1;
          let x_3961 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3957 * vec4<f32>(x_3958.x, x_3958.x, x_3958.x, x_3958.x)) + x_3961);
          let x_3963 : i32 = u_xlati37;
          let x_3966 : i32 = u_xlati37;
          let x_3970 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3963 + 2i) / 4i)][((x_3966 + 2i) % 4i)];
          let x_3971 : vec3<f32> = vs_TEXCOORD1;
          let x_3974 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3970 * vec4<f32>(x_3971.z, x_3971.z, x_3971.z, x_3971.z)) + x_3974);
          let x_3976 : vec4<f32> = u_xlat12;
          let x_3977 : i32 = u_xlati37;
          let x_3980 : i32 = u_xlati37;
          let x_3984 : vec4<f32> = x_1843.x_AdditionalLightsWorldToLights[((x_3977 + 3i) / 4i)][((x_3980 + 3i) % 4i)];
          u_xlat12 = (x_3976 + x_3984);
          let x_3986 : vec4<f32> = u_xlat12;
          let x_3988 : vec4<f32> = u_xlat12;
          let x_3990 : vec3<f32> = (vec3<f32>(x_3986.x, x_3986.y, x_3986.z) / vec3<f32>(x_3988.w, x_3988.w, x_3988.w));
          let x_3991 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3990.x, x_3990.y, x_3990.z, x_3991.w);
          let x_3993 : vec4<f32> = u_xlat12;
          let x_3995 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3993.x, x_3993.y, x_3993.z), vec3<f32>(x_3995.x, x_3995.y, x_3995.z));
          let x_3998 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3998);
          let x_4000 : f32 = u_xlat88;
          let x_4002 : vec4<f32> = u_xlat12;
          let x_4004 : vec3<f32> = (vec3<f32>(x_4000, x_4000, x_4000) * vec3<f32>(x_4002.x, x_4002.y, x_4002.z));
          let x_4005 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4004.x, x_4004.y, x_4004.z, x_4005.w);
          let x_4007 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_4007.x, x_4007.y, x_4007.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4012 : f32 = u_xlat88;
          u_xlat88 = max(x_4012, 0.00000099999999747524f);
          let x_4015 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_4015);
          let x_4017 : f32 = u_xlat88;
          let x_4019 : vec4<f32> = u_xlat12;
          let x_4021 : vec3<f32> = (vec3<f32>(x_4017, x_4017, x_4017) * vec3<f32>(x_4019.z, x_4019.x, x_4019.y));
          let x_4022 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4021.x, x_4021.y, x_4021.z, x_4022.w);
          let x_4025 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4025);
          let x_4029 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4029, 0.0f, 1.0f);
          let x_4034 : vec4<f32> = u_xlat13;
          let x_4036 : vec4<bool> = (vec4<f32>(x_4034.y, x_4034.y, x_4034.z, x_4034.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4037 : vec2<bool> = vec2<bool>(x_4036.x, x_4036.z);
          let x_4038 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_4037.x, x_4038.y, x_4037.y);
          let x_4041 : bool = u_xlatb37.x;
          if (x_4041) {
            let x_4046 : f32 = u_xlat13.x;
            x_4042 = x_4046;
          } else {
            let x_4049 : f32 = u_xlat13.x;
            x_4042 = -(x_4049);
          }
          let x_4051 : f32 = x_4042;
          u_xlat37.x = x_4051;
          let x_4054 : bool = u_xlatb37.z;
          if (x_4054) {
            let x_4059 : f32 = u_xlat13.x;
            x_4055 = x_4059;
          } else {
            let x_4062 : f32 = u_xlat13.x;
            x_4055 = -(x_4062);
          }
          let x_4064 : f32 = x_4055;
          u_xlat37.z = x_4064;
          let x_4066 : vec4<f32> = u_xlat12;
          let x_4068 : f32 = u_xlat88;
          let x_4071 : vec3<f32> = u_xlat37;
          let x_4073 : vec2<f32> = ((vec2<f32>(x_4066.x, x_4066.y) * vec2<f32>(x_4068, x_4068)) + vec2<f32>(x_4071.x, x_4071.z));
          let x_4074 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4073.x, x_4074.y, x_4073.y);
          let x_4076 : vec3<f32> = u_xlat37;
          let x_4079 : vec2<f32> = ((vec2<f32>(x_4076.x, x_4076.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4080 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4079.x, x_4080.y, x_4079.y);
          let x_4082 : vec3<f32> = u_xlat37;
          let x_4086 : vec2<f32> = clamp(vec2<f32>(x_4082.x, x_4082.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4087 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4086.x, x_4087.y, x_4086.y);
          let x_4089 : i32 = u_xlati56;
          let x_4091 : vec4<f32> = x_1843.x_AdditionalLightsCookieAtlasUVRects[x_4089];
          let x_4093 : vec3<f32> = u_xlat37;
          let x_4096 : i32 = u_xlati56;
          let x_4098 : vec4<f32> = x_1843.x_AdditionalLightsCookieAtlasUVRects[x_4096];
          let x_4100 : vec2<f32> = ((vec2<f32>(x_4091.x, x_4091.y) * vec2<f32>(x_4093.x, x_4093.z)) + vec2<f32>(x_4098.z, x_4098.w));
          let x_4101 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4100.x, x_4101.y, x_4100.y, x_4101.w);
        }
      }
      let x_4108 : vec4<f32> = u_xlat11;
      let x_4110 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4108.x, x_4108.z), 0.0f);
      u_xlat11 = x_4110;
      let x_4112 : bool = u_xlatb4.y;
      if (x_4112) {
        let x_4117 : f32 = u_xlat11.w;
        x_4113 = x_4117;
      } else {
        let x_4120 : f32 = u_xlat11.x;
        x_4113 = x_4120;
      }
      let x_4121 : f32 = x_4113;
      u_xlat88 = x_4121;
      let x_4123 : bool = u_xlatb4.x;
      if (x_4123) {
        let x_4127 : vec4<f32> = u_xlat11;
        x_4124 = vec3<f32>(x_4127.x, x_4127.y, x_4127.z);
      } else {
        let x_4130 : f32 = u_xlat88;
        x_4124 = vec3<f32>(x_4130, x_4130, x_4130);
      }
      let x_4132 : vec3<f32> = x_4124;
      let x_4133 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4132.x, x_4132.y, x_4132.z, x_4133.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4139 : vec4<f32> = u_xlat11;
    let x_4141 : i32 = u_xlati56;
    let x_4143 : vec4<f32> = x_2274.x_AdditionalLightsColor[x_4141];
    let x_4145 : vec3<f32> = (vec3<f32>(x_4139.x, x_4139.y, x_4139.z) * vec3<f32>(x_4143.x, x_4143.y, x_4143.z));
    let x_4146 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4145.x, x_4145.y, x_4145.z, x_4146.w);
    let x_4148 : f32 = u_xlat84;
    let x_4149 : f32 = u_xlat87;
    u_xlat56 = (x_4148 * x_4149);
    let x_4151 : vec3<f32> = u_xlat2;
    let x_4152 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_4151, vec3<f32>(x_4152.x, x_4152.y, x_4152.z));
    let x_4155 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4155, 0.0f, 1.0f);
    let x_4157 : f32 = u_xlat56;
    let x_4158 : f32 = u_xlat84;
    u_xlat56 = (x_4157 * x_4158);
    let x_4160 : f32 = u_xlat56;
    let x_4162 : vec4<f32> = u_xlat11;
    let x_4164 : vec3<f32> = (vec3<f32>(x_4160, x_4160, x_4160) * vec3<f32>(x_4162.x, x_4162.y, x_4162.z));
    let x_4165 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4164.x, x_4164.y, x_4164.z, x_4165.w);
    let x_4167 : vec4<f32> = u_xlat9;
    let x_4169 : f32 = u_xlat85;
    let x_4172 : vec3<f32> = u_xlat3;
    let x_4173 : vec3<f32> = ((vec3<f32>(x_4167.x, x_4167.y, x_4167.z) * vec3<f32>(x_4169, x_4169, x_4169)) + x_4172);
    let x_4174 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4173.x, x_4173.y, x_4173.z, x_4174.w);
    let x_4176 : vec4<f32> = u_xlat9;
    let x_4178 : vec4<f32> = u_xlat9;
    u_xlat56 = dot(vec3<f32>(x_4176.x, x_4176.y, x_4176.z), vec3<f32>(x_4178.x, x_4178.y, x_4178.z));
    let x_4181 : f32 = u_xlat56;
    u_xlat56 = max(x_4181, 1.17549435e-38f);
    let x_4183 : f32 = u_xlat56;
    u_xlat56 = inverseSqrt(x_4183);
    let x_4185 : f32 = u_xlat56;
    let x_4187 : vec4<f32> = u_xlat9;
    let x_4189 : vec3<f32> = (vec3<f32>(x_4185, x_4185, x_4185) * vec3<f32>(x_4187.x, x_4187.y, x_4187.z));
    let x_4190 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4189.x, x_4189.y, x_4189.z, x_4190.w);
    let x_4192 : vec3<f32> = u_xlat2;
    let x_4193 : vec4<f32> = u_xlat9;
    u_xlat56 = dot(x_4192, vec3<f32>(x_4193.x, x_4193.y, x_4193.z));
    let x_4196 : f32 = u_xlat56;
    u_xlat56 = clamp(x_4196, 0.0f, 1.0f);
    let x_4198 : vec4<f32> = u_xlat10;
    let x_4200 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4198.x, x_4198.y, x_4198.z), vec3<f32>(x_4200.x, x_4200.y, x_4200.z));
    let x_4203 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4203, 0.0f, 1.0f);
    let x_4205 : f32 = u_xlat56;
    let x_4206 : f32 = u_xlat56;
    u_xlat56 = (x_4205 * x_4206);
    let x_4208 : f32 = u_xlat56;
    let x_4210 : f32 = u_xlat8.x;
    u_xlat56 = ((x_4208 * x_4210) + 1.00001001358032226562f);
    let x_4213 : f32 = u_xlat84;
    let x_4214 : f32 = u_xlat84;
    u_xlat84 = (x_4213 * x_4214);
    let x_4216 : f32 = u_xlat56;
    let x_4217 : f32 = u_xlat56;
    u_xlat56 = (x_4216 * x_4217);
    let x_4219 : f32 = u_xlat84;
    u_xlat84 = max(x_4219, 0.10000000149011611938f);
    let x_4221 : f32 = u_xlat56;
    let x_4222 : f32 = u_xlat84;
    u_xlat56 = (x_4221 * x_4222);
    let x_4224 : f32 = u_xlat83;
    let x_4225 : f32 = u_xlat56;
    u_xlat56 = (x_4224 * x_4225);
    let x_4227 : f32 = u_xlat82;
    let x_4228 : f32 = u_xlat56;
    u_xlat56 = (x_4227 / x_4228);
    let x_4230 : vec4<f32> = u_xlat0;
    let x_4232 : f32 = u_xlat56;
    let x_4235 : vec3<f32> = u_xlat27;
    let x_4236 : vec3<f32> = ((vec3<f32>(x_4230.x, x_4230.y, x_4230.z) * vec3<f32>(x_4232, x_4232, x_4232)) + x_4235);
    let x_4237 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4236.x, x_4236.y, x_4236.z, x_4237.w);
    let x_4239 : vec4<f32> = u_xlat9;
    let x_4241 : vec4<f32> = u_xlat11;
    let x_4244 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4239.x, x_4239.y, x_4239.z) * vec3<f32>(x_4241.x, x_4241.y, x_4241.z)) + x_4244);

    continuing {
      let x_4246 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4246 + bitcast<u32>(1i));
    }
  }
  let x_4248 : vec4<f32> = u_xlat7;
  let x_4250 : vec4<f32> = u_xlat6;
  let x_4253 : vec4<f32> = u_xlat5;
  let x_4255 : vec3<f32> = ((vec3<f32>(x_4248.x, x_4248.y, x_4248.z) * vec3<f32>(x_4250.x, x_4250.y, x_4250.z)) + vec3<f32>(x_4253.x, x_4253.y, x_4253.z));
  let x_4256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4255.x, x_4255.y, x_4255.z, x_4256.w);
  let x_4260 : vec3<f32> = u_xlat34;
  let x_4261 : vec4<f32> = u_xlat0;
  let x_4263 : vec3<f32> = (x_4260 + vec3<f32>(x_4261.x, x_4261.y, x_4261.z));
  let x_4264 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4263.x, x_4263.y, x_4263.z, x_4264.w);
  let x_4268 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_4268 == 1.0f);
  let x_4270 : bool = u_xlatb0;
  if (x_4270) {
    let x_4275 : f32 = u_xlat1.x;
    x_4271 = x_4275;
  } else {
    x_4271 = 1.0f;
  }
  let x_4277 : f32 = x_4271;
  SV_Target0.w = x_4277;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}


