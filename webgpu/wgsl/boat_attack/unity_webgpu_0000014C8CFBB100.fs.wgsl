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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb72 : bool;

@group(1) @binding(4) var<uniform> x_307 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb4 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlatb27 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_1658 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati7 : i32;

var<private> u_xlati75 : i32;

@group(1) @binding(1) var<uniform> x_1958 : AdditionalLights;

var<private> u_xlat76 : f32;

var<private> u_xlati8 : i32;

var<private> u_xlatb31 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat54 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb77 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat77 : f32;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb54 : bool;

var<private> u_xlati31 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlati77 : i32;

var<private> u_xlatb33 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlatu74 : u32;

var<private> u_xlatb75 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_175 : vec3<f32>;
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
  var x_1742 : f32;
  var x_1754 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2109 : f32;
  var x_2120 : f32;
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
  var x_3452 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_3798 : f32;
  var x_3811 : f32;
  var x_3870 : f32;
  var x_3882 : vec3<f32>;
  var x_4040 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb24 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb24;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_137 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat24 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat24;
  let x_151 : vec3<f32> = u_xlat24;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat24;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat24 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_164 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat2.x = x_164;
  let x_167 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2.y = x_167;
  let x_171 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat2.z = x_171;
  let x_173 : bool = u_xlatb1;
  if (x_173) {
    let x_178 : vec3<f32> = u_xlat24;
    x_175 = x_178;
  } else {
    let x_180 : vec3<f32> = u_xlat2;
    x_175 = x_180;
  }
  let x_181 : vec3<f32> = x_175;
  u_xlat1 = x_181;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat70;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec3<f32> = u_xlat1;
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat70;
  u_xlat70 = max(x_196, 0.00006103515625f);
  let x_199 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_199);
  let x_203 : f32 = vs_TEXCOORD1.y;
  let x_205 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat71 = (x_203 * x_205);
  let x_208 : f32 = x_45.unity_MatrixV[0i].z;
  let x_210 : f32 = vs_TEXCOORD1.x;
  let x_212 : f32 = u_xlat71;
  u_xlat71 = ((x_208 * x_210) + x_212);
  let x_215 : f32 = x_45.unity_MatrixV[2i].z;
  let x_217 : f32 = vs_TEXCOORD1.z;
  let x_219 : f32 = u_xlat71;
  u_xlat71 = ((x_215 * x_217) + x_219);
  let x_221 : f32 = u_xlat71;
  let x_224 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat71 = (x_221 + x_224);
  let x_226 : f32 = u_xlat71;
  let x_230 : f32 = x_45.x_ProjectionParams.y;
  u_xlat71 = (-(x_226) + -(x_230));
  let x_233 : f32 = u_xlat71;
  u_xlat71 = max(x_233, 0.0f);
  let x_235 : f32 = u_xlat71;
  let x_238 : f32 = x_45.unity_FogParams.x;
  u_xlat71 = (x_235 * x_238);
  let x_247 : vec2<f32> = vs_TEXCOORD7;
  let x_249 : f32 = x_45.x_GlobalMipBias.x;
  let x_250 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_247, x_249);
  u_xlat3 = x_250;
  let x_256 : vec2<f32> = vs_TEXCOORD7;
  let x_258 : f32 = x_45.x_GlobalMipBias.x;
  let x_259 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_256, x_258);
  let x_260 : vec3<f32> = vec3<f32>(x_259.x, x_259.y, x_259.z);
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat3;
  let x_267 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec3<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_270, vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_276 : f32 = u_xlat3.x;
  u_xlat3.x = (x_276 + 0.5f);
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = u_xlat4;
  let x_284 : vec3<f32> = (vec3<f32>(x_280.x, x_280.x, x_280.x) * vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_289 : f32 = u_xlat3.w;
  u_xlat72 = max(x_289, 0.00009999999747378752f);
  let x_292 : vec4<f32> = u_xlat3;
  let x_294 : f32 = u_xlat72;
  let x_296 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) / vec3<f32>(x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_310 : f32 = x_307.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_310);
  let x_312 : bool = u_xlatb72;
  if (x_312) {
    let x_316 : f32 = x_307.x_MainLightShadowParams.y;
    u_xlatb72 = (x_316 == 1.0f);
    let x_318 : bool = u_xlatb72;
    if (x_318) {
      let x_322 : vec4<f32> = vs_TEXCOORD6;
      let x_325 : vec4<f32> = x_307.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_322.x, x_322.y, x_322.x, x_322.y) + x_325);
      let x_328 : vec4<f32> = u_xlat4;
      let x_329 : vec2<f32> = vec2<f32>(x_328.x, x_328.y);
      let x_331 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_329.x, x_329.y, x_331);
      let x_344 : vec3<f32> = txVec0;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_344.xy, x_344.z);
      u_xlat5.x = x_346;
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.z, x_349.w);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_359 : vec3<f32> = txVec1;
      let x_361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_359.xy, x_359.z);
      u_xlat5.y = x_361;
      let x_363 : vec4<f32> = vs_TEXCOORD6;
      let x_366 : vec4<f32> = x_307.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_363.x, x_363.y, x_363.x, x_363.y) + x_366);
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec2;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.z = x_381;
      let x_384 : vec4<f32> = u_xlat4;
      let x_385 : vec2<f32> = vec2<f32>(x_384.z, x_384.w);
      let x_387 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_385.x, x_385.y, x_387);
      let x_394 : vec3<f32> = txVec3;
      let x_396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_394.xy, x_394.z);
      u_xlat5.w = x_396;
      let x_398 : vec4<f32> = u_xlat5;
      u_xlat72 = dot(x_398, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_405 : f32 = x_307.x_MainLightShadowParams.y;
      u_xlatb4 = (x_405 == 2.0f);
      let x_408 : bool = u_xlatb4;
      if (x_408) {
        let x_411 : vec4<f32> = vs_TEXCOORD6;
        let x_414 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_418 : vec2<f32> = ((vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414.z, x_414.w)) + vec2<f32>(0.5f, 0.5f));
        let x_419 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_421 : vec4<f32> = u_xlat4;
        let x_423 : vec2<f32> = floor(vec2<f32>(x_421.x, x_421.y));
        let x_424 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
        let x_428 : vec4<f32> = vs_TEXCOORD6;
        let x_431 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_434 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_428.x, x_428.y) * vec2<f32>(x_431.z, x_431.w)) + -(vec2<f32>(x_434.x, x_434.y)));
        let x_438 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_438.x, x_438.x, x_438.y, x_438.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_443 : vec4<f32> = u_xlat5;
        let x_445 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_443.x, x_443.x, x_443.z, x_443.z) * vec4<f32>(x_445.x, x_445.x, x_445.z, x_445.z));
        let x_448 : vec4<f32> = u_xlat6;
        let x_452 : vec2<f32> = (vec2<f32>(x_448.y, x_448.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_453 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_452.x, x_453.y, x_452.y, x_453.w);
        let x_455 : vec4<f32> = u_xlat6;
        let x_458 : vec2<f32> = u_xlat50;
        let x_460 : vec2<f32> = ((vec2<f32>(x_455.x, x_455.z) * vec2<f32>(0.5f, 0.5f)) + -(x_458));
        let x_461 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
        let x_464 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_464) + vec2<f32>(1.0f, 1.0f));
        let x_469 : vec2<f32> = u_xlat50;
        let x_471 : vec2<f32> = min(x_469, vec2<f32>(0.0f, 0.0f));
        let x_472 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_474 : vec4<f32> = u_xlat7;
        let x_477 : vec4<f32> = u_xlat7;
        let x_480 : vec2<f32> = u_xlat52;
        let x_481 : vec2<f32> = ((-(vec2<f32>(x_474.x, x_474.y)) * vec2<f32>(x_477.x, x_477.y)) + x_480);
        let x_482 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_484, vec2<f32>(0.0f, 0.0f));
        let x_486 : vec2<f32> = u_xlat50;
        let x_488 : vec2<f32> = u_xlat50;
        let x_490 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_486) * x_488) + vec2<f32>(x_490.y, x_490.w));
        let x_493 : vec4<f32> = u_xlat7;
        let x_495 : vec2<f32> = (vec2<f32>(x_493.x, x_493.y) + vec2<f32>(1.0f, 1.0f));
        let x_496 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_498 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_498 + vec2<f32>(1.0f, 1.0f));
        let x_501 : vec4<f32> = u_xlat6;
        let x_505 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_506 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec2<f32> = u_xlat52;
        let x_509 : vec2<f32> = (x_508 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
        let x_512 : vec4<f32> = u_xlat7;
        let x_514 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_515 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_518 : vec2<f32> = u_xlat50;
        let x_519 : vec2<f32> = (x_518 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_520 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_522.y, x_522.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_526 : f32 = u_xlat7.x;
        u_xlat8.z = x_526;
        let x_529 : f32 = u_xlat50.x;
        u_xlat8.w = x_529;
        let x_532 : f32 = u_xlat9.x;
        u_xlat6.z = x_532;
        let x_535 : f32 = u_xlat5.x;
        u_xlat6.w = x_535;
        let x_538 : vec4<f32> = u_xlat6;
        let x_540 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_538.z, x_538.w, x_538.x, x_538.z) + vec4<f32>(x_540.z, x_540.w, x_540.x, x_540.z));
        let x_544 : f32 = u_xlat8.y;
        u_xlat7.z = x_544;
        let x_547 : f32 = u_xlat50.y;
        u_xlat7.w = x_547;
        let x_550 : f32 = u_xlat6.y;
        u_xlat9.z = x_550;
        let x_553 : f32 = u_xlat5.z;
        u_xlat9.w = x_553;
        let x_555 : vec4<f32> = u_xlat7;
        let x_557 : vec4<f32> = u_xlat9;
        let x_559 : vec3<f32> = (vec3<f32>(x_555.z, x_555.y, x_555.w) + vec3<f32>(x_557.z, x_557.y, x_557.w));
        let x_560 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat6;
        let x_564 : vec4<f32> = u_xlat10;
        let x_566 : vec3<f32> = (vec3<f32>(x_562.x, x_562.z, x_562.w) / vec3<f32>(x_564.z, x_564.w, x_564.y));
        let x_567 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat6;
        let x_574 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_577 : vec4<f32> = u_xlat9;
        let x_579 : vec4<f32> = u_xlat5;
        let x_581 : vec3<f32> = (vec3<f32>(x_577.z, x_577.y, x_577.w) / vec3<f32>(x_579.x, x_579.y, x_579.z));
        let x_582 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat7;
        let x_586 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_589 : vec4<f32> = u_xlat6;
        let x_592 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_594 : vec3<f32> = (vec3<f32>(x_589.y, x_589.x, x_589.z) * vec3<f32>(x_592.x, x_592.x, x_592.x));
        let x_595 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
        let x_597 : vec4<f32> = u_xlat7;
        let x_600 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_602 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_600.y, x_600.y, x_600.y));
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
        let x_606 : f32 = u_xlat7.x;
        u_xlat6.w = x_606;
        let x_608 : vec4<f32> = u_xlat4;
        let x_611 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) * vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y)) + vec4<f32>(x_614.y, x_614.w, x_614.x, x_614.w));
        let x_617 : vec4<f32> = u_xlat4;
        let x_620 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_617.x, x_617.y) * vec2<f32>(x_620.x, x_620.y)) + vec2<f32>(x_623.z, x_623.w));
        let x_627 : f32 = u_xlat6.y;
        u_xlat7.w = x_627;
        let x_629 : vec4<f32> = u_xlat7;
        let x_630 : vec2<f32> = vec2<f32>(x_629.y, x_629.z);
        let x_631 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_631.x, x_630.x, x_631.z, x_630.y);
        let x_633 : vec4<f32> = u_xlat4;
        let x_636 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_639 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_633.x, x_633.y, x_633.x, x_633.y) * vec4<f32>(x_636.x, x_636.y, x_636.x, x_636.y)) + vec4<f32>(x_639.x, x_639.y, x_639.z, x_639.y));
        let x_642 : vec4<f32> = u_xlat4;
        let x_645 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_648 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y) * vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y)) + vec4<f32>(x_648.w, x_648.y, x_648.w, x_648.z));
        let x_651 : vec4<f32> = u_xlat4;
        let x_654 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_657 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y) * vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y)) + vec4<f32>(x_657.x, x_657.w, x_657.z, x_657.w));
        let x_661 : vec4<f32> = u_xlat5;
        let x_663 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_661.x, x_661.x, x_661.x, x_661.y) * vec4<f32>(x_663.z, x_663.w, x_663.y, x_663.z));
        let x_667 : vec4<f32> = u_xlat5;
        let x_669 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_667.y, x_667.y, x_667.z, x_667.z) * x_669);
        let x_672 : f32 = u_xlat5.z;
        let x_674 : f32 = u_xlat10.y;
        u_xlat4.x = (x_672 * x_674);
        let x_678 : vec4<f32> = u_xlat8;
        let x_679 : vec2<f32> = vec2<f32>(x_678.x, x_678.y);
        let x_681 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_679.x, x_679.y, x_681);
        let x_689 : vec3<f32> = txVec4;
        let x_691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_689.xy, x_689.z);
        u_xlat27.x = x_691;
        let x_694 : vec4<f32> = u_xlat8;
        let x_695 : vec2<f32> = vec2<f32>(x_694.z, x_694.w);
        let x_697 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_695.x, x_695.y, x_697);
        let x_704 : vec3<f32> = txVec5;
        let x_706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_704.xy, x_704.z);
        u_xlat5.x = x_706;
        let x_709 : f32 = u_xlat5.x;
        let x_711 : f32 = u_xlat11.y;
        u_xlat5.x = (x_709 * x_711);
        let x_715 : f32 = u_xlat11.x;
        let x_717 : f32 = u_xlat27.x;
        let x_720 : f32 = u_xlat5.x;
        u_xlat27.x = ((x_715 * x_717) + x_720);
        let x_724 : vec2<f32> = u_xlat50;
        let x_726 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_724.x, x_724.y, x_726);
        let x_733 : vec3<f32> = txVec6;
        let x_735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_733.xy, x_733.z);
        u_xlat50.x = x_735;
        let x_738 : f32 = u_xlat11.z;
        let x_740 : f32 = u_xlat50.x;
        let x_743 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_738 * x_740) + x_743);
        let x_747 : vec4<f32> = u_xlat7;
        let x_748 : vec2<f32> = vec2<f32>(x_747.x, x_747.y);
        let x_750 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_748.x, x_748.y, x_750);
        let x_757 : vec3<f32> = txVec7;
        let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_757.xy, x_757.z);
        u_xlat50.x = x_759;
        let x_762 : f32 = u_xlat11.w;
        let x_764 : f32 = u_xlat50.x;
        let x_767 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_762 * x_764) + x_767);
        let x_771 : vec4<f32> = u_xlat9;
        let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
        let x_774 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec8;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat50.x = x_783;
        let x_786 : f32 = u_xlat12.x;
        let x_788 : f32 = u_xlat50.x;
        let x_791 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_786 * x_788) + x_791);
        let x_795 : vec4<f32> = u_xlat9;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec9;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat50.x = x_807;
        let x_810 : f32 = u_xlat12.y;
        let x_812 : f32 = u_xlat50.x;
        let x_815 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_810 * x_812) + x_815);
        let x_819 : vec4<f32> = u_xlat7;
        let x_820 : vec2<f32> = vec2<f32>(x_819.z, x_819.w);
        let x_822 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_820.x, x_820.y, x_822);
        let x_829 : vec3<f32> = txVec10;
        let x_831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_829.xy, x_829.z);
        u_xlat50.x = x_831;
        let x_834 : f32 = u_xlat12.z;
        let x_836 : f32 = u_xlat50.x;
        let x_839 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_834 * x_836) + x_839);
        let x_843 : vec4<f32> = u_xlat6;
        let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
        let x_846 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec11;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
        u_xlat50.x = x_855;
        let x_858 : f32 = u_xlat12.w;
        let x_860 : f32 = u_xlat50.x;
        let x_863 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_858 * x_860) + x_863);
        let x_867 : vec4<f32> = u_xlat6;
        let x_868 : vec2<f32> = vec2<f32>(x_867.z, x_867.w);
        let x_870 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_868.x, x_868.y, x_870);
        let x_877 : vec3<f32> = txVec12;
        let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_877.xy, x_877.z);
        u_xlat50.x = x_879;
        let x_882 : f32 = u_xlat4.x;
        let x_884 : f32 = u_xlat50.x;
        let x_887 : f32 = u_xlat27.x;
        u_xlat72 = ((x_882 * x_884) + x_887);
      } else {
        let x_890 : vec4<f32> = vs_TEXCOORD6;
        let x_893 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_896 : vec2<f32> = ((vec2<f32>(x_890.x, x_890.y) * vec2<f32>(x_893.z, x_893.w)) + vec2<f32>(0.5f, 0.5f));
        let x_897 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_899 : vec4<f32> = u_xlat4;
        let x_901 : vec2<f32> = floor(vec2<f32>(x_899.x, x_899.y));
        let x_902 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_904 : vec4<f32> = vs_TEXCOORD6;
        let x_907 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_910 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_904.x, x_904.y) * vec2<f32>(x_907.z, x_907.w)) + -(vec2<f32>(x_910.x, x_910.y)));
        let x_914 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_914.x, x_914.x, x_914.y, x_914.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_917 : vec4<f32> = u_xlat5;
        let x_919 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_917.x, x_917.x, x_917.z, x_917.z) * vec4<f32>(x_919.x, x_919.x, x_919.z, x_919.z));
        let x_922 : vec4<f32> = u_xlat6;
        let x_926 : vec2<f32> = (vec2<f32>(x_922.y, x_922.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_927 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_927.x, x_926.x, x_927.z, x_926.y);
        let x_929 : vec4<f32> = u_xlat6;
        let x_932 : vec2<f32> = u_xlat50;
        let x_934 : vec2<f32> = ((vec2<f32>(x_929.x, x_929.z) * vec2<f32>(0.5f, 0.5f)) + -(x_932));
        let x_935 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_934.x, x_935.y, x_934.y, x_935.w);
        let x_937 : vec2<f32> = u_xlat50;
        let x_939 : vec2<f32> = (-(x_937) + vec2<f32>(1.0f, 1.0f));
        let x_940 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_942, vec2<f32>(0.0f, 0.0f));
        let x_944 : vec2<f32> = u_xlat52;
        let x_946 : vec2<f32> = u_xlat52;
        let x_948 : vec4<f32> = u_xlat6;
        let x_950 : vec2<f32> = ((-(x_944) * x_946) + vec2<f32>(x_948.x, x_948.y));
        let x_951 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_950.x, x_950.y, x_951.z, x_951.w);
        let x_953 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_953, vec2<f32>(0.0f, 0.0f));
        let x_956 : vec2<f32> = u_xlat52;
        let x_958 : vec2<f32> = u_xlat52;
        let x_960 : vec4<f32> = u_xlat5;
        let x_962 : vec2<f32> = ((-(x_956) * x_958) + vec2<f32>(x_960.y, x_960.w));
        let x_963 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_962.x, x_963.y, x_962.y);
        let x_965 : vec4<f32> = u_xlat6;
        let x_968 : vec2<f32> = (vec2<f32>(x_965.x, x_965.y) + vec2<f32>(2.0f, 2.0f));
        let x_969 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec3<f32> = u_xlat28;
        let x_973 : vec2<f32> = (vec2<f32>(x_971.x, x_971.z) + vec2<f32>(2.0f, 2.0f));
        let x_974 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_974.x, x_973.x, x_974.z, x_973.y);
        let x_977 : f32 = u_xlat5.y;
        u_xlat8.z = (x_977 * 0.08163200318813323975f);
        let x_981 : vec4<f32> = u_xlat5;
        let x_984 : vec3<f32> = (vec3<f32>(x_981.z, x_981.x, x_981.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
        let x_987 : vec4<f32> = u_xlat6;
        let x_990 : vec2<f32> = (vec2<f32>(x_987.x, x_987.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_991 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_994 : f32 = u_xlat9.y;
        u_xlat8.x = x_994;
        let x_996 : vec2<f32> = u_xlat50;
        let x_1003 : vec2<f32> = ((vec2<f32>(x_996.x, x_996.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1004 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1004.x, x_1003.x, x_1004.z, x_1003.y);
        let x_1006 : vec2<f32> = u_xlat50;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1006.x, x_1006.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1011 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1010.x, x_1011.y, x_1010.y, x_1011.w);
        let x_1014 : f32 = u_xlat5.x;
        u_xlat6.y = x_1014;
        let x_1017 : f32 = u_xlat7.y;
        u_xlat6.w = x_1017;
        let x_1019 : vec4<f32> = u_xlat6;
        let x_1020 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1019 + x_1020);
        let x_1022 : vec2<f32> = u_xlat50;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1022.y, x_1022.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1026 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1026.x, x_1025.x, x_1026.z, x_1025.y);
        let x_1028 : vec2<f32> = u_xlat50;
        let x_1031 : vec2<f32> = ((vec2<f32>(x_1028.y, x_1028.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1032 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1031.x, x_1032.y, x_1031.y, x_1032.w);
        let x_1035 : f32 = u_xlat5.y;
        u_xlat7.y = x_1035;
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1037 + x_1038);
        let x_1040 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1040 / x_1041);
        let x_1043 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1043 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1050 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1049 / x_1050);
        let x_1052 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1052 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1054 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1054.w, x_1054.x, x_1054.y, x_1054.z) * vec4<f32>(x_1057.x, x_1057.x, x_1057.x, x_1057.x));
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1063 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1060.x, x_1060.w, x_1060.y, x_1060.z) * vec4<f32>(x_1063.y, x_1063.y, x_1063.y, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat6;
        let x_1067 : vec3<f32> = vec3<f32>(x_1066.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1067.x, x_1068.y, x_1067.y, x_1067.z);
        let x_1071 : f32 = u_xlat7.x;
        u_xlat9.y = x_1071;
        let x_1073 : vec4<f32> = u_xlat4;
        let x_1076 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1079.y));
        let x_1082 : vec4<f32> = u_xlat4;
        let x_1085 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1082.x, x_1082.y) * vec2<f32>(x_1085.x, x_1085.y)) + vec2<f32>(x_1088.w, x_1088.y));
        let x_1092 : f32 = u_xlat9.y;
        u_xlat6.y = x_1092;
        let x_1095 : f32 = u_xlat7.z;
        u_xlat9.y = x_1095;
        let x_1097 : vec4<f32> = u_xlat4;
        let x_1100 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y) * vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y)) + vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat4;
        let x_1109 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat9;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.w, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1118 : f32 = u_xlat9.y;
        u_xlat6.z = x_1118;
        let x_1121 : vec4<f32> = u_xlat4;
        let x_1124 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y) * vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y)) + vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.z));
        let x_1131 : f32 = u_xlat7.w;
        u_xlat9.y = x_1131;
        let x_1134 : vec4<f32> = u_xlat4;
        let x_1137 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y) * vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.y)) + vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.y));
        let x_1144 : vec4<f32> = u_xlat4;
        let x_1147 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.w, x_1150.y));
        let x_1154 : f32 = u_xlat9.y;
        u_xlat6.w = x_1154;
        let x_1157 : vec4<f32> = u_xlat4;
        let x_1160 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(x_1163.x, x_1163.w));
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1167 : vec3<f32> = vec3<f32>(x_1166.x, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1167.x, x_1168.y, x_1167.y, x_1167.z);
        let x_1170 : vec4<f32> = u_xlat4;
        let x_1173 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1170.x, x_1170.y, x_1170.x, x_1170.y) * vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y)) + vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1176.y));
        let x_1180 : vec4<f32> = u_xlat4;
        let x_1183 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1190 : f32 = u_xlat6.x;
        u_xlat7.x = x_1190;
        let x_1192 : vec4<f32> = u_xlat4;
        let x_1195 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat7;
        let x_1200 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.x, x_1198.y));
        let x_1201 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1204 : vec4<f32> = u_xlat5;
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1204.x, x_1204.x, x_1204.x, x_1204.x) * x_1206);
        let x_1209 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1209.y, x_1209.y, x_1209.y, x_1209.y) * x_1211);
        let x_1214 : vec4<f32> = u_xlat5;
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1214.z, x_1214.z, x_1214.z, x_1214.z) * x_1216);
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1218.w, x_1218.w, x_1218.w, x_1218.w) * x_1220);
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1224 : vec2<f32> = vec2<f32>(x_1223.x, x_1223.y);
        let x_1226 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec13;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1233.xy, x_1233.z);
        u_xlat6.x = x_1235;
        let x_1238 : vec4<f32> = u_xlat10;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.z, x_1238.w);
        let x_1241 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1249 : vec3<f32> = txVec14;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
        u_xlat75 = x_1251;
        let x_1252 : f32 = u_xlat75;
        let x_1254 : f32 = u_xlat15.y;
        u_xlat75 = (x_1252 * x_1254);
        let x_1257 : f32 = u_xlat15.x;
        let x_1259 : f32 = u_xlat6.x;
        let x_1261 : f32 = u_xlat75;
        u_xlat6.x = ((x_1257 * x_1259) + x_1261);
        let x_1265 : vec2<f32> = u_xlat50;
        let x_1267 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec15;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat50.x = x_1276;
        let x_1279 : f32 = u_xlat15.z;
        let x_1281 : f32 = u_xlat50.x;
        let x_1284 : f32 = u_xlat6.x;
        u_xlat50.x = ((x_1279 * x_1281) + x_1284);
        let x_1288 : vec4<f32> = u_xlat13;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.x, x_1288.y);
        let x_1291 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1299 : vec3<f32> = txVec16;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat73 = x_1301;
        let x_1303 : f32 = u_xlat15.w;
        let x_1304 : f32 = u_xlat73;
        let x_1307 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1303 * x_1304) + x_1307);
        let x_1311 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.x, x_1311.y);
        let x_1314 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec17;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat73 = x_1323;
        let x_1325 : f32 = u_xlat16.x;
        let x_1326 : f32 = u_xlat73;
        let x_1329 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1325 * x_1326) + x_1329);
        let x_1333 : vec4<f32> = u_xlat11;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.z, x_1333.w);
        let x_1336 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec18;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat73 = x_1345;
        let x_1347 : f32 = u_xlat16.y;
        let x_1348 : f32 = u_xlat73;
        let x_1351 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1347 * x_1348) + x_1351);
        let x_1355 : vec4<f32> = u_xlat12;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.x, x_1355.y);
        let x_1358 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec19;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat73 = x_1367;
        let x_1369 : f32 = u_xlat16.z;
        let x_1370 : f32 = u_xlat73;
        let x_1373 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1369 * x_1370) + x_1373);
        let x_1377 : vec4<f32> = u_xlat13;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.z, x_1377.w);
        let x_1380 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec20;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat73 = x_1389;
        let x_1391 : f32 = u_xlat16.w;
        let x_1392 : f32 = u_xlat73;
        let x_1395 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1391 * x_1392) + x_1395);
        let x_1399 : vec4<f32> = u_xlat14;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.x, x_1399.y);
        let x_1402 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1409 : vec3<f32> = txVec21;
        let x_1411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1409.xy, x_1409.z);
        u_xlat73 = x_1411;
        let x_1413 : f32 = u_xlat17.x;
        let x_1414 : f32 = u_xlat73;
        let x_1417 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1413 * x_1414) + x_1417);
        let x_1421 : vec4<f32> = u_xlat14;
        let x_1422 : vec2<f32> = vec2<f32>(x_1421.z, x_1421.w);
        let x_1424 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec22;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat73 = x_1433;
        let x_1435 : f32 = u_xlat17.y;
        let x_1436 : f32 = u_xlat73;
        let x_1439 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1435 * x_1436) + x_1439);
        let x_1443 : vec2<f32> = u_xlat29;
        let x_1445 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec23;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat73 = x_1454;
        let x_1456 : f32 = u_xlat17.z;
        let x_1457 : f32 = u_xlat73;
        let x_1460 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1456 * x_1457) + x_1460);
        let x_1464 : vec2<f32> = u_xlat58;
        let x_1466 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec24;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat73 = x_1475;
        let x_1477 : f32 = u_xlat17.w;
        let x_1478 : f32 = u_xlat73;
        let x_1481 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1477 * x_1478) + x_1481);
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec25;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat73 = x_1497;
        let x_1499 : f32 = u_xlat5.x;
        let x_1500 : f32 = u_xlat73;
        let x_1503 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1499 * x_1500) + x_1503);
        let x_1507 : vec4<f32> = u_xlat9;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.z, x_1507.w);
        let x_1510 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec26;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat73 = x_1519;
        let x_1521 : f32 = u_xlat5.y;
        let x_1522 : f32 = u_xlat73;
        let x_1525 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1521 * x_1522) + x_1525);
        let x_1529 : vec2<f32> = u_xlat53;
        let x_1531 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec27;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat73 = x_1540;
        let x_1542 : f32 = u_xlat5.z;
        let x_1543 : f32 = u_xlat73;
        let x_1546 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1542 * x_1543) + x_1546);
        let x_1550 : vec4<f32> = u_xlat4;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.y);
        let x_1553 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec28;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat4.x = x_1562;
        let x_1565 : f32 = u_xlat5.w;
        let x_1567 : f32 = u_xlat4.x;
        let x_1570 : f32 = u_xlat50.x;
        u_xlat72 = ((x_1565 * x_1567) + x_1570);
      }
    }
  } else {
    let x_1574 : vec4<f32> = vs_TEXCOORD6;
    let x_1575 : vec2<f32> = vec2<f32>(x_1574.x, x_1574.y);
    let x_1577 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
    let x_1584 : vec3<f32> = txVec29;
    let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
    u_xlat72 = x_1586;
  }
  let x_1588 : f32 = x_307.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1588) + 1.0f);
  let x_1592 : f32 = u_xlat72;
  let x_1594 : f32 = x_307.x_MainLightShadowParams.x;
  let x_1597 : f32 = u_xlat4.x;
  u_xlat72 = ((x_1592 * x_1594) + x_1597);
  let x_1600 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_1600);
  let x_1606 : f32 = vs_TEXCOORD6.z;
  u_xlatb27.x = (x_1606 >= 1.0f);
  let x_1610 : bool = u_xlatb27.x;
  let x_1611 : bool = u_xlatb4;
  u_xlatb4 = (x_1610 | x_1611);
  let x_1613 : bool = u_xlatb4;
  let x_1614 : f32 = u_xlat72;
  u_xlat72 = select(x_1614, 1.0f, x_1613);
  let x_1616 : vec3<f32> = vs_TEXCOORD1;
  let x_1618 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1620 : vec3<f32> = (x_1616 + -(x_1618));
  let x_1621 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
  let x_1623 : vec4<f32> = u_xlat4;
  let x_1625 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_1623.x, x_1623.y, x_1623.z), vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1630 : f32 = u_xlat4.x;
  let x_1632 : f32 = x_307.x_MainLightShadowParams.z;
  let x_1635 : f32 = x_307.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1630 * x_1632) + x_1635);
  let x_1639 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1639, 0.0f, 1.0f);
  let x_1642 : f32 = u_xlat72;
  u_xlat50.x = (-(x_1642) + 1.0f);
  let x_1647 : f32 = u_xlat27.x;
  let x_1649 : f32 = u_xlat50.x;
  let x_1651 : f32 = u_xlat72;
  u_xlat72 = ((x_1647 * x_1649) + x_1651);
  let x_1660 : f32 = x_1658.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1660 == -1.0f));
  let x_1665 : bool = u_xlatb27.x;
  if (x_1665) {
    let x_1668 : vec3<f32> = vs_TEXCOORD1;
    let x_1671 : vec4<f32> = x_1658.x_MainLightWorldToLight[1i];
    let x_1673 : vec2<f32> = (vec2<f32>(x_1668.y, x_1668.y) * vec2<f32>(x_1671.x, x_1671.y));
    let x_1674 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1673.x, x_1673.y, x_1674.z);
    let x_1677 : vec4<f32> = x_1658.x_MainLightWorldToLight[0i];
    let x_1679 : vec3<f32> = vs_TEXCOORD1;
    let x_1682 : vec3<f32> = u_xlat27;
    let x_1684 : vec2<f32> = ((vec2<f32>(x_1677.x, x_1677.y) * vec2<f32>(x_1679.x, x_1679.x)) + vec2<f32>(x_1682.x, x_1682.y));
    let x_1685 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1684.x, x_1684.y, x_1685.z);
    let x_1688 : vec4<f32> = x_1658.x_MainLightWorldToLight[2i];
    let x_1690 : vec3<f32> = vs_TEXCOORD1;
    let x_1693 : vec3<f32> = u_xlat27;
    let x_1695 : vec2<f32> = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(x_1690.z, x_1690.z)) + vec2<f32>(x_1693.x, x_1693.y));
    let x_1696 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1695.x, x_1695.y, x_1696.z);
    let x_1698 : vec3<f32> = u_xlat27;
    let x_1701 : vec4<f32> = x_1658.x_MainLightWorldToLight[3i];
    let x_1703 : vec2<f32> = (vec2<f32>(x_1698.x, x_1698.y) + vec2<f32>(x_1701.x, x_1701.y));
    let x_1704 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1703.x, x_1703.y, x_1704.z);
    let x_1706 : vec3<f32> = u_xlat27;
    let x_1709 : vec2<f32> = ((vec2<f32>(x_1706.x, x_1706.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1710 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1709.x, x_1709.y, x_1710.z);
    let x_1717 : vec3<f32> = u_xlat27;
    let x_1720 : f32 = x_45.x_GlobalMipBias.x;
    let x_1721 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1717.x, x_1717.y), x_1720);
    u_xlat5 = x_1721;
    let x_1723 : f32 = x_1658.x_MainLightCookieTextureFormat;
    let x_1725 : f32 = x_1658.x_MainLightCookieTextureFormat;
    let x_1727 : f32 = x_1658.x_MainLightCookieTextureFormat;
    let x_1729 : f32 = x_1658.x_MainLightCookieTextureFormat;
    let x_1730 : vec4<f32> = vec4<f32>(x_1723, x_1725, x_1727, x_1729);
    let x_1738 : vec4<bool> = (vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1730.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1738.x, x_1738.y);
    let x_1741 : bool = u_xlatb27.y;
    if (x_1741) {
      let x_1746 : f32 = u_xlat5.w;
      x_1742 = x_1746;
    } else {
      let x_1749 : f32 = u_xlat5.x;
      x_1742 = x_1749;
    }
    let x_1750 : f32 = x_1742;
    u_xlat50.x = x_1750;
    let x_1753 : bool = u_xlatb27.x;
    if (x_1753) {
      let x_1757 : vec4<f32> = u_xlat5;
      x_1754 = vec3<f32>(x_1757.x, x_1757.y, x_1757.z);
    } else {
      let x_1760 : vec2<f32> = u_xlat50;
      x_1754 = vec3<f32>(x_1760.x, x_1760.x, x_1760.x);
    }
    let x_1762 : vec3<f32> = x_1754;
    u_xlat27 = x_1762;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_1767 : vec3<f32> = u_xlat27;
  let x_1769 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat27 = (x_1767 * vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
  let x_1772 : f32 = u_xlat72;
  let x_1774 : f32 = x_95.unity_LightData.z;
  u_xlat72 = (x_1772 * x_1774);
  let x_1776 : f32 = u_xlat72;
  let x_1778 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1776, x_1776, x_1776) * x_1778);
  let x_1780 : vec3<f32> = u_xlat2;
  let x_1782 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat72 = dot(x_1780, vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
  let x_1785 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1785, 0.0f, 1.0f);
  let x_1787 : f32 = u_xlat72;
  let x_1789 : vec3<f32> = u_xlat27;
  let x_1790 : vec3<f32> = (vec3<f32>(x_1787, x_1787, x_1787) * x_1789);
  let x_1791 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1794 : f32 = u_xlat0.x;
  u_xlat72 = ((x_1794 * 10.0f) + 1.0f);
  let x_1798 : f32 = u_xlat72;
  u_xlat72 = exp2(x_1798);
  let x_1800 : vec3<f32> = u_xlat1;
  let x_1801 : f32 = u_xlat70;
  let x_1805 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1807 : vec3<f32> = ((x_1800 * vec3<f32>(x_1801, x_1801, x_1801)) + vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
  let x_1808 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
  let x_1811 : vec4<f32> = u_xlat6;
  let x_1813 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1811.x, x_1811.y, x_1811.z), vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
  let x_1816 : f32 = u_xlat74;
  u_xlat74 = max(x_1816, 1.17549435e-38f);
  let x_1819 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1819);
  let x_1821 : f32 = u_xlat74;
  let x_1823 : vec4<f32> = u_xlat6;
  let x_1825 : vec3<f32> = (vec3<f32>(x_1821, x_1821, x_1821) * vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
  let x_1826 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
  let x_1828 : vec3<f32> = u_xlat2;
  let x_1829 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(x_1828, vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1832, 0.0f, 1.0f);
  let x_1834 : f32 = u_xlat74;
  u_xlat74 = log2(x_1834);
  let x_1836 : f32 = u_xlat72;
  let x_1837 : f32 = u_xlat74;
  u_xlat74 = (x_1836 * x_1837);
  let x_1839 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1839);
  let x_1841 : f32 = u_xlat74;
  let x_1844 : vec4<f32> = x_57.x_SpecColor;
  let x_1846 : vec3<f32> = (vec3<f32>(x_1841, x_1841, x_1841) * vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
  let x_1847 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
  let x_1849 : vec3<f32> = u_xlat27;
  let x_1850 : vec4<f32> = u_xlat6;
  u_xlat27 = (x_1849 * vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
  let x_1853 : vec4<f32> = u_xlat5;
  let x_1855 : vec4<f32> = u_xlat0;
  let x_1858 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1853.x, x_1853.y, x_1853.z) * vec3<f32>(x_1855.y, x_1855.z, x_1855.w)) + x_1858);
  let x_1861 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1863 : f32 = x_95.unity_LightData.y;
  u_xlat5.x = min(x_1861, x_1863);
  let x_1869 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1869));
  let x_1873 : f32 = u_xlat4.x;
  let x_1876 : f32 = x_307.x_AdditionalShadowFadeParams.x;
  let x_1879 : f32 = x_307.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_1873 * x_1876) + x_1879);
  let x_1883 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1883, 0.0f, 1.0f);
  let x_1888 : f32 = x_1658.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1890 : f32 = x_1658.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1892 : f32 = x_1658.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1894 : f32 = x_1658.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1895 : vec4<f32> = vec4<f32>(x_1888, x_1890, x_1892, x_1894);
  let x_1901 : vec4<bool> = (vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1895.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_1901.x, x_1901.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1913 : u32 = u_xlatu_loop_1;
    let x_1914 : u32 = u_xlatu5;
    if ((x_1913 < x_1914)) {
    } else {
      break;
    }
    let x_1917 : u32 = u_xlatu_loop_1;
    u_xlatu75 = (x_1917 >> 2u);
    let x_1921 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_1921 & 3u));
    let x_1924 : u32 = u_xlatu75;
    let x_1927 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1924)];
    let x_1937 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1942 : vec4<u32> = indexable[x_1937];
    u_xlat75 = dot(x_1927, bitcast<vec4<f32>>(x_1942));
    let x_1946 : f32 = u_xlat75;
    u_xlati75 = i32(x_1946);
    let x_1948 : vec3<f32> = vs_TEXCOORD1;
    let x_1959 : i32 = u_xlati75;
    let x_1961 : vec4<f32> = x_1958.x_AdditionalLightsPosition[x_1959];
    let x_1964 : i32 = u_xlati75;
    let x_1966 : vec4<f32> = x_1958.x_AdditionalLightsPosition[x_1964];
    let x_1968 : vec3<f32> = ((-(x_1948) * vec3<f32>(x_1961.w, x_1961.w, x_1961.w)) + vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
    let x_1969 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1969.w);
    let x_1972 : vec4<f32> = u_xlat7;
    let x_1974 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_1972.x, x_1972.y, x_1972.z), vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
    let x_1977 : f32 = u_xlat76;
    u_xlat76 = max(x_1977, 0.00006103515625f);
    let x_1979 : f32 = u_xlat76;
    u_xlat8.x = inverseSqrt(x_1979);
    let x_1982 : vec4<f32> = u_xlat7;
    let x_1984 : vec4<f32> = u_xlat8;
    let x_1986 : vec3<f32> = (vec3<f32>(x_1982.x, x_1982.y, x_1982.z) * vec3<f32>(x_1984.x, x_1984.x, x_1984.x));
    let x_1987 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
    let x_1989 : f32 = u_xlat76;
    u_xlat8.x = (1.0f / x_1989);
    let x_1992 : f32 = u_xlat76;
    let x_1993 : i32 = u_xlati75;
    let x_1995 : f32 = x_1958.x_AdditionalLightsAttenuation[x_1993].x;
    u_xlat76 = (x_1992 * x_1995);
    let x_1997 : f32 = u_xlat76;
    let x_1999 : f32 = u_xlat76;
    u_xlat76 = ((-(x_1997) * x_1999) + 1.0f);
    let x_2002 : f32 = u_xlat76;
    u_xlat76 = max(x_2002, 0.0f);
    let x_2004 : f32 = u_xlat76;
    let x_2005 : f32 = u_xlat76;
    u_xlat76 = (x_2004 * x_2005);
    let x_2007 : f32 = u_xlat76;
    let x_2009 : f32 = u_xlat8.x;
    u_xlat76 = (x_2007 * x_2009);
    let x_2011 : i32 = u_xlati75;
    let x_2013 : vec4<f32> = x_1958.x_AdditionalLightsSpotDir[x_2011];
    let x_2015 : vec4<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_2013.x, x_2013.y, x_2013.z), vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
    let x_2020 : f32 = u_xlat8.x;
    let x_2021 : i32 = u_xlati75;
    let x_2023 : f32 = x_1958.x_AdditionalLightsAttenuation[x_2021].z;
    let x_2025 : i32 = u_xlati75;
    let x_2027 : f32 = x_1958.x_AdditionalLightsAttenuation[x_2025].w;
    u_xlat8.x = ((x_2020 * x_2023) + x_2027);
    let x_2031 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2031, 0.0f, 1.0f);
    let x_2035 : f32 = u_xlat8.x;
    let x_2037 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2035 * x_2037);
    let x_2040 : f32 = u_xlat76;
    let x_2042 : f32 = u_xlat8.x;
    u_xlat76 = (x_2040 * x_2042);
    let x_2046 : i32 = u_xlati75;
    let x_2048 : f32 = x_307.x_AdditionalShadowParams[x_2046].w;
    u_xlati8 = i32(x_2048);
    let x_2053 : i32 = u_xlati8;
    u_xlatb31.x = (x_2053 >= 0i);
    let x_2057 : bool = u_xlatb31.x;
    if (x_2057) {
      let x_2061 : i32 = u_xlati75;
      let x_2063 : f32 = x_307.x_AdditionalShadowParams[x_2061].z;
      u_xlatb31.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2063, x_2063, x_2063, x_2063))));
      let x_2069 : bool = u_xlatb31.x;
      if (x_2069) {
        let x_2072 : vec4<f32> = u_xlat7;
        let x_2075 : vec4<f32> = u_xlat7;
        let x_2078 : vec4<bool> = (abs(vec4<f32>(x_2072.z, x_2072.z, x_2072.y, x_2072.y)) >= abs(vec4<f32>(x_2075.x, x_2075.y, x_2075.x, x_2075.x)));
        u_xlatb31 = vec3<bool>(x_2078.x, x_2078.y, x_2078.z);
        let x_2081 : bool = u_xlatb31.y;
        let x_2083 : bool = u_xlatb31.x;
        u_xlatb31.x = (x_2081 & x_2083);
        let x_2087 : vec4<f32> = u_xlat7;
        let x_2090 : vec4<bool> = (-(vec4<f32>(x_2087.z, x_2087.y, x_2087.x, x_2087.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2090.x, x_2090.y, x_2090.z);
        let x_2093 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2093);
        let x_2099 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2099);
        let x_2105 : bool = u_xlatb9.z;
        u_xlat54 = select(0.0f, 1.0f, x_2105);
        let x_2108 : bool = u_xlatb31.z;
        if (x_2108) {
          let x_2113 : f32 = u_xlat9.y;
          x_2109 = x_2113;
        } else {
          let x_2115 : f32 = u_xlat54;
          x_2109 = x_2115;
        }
        let x_2116 : f32 = x_2109;
        u_xlat54 = x_2116;
        let x_2119 : bool = u_xlatb31.x;
        if (x_2119) {
          let x_2124 : f32 = u_xlat9.x;
          x_2120 = x_2124;
        } else {
          let x_2126 : f32 = u_xlat54;
          x_2120 = x_2126;
        }
        let x_2127 : f32 = x_2120;
        u_xlat31.x = x_2127;
        let x_2129 : i32 = u_xlati75;
        let x_2131 : f32 = x_307.x_AdditionalShadowParams[x_2129].w;
        u_xlat54 = trunc(x_2131);
        let x_2134 : f32 = u_xlat31.x;
        let x_2135 : f32 = u_xlat54;
        u_xlat31.x = (x_2134 + x_2135);
        let x_2139 : f32 = u_xlat31.x;
        u_xlati8 = i32(x_2139);
      }
      let x_2141 : i32 = u_xlati8;
      u_xlati8 = (x_2141 << bitcast<u32>(2i));
      let x_2143 : vec3<f32> = vs_TEXCOORD1;
      let x_2146 : i32 = u_xlati8;
      let x_2149 : i32 = u_xlati8;
      let x_2153 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2146 + 1i) / 4i)][((x_2149 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2143.y, x_2143.y, x_2143.y, x_2143.y) * x_2153);
      let x_2155 : i32 = u_xlati8;
      let x_2157 : i32 = u_xlati8;
      let x_2160 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[(x_2155 / 4i)][(x_2157 % 4i)];
      let x_2161 : vec3<f32> = vs_TEXCOORD1;
      let x_2164 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2160 * vec4<f32>(x_2161.x, x_2161.x, x_2161.x, x_2161.x)) + x_2164);
      let x_2166 : i32 = u_xlati8;
      let x_2169 : i32 = u_xlati8;
      let x_2173 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2166 + 2i) / 4i)][((x_2169 + 2i) % 4i)];
      let x_2174 : vec3<f32> = vs_TEXCOORD1;
      let x_2177 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2173 * vec4<f32>(x_2174.z, x_2174.z, x_2174.z, x_2174.z)) + x_2177);
      let x_2179 : vec4<f32> = u_xlat9;
      let x_2180 : i32 = u_xlati8;
      let x_2183 : i32 = u_xlati8;
      let x_2187 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2180 + 3i) / 4i)][((x_2183 + 3i) % 4i)];
      u_xlat8 = (x_2179 + x_2187);
      let x_2189 : vec4<f32> = u_xlat8;
      let x_2191 : vec4<f32> = u_xlat8;
      let x_2193 : vec3<f32> = (vec3<f32>(x_2189.x, x_2189.y, x_2189.z) / vec3<f32>(x_2191.w, x_2191.w, x_2191.w));
      let x_2194 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
      let x_2197 : i32 = u_xlati75;
      let x_2199 : f32 = x_307.x_AdditionalShadowParams[x_2197].y;
      u_xlatb77 = (0.0f < x_2199);
      let x_2201 : bool = u_xlatb77;
      if (x_2201) {
        let x_2204 : i32 = u_xlati75;
        let x_2206 : f32 = x_307.x_AdditionalShadowParams[x_2204].y;
        u_xlatb77 = (1.0f == x_2206);
        let x_2208 : bool = u_xlatb77;
        if (x_2208) {
          let x_2211 : vec4<f32> = u_xlat8;
          let x_2214 : vec4<f32> = x_307.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2211.x, x_2211.y, x_2211.x, x_2211.y) + x_2214);
          let x_2217 : vec4<f32> = u_xlat9;
          let x_2218 : vec2<f32> = vec2<f32>(x_2217.x, x_2217.y);
          let x_2220 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2218.x, x_2218.y, x_2220);
          let x_2228 : vec3<f32> = txVec30;
          let x_2230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2228.xy, x_2228.z);
          u_xlat10.x = x_2230;
          let x_2233 : vec4<f32> = u_xlat9;
          let x_2234 : vec2<f32> = vec2<f32>(x_2233.z, x_2233.w);
          let x_2236 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2234.x, x_2234.y, x_2236);
          let x_2243 : vec3<f32> = txVec31;
          let x_2245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2243.xy, x_2243.z);
          u_xlat10.y = x_2245;
          let x_2247 : vec4<f32> = u_xlat8;
          let x_2251 : vec4<f32> = x_307.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2247.x, x_2247.y, x_2247.x, x_2247.y) + x_2251);
          let x_2254 : vec4<f32> = u_xlat9;
          let x_2255 : vec2<f32> = vec2<f32>(x_2254.x, x_2254.y);
          let x_2257 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2255.x, x_2255.y, x_2257);
          let x_2264 : vec3<f32> = txVec32;
          let x_2266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2264.xy, x_2264.z);
          u_xlat10.z = x_2266;
          let x_2269 : vec4<f32> = u_xlat9;
          let x_2270 : vec2<f32> = vec2<f32>(x_2269.z, x_2269.w);
          let x_2272 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2270.x, x_2270.y, x_2272);
          let x_2279 : vec3<f32> = txVec33;
          let x_2281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2279.xy, x_2279.z);
          u_xlat10.w = x_2281;
          let x_2284 : vec4<f32> = u_xlat10;
          u_xlat77 = dot(x_2284, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2287 : i32 = u_xlati75;
          let x_2289 : f32 = x_307.x_AdditionalShadowParams[x_2287].y;
          u_xlatb9.x = (2.0f == x_2289);
          let x_2293 : bool = u_xlatb9.x;
          if (x_2293) {
            let x_2296 : vec4<f32> = u_xlat8;
            let x_2300 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2303 : vec2<f32> = ((vec2<f32>(x_2296.x, x_2296.y) * vec2<f32>(x_2300.z, x_2300.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2304 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2303.x, x_2303.y, x_2304.z, x_2304.w);
            let x_2306 : vec4<f32> = u_xlat9;
            let x_2308 : vec2<f32> = floor(vec2<f32>(x_2306.x, x_2306.y));
            let x_2309 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2308.x, x_2308.y, x_2309.z, x_2309.w);
            let x_2312 : vec4<f32> = u_xlat8;
            let x_2315 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2318 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2312.x, x_2312.y) * vec2<f32>(x_2315.z, x_2315.w)) + -(vec2<f32>(x_2318.x, x_2318.y)));
            let x_2322 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2322.x, x_2322.x, x_2322.y, x_2322.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2325 : vec4<f32> = u_xlat10;
            let x_2327 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2325.x, x_2325.x, x_2325.z, x_2325.z) * vec4<f32>(x_2327.x, x_2327.x, x_2327.z, x_2327.z));
            let x_2330 : vec4<f32> = u_xlat11;
            let x_2332 : vec2<f32> = (vec2<f32>(x_2330.y, x_2330.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2333 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2332.x, x_2333.y, x_2332.y, x_2333.w);
            let x_2335 : vec4<f32> = u_xlat11;
            let x_2338 : vec2<f32> = u_xlat55;
            let x_2340 : vec2<f32> = ((vec2<f32>(x_2335.x, x_2335.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2338));
            let x_2341 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
            let x_2344 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2344) + vec2<f32>(1.0f, 1.0f));
            let x_2347 : vec2<f32> = u_xlat55;
            let x_2348 : vec2<f32> = min(x_2347, vec2<f32>(0.0f, 0.0f));
            let x_2349 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2348.x, x_2348.y, x_2349.z, x_2349.w);
            let x_2351 : vec4<f32> = u_xlat12;
            let x_2354 : vec4<f32> = u_xlat12;
            let x_2357 : vec2<f32> = u_xlat57;
            let x_2358 : vec2<f32> = ((-(vec2<f32>(x_2351.x, x_2351.y)) * vec2<f32>(x_2354.x, x_2354.y)) + x_2357);
            let x_2359 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2358.x, x_2358.y, x_2359.z, x_2359.w);
            let x_2361 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2361, vec2<f32>(0.0f, 0.0f));
            let x_2363 : vec2<f32> = u_xlat55;
            let x_2365 : vec2<f32> = u_xlat55;
            let x_2367 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2363) * x_2365) + vec2<f32>(x_2367.y, x_2367.w));
            let x_2370 : vec4<f32> = u_xlat12;
            let x_2372 : vec2<f32> = (vec2<f32>(x_2370.x, x_2370.y) + vec2<f32>(1.0f, 1.0f));
            let x_2373 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2372.x, x_2372.y, x_2373.z, x_2373.w);
            let x_2375 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2375 + vec2<f32>(1.0f, 1.0f));
            let x_2377 : vec4<f32> = u_xlat11;
            let x_2379 : vec2<f32> = (vec2<f32>(x_2377.x, x_2377.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2380 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2379.x, x_2379.y, x_2380.z, x_2380.w);
            let x_2382 : vec2<f32> = u_xlat57;
            let x_2383 : vec2<f32> = (x_2382 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2384 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2383.x, x_2383.y, x_2384.z, x_2384.w);
            let x_2386 : vec4<f32> = u_xlat12;
            let x_2388 : vec2<f32> = (vec2<f32>(x_2386.x, x_2386.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2389 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2388.x, x_2388.y, x_2389.z, x_2389.w);
            let x_2391 : vec2<f32> = u_xlat55;
            let x_2392 : vec2<f32> = (x_2391 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2393 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
            let x_2395 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2395.y, x_2395.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2399 : f32 = u_xlat12.x;
            u_xlat13.z = x_2399;
            let x_2402 : f32 = u_xlat55.x;
            u_xlat13.w = x_2402;
            let x_2405 : f32 = u_xlat14.x;
            u_xlat11.z = x_2405;
            let x_2408 : f32 = u_xlat10.x;
            u_xlat11.w = x_2408;
            let x_2410 : vec4<f32> = u_xlat11;
            let x_2412 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2410.z, x_2410.w, x_2410.x, x_2410.z) + vec4<f32>(x_2412.z, x_2412.w, x_2412.x, x_2412.z));
            let x_2416 : f32 = u_xlat13.y;
            u_xlat12.z = x_2416;
            let x_2419 : f32 = u_xlat55.y;
            u_xlat12.w = x_2419;
            let x_2422 : f32 = u_xlat11.y;
            u_xlat14.z = x_2422;
            let x_2425 : f32 = u_xlat10.z;
            u_xlat14.w = x_2425;
            let x_2427 : vec4<f32> = u_xlat12;
            let x_2429 : vec4<f32> = u_xlat14;
            let x_2431 : vec3<f32> = (vec3<f32>(x_2427.z, x_2427.y, x_2427.w) + vec3<f32>(x_2429.z, x_2429.y, x_2429.w));
            let x_2432 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
            let x_2434 : vec4<f32> = u_xlat11;
            let x_2436 : vec4<f32> = u_xlat15;
            let x_2438 : vec3<f32> = (vec3<f32>(x_2434.x, x_2434.z, x_2434.w) / vec3<f32>(x_2436.z, x_2436.w, x_2436.y));
            let x_2439 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2438.x, x_2438.y, x_2438.z, x_2439.w);
            let x_2441 : vec4<f32> = u_xlat11;
            let x_2443 : vec3<f32> = (vec3<f32>(x_2441.x, x_2441.y, x_2441.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2444 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2443.x, x_2443.y, x_2443.z, x_2444.w);
            let x_2446 : vec4<f32> = u_xlat14;
            let x_2448 : vec4<f32> = u_xlat10;
            let x_2450 : vec3<f32> = (vec3<f32>(x_2446.z, x_2446.y, x_2446.w) / vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
            let x_2451 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
            let x_2453 : vec4<f32> = u_xlat12;
            let x_2455 : vec3<f32> = (vec3<f32>(x_2453.x, x_2453.y, x_2453.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2456 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
            let x_2458 : vec4<f32> = u_xlat11;
            let x_2461 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2463 : vec3<f32> = (vec3<f32>(x_2458.y, x_2458.x, x_2458.z) * vec3<f32>(x_2461.x, x_2461.x, x_2461.x));
            let x_2464 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
            let x_2466 : vec4<f32> = u_xlat12;
            let x_2469 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2471 : vec3<f32> = (vec3<f32>(x_2466.x, x_2466.y, x_2466.z) * vec3<f32>(x_2469.y, x_2469.y, x_2469.y));
            let x_2472 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
            let x_2475 : f32 = u_xlat12.x;
            u_xlat11.w = x_2475;
            let x_2477 : vec4<f32> = u_xlat9;
            let x_2480 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2483 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2477.x, x_2477.y, x_2477.x, x_2477.y) * vec4<f32>(x_2480.x, x_2480.y, x_2480.x, x_2480.y)) + vec4<f32>(x_2483.y, x_2483.w, x_2483.x, x_2483.w));
            let x_2486 : vec4<f32> = u_xlat9;
            let x_2489 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2492 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2486.x, x_2486.y) * vec2<f32>(x_2489.x, x_2489.y)) + vec2<f32>(x_2492.z, x_2492.w));
            let x_2496 : f32 = u_xlat11.y;
            u_xlat12.w = x_2496;
            let x_2498 : vec4<f32> = u_xlat12;
            let x_2499 : vec2<f32> = vec2<f32>(x_2498.y, x_2498.z);
            let x_2500 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2500.x, x_2499.x, x_2500.z, x_2499.y);
            let x_2502 : vec4<f32> = u_xlat9;
            let x_2505 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2508 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2502.x, x_2502.y, x_2502.x, x_2502.y) * vec4<f32>(x_2505.x, x_2505.y, x_2505.x, x_2505.y)) + vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2508.y));
            let x_2511 : vec4<f32> = u_xlat9;
            let x_2514 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2517 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.y) * vec4<f32>(x_2514.x, x_2514.y, x_2514.x, x_2514.y)) + vec4<f32>(x_2517.w, x_2517.y, x_2517.w, x_2517.z));
            let x_2520 : vec4<f32> = u_xlat9;
            let x_2523 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2526 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2520.x, x_2520.y, x_2520.x, x_2520.y) * vec4<f32>(x_2523.x, x_2523.y, x_2523.x, x_2523.y)) + vec4<f32>(x_2526.x, x_2526.w, x_2526.z, x_2526.w));
            let x_2529 : vec4<f32> = u_xlat10;
            let x_2531 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2529.x, x_2529.x, x_2529.x, x_2529.y) * vec4<f32>(x_2531.z, x_2531.w, x_2531.y, x_2531.z));
            let x_2534 : vec4<f32> = u_xlat10;
            let x_2536 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2534.y, x_2534.y, x_2534.z, x_2534.z) * x_2536);
            let x_2539 : f32 = u_xlat10.z;
            let x_2541 : f32 = u_xlat15.y;
            u_xlat9.x = (x_2539 * x_2541);
            let x_2545 : vec4<f32> = u_xlat13;
            let x_2546 : vec2<f32> = vec2<f32>(x_2545.x, x_2545.y);
            let x_2548 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2546.x, x_2546.y, x_2548);
            let x_2556 : vec3<f32> = txVec34;
            let x_2558 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2556.xy, x_2556.z);
            u_xlat32 = x_2558;
            let x_2560 : vec4<f32> = u_xlat13;
            let x_2561 : vec2<f32> = vec2<f32>(x_2560.z, x_2560.w);
            let x_2563 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2561.x, x_2561.y, x_2563);
            let x_2570 : vec3<f32> = txVec35;
            let x_2572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2570.xy, x_2570.z);
            u_xlat10.x = x_2572;
            let x_2575 : f32 = u_xlat10.x;
            let x_2577 : f32 = u_xlat16.y;
            u_xlat10.x = (x_2575 * x_2577);
            let x_2581 : f32 = u_xlat16.x;
            let x_2582 : f32 = u_xlat32;
            let x_2585 : f32 = u_xlat10.x;
            u_xlat32 = ((x_2581 * x_2582) + x_2585);
            let x_2588 : vec2<f32> = u_xlat55;
            let x_2590 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2588.x, x_2588.y, x_2590);
            let x_2597 : vec3<f32> = txVec36;
            let x_2599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2597.xy, x_2597.z);
            u_xlat55.x = x_2599;
            let x_2602 : f32 = u_xlat16.z;
            let x_2604 : f32 = u_xlat55.x;
            let x_2606 : f32 = u_xlat32;
            u_xlat32 = ((x_2602 * x_2604) + x_2606);
            let x_2609 : vec4<f32> = u_xlat12;
            let x_2610 : vec2<f32> = vec2<f32>(x_2609.x, x_2609.y);
            let x_2612 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2610.x, x_2610.y, x_2612);
            let x_2619 : vec3<f32> = txVec37;
            let x_2621 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2619.xy, x_2619.z);
            u_xlat55.x = x_2621;
            let x_2624 : f32 = u_xlat16.w;
            let x_2626 : f32 = u_xlat55.x;
            let x_2628 : f32 = u_xlat32;
            u_xlat32 = ((x_2624 * x_2626) + x_2628);
            let x_2631 : vec4<f32> = u_xlat14;
            let x_2632 : vec2<f32> = vec2<f32>(x_2631.x, x_2631.y);
            let x_2634 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2632.x, x_2632.y, x_2634);
            let x_2641 : vec3<f32> = txVec38;
            let x_2643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2641.xy, x_2641.z);
            u_xlat55.x = x_2643;
            let x_2646 : f32 = u_xlat17.x;
            let x_2648 : f32 = u_xlat55.x;
            let x_2650 : f32 = u_xlat32;
            u_xlat32 = ((x_2646 * x_2648) + x_2650);
            let x_2653 : vec4<f32> = u_xlat14;
            let x_2654 : vec2<f32> = vec2<f32>(x_2653.z, x_2653.w);
            let x_2656 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2654.x, x_2654.y, x_2656);
            let x_2663 : vec3<f32> = txVec39;
            let x_2665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2663.xy, x_2663.z);
            u_xlat55.x = x_2665;
            let x_2668 : f32 = u_xlat17.y;
            let x_2670 : f32 = u_xlat55.x;
            let x_2672 : f32 = u_xlat32;
            u_xlat32 = ((x_2668 * x_2670) + x_2672);
            let x_2675 : vec4<f32> = u_xlat12;
            let x_2676 : vec2<f32> = vec2<f32>(x_2675.z, x_2675.w);
            let x_2678 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2676.x, x_2676.y, x_2678);
            let x_2685 : vec3<f32> = txVec40;
            let x_2687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2685.xy, x_2685.z);
            u_xlat55.x = x_2687;
            let x_2690 : f32 = u_xlat17.z;
            let x_2692 : f32 = u_xlat55.x;
            let x_2694 : f32 = u_xlat32;
            u_xlat32 = ((x_2690 * x_2692) + x_2694);
            let x_2697 : vec4<f32> = u_xlat11;
            let x_2698 : vec2<f32> = vec2<f32>(x_2697.x, x_2697.y);
            let x_2700 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2698.x, x_2698.y, x_2700);
            let x_2707 : vec3<f32> = txVec41;
            let x_2709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2707.xy, x_2707.z);
            u_xlat55.x = x_2709;
            let x_2712 : f32 = u_xlat17.w;
            let x_2714 : f32 = u_xlat55.x;
            let x_2716 : f32 = u_xlat32;
            u_xlat32 = ((x_2712 * x_2714) + x_2716);
            let x_2719 : vec4<f32> = u_xlat11;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.z, x_2719.w);
            let x_2722 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec42;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat55.x = x_2731;
            let x_2734 : f32 = u_xlat9.x;
            let x_2736 : f32 = u_xlat55.x;
            let x_2738 : f32 = u_xlat32;
            u_xlat77 = ((x_2734 * x_2736) + x_2738);
          } else {
            let x_2741 : vec4<f32> = u_xlat8;
            let x_2744 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2747 : vec2<f32> = ((vec2<f32>(x_2741.x, x_2741.y) * vec2<f32>(x_2744.z, x_2744.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2748 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2747.x, x_2747.y, x_2748.z, x_2748.w);
            let x_2750 : vec4<f32> = u_xlat9;
            let x_2752 : vec2<f32> = floor(vec2<f32>(x_2750.x, x_2750.y));
            let x_2753 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2752.x, x_2752.y, x_2753.z, x_2753.w);
            let x_2755 : vec4<f32> = u_xlat8;
            let x_2758 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2761 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2755.x, x_2755.y) * vec2<f32>(x_2758.z, x_2758.w)) + -(vec2<f32>(x_2761.x, x_2761.y)));
            let x_2765 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2765.x, x_2765.x, x_2765.y, x_2765.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2768 : vec4<f32> = u_xlat10;
            let x_2770 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2768.x, x_2768.x, x_2768.z, x_2768.z) * vec4<f32>(x_2770.x, x_2770.x, x_2770.z, x_2770.z));
            let x_2773 : vec4<f32> = u_xlat11;
            let x_2775 : vec2<f32> = (vec2<f32>(x_2773.y, x_2773.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2776 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2776.x, x_2775.x, x_2776.z, x_2775.y);
            let x_2778 : vec4<f32> = u_xlat11;
            let x_2781 : vec2<f32> = u_xlat55;
            let x_2783 : vec2<f32> = ((vec2<f32>(x_2778.x, x_2778.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2781));
            let x_2784 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2783.x, x_2784.y, x_2783.y, x_2784.w);
            let x_2786 : vec2<f32> = u_xlat55;
            let x_2788 : vec2<f32> = (-(x_2786) + vec2<f32>(1.0f, 1.0f));
            let x_2789 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2788.x, x_2788.y, x_2789.z, x_2789.w);
            let x_2791 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2791, vec2<f32>(0.0f, 0.0f));
            let x_2793 : vec2<f32> = u_xlat57;
            let x_2795 : vec2<f32> = u_xlat57;
            let x_2797 : vec4<f32> = u_xlat11;
            let x_2799 : vec2<f32> = ((-(x_2793) * x_2795) + vec2<f32>(x_2797.x, x_2797.y));
            let x_2800 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2799.x, x_2799.y, x_2800.z, x_2800.w);
            let x_2802 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2802, vec2<f32>(0.0f, 0.0f));
            let x_2805 : vec2<f32> = u_xlat57;
            let x_2807 : vec2<f32> = u_xlat57;
            let x_2809 : vec4<f32> = u_xlat10;
            let x_2811 : vec2<f32> = ((-(x_2805) * x_2807) + vec2<f32>(x_2809.y, x_2809.w));
            let x_2812 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2811.x, x_2812.y, x_2811.y);
            let x_2814 : vec4<f32> = u_xlat11;
            let x_2816 : vec2<f32> = (vec2<f32>(x_2814.x, x_2814.y) + vec2<f32>(2.0f, 2.0f));
            let x_2817 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2816.x, x_2816.y, x_2817.z, x_2817.w);
            let x_2819 : vec3<f32> = u_xlat33;
            let x_2821 : vec2<f32> = (vec2<f32>(x_2819.x, x_2819.z) + vec2<f32>(2.0f, 2.0f));
            let x_2822 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2822.x, x_2821.x, x_2822.z, x_2821.y);
            let x_2825 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2825 * 0.08163200318813323975f);
            let x_2828 : vec4<f32> = u_xlat10;
            let x_2830 : vec3<f32> = (vec3<f32>(x_2828.z, x_2828.x, x_2828.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2831 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat11;
            let x_2835 : vec2<f32> = (vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2836 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
            let x_2839 : f32 = u_xlat14.y;
            u_xlat13.x = x_2839;
            let x_2841 : vec2<f32> = u_xlat55;
            let x_2844 : vec2<f32> = ((vec2<f32>(x_2841.x, x_2841.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2845 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2845.x, x_2844.x, x_2845.z, x_2844.y);
            let x_2847 : vec2<f32> = u_xlat55;
            let x_2850 : vec2<f32> = ((vec2<f32>(x_2847.x, x_2847.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2851 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2850.x, x_2851.y, x_2850.y, x_2851.w);
            let x_2854 : f32 = u_xlat10.x;
            u_xlat11.y = x_2854;
            let x_2857 : f32 = u_xlat12.y;
            u_xlat11.w = x_2857;
            let x_2859 : vec4<f32> = u_xlat11;
            let x_2860 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2859 + x_2860);
            let x_2862 : vec2<f32> = u_xlat55;
            let x_2865 : vec2<f32> = ((vec2<f32>(x_2862.y, x_2862.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2866 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2866.x, x_2865.x, x_2866.z, x_2865.y);
            let x_2868 : vec2<f32> = u_xlat55;
            let x_2871 : vec2<f32> = ((vec2<f32>(x_2868.y, x_2868.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2872 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2871.x, x_2872.y, x_2871.y, x_2872.w);
            let x_2875 : f32 = u_xlat10.y;
            u_xlat12.y = x_2875;
            let x_2877 : vec4<f32> = u_xlat12;
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2877 + x_2878);
            let x_2880 : vec4<f32> = u_xlat11;
            let x_2881 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2880 / x_2881);
            let x_2883 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2883 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2885 : vec4<f32> = u_xlat12;
            let x_2886 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2885 / x_2886);
            let x_2888 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2888 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2890 : vec4<f32> = u_xlat11;
            let x_2893 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2890.w, x_2890.x, x_2890.y, x_2890.z) * vec4<f32>(x_2893.x, x_2893.x, x_2893.x, x_2893.x));
            let x_2896 : vec4<f32> = u_xlat12;
            let x_2899 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2896.x, x_2896.w, x_2896.y, x_2896.z) * vec4<f32>(x_2899.y, x_2899.y, x_2899.y, x_2899.y));
            let x_2902 : vec4<f32> = u_xlat11;
            let x_2903 : vec3<f32> = vec3<f32>(x_2902.y, x_2902.z, x_2902.w);
            let x_2904 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2903.x, x_2904.y, x_2903.y, x_2903.z);
            let x_2907 : f32 = u_xlat12.x;
            u_xlat14.y = x_2907;
            let x_2909 : vec4<f32> = u_xlat9;
            let x_2912 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2915 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2909.x, x_2909.y, x_2909.x, x_2909.y) * vec4<f32>(x_2912.x, x_2912.y, x_2912.x, x_2912.y)) + vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2915.y));
            let x_2918 : vec4<f32> = u_xlat9;
            let x_2921 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2924 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2918.x, x_2918.y) * vec2<f32>(x_2921.x, x_2921.y)) + vec2<f32>(x_2924.w, x_2924.y));
            let x_2928 : f32 = u_xlat14.y;
            u_xlat11.y = x_2928;
            let x_2931 : f32 = u_xlat12.z;
            u_xlat14.y = x_2931;
            let x_2933 : vec4<f32> = u_xlat9;
            let x_2936 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2933.x, x_2933.y, x_2933.x, x_2933.y) * vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.y)) + vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2939.y));
            let x_2942 : vec4<f32> = u_xlat9;
            let x_2945 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2948 : vec4<f32> = u_xlat14;
            let x_2950 : vec2<f32> = ((vec2<f32>(x_2942.x, x_2942.y) * vec2<f32>(x_2945.x, x_2945.y)) + vec2<f32>(x_2948.w, x_2948.y));
            let x_2951 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2954 : f32 = u_xlat14.y;
            u_xlat11.z = x_2954;
            let x_2957 : vec4<f32> = u_xlat9;
            let x_2960 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y) * vec4<f32>(x_2960.x, x_2960.y, x_2960.x, x_2960.y)) + vec4<f32>(x_2963.x, x_2963.y, x_2963.x, x_2963.z));
            let x_2967 : f32 = u_xlat12.w;
            u_xlat14.y = x_2967;
            let x_2970 : vec4<f32> = u_xlat9;
            let x_2973 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2970.x, x_2970.y, x_2970.x, x_2970.y) * vec4<f32>(x_2973.x, x_2973.y, x_2973.x, x_2973.y)) + vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2976.y));
            let x_2980 : vec4<f32> = u_xlat9;
            let x_2983 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2986 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2980.x, x_2980.y) * vec2<f32>(x_2983.x, x_2983.y)) + vec2<f32>(x_2986.w, x_2986.y));
            let x_2990 : f32 = u_xlat14.y;
            u_xlat11.w = x_2990;
            let x_2993 : vec4<f32> = u_xlat9;
            let x_2996 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2999 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2993.x, x_2993.y) * vec2<f32>(x_2996.x, x_2996.y)) + vec2<f32>(x_2999.x, x_2999.w));
            let x_3002 : vec4<f32> = u_xlat14;
            let x_3003 : vec3<f32> = vec3<f32>(x_3002.x, x_3002.z, x_3002.w);
            let x_3004 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3003.x, x_3004.y, x_3003.y, x_3003.z);
            let x_3006 : vec4<f32> = u_xlat9;
            let x_3009 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_3012 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y) * vec4<f32>(x_3009.x, x_3009.y, x_3009.x, x_3009.y)) + vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3012.y));
            let x_3015 : vec4<f32> = u_xlat9;
            let x_3018 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_3021 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3015.x, x_3015.y) * vec2<f32>(x_3018.x, x_3018.y)) + vec2<f32>(x_3021.w, x_3021.y));
            let x_3025 : f32 = u_xlat11.x;
            u_xlat12.x = x_3025;
            let x_3027 : vec4<f32> = u_xlat9;
            let x_3030 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_3033 : vec4<f32> = u_xlat12;
            let x_3035 : vec2<f32> = ((vec2<f32>(x_3027.x, x_3027.y) * vec2<f32>(x_3030.x, x_3030.y)) + vec2<f32>(x_3033.x, x_3033.y));
            let x_3036 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3035.x, x_3035.y, x_3036.z, x_3036.w);
            let x_3039 : vec4<f32> = u_xlat10;
            let x_3041 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3039.x, x_3039.x, x_3039.x, x_3039.x) * x_3041);
            let x_3044 : vec4<f32> = u_xlat10;
            let x_3046 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3044.y, x_3044.y, x_3044.y, x_3044.y) * x_3046);
            let x_3049 : vec4<f32> = u_xlat10;
            let x_3051 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3049.z, x_3049.z, x_3049.z, x_3049.z) * x_3051);
            let x_3053 : vec4<f32> = u_xlat10;
            let x_3055 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3053.w, x_3053.w, x_3053.w, x_3053.w) * x_3055);
            let x_3058 : vec4<f32> = u_xlat15;
            let x_3059 : vec2<f32> = vec2<f32>(x_3058.x, x_3058.y);
            let x_3061 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3059.x, x_3059.y, x_3061);
            let x_3068 : vec3<f32> = txVec43;
            let x_3070 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3068.xy, x_3068.z);
            u_xlat11.x = x_3070;
            let x_3073 : vec4<f32> = u_xlat15;
            let x_3074 : vec2<f32> = vec2<f32>(x_3073.z, x_3073.w);
            let x_3076 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
            let x_3084 : vec3<f32> = txVec44;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat80 = x_3086;
            let x_3087 : f32 = u_xlat80;
            let x_3089 : f32 = u_xlat20.y;
            u_xlat80 = (x_3087 * x_3089);
            let x_3092 : f32 = u_xlat20.x;
            let x_3094 : f32 = u_xlat11.x;
            let x_3096 : f32 = u_xlat80;
            u_xlat11.x = ((x_3092 * x_3094) + x_3096);
            let x_3100 : vec2<f32> = u_xlat55;
            let x_3102 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3100.x, x_3100.y, x_3102);
            let x_3109 : vec3<f32> = txVec45;
            let x_3111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3109.xy, x_3109.z);
            u_xlat55.x = x_3111;
            let x_3114 : f32 = u_xlat20.z;
            let x_3116 : f32 = u_xlat55.x;
            let x_3119 : f32 = u_xlat11.x;
            u_xlat55.x = ((x_3114 * x_3116) + x_3119);
            let x_3123 : vec4<f32> = u_xlat18;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.x, x_3123.y);
            let x_3126 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3134 : vec3<f32> = txVec46;
            let x_3136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3134.xy, x_3134.z);
            u_xlat78 = x_3136;
            let x_3138 : f32 = u_xlat20.w;
            let x_3139 : f32 = u_xlat78;
            let x_3142 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3138 * x_3139) + x_3142);
            let x_3146 : vec4<f32> = u_xlat16;
            let x_3147 : vec2<f32> = vec2<f32>(x_3146.x, x_3146.y);
            let x_3149 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3156 : vec3<f32> = txVec47;
            let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
            u_xlat78 = x_3158;
            let x_3160 : f32 = u_xlat21.x;
            let x_3161 : f32 = u_xlat78;
            let x_3164 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3160 * x_3161) + x_3164);
            let x_3168 : vec4<f32> = u_xlat16;
            let x_3169 : vec2<f32> = vec2<f32>(x_3168.z, x_3168.w);
            let x_3171 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
            let x_3178 : vec3<f32> = txVec48;
            let x_3180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
            u_xlat78 = x_3180;
            let x_3182 : f32 = u_xlat21.y;
            let x_3183 : f32 = u_xlat78;
            let x_3186 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3182 * x_3183) + x_3186);
            let x_3190 : vec4<f32> = u_xlat17;
            let x_3191 : vec2<f32> = vec2<f32>(x_3190.x, x_3190.y);
            let x_3193 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3191.x, x_3191.y, x_3193);
            let x_3200 : vec3<f32> = txVec49;
            let x_3202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3200.xy, x_3200.z);
            u_xlat78 = x_3202;
            let x_3204 : f32 = u_xlat21.z;
            let x_3205 : f32 = u_xlat78;
            let x_3208 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3204 * x_3205) + x_3208);
            let x_3212 : vec4<f32> = u_xlat18;
            let x_3213 : vec2<f32> = vec2<f32>(x_3212.z, x_3212.w);
            let x_3215 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3213.x, x_3213.y, x_3215);
            let x_3222 : vec3<f32> = txVec50;
            let x_3224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
            u_xlat78 = x_3224;
            let x_3226 : f32 = u_xlat21.w;
            let x_3227 : f32 = u_xlat78;
            let x_3230 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3226 * x_3227) + x_3230);
            let x_3234 : vec4<f32> = u_xlat19;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.x, x_3234.y);
            let x_3237 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3244 : vec3<f32> = txVec51;
            let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
            u_xlat78 = x_3246;
            let x_3248 : f32 = u_xlat22.x;
            let x_3249 : f32 = u_xlat78;
            let x_3252 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3248 * x_3249) + x_3252);
            let x_3256 : vec4<f32> = u_xlat19;
            let x_3257 : vec2<f32> = vec2<f32>(x_3256.z, x_3256.w);
            let x_3259 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3257.x, x_3257.y, x_3259);
            let x_3266 : vec3<f32> = txVec52;
            let x_3268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3266.xy, x_3266.z);
            u_xlat78 = x_3268;
            let x_3270 : f32 = u_xlat22.y;
            let x_3271 : f32 = u_xlat78;
            let x_3274 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3270 * x_3271) + x_3274);
            let x_3278 : vec2<f32> = u_xlat34;
            let x_3280 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3278.x, x_3278.y, x_3280);
            let x_3287 : vec3<f32> = txVec53;
            let x_3289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3287.xy, x_3287.z);
            u_xlat78 = x_3289;
            let x_3291 : f32 = u_xlat22.z;
            let x_3292 : f32 = u_xlat78;
            let x_3295 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3291 * x_3292) + x_3295);
            let x_3299 : vec2<f32> = u_xlat63;
            let x_3301 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3299.x, x_3299.y, x_3301);
            let x_3308 : vec3<f32> = txVec54;
            let x_3310 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3308.xy, x_3308.z);
            u_xlat78 = x_3310;
            let x_3312 : f32 = u_xlat22.w;
            let x_3313 : f32 = u_xlat78;
            let x_3316 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3312 * x_3313) + x_3316);
            let x_3320 : vec4<f32> = u_xlat14;
            let x_3321 : vec2<f32> = vec2<f32>(x_3320.x, x_3320.y);
            let x_3323 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3321.x, x_3321.y, x_3323);
            let x_3330 : vec3<f32> = txVec55;
            let x_3332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3330.xy, x_3330.z);
            u_xlat78 = x_3332;
            let x_3334 : f32 = u_xlat10.x;
            let x_3335 : f32 = u_xlat78;
            let x_3338 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3334 * x_3335) + x_3338);
            let x_3342 : vec4<f32> = u_xlat14;
            let x_3343 : vec2<f32> = vec2<f32>(x_3342.z, x_3342.w);
            let x_3345 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3343.x, x_3343.y, x_3345);
            let x_3352 : vec3<f32> = txVec56;
            let x_3354 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3352.xy, x_3352.z);
            u_xlat78 = x_3354;
            let x_3356 : f32 = u_xlat10.y;
            let x_3357 : f32 = u_xlat78;
            let x_3360 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3356 * x_3357) + x_3360);
            let x_3364 : vec2<f32> = u_xlat58;
            let x_3366 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec57;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat78 = x_3375;
            let x_3377 : f32 = u_xlat10.z;
            let x_3378 : f32 = u_xlat78;
            let x_3381 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3377 * x_3378) + x_3381);
            let x_3385 : vec4<f32> = u_xlat9;
            let x_3386 : vec2<f32> = vec2<f32>(x_3385.x, x_3385.y);
            let x_3388 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
            let x_3395 : vec3<f32> = txVec58;
            let x_3397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3395.xy, x_3395.z);
            u_xlat9.x = x_3397;
            let x_3400 : f32 = u_xlat10.w;
            let x_3402 : f32 = u_xlat9.x;
            let x_3405 : f32 = u_xlat55.x;
            u_xlat77 = ((x_3400 * x_3402) + x_3405);
          }
        }
      } else {
        let x_3409 : vec4<f32> = u_xlat8;
        let x_3410 : vec2<f32> = vec2<f32>(x_3409.x, x_3409.y);
        let x_3412 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
        let x_3419 : vec3<f32> = txVec59;
        let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
        u_xlat77 = x_3421;
      }
      let x_3422 : i32 = u_xlati75;
      let x_3424 : f32 = x_307.x_AdditionalShadowParams[x_3422].x;
      u_xlat8.x = (1.0f + -(x_3424));
      let x_3428 : f32 = u_xlat77;
      let x_3429 : i32 = u_xlati75;
      let x_3431 : f32 = x_307.x_AdditionalShadowParams[x_3429].x;
      let x_3434 : f32 = u_xlat8.x;
      u_xlat8.x = ((x_3428 * x_3431) + x_3434);
      let x_3438 : f32 = u_xlat8.z;
      u_xlatb31.x = (0.0f >= x_3438);
      let x_3443 : f32 = u_xlat8.z;
      u_xlatb54 = (x_3443 >= 1.0f);
      let x_3445 : bool = u_xlatb54;
      let x_3447 : bool = u_xlatb31.x;
      u_xlatb31.x = (x_3445 | x_3447);
      let x_3451 : bool = u_xlatb31.x;
      if (x_3451) {
        x_3452 = 1.0f;
      } else {
        let x_3457 : f32 = u_xlat8.x;
        x_3452 = x_3457;
      }
      let x_3458 : f32 = x_3452;
      u_xlat8.x = x_3458;
    } else {
      u_xlat8.x = 1.0f;
    }
    let x_3463 : f32 = u_xlat8.x;
    u_xlat31.x = (-(x_3463) + 1.0f);
    let x_3468 : f32 = u_xlat4.x;
    let x_3470 : f32 = u_xlat31.x;
    let x_3473 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_3468 * x_3470) + x_3473);
    let x_3477 : i32 = u_xlati75;
    u_xlati31 = (1i << bitcast<u32>((x_3477 & 31i)));
    let x_3481 : i32 = u_xlati31;
    let x_3484 : f32 = x_1658.x_AdditionalLightsCookieEnableBits;
    u_xlati31 = bitcast<i32>((bitcast<u32>(x_3481) & bitcast<u32>(x_3484)));
    let x_3488 : i32 = u_xlati31;
    if ((x_3488 != 0i)) {
      let x_3492 : i32 = u_xlati75;
      let x_3494 : f32 = x_1658.x_AdditionalLightsLightTypes[x_3492].el;
      u_xlati31 = i32(x_3494);
      let x_3497 : i32 = u_xlati31;
      u_xlati54 = select(1i, 0i, (x_3497 != 0i));
      let x_3501 : i32 = u_xlati75;
      u_xlati77 = (x_3501 << bitcast<u32>(2i));
      let x_3503 : i32 = u_xlati54;
      if ((x_3503 != 0i)) {
        let x_3507 : vec3<f32> = vs_TEXCOORD1;
        let x_3509 : i32 = u_xlati77;
        let x_3512 : i32 = u_xlati77;
        let x_3516 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3509 + 1i) / 4i)][((x_3512 + 1i) % 4i)];
        let x_3518 : vec3<f32> = (vec3<f32>(x_3507.y, x_3507.y, x_3507.y) * vec3<f32>(x_3516.x, x_3516.y, x_3516.w));
        let x_3519 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3518.x, x_3518.y, x_3518.z, x_3519.w);
        let x_3521 : i32 = u_xlati77;
        let x_3523 : i32 = u_xlati77;
        let x_3526 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[(x_3521 / 4i)][(x_3523 % 4i)];
        let x_3528 : vec3<f32> = vs_TEXCOORD1;
        let x_3531 : vec4<f32> = u_xlat9;
        let x_3533 : vec3<f32> = ((vec3<f32>(x_3526.x, x_3526.y, x_3526.w) * vec3<f32>(x_3528.x, x_3528.x, x_3528.x)) + vec3<f32>(x_3531.x, x_3531.y, x_3531.z));
        let x_3534 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3533.x, x_3533.y, x_3533.z, x_3534.w);
        let x_3536 : i32 = u_xlati77;
        let x_3539 : i32 = u_xlati77;
        let x_3543 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3536 + 2i) / 4i)][((x_3539 + 2i) % 4i)];
        let x_3545 : vec3<f32> = vs_TEXCOORD1;
        let x_3548 : vec4<f32> = u_xlat9;
        let x_3550 : vec3<f32> = ((vec3<f32>(x_3543.x, x_3543.y, x_3543.w) * vec3<f32>(x_3545.z, x_3545.z, x_3545.z)) + vec3<f32>(x_3548.x, x_3548.y, x_3548.z));
        let x_3551 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3550.x, x_3550.y, x_3550.z, x_3551.w);
        let x_3553 : vec4<f32> = u_xlat9;
        let x_3555 : i32 = u_xlati77;
        let x_3558 : i32 = u_xlati77;
        let x_3562 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3555 + 3i) / 4i)][((x_3558 + 3i) % 4i)];
        let x_3564 : vec3<f32> = (vec3<f32>(x_3553.x, x_3553.y, x_3553.z) + vec3<f32>(x_3562.x, x_3562.y, x_3562.w));
        let x_3565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3564.x, x_3564.y, x_3564.z, x_3565.w);
        let x_3567 : vec4<f32> = u_xlat9;
        let x_3569 : vec4<f32> = u_xlat9;
        let x_3571 : vec2<f32> = (vec2<f32>(x_3567.x, x_3567.y) / vec2<f32>(x_3569.z, x_3569.z));
        let x_3572 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3571.x, x_3571.y, x_3572.z, x_3572.w);
        let x_3574 : vec4<f32> = u_xlat9;
        let x_3577 : vec2<f32> = ((vec2<f32>(x_3574.x, x_3574.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3578 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3577.x, x_3577.y, x_3578.z, x_3578.w);
        let x_3580 : vec4<f32> = u_xlat9;
        let x_3584 : vec2<f32> = clamp(vec2<f32>(x_3580.x, x_3580.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3585 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3584.x, x_3584.y, x_3585.z, x_3585.w);
        let x_3587 : i32 = u_xlati75;
        let x_3589 : vec4<f32> = x_1658.x_AdditionalLightsCookieAtlasUVRects[x_3587];
        let x_3591 : vec4<f32> = u_xlat9;
        let x_3594 : i32 = u_xlati75;
        let x_3596 : vec4<f32> = x_1658.x_AdditionalLightsCookieAtlasUVRects[x_3594];
        let x_3598 : vec2<f32> = ((vec2<f32>(x_3589.x, x_3589.y) * vec2<f32>(x_3591.x, x_3591.y)) + vec2<f32>(x_3596.z, x_3596.w));
        let x_3599 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3598.x, x_3598.y, x_3599.z, x_3599.w);
      } else {
        let x_3602 : i32 = u_xlati31;
        u_xlatb31.x = (x_3602 == 1i);
        let x_3606 : bool = u_xlatb31.x;
        u_xlati31 = select(0i, 1i, x_3606);
        let x_3608 : i32 = u_xlati31;
        if ((x_3608 != 0i)) {
          let x_3612 : vec3<f32> = vs_TEXCOORD1;
          let x_3614 : i32 = u_xlati77;
          let x_3617 : i32 = u_xlati77;
          let x_3621 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3614 + 1i) / 4i)][((x_3617 + 1i) % 4i)];
          let x_3623 : vec2<f32> = (vec2<f32>(x_3612.y, x_3612.y) * vec2<f32>(x_3621.x, x_3621.y));
          let x_3624 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3623.x, x_3623.y, x_3624.z);
          let x_3626 : i32 = u_xlati77;
          let x_3628 : i32 = u_xlati77;
          let x_3631 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[(x_3626 / 4i)][(x_3628 % 4i)];
          let x_3633 : vec3<f32> = vs_TEXCOORD1;
          let x_3636 : vec3<f32> = u_xlat31;
          let x_3638 : vec2<f32> = ((vec2<f32>(x_3631.x, x_3631.y) * vec2<f32>(x_3633.x, x_3633.x)) + vec2<f32>(x_3636.x, x_3636.y));
          let x_3639 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3638.x, x_3638.y, x_3639.z);
          let x_3641 : i32 = u_xlati77;
          let x_3644 : i32 = u_xlati77;
          let x_3648 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3641 + 2i) / 4i)][((x_3644 + 2i) % 4i)];
          let x_3650 : vec3<f32> = vs_TEXCOORD1;
          let x_3653 : vec3<f32> = u_xlat31;
          let x_3655 : vec2<f32> = ((vec2<f32>(x_3648.x, x_3648.y) * vec2<f32>(x_3650.z, x_3650.z)) + vec2<f32>(x_3653.x, x_3653.y));
          let x_3656 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3655.x, x_3655.y, x_3656.z);
          let x_3658 : vec3<f32> = u_xlat31;
          let x_3660 : i32 = u_xlati77;
          let x_3663 : i32 = u_xlati77;
          let x_3667 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3660 + 3i) / 4i)][((x_3663 + 3i) % 4i)];
          let x_3669 : vec2<f32> = (vec2<f32>(x_3658.x, x_3658.y) + vec2<f32>(x_3667.x, x_3667.y));
          let x_3670 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3669.x, x_3669.y, x_3670.z);
          let x_3672 : vec3<f32> = u_xlat31;
          let x_3675 : vec2<f32> = ((vec2<f32>(x_3672.x, x_3672.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3676 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3675.x, x_3675.y, x_3676.z);
          let x_3678 : vec3<f32> = u_xlat31;
          let x_3680 : vec2<f32> = fract(vec2<f32>(x_3678.x, x_3678.y));
          let x_3681 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3680.x, x_3680.y, x_3681.z);
          let x_3683 : i32 = u_xlati75;
          let x_3685 : vec4<f32> = x_1658.x_AdditionalLightsCookieAtlasUVRects[x_3683];
          let x_3687 : vec3<f32> = u_xlat31;
          let x_3690 : i32 = u_xlati75;
          let x_3692 : vec4<f32> = x_1658.x_AdditionalLightsCookieAtlasUVRects[x_3690];
          let x_3694 : vec2<f32> = ((vec2<f32>(x_3685.x, x_3685.y) * vec2<f32>(x_3687.x, x_3687.y)) + vec2<f32>(x_3692.z, x_3692.w));
          let x_3695 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3694.x, x_3694.y, x_3695.z, x_3695.w);
        } else {
          let x_3698 : vec3<f32> = vs_TEXCOORD1;
          let x_3700 : i32 = u_xlati77;
          let x_3703 : i32 = u_xlati77;
          let x_3707 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3700 + 1i) / 4i)][((x_3703 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3698.y, x_3698.y, x_3698.y, x_3698.y) * x_3707);
          let x_3709 : i32 = u_xlati77;
          let x_3711 : i32 = u_xlati77;
          let x_3714 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[(x_3709 / 4i)][(x_3711 % 4i)];
          let x_3715 : vec3<f32> = vs_TEXCOORD1;
          let x_3718 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3714 * vec4<f32>(x_3715.x, x_3715.x, x_3715.x, x_3715.x)) + x_3718);
          let x_3720 : i32 = u_xlati77;
          let x_3723 : i32 = u_xlati77;
          let x_3727 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3720 + 2i) / 4i)][((x_3723 + 2i) % 4i)];
          let x_3728 : vec3<f32> = vs_TEXCOORD1;
          let x_3731 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3727 * vec4<f32>(x_3728.z, x_3728.z, x_3728.z, x_3728.z)) + x_3731);
          let x_3733 : vec4<f32> = u_xlat10;
          let x_3734 : i32 = u_xlati77;
          let x_3737 : i32 = u_xlati77;
          let x_3741 : vec4<f32> = x_1658.x_AdditionalLightsWorldToLights[((x_3734 + 3i) / 4i)][((x_3737 + 3i) % 4i)];
          u_xlat10 = (x_3733 + x_3741);
          let x_3743 : vec4<f32> = u_xlat10;
          let x_3745 : vec4<f32> = u_xlat10;
          u_xlat31 = (vec3<f32>(x_3743.x, x_3743.y, x_3743.z) / vec3<f32>(x_3745.w, x_3745.w, x_3745.w));
          let x_3748 : vec3<f32> = u_xlat31;
          let x_3749 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(x_3748, x_3749);
          let x_3753 : f32 = u_xlat55.x;
          u_xlat55.x = inverseSqrt(x_3753);
          let x_3756 : vec3<f32> = u_xlat31;
          let x_3757 : vec2<f32> = u_xlat55;
          u_xlat31 = (x_3756 * vec3<f32>(x_3757.x, x_3757.x, x_3757.x));
          let x_3760 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(abs(x_3760), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3766 : f32 = u_xlat55.x;
          u_xlat55.x = max(x_3766, 0.00000099999999747524f);
          let x_3771 : f32 = u_xlat55.x;
          u_xlat55.x = (1.0f / x_3771);
          let x_3774 : vec3<f32> = u_xlat31;
          let x_3776 : vec2<f32> = u_xlat55;
          let x_3778 : vec3<f32> = (vec3<f32>(x_3774.z, x_3774.x, x_3774.y) * vec3<f32>(x_3776.x, x_3776.x, x_3776.x));
          let x_3779 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3778.x, x_3778.y, x_3778.z, x_3779.w);
          let x_3782 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3782);
          let x_3786 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3786, 0.0f, 1.0f);
          let x_3790 : vec4<f32> = u_xlat10;
          let x_3792 : vec4<bool> = (vec4<f32>(x_3790.y, x_3790.z, x_3790.y, x_3790.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_3792.x, x_3792.y);
          let x_3795 : vec4<f32> = u_xlat10;
          hlslcc_movcTemp = x_3795;
          let x_3797 : bool = u_xlatb33.x;
          if (x_3797) {
            let x_3802 : f32 = u_xlat10.x;
            x_3798 = x_3802;
          } else {
            let x_3805 : f32 = u_xlat10.x;
            x_3798 = -(x_3805);
          }
          let x_3807 : f32 = x_3798;
          hlslcc_movcTemp.x = x_3807;
          let x_3810 : bool = u_xlatb33.y;
          if (x_3810) {
            let x_3815 : f32 = u_xlat10.x;
            x_3811 = x_3815;
          } else {
            let x_3818 : f32 = u_xlat10.x;
            x_3811 = -(x_3818);
          }
          let x_3820 : f32 = x_3811;
          hlslcc_movcTemp.y = x_3820;
          let x_3822 : vec4<f32> = hlslcc_movcTemp;
          u_xlat10 = x_3822;
          let x_3823 : vec3<f32> = u_xlat31;
          let x_3825 : vec2<f32> = u_xlat55;
          let x_3828 : vec4<f32> = u_xlat10;
          let x_3830 : vec2<f32> = ((vec2<f32>(x_3823.x, x_3823.y) * vec2<f32>(x_3825.x, x_3825.x)) + vec2<f32>(x_3828.x, x_3828.y));
          let x_3831 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3830.x, x_3830.y, x_3831.z);
          let x_3833 : vec3<f32> = u_xlat31;
          let x_3836 : vec2<f32> = ((vec2<f32>(x_3833.x, x_3833.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3837 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3836.x, x_3836.y, x_3837.z);
          let x_3839 : vec3<f32> = u_xlat31;
          let x_3843 : vec2<f32> = clamp(vec2<f32>(x_3839.x, x_3839.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3844 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3843.x, x_3843.y, x_3844.z);
          let x_3846 : i32 = u_xlati75;
          let x_3848 : vec4<f32> = x_1658.x_AdditionalLightsCookieAtlasUVRects[x_3846];
          let x_3850 : vec3<f32> = u_xlat31;
          let x_3853 : i32 = u_xlati75;
          let x_3855 : vec4<f32> = x_1658.x_AdditionalLightsCookieAtlasUVRects[x_3853];
          let x_3857 : vec2<f32> = ((vec2<f32>(x_3848.x, x_3848.y) * vec2<f32>(x_3850.x, x_3850.y)) + vec2<f32>(x_3855.z, x_3855.w));
          let x_3858 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3857.x, x_3857.y, x_3858.z, x_3858.w);
        }
      }
      let x_3865 : vec4<f32> = u_xlat9;
      let x_3867 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3865.x, x_3865.y), 0.0f);
      u_xlat9 = x_3867;
      let x_3869 : bool = u_xlatb28.y;
      if (x_3869) {
        let x_3874 : f32 = u_xlat9.w;
        x_3870 = x_3874;
      } else {
        let x_3877 : f32 = u_xlat9.x;
        x_3870 = x_3877;
      }
      let x_3878 : f32 = x_3870;
      u_xlat31.x = x_3878;
      let x_3881 : bool = u_xlatb28.x;
      if (x_3881) {
        let x_3885 : vec4<f32> = u_xlat9;
        x_3882 = vec3<f32>(x_3885.x, x_3885.y, x_3885.z);
      } else {
        let x_3888 : vec3<f32> = u_xlat31;
        x_3882 = vec3<f32>(x_3888.x, x_3888.x, x_3888.x);
      }
      let x_3890 : vec3<f32> = x_3882;
      u_xlat31 = x_3890;
    } else {
      u_xlat31.x = 1.0f;
      u_xlat31.y = 1.0f;
      u_xlat31.z = 1.0f;
    }
    let x_3895 : vec3<f32> = u_xlat31;
    let x_3896 : i32 = u_xlati75;
    let x_3898 : vec4<f32> = x_1958.x_AdditionalLightsColor[x_3896];
    u_xlat31 = (x_3895 * vec3<f32>(x_3898.x, x_3898.y, x_3898.z));
    let x_3901 : f32 = u_xlat76;
    let x_3903 : f32 = u_xlat8.x;
    u_xlat75 = (x_3901 * x_3903);
    let x_3905 : f32 = u_xlat75;
    let x_3907 : vec3<f32> = u_xlat31;
    let x_3908 : vec3<f32> = (vec3<f32>(x_3905, x_3905, x_3905) * x_3907);
    let x_3909 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3908.x, x_3908.y, x_3908.z, x_3909.w);
    let x_3911 : vec3<f32> = u_xlat2;
    let x_3912 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(x_3911, vec3<f32>(x_3912.x, x_3912.y, x_3912.z));
    let x_3915 : f32 = u_xlat75;
    u_xlat75 = clamp(x_3915, 0.0f, 1.0f);
    let x_3917 : f32 = u_xlat75;
    let x_3919 : vec4<f32> = u_xlat8;
    let x_3921 : vec3<f32> = (vec3<f32>(x_3917, x_3917, x_3917) * vec3<f32>(x_3919.x, x_3919.y, x_3919.z));
    let x_3922 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3921.x, x_3921.y, x_3921.z, x_3922.w);
    let x_3924 : vec3<f32> = u_xlat1;
    let x_3925 : f32 = u_xlat70;
    let x_3928 : vec4<f32> = u_xlat7;
    let x_3930 : vec3<f32> = ((x_3924 * vec3<f32>(x_3925, x_3925, x_3925)) + vec3<f32>(x_3928.x, x_3928.y, x_3928.z));
    let x_3931 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3930.x, x_3930.y, x_3930.z, x_3931.w);
    let x_3933 : vec4<f32> = u_xlat7;
    let x_3935 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_3933.x, x_3933.y, x_3933.z), vec3<f32>(x_3935.x, x_3935.y, x_3935.z));
    let x_3938 : f32 = u_xlat75;
    u_xlat75 = max(x_3938, 1.17549435e-38f);
    let x_3940 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_3940);
    let x_3942 : f32 = u_xlat75;
    let x_3944 : vec4<f32> = u_xlat7;
    let x_3946 : vec3<f32> = (vec3<f32>(x_3942, x_3942, x_3942) * vec3<f32>(x_3944.x, x_3944.y, x_3944.z));
    let x_3947 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3946.x, x_3946.y, x_3946.z, x_3947.w);
    let x_3949 : vec3<f32> = u_xlat2;
    let x_3950 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(x_3949, vec3<f32>(x_3950.x, x_3950.y, x_3950.z));
    let x_3953 : f32 = u_xlat75;
    u_xlat75 = clamp(x_3953, 0.0f, 1.0f);
    let x_3955 : f32 = u_xlat75;
    u_xlat75 = log2(x_3955);
    let x_3957 : f32 = u_xlat72;
    let x_3958 : f32 = u_xlat75;
    u_xlat75 = (x_3957 * x_3958);
    let x_3960 : f32 = u_xlat75;
    u_xlat75 = exp2(x_3960);
    let x_3962 : f32 = u_xlat75;
    let x_3965 : vec4<f32> = x_57.x_SpecColor;
    let x_3967 : vec3<f32> = (vec3<f32>(x_3962, x_3962, x_3962) * vec3<f32>(x_3965.x, x_3965.y, x_3965.z));
    let x_3968 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3967.x, x_3967.y, x_3967.z, x_3968.w);
    let x_3970 : vec4<f32> = u_xlat7;
    let x_3972 : vec4<f32> = u_xlat8;
    let x_3974 : vec3<f32> = (vec3<f32>(x_3970.x, x_3970.y, x_3970.z) * vec3<f32>(x_3972.x, x_3972.y, x_3972.z));
    let x_3975 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3974.x, x_3974.y, x_3974.z, x_3975.w);
    let x_3977 : vec4<f32> = u_xlat9;
    let x_3979 : vec4<f32> = u_xlat0;
    let x_3982 : vec4<f32> = u_xlat7;
    let x_3984 : vec3<f32> = ((vec3<f32>(x_3977.x, x_3977.y, x_3977.z) * vec3<f32>(x_3979.y, x_3979.z, x_3979.w)) + vec3<f32>(x_3982.x, x_3982.y, x_3982.z));
    let x_3985 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3984.x, x_3984.y, x_3984.z, x_3985.w);
    let x_3987 : vec4<f32> = u_xlat6;
    let x_3989 : vec4<f32> = u_xlat7;
    let x_3991 : vec3<f32> = (vec3<f32>(x_3987.x, x_3987.y, x_3987.z) + vec3<f32>(x_3989.x, x_3989.y, x_3989.z));
    let x_3992 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3991.x, x_3991.y, x_3991.z, x_3992.w);

    continuing {
      let x_3994 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3994 + bitcast<u32>(1i));
    }
  }
  let x_3997 : vec4<f32> = u_xlat3;
  let x_3999 : vec4<f32> = u_xlat0;
  let x_4002 : vec3<f32> = u_xlat27;
  u_xlat23 = ((vec3<f32>(x_3997.x, x_3997.y, x_3997.z) * vec3<f32>(x_3999.y, x_3999.z, x_3999.w)) + x_4002);
  let x_4004 : vec4<f32> = u_xlat6;
  let x_4006 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_4004.x, x_4004.y, x_4004.z) + x_4006);
  let x_4008 : f32 = u_xlat71;
  let x_4009 : f32 = u_xlat71;
  u_xlat1.x = (x_4008 * -(x_4009));
  let x_4014 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4014);
  let x_4017 : vec3<f32> = u_xlat23;
  let x_4019 : vec4<f32> = x_45.unity_FogColor;
  u_xlat23 = (x_4017 + -(vec3<f32>(x_4019.x, x_4019.y, x_4019.z)));
  let x_4025 : vec3<f32> = u_xlat1;
  let x_4027 : vec3<f32> = u_xlat23;
  let x_4030 : vec4<f32> = x_45.unity_FogColor;
  let x_4032 : vec3<f32> = ((vec3<f32>(x_4025.x, x_4025.x, x_4025.x) * x_4027) + vec3<f32>(x_4030.x, x_4030.y, x_4030.z));
  let x_4033 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4032.x, x_4032.y, x_4032.z, x_4033.w);
  let x_4037 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_4037 == 1.0f);
  let x_4039 : bool = u_xlatb23;
  if (x_4039) {
    let x_4044 : f32 = u_xlat0.x;
    x_4040 = x_4044;
  } else {
    x_4040 = 1.0f;
  }
  let x_4046 : f32 = x_4040;
  SV_Target0.w = x_4046;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


