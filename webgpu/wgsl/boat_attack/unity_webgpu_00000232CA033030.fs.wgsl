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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlatb71 : bool;

@group(1) @binding(4) var<uniform> x_328 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb4 : bool;

var<private> u_xlat50 : vec2<f32>;

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

@group(1) @binding(5) var<uniform> x_1679 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati7 : i32;

var<private> u_xlati75 : i32;

@group(1) @binding(1) var<uniform> x_1981 : AdditionalLights;

var<private> u_xlat76 : f32;

var<private> u_xlati8 : i32;

var<private> u_xlatb31 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat54 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb77 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

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
  var x_1763 : f32;
  var x_1775 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2132 : f32;
  var x_2143 : f32;
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
  var x_3475 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_3821 : f32;
  var x_3834 : f32;
  var x_3893 : f32;
  var x_3905 : vec3<f32>;
  var x_4064 : f32;
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
  let x_159 : vec4<f32> = u_xlat2;
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
    let x_180 : vec4<f32> = u_xlat2;
    x_175 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  }
  let x_182 : vec3<f32> = x_175;
  u_xlat1 = x_182;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  let x_186 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_185, x_186);
  let x_188 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_188);
  let x_190 : f32 = u_xlat70;
  let x_192 : vec3<f32> = vs_TEXCOORD2;
  let x_193 : vec3<f32> = (vec3<f32>(x_190, x_190, x_190) * x_192);
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec3<f32> = u_xlat1;
  let x_197 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_196, x_197);
  let x_199 : f32 = u_xlat70;
  u_xlat70 = max(x_199, 0.00006103515625f);
  let x_202 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_202);
  let x_206 : f32 = vs_TEXCOORD1.y;
  let x_208 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat3 = (x_206 * x_208);
  let x_211 : f32 = x_45.unity_MatrixV[0i].z;
  let x_213 : f32 = vs_TEXCOORD1.x;
  let x_215 : f32 = u_xlat3;
  u_xlat3 = ((x_211 * x_213) + x_215);
  let x_218 : f32 = x_45.unity_MatrixV[2i].z;
  let x_220 : f32 = vs_TEXCOORD1.z;
  let x_222 : f32 = u_xlat3;
  u_xlat3 = ((x_218 * x_220) + x_222);
  let x_224 : f32 = u_xlat3;
  let x_227 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat3 = (x_224 + x_227);
  let x_229 : f32 = u_xlat3;
  let x_233 : f32 = x_45.x_ProjectionParams.y;
  u_xlat3 = (-(x_229) + -(x_233));
  let x_236 : f32 = u_xlat3;
  u_xlat3 = max(x_236, 0.0f);
  let x_238 : f32 = u_xlat3;
  let x_241 : f32 = x_45.unity_FogParams.x;
  u_xlat3 = (x_238 * x_241);
  u_xlat2.w = 1.0f;
  let x_247 : vec4<f32> = x_95.unity_SHAr;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_247, x_248);
  let x_253 : vec4<f32> = x_95.unity_SHAg;
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_253, x_254);
  let x_259 : vec4<f32> = x_95.unity_SHAb;
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_259, x_260);
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_264.y, x_264.z, x_264.z, x_264.x) * vec4<f32>(x_266.x, x_266.y, x_266.z, x_266.z));
  let x_272 : vec4<f32> = x_95.unity_SHBr;
  let x_273 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_272, x_273);
  let x_278 : vec4<f32> = x_95.unity_SHBg;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_278, x_279);
  let x_284 : vec4<f32> = x_95.unity_SHBb;
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_284, x_285);
  let x_290 : f32 = u_xlat2.y;
  let x_292 : f32 = u_xlat2.y;
  u_xlat71 = (x_290 * x_292);
  let x_295 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat2.x;
  let x_299 : f32 = u_xlat71;
  u_xlat71 = ((x_295 * x_297) + -(x_299));
  let x_305 : vec4<f32> = x_95.unity_SHC;
  let x_307 : f32 = u_xlat71;
  let x_310 : vec4<f32> = u_xlat6;
  u_xlat26 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307, x_307, x_307)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec3<f32> = u_xlat26;
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat26 = (x_313 + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_317, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_331 : f32 = x_328.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_331);
  let x_333 : bool = u_xlatb71;
  if (x_333) {
    let x_337 : f32 = x_328.x_MainLightShadowParams.y;
    u_xlatb71 = (x_337 == 1.0f);
    let x_339 : bool = u_xlatb71;
    if (x_339) {
      let x_343 : vec4<f32> = vs_TEXCOORD6;
      let x_346 : vec4<f32> = x_328.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_343.x, x_343.y, x_343.x, x_343.y) + x_346);
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_364 : vec3<f32> = txVec0;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_364.xy, x_364.z);
      u_xlat5.x = x_366;
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec1;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.y = x_381;
      let x_383 : vec4<f32> = vs_TEXCOORD6;
      let x_386 : vec4<f32> = x_328.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_383.x, x_383.y, x_383.x, x_383.y) + x_386);
      let x_389 : vec4<f32> = u_xlat4;
      let x_390 : vec2<f32> = vec2<f32>(x_389.x, x_389.y);
      let x_392 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_390.x, x_390.y, x_392);
      let x_399 : vec3<f32> = txVec2;
      let x_401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_399.xy, x_399.z);
      u_xlat5.z = x_401;
      let x_404 : vec4<f32> = u_xlat4;
      let x_405 : vec2<f32> = vec2<f32>(x_404.z, x_404.w);
      let x_407 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_405.x, x_405.y, x_407);
      let x_414 : vec3<f32> = txVec3;
      let x_416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_414.xy, x_414.z);
      u_xlat5.w = x_416;
      let x_418 : vec4<f32> = u_xlat5;
      u_xlat71 = dot(x_418, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_425 : f32 = x_328.x_MainLightShadowParams.y;
      u_xlatb4 = (x_425 == 2.0f);
      let x_428 : bool = u_xlatb4;
      if (x_428) {
        let x_431 : vec4<f32> = vs_TEXCOORD6;
        let x_434 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_439 : vec2<f32> = ((vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_434.z, x_434.w)) + vec2<f32>(0.5f, 0.5f));
        let x_440 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec4<f32> = u_xlat4;
        let x_444 : vec2<f32> = floor(vec2<f32>(x_442.x, x_442.y));
        let x_445 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_449 : vec4<f32> = vs_TEXCOORD6;
        let x_452 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_455 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.z, x_452.w)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_463 : vec4<f32> = u_xlat5;
        let x_465 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z) * vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z));
        let x_468 : vec4<f32> = u_xlat6;
        let x_472 : vec2<f32> = (vec2<f32>(x_468.y, x_468.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_473 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_473.w);
        let x_475 : vec4<f32> = u_xlat6;
        let x_478 : vec2<f32> = u_xlat50;
        let x_480 : vec2<f32> = ((vec2<f32>(x_475.x, x_475.z) * vec2<f32>(0.5f, 0.5f)) + -(x_478));
        let x_481 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_484 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_484) + vec2<f32>(1.0f, 1.0f));
        let x_489 : vec2<f32> = u_xlat50;
        let x_491 : vec2<f32> = min(x_489, vec2<f32>(0.0f, 0.0f));
        let x_492 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat7;
        let x_497 : vec4<f32> = u_xlat7;
        let x_500 : vec2<f32> = u_xlat52;
        let x_501 : vec2<f32> = ((-(vec2<f32>(x_494.x, x_494.y)) * vec2<f32>(x_497.x, x_497.y)) + x_500);
        let x_502 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_504, vec2<f32>(0.0f, 0.0f));
        let x_506 : vec2<f32> = u_xlat50;
        let x_508 : vec2<f32> = u_xlat50;
        let x_510 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_506) * x_508) + vec2<f32>(x_510.y, x_510.w));
        let x_513 : vec4<f32> = u_xlat7;
        let x_515 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) + vec2<f32>(1.0f, 1.0f));
        let x_516 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_518 + vec2<f32>(1.0f, 1.0f));
        let x_521 : vec4<f32> = u_xlat6;
        let x_525 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_526 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec2<f32> = u_xlat52;
        let x_529 : vec2<f32> = (x_528 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat7;
        let x_534 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_535 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec2<f32> = u_xlat50;
        let x_539 : vec2<f32> = (x_538 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_540 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_546 : f32 = u_xlat7.x;
        u_xlat8.z = x_546;
        let x_549 : f32 = u_xlat50.x;
        u_xlat8.w = x_549;
        let x_552 : f32 = u_xlat9.x;
        u_xlat6.z = x_552;
        let x_555 : f32 = u_xlat5.x;
        u_xlat6.w = x_555;
        let x_558 : vec4<f32> = u_xlat6;
        let x_560 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_558.z, x_558.w, x_558.x, x_558.z) + vec4<f32>(x_560.z, x_560.w, x_560.x, x_560.z));
        let x_564 : f32 = u_xlat8.y;
        u_xlat7.z = x_564;
        let x_567 : f32 = u_xlat50.y;
        u_xlat7.w = x_567;
        let x_570 : f32 = u_xlat6.y;
        u_xlat9.z = x_570;
        let x_573 : f32 = u_xlat5.z;
        u_xlat9.w = x_573;
        let x_575 : vec4<f32> = u_xlat7;
        let x_577 : vec4<f32> = u_xlat9;
        let x_579 : vec3<f32> = (vec3<f32>(x_575.z, x_575.y, x_575.w) + vec3<f32>(x_577.z, x_577.y, x_577.w));
        let x_580 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat6;
        let x_584 : vec4<f32> = u_xlat10;
        let x_586 : vec3<f32> = (vec3<f32>(x_582.x, x_582.z, x_582.w) / vec3<f32>(x_584.z, x_584.w, x_584.y));
        let x_587 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_589 : vec4<f32> = u_xlat6;
        let x_595 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_600 : vec4<f32> = u_xlat5;
        let x_602 : vec3<f32> = (vec3<f32>(x_598.z, x_598.y, x_598.w) / vec3<f32>(x_600.x, x_600.y, x_600.z));
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat7;
        let x_607 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat6;
        let x_613 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_615 : vec3<f32> = (vec3<f32>(x_610.y, x_610.x, x_610.z) * vec3<f32>(x_613.x, x_613.x, x_613.x));
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat7;
        let x_621 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_623 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_621.y, x_621.y, x_621.y));
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_627 : f32 = u_xlat7.x;
        u_xlat6.w = x_627;
        let x_629 : vec4<f32> = u_xlat4;
        let x_632 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.y, x_635.w, x_635.x, x_635.w));
        let x_638 : vec4<f32> = u_xlat4;
        let x_641 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.z, x_644.w));
        let x_648 : f32 = u_xlat6.y;
        u_xlat7.w = x_648;
        let x_650 : vec4<f32> = u_xlat7;
        let x_651 : vec2<f32> = vec2<f32>(x_650.y, x_650.z);
        let x_652 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_652.x, x_651.x, x_652.z, x_651.y);
        let x_654 : vec4<f32> = u_xlat4;
        let x_657 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_660 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) * vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y)) + vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.y));
        let x_663 : vec4<f32> = u_xlat4;
        let x_666 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.w, x_669.y, x_669.w, x_669.z));
        let x_672 : vec4<f32> = u_xlat4;
        let x_675 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.y) * vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y)) + vec4<f32>(x_678.x, x_678.w, x_678.z, x_678.w));
        let x_682 : vec4<f32> = u_xlat5;
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_682.x, x_682.x, x_682.x, x_682.y) * vec4<f32>(x_684.z, x_684.w, x_684.y, x_684.z));
        let x_688 : vec4<f32> = u_xlat5;
        let x_690 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_688.y, x_688.y, x_688.z, x_688.z) * x_690);
        let x_693 : f32 = u_xlat5.z;
        let x_695 : f32 = u_xlat10.y;
        u_xlat4.x = (x_693 * x_695);
        let x_699 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_710 : vec3<f32> = txVec4;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat27.x = x_712;
        let x_715 : vec4<f32> = u_xlat8;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec5;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat5.x = x_727;
        let x_730 : f32 = u_xlat5.x;
        let x_732 : f32 = u_xlat11.y;
        u_xlat5.x = (x_730 * x_732);
        let x_736 : f32 = u_xlat11.x;
        let x_738 : f32 = u_xlat27.x;
        let x_741 : f32 = u_xlat5.x;
        u_xlat27.x = ((x_736 * x_738) + x_741);
        let x_745 : vec2<f32> = u_xlat50;
        let x_747 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec6;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat50.x = x_756;
        let x_759 : f32 = u_xlat11.z;
        let x_761 : f32 = u_xlat50.x;
        let x_764 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_759 * x_761) + x_764);
        let x_768 : vec4<f32> = u_xlat7;
        let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
        let x_771 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec7;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_778.xy, x_778.z);
        u_xlat50.x = x_780;
        let x_783 : f32 = u_xlat11.w;
        let x_785 : f32 = u_xlat50.x;
        let x_788 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_783 * x_785) + x_788);
        let x_792 : vec4<f32> = u_xlat9;
        let x_793 : vec2<f32> = vec2<f32>(x_792.x, x_792.y);
        let x_795 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec8;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
        u_xlat50.x = x_804;
        let x_807 : f32 = u_xlat12.x;
        let x_809 : f32 = u_xlat50.x;
        let x_812 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_807 * x_809) + x_812);
        let x_816 : vec4<f32> = u_xlat9;
        let x_817 : vec2<f32> = vec2<f32>(x_816.z, x_816.w);
        let x_819 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec9;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat50.x = x_828;
        let x_831 : f32 = u_xlat12.y;
        let x_833 : f32 = u_xlat50.x;
        let x_836 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_831 * x_833) + x_836);
        let x_840 : vec4<f32> = u_xlat7;
        let x_841 : vec2<f32> = vec2<f32>(x_840.z, x_840.w);
        let x_843 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec10;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_850.xy, x_850.z);
        u_xlat50.x = x_852;
        let x_855 : f32 = u_xlat12.z;
        let x_857 : f32 = u_xlat50.x;
        let x_860 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_855 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat6;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec11;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat50.x = x_876;
        let x_879 : f32 = u_xlat12.w;
        let x_881 : f32 = u_xlat50.x;
        let x_884 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_879 * x_881) + x_884);
        let x_888 : vec4<f32> = u_xlat6;
        let x_889 : vec2<f32> = vec2<f32>(x_888.z, x_888.w);
        let x_891 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec12;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat50.x = x_900;
        let x_903 : f32 = u_xlat4.x;
        let x_905 : f32 = u_xlat50.x;
        let x_908 : f32 = u_xlat27.x;
        u_xlat71 = ((x_903 * x_905) + x_908);
      } else {
        let x_911 : vec4<f32> = vs_TEXCOORD6;
        let x_914 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_917 : vec2<f32> = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_914.z, x_914.w)) + vec2<f32>(0.5f, 0.5f));
        let x_918 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
        let x_920 : vec4<f32> = u_xlat4;
        let x_922 : vec2<f32> = floor(vec2<f32>(x_920.x, x_920.y));
        let x_923 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_922.x, x_922.y, x_923.z, x_923.w);
        let x_925 : vec4<f32> = vs_TEXCOORD6;
        let x_928 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_931 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_925.x, x_925.y) * vec2<f32>(x_928.z, x_928.w)) + -(vec2<f32>(x_931.x, x_931.y)));
        let x_935 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_935.x, x_935.x, x_935.y, x_935.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_938 : vec4<f32> = u_xlat5;
        let x_940 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_938.x, x_938.x, x_938.z, x_938.z) * vec4<f32>(x_940.x, x_940.x, x_940.z, x_940.z));
        let x_943 : vec4<f32> = u_xlat6;
        let x_947 : vec2<f32> = (vec2<f32>(x_943.y, x_943.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_948 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_948.x, x_947.x, x_948.z, x_947.y);
        let x_950 : vec4<f32> = u_xlat6;
        let x_953 : vec2<f32> = u_xlat50;
        let x_955 : vec2<f32> = ((vec2<f32>(x_950.x, x_950.z) * vec2<f32>(0.5f, 0.5f)) + -(x_953));
        let x_956 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_955.x, x_956.y, x_955.y, x_956.w);
        let x_958 : vec2<f32> = u_xlat50;
        let x_960 : vec2<f32> = (-(x_958) + vec2<f32>(1.0f, 1.0f));
        let x_961 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_963 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_963, vec2<f32>(0.0f, 0.0f));
        let x_965 : vec2<f32> = u_xlat52;
        let x_967 : vec2<f32> = u_xlat52;
        let x_969 : vec4<f32> = u_xlat6;
        let x_971 : vec2<f32> = ((-(x_965) * x_967) + vec2<f32>(x_969.x, x_969.y));
        let x_972 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_974, vec2<f32>(0.0f, 0.0f));
        let x_977 : vec2<f32> = u_xlat52;
        let x_979 : vec2<f32> = u_xlat52;
        let x_981 : vec4<f32> = u_xlat5;
        let x_983 : vec2<f32> = ((-(x_977) * x_979) + vec2<f32>(x_981.y, x_981.w));
        let x_984 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_983.x, x_984.y, x_983.y);
        let x_986 : vec4<f32> = u_xlat6;
        let x_989 : vec2<f32> = (vec2<f32>(x_986.x, x_986.y) + vec2<f32>(2.0f, 2.0f));
        let x_990 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec3<f32> = u_xlat28;
        let x_994 : vec2<f32> = (vec2<f32>(x_992.x, x_992.z) + vec2<f32>(2.0f, 2.0f));
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_995.x, x_994.x, x_995.z, x_994.y);
        let x_998 : f32 = u_xlat5.y;
        u_xlat8.z = (x_998 * 0.08163200318813323975f);
        let x_1002 : vec4<f32> = u_xlat5;
        let x_1005 : vec3<f32> = (vec3<f32>(x_1002.z, x_1002.x, x_1002.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1006 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat6;
        let x_1011 : vec2<f32> = (vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1012 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1015 : f32 = u_xlat9.y;
        u_xlat8.x = x_1015;
        let x_1017 : vec2<f32> = u_xlat50;
        let x_1024 : vec2<f32> = ((vec2<f32>(x_1017.x, x_1017.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1025.x, x_1024.x, x_1025.z, x_1024.y);
        let x_1027 : vec2<f32> = u_xlat50;
        let x_1031 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1032 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1031.x, x_1032.y, x_1031.y, x_1032.w);
        let x_1035 : f32 = u_xlat5.x;
        u_xlat6.y = x_1035;
        let x_1038 : f32 = u_xlat7.y;
        u_xlat6.w = x_1038;
        let x_1040 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1040 + x_1041);
        let x_1043 : vec2<f32> = u_xlat50;
        let x_1046 : vec2<f32> = ((vec2<f32>(x_1043.y, x_1043.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1047.x, x_1046.x, x_1047.z, x_1046.y);
        let x_1049 : vec2<f32> = u_xlat50;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1049.y, x_1049.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1056 : f32 = u_xlat5.y;
        u_xlat7.y = x_1056;
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1058 + x_1059);
        let x_1061 : vec4<f32> = u_xlat6;
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1061 / x_1062);
        let x_1064 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1064 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1071 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1070 / x_1071);
        let x_1073 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1073 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1075.w, x_1075.x, x_1075.y, x_1075.z) * vec4<f32>(x_1078.x, x_1078.x, x_1078.x, x_1078.x));
        let x_1081 : vec4<f32> = u_xlat7;
        let x_1084 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1081.x, x_1081.w, x_1081.y, x_1081.z) * vec4<f32>(x_1084.y, x_1084.y, x_1084.y, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat6;
        let x_1088 : vec3<f32> = vec3<f32>(x_1087.y, x_1087.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1088.z);
        let x_1092 : f32 = u_xlat7.x;
        u_xlat9.y = x_1092;
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1097 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1100.y));
        let x_1103 : vec4<f32> = u_xlat4;
        let x_1106 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.w, x_1109.y));
        let x_1113 : f32 = u_xlat9.y;
        u_xlat6.y = x_1113;
        let x_1116 : f32 = u_xlat7.z;
        u_xlat9.y = x_1116;
        let x_1118 : vec4<f32> = u_xlat4;
        let x_1121 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y) * vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y)) + vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat4;
        let x_1130 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.w, x_1133.y));
        let x_1136 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1139 : f32 = u_xlat9.y;
        u_xlat6.z = x_1139;
        let x_1142 : vec4<f32> = u_xlat4;
        let x_1145 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1148 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.y) * vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y)) + vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.z));
        let x_1152 : f32 = u_xlat7.w;
        u_xlat9.y = x_1152;
        let x_1155 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1161.y));
        let x_1165 : vec4<f32> = u_xlat4;
        let x_1168 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1165.x, x_1165.y) * vec2<f32>(x_1168.x, x_1168.y)) + vec2<f32>(x_1171.w, x_1171.y));
        let x_1175 : f32 = u_xlat9.y;
        u_xlat6.w = x_1175;
        let x_1178 : vec4<f32> = u_xlat4;
        let x_1181 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.x, x_1184.w));
        let x_1187 : vec4<f32> = u_xlat9;
        let x_1188 : vec3<f32> = vec3<f32>(x_1187.x, x_1187.z, x_1187.w);
        let x_1189 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1188.x, x_1189.y, x_1188.y, x_1188.z);
        let x_1191 : vec4<f32> = u_xlat4;
        let x_1194 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1201 : vec4<f32> = u_xlat4;
        let x_1204 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1201.x, x_1201.y) * vec2<f32>(x_1204.x, x_1204.y)) + vec2<f32>(x_1207.w, x_1207.y));
        let x_1211 : f32 = u_xlat6.x;
        u_xlat7.x = x_1211;
        let x_1213 : vec4<f32> = u_xlat4;
        let x_1216 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat7;
        let x_1221 : vec2<f32> = ((vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(x_1216.x, x_1216.y)) + vec2<f32>(x_1219.x, x_1219.y));
        let x_1222 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1225 : vec4<f32> = u_xlat5;
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1225.x, x_1225.x, x_1225.x, x_1225.x) * x_1227);
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1232 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1230.y, x_1230.y, x_1230.y, x_1230.y) * x_1232);
        let x_1235 : vec4<f32> = u_xlat5;
        let x_1237 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1235.z, x_1235.z, x_1235.z, x_1235.z) * x_1237);
        let x_1239 : vec4<f32> = u_xlat5;
        let x_1241 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1239.w, x_1239.w, x_1239.w, x_1239.w) * x_1241);
        let x_1244 : vec4<f32> = u_xlat10;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.x, x_1244.y);
        let x_1247 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec13;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1254.xy, x_1254.z);
        u_xlat6.x = x_1256;
        let x_1259 : vec4<f32> = u_xlat10;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.z, x_1259.w);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1270 : vec3<f32> = txVec14;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1270.xy, x_1270.z);
        u_xlat75 = x_1272;
        let x_1273 : f32 = u_xlat75;
        let x_1275 : f32 = u_xlat15.y;
        u_xlat75 = (x_1273 * x_1275);
        let x_1278 : f32 = u_xlat15.x;
        let x_1280 : f32 = u_xlat6.x;
        let x_1282 : f32 = u_xlat75;
        u_xlat6.x = ((x_1278 * x_1280) + x_1282);
        let x_1286 : vec2<f32> = u_xlat50;
        let x_1288 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec15;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat50.x = x_1297;
        let x_1300 : f32 = u_xlat15.z;
        let x_1302 : f32 = u_xlat50.x;
        let x_1305 : f32 = u_xlat6.x;
        u_xlat50.x = ((x_1300 * x_1302) + x_1305);
        let x_1309 : vec4<f32> = u_xlat13;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.x, x_1309.y);
        let x_1312 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1320 : vec3<f32> = txVec16;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat73 = x_1322;
        let x_1324 : f32 = u_xlat15.w;
        let x_1325 : f32 = u_xlat73;
        let x_1328 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1324 * x_1325) + x_1328);
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec17;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat73 = x_1344;
        let x_1346 : f32 = u_xlat16.x;
        let x_1347 : f32 = u_xlat73;
        let x_1350 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1346 * x_1347) + x_1350);
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.z, x_1354.w);
        let x_1357 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec18;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat73 = x_1366;
        let x_1368 : f32 = u_xlat16.y;
        let x_1369 : f32 = u_xlat73;
        let x_1372 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1368 * x_1369) + x_1372);
        let x_1376 : vec4<f32> = u_xlat12;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.x, x_1376.y);
        let x_1379 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec19;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat73 = x_1388;
        let x_1390 : f32 = u_xlat16.z;
        let x_1391 : f32 = u_xlat73;
        let x_1394 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1390 * x_1391) + x_1394);
        let x_1398 : vec4<f32> = u_xlat13;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.z, x_1398.w);
        let x_1401 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec20;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat73 = x_1410;
        let x_1412 : f32 = u_xlat16.w;
        let x_1413 : f32 = u_xlat73;
        let x_1416 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1412 * x_1413) + x_1416);
        let x_1420 : vec4<f32> = u_xlat14;
        let x_1421 : vec2<f32> = vec2<f32>(x_1420.x, x_1420.y);
        let x_1423 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec21;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1430.xy, x_1430.z);
        u_xlat73 = x_1432;
        let x_1434 : f32 = u_xlat17.x;
        let x_1435 : f32 = u_xlat73;
        let x_1438 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1434 * x_1435) + x_1438);
        let x_1442 : vec4<f32> = u_xlat14;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec22;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat73 = x_1454;
        let x_1456 : f32 = u_xlat17.y;
        let x_1457 : f32 = u_xlat73;
        let x_1460 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1456 * x_1457) + x_1460);
        let x_1464 : vec2<f32> = u_xlat29;
        let x_1466 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec23;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat73 = x_1475;
        let x_1477 : f32 = u_xlat17.z;
        let x_1478 : f32 = u_xlat73;
        let x_1481 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1477 * x_1478) + x_1481);
        let x_1485 : vec2<f32> = u_xlat58;
        let x_1487 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec24;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat73 = x_1496;
        let x_1498 : f32 = u_xlat17.w;
        let x_1499 : f32 = u_xlat73;
        let x_1502 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.x, x_1506.y);
        let x_1509 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec25;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat73 = x_1518;
        let x_1520 : f32 = u_xlat5.x;
        let x_1521 : f32 = u_xlat73;
        let x_1524 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1520 * x_1521) + x_1524);
        let x_1528 : vec4<f32> = u_xlat9;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.z, x_1528.w);
        let x_1531 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec26;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat73 = x_1540;
        let x_1542 : f32 = u_xlat5.y;
        let x_1543 : f32 = u_xlat73;
        let x_1546 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1542 * x_1543) + x_1546);
        let x_1550 : vec2<f32> = u_xlat53;
        let x_1552 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec27;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
        u_xlat73 = x_1561;
        let x_1563 : f32 = u_xlat5.z;
        let x_1564 : f32 = u_xlat73;
        let x_1567 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1563 * x_1564) + x_1567);
        let x_1571 : vec4<f32> = u_xlat4;
        let x_1572 : vec2<f32> = vec2<f32>(x_1571.x, x_1571.y);
        let x_1574 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec28;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat4.x = x_1583;
        let x_1586 : f32 = u_xlat5.w;
        let x_1588 : f32 = u_xlat4.x;
        let x_1591 : f32 = u_xlat50.x;
        u_xlat71 = ((x_1586 * x_1588) + x_1591);
      }
    }
  } else {
    let x_1595 : vec4<f32> = vs_TEXCOORD6;
    let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
    let x_1598 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
    let x_1605 : vec3<f32> = txVec29;
    let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
    u_xlat71 = x_1607;
  }
  let x_1609 : f32 = x_328.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1609) + 1.0f);
  let x_1613 : f32 = u_xlat71;
  let x_1615 : f32 = x_328.x_MainLightShadowParams.x;
  let x_1618 : f32 = u_xlat4.x;
  u_xlat71 = ((x_1613 * x_1615) + x_1618);
  let x_1621 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_1621);
  let x_1627 : f32 = vs_TEXCOORD6.z;
  u_xlatb27.x = (x_1627 >= 1.0f);
  let x_1631 : bool = u_xlatb27.x;
  let x_1632 : bool = u_xlatb4;
  u_xlatb4 = (x_1631 | x_1632);
  let x_1634 : bool = u_xlatb4;
  let x_1635 : f32 = u_xlat71;
  u_xlat71 = select(x_1635, 1.0f, x_1634);
  let x_1637 : vec3<f32> = vs_TEXCOORD1;
  let x_1639 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1641 : vec3<f32> = (x_1637 + -(x_1639));
  let x_1642 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
  let x_1644 : vec4<f32> = u_xlat4;
  let x_1646 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_1644.x, x_1644.y, x_1644.z), vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
  let x_1651 : f32 = u_xlat4.x;
  let x_1653 : f32 = x_328.x_MainLightShadowParams.z;
  let x_1656 : f32 = x_328.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1651 * x_1653) + x_1656);
  let x_1660 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1660, 0.0f, 1.0f);
  let x_1663 : f32 = u_xlat71;
  u_xlat50.x = (-(x_1663) + 1.0f);
  let x_1668 : f32 = u_xlat27.x;
  let x_1670 : f32 = u_xlat50.x;
  let x_1672 : f32 = u_xlat71;
  u_xlat71 = ((x_1668 * x_1670) + x_1672);
  let x_1681 : f32 = x_1679.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1681 == -1.0f));
  let x_1686 : bool = u_xlatb27.x;
  if (x_1686) {
    let x_1689 : vec3<f32> = vs_TEXCOORD1;
    let x_1692 : vec4<f32> = x_1679.x_MainLightWorldToLight[1i];
    let x_1694 : vec2<f32> = (vec2<f32>(x_1689.y, x_1689.y) * vec2<f32>(x_1692.x, x_1692.y));
    let x_1695 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1694.x, x_1694.y, x_1695.z);
    let x_1698 : vec4<f32> = x_1679.x_MainLightWorldToLight[0i];
    let x_1700 : vec3<f32> = vs_TEXCOORD1;
    let x_1703 : vec3<f32> = u_xlat27;
    let x_1705 : vec2<f32> = ((vec2<f32>(x_1698.x, x_1698.y) * vec2<f32>(x_1700.x, x_1700.x)) + vec2<f32>(x_1703.x, x_1703.y));
    let x_1706 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1705.x, x_1705.y, x_1706.z);
    let x_1709 : vec4<f32> = x_1679.x_MainLightWorldToLight[2i];
    let x_1711 : vec3<f32> = vs_TEXCOORD1;
    let x_1714 : vec3<f32> = u_xlat27;
    let x_1716 : vec2<f32> = ((vec2<f32>(x_1709.x, x_1709.y) * vec2<f32>(x_1711.z, x_1711.z)) + vec2<f32>(x_1714.x, x_1714.y));
    let x_1717 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1716.x, x_1716.y, x_1717.z);
    let x_1719 : vec3<f32> = u_xlat27;
    let x_1722 : vec4<f32> = x_1679.x_MainLightWorldToLight[3i];
    let x_1724 : vec2<f32> = (vec2<f32>(x_1719.x, x_1719.y) + vec2<f32>(x_1722.x, x_1722.y));
    let x_1725 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1724.x, x_1724.y, x_1725.z);
    let x_1727 : vec3<f32> = u_xlat27;
    let x_1730 : vec2<f32> = ((vec2<f32>(x_1727.x, x_1727.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1731 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1730.x, x_1730.y, x_1731.z);
    let x_1738 : vec3<f32> = u_xlat27;
    let x_1741 : f32 = x_45.x_GlobalMipBias.x;
    let x_1742 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1738.x, x_1738.y), x_1741);
    u_xlat5 = x_1742;
    let x_1744 : f32 = x_1679.x_MainLightCookieTextureFormat;
    let x_1746 : f32 = x_1679.x_MainLightCookieTextureFormat;
    let x_1748 : f32 = x_1679.x_MainLightCookieTextureFormat;
    let x_1750 : f32 = x_1679.x_MainLightCookieTextureFormat;
    let x_1751 : vec4<f32> = vec4<f32>(x_1744, x_1746, x_1748, x_1750);
    let x_1759 : vec4<bool> = (vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1751.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1759.x, x_1759.y);
    let x_1762 : bool = u_xlatb27.y;
    if (x_1762) {
      let x_1767 : f32 = u_xlat5.w;
      x_1763 = x_1767;
    } else {
      let x_1770 : f32 = u_xlat5.x;
      x_1763 = x_1770;
    }
    let x_1771 : f32 = x_1763;
    u_xlat50.x = x_1771;
    let x_1774 : bool = u_xlatb27.x;
    if (x_1774) {
      let x_1778 : vec4<f32> = u_xlat5;
      x_1775 = vec3<f32>(x_1778.x, x_1778.y, x_1778.z);
    } else {
      let x_1781 : vec2<f32> = u_xlat50;
      x_1775 = vec3<f32>(x_1781.x, x_1781.x, x_1781.x);
    }
    let x_1783 : vec3<f32> = x_1775;
    u_xlat27 = x_1783;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_1788 : vec3<f32> = u_xlat27;
  let x_1790 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat27 = (x_1788 * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
  let x_1793 : f32 = u_xlat71;
  let x_1795 : f32 = x_95.unity_LightData.z;
  u_xlat71 = (x_1793 * x_1795);
  let x_1797 : f32 = u_xlat71;
  let x_1799 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1797, x_1797, x_1797) * x_1799);
  let x_1801 : vec4<f32> = u_xlat2;
  let x_1804 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat71 = dot(vec3<f32>(x_1801.x, x_1801.y, x_1801.z), vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
  let x_1807 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1807, 0.0f, 1.0f);
  let x_1809 : f32 = u_xlat71;
  let x_1811 : vec3<f32> = u_xlat27;
  let x_1812 : vec3<f32> = (vec3<f32>(x_1809, x_1809, x_1809) * x_1811);
  let x_1813 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
  let x_1816 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1816 * 10.0f) + 1.0f);
  let x_1820 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1820);
  let x_1822 : vec3<f32> = u_xlat1;
  let x_1823 : f32 = u_xlat70;
  let x_1827 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1829 : vec3<f32> = ((x_1822 * vec3<f32>(x_1823, x_1823, x_1823)) + vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
  let x_1830 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
  let x_1833 : vec4<f32> = u_xlat6;
  let x_1835 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1833.x, x_1833.y, x_1833.z), vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
  let x_1838 : f32 = u_xlat74;
  u_xlat74 = max(x_1838, 1.17549435e-38f);
  let x_1841 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1841);
  let x_1843 : f32 = u_xlat74;
  let x_1845 : vec4<f32> = u_xlat6;
  let x_1847 : vec3<f32> = (vec3<f32>(x_1843, x_1843, x_1843) * vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
  let x_1848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
  let x_1850 : vec4<f32> = u_xlat2;
  let x_1852 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1850.x, x_1850.y, x_1850.z), vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
  let x_1855 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1855, 0.0f, 1.0f);
  let x_1857 : f32 = u_xlat74;
  u_xlat74 = log2(x_1857);
  let x_1859 : f32 = u_xlat71;
  let x_1860 : f32 = u_xlat74;
  u_xlat74 = (x_1859 * x_1860);
  let x_1862 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1862);
  let x_1864 : f32 = u_xlat74;
  let x_1867 : vec4<f32> = x_57.x_SpecColor;
  let x_1869 : vec3<f32> = (vec3<f32>(x_1864, x_1864, x_1864) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1870 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
  let x_1872 : vec3<f32> = u_xlat27;
  let x_1873 : vec4<f32> = u_xlat6;
  u_xlat27 = (x_1872 * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1876 : vec4<f32> = u_xlat5;
  let x_1878 : vec4<f32> = u_xlat0;
  let x_1881 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1876.x, x_1876.y, x_1876.z) * vec3<f32>(x_1878.y, x_1878.z, x_1878.w)) + x_1881);
  let x_1884 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1886 : f32 = x_95.unity_LightData.y;
  u_xlat5.x = min(x_1884, x_1886);
  let x_1892 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1892));
  let x_1896 : f32 = u_xlat4.x;
  let x_1899 : f32 = x_328.x_AdditionalShadowFadeParams.x;
  let x_1902 : f32 = x_328.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_1896 * x_1899) + x_1902);
  let x_1906 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1906, 0.0f, 1.0f);
  let x_1911 : f32 = x_1679.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1913 : f32 = x_1679.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1915 : f32 = x_1679.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1917 : f32 = x_1679.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1918 : vec4<f32> = vec4<f32>(x_1911, x_1913, x_1915, x_1917);
  let x_1924 : vec4<bool> = (vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1918.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_1924.x, x_1924.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1936 : u32 = u_xlatu_loop_1;
    let x_1937 : u32 = u_xlatu5;
    if ((x_1936 < x_1937)) {
    } else {
      break;
    }
    let x_1940 : u32 = u_xlatu_loop_1;
    u_xlatu75 = (x_1940 >> 2u);
    let x_1944 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_1944 & 3u));
    let x_1947 : u32 = u_xlatu75;
    let x_1950 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1947)];
    let x_1960 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1965 : vec4<u32> = indexable[x_1960];
    u_xlat75 = dot(x_1950, bitcast<vec4<f32>>(x_1965));
    let x_1969 : f32 = u_xlat75;
    u_xlati75 = i32(x_1969);
    let x_1971 : vec3<f32> = vs_TEXCOORD1;
    let x_1982 : i32 = u_xlati75;
    let x_1984 : vec4<f32> = x_1981.x_AdditionalLightsPosition[x_1982];
    let x_1987 : i32 = u_xlati75;
    let x_1989 : vec4<f32> = x_1981.x_AdditionalLightsPosition[x_1987];
    let x_1991 : vec3<f32> = ((-(x_1971) * vec3<f32>(x_1984.w, x_1984.w, x_1984.w)) + vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
    let x_1992 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
    let x_1995 : vec4<f32> = u_xlat7;
    let x_1997 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_1995.x, x_1995.y, x_1995.z), vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
    let x_2000 : f32 = u_xlat76;
    u_xlat76 = max(x_2000, 0.00006103515625f);
    let x_2002 : f32 = u_xlat76;
    u_xlat8.x = inverseSqrt(x_2002);
    let x_2005 : vec4<f32> = u_xlat7;
    let x_2007 : vec4<f32> = u_xlat8;
    let x_2009 : vec3<f32> = (vec3<f32>(x_2005.x, x_2005.y, x_2005.z) * vec3<f32>(x_2007.x, x_2007.x, x_2007.x));
    let x_2010 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2009.x, x_2009.y, x_2009.z, x_2010.w);
    let x_2012 : f32 = u_xlat76;
    u_xlat8.x = (1.0f / x_2012);
    let x_2015 : f32 = u_xlat76;
    let x_2016 : i32 = u_xlati75;
    let x_2018 : f32 = x_1981.x_AdditionalLightsAttenuation[x_2016].x;
    u_xlat76 = (x_2015 * x_2018);
    let x_2020 : f32 = u_xlat76;
    let x_2022 : f32 = u_xlat76;
    u_xlat76 = ((-(x_2020) * x_2022) + 1.0f);
    let x_2025 : f32 = u_xlat76;
    u_xlat76 = max(x_2025, 0.0f);
    let x_2027 : f32 = u_xlat76;
    let x_2028 : f32 = u_xlat76;
    u_xlat76 = (x_2027 * x_2028);
    let x_2030 : f32 = u_xlat76;
    let x_2032 : f32 = u_xlat8.x;
    u_xlat76 = (x_2030 * x_2032);
    let x_2034 : i32 = u_xlati75;
    let x_2036 : vec4<f32> = x_1981.x_AdditionalLightsSpotDir[x_2034];
    let x_2038 : vec4<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_2036.x, x_2036.y, x_2036.z), vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
    let x_2043 : f32 = u_xlat8.x;
    let x_2044 : i32 = u_xlati75;
    let x_2046 : f32 = x_1981.x_AdditionalLightsAttenuation[x_2044].z;
    let x_2048 : i32 = u_xlati75;
    let x_2050 : f32 = x_1981.x_AdditionalLightsAttenuation[x_2048].w;
    u_xlat8.x = ((x_2043 * x_2046) + x_2050);
    let x_2054 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2054, 0.0f, 1.0f);
    let x_2058 : f32 = u_xlat8.x;
    let x_2060 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2058 * x_2060);
    let x_2063 : f32 = u_xlat76;
    let x_2065 : f32 = u_xlat8.x;
    u_xlat76 = (x_2063 * x_2065);
    let x_2069 : i32 = u_xlati75;
    let x_2071 : f32 = x_328.x_AdditionalShadowParams[x_2069].w;
    u_xlati8 = i32(x_2071);
    let x_2076 : i32 = u_xlati8;
    u_xlatb31.x = (x_2076 >= 0i);
    let x_2080 : bool = u_xlatb31.x;
    if (x_2080) {
      let x_2084 : i32 = u_xlati75;
      let x_2086 : f32 = x_328.x_AdditionalShadowParams[x_2084].z;
      u_xlatb31.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2086, x_2086, x_2086, x_2086))));
      let x_2092 : bool = u_xlatb31.x;
      if (x_2092) {
        let x_2095 : vec4<f32> = u_xlat7;
        let x_2098 : vec4<f32> = u_xlat7;
        let x_2101 : vec4<bool> = (abs(vec4<f32>(x_2095.z, x_2095.z, x_2095.y, x_2095.y)) >= abs(vec4<f32>(x_2098.x, x_2098.y, x_2098.x, x_2098.x)));
        u_xlatb31 = vec3<bool>(x_2101.x, x_2101.y, x_2101.z);
        let x_2104 : bool = u_xlatb31.y;
        let x_2106 : bool = u_xlatb31.x;
        u_xlatb31.x = (x_2104 & x_2106);
        let x_2110 : vec4<f32> = u_xlat7;
        let x_2113 : vec4<bool> = (-(vec4<f32>(x_2110.z, x_2110.y, x_2110.x, x_2110.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2113.x, x_2113.y, x_2113.z);
        let x_2116 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2116);
        let x_2122 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2122);
        let x_2128 : bool = u_xlatb9.z;
        u_xlat54 = select(0.0f, 1.0f, x_2128);
        let x_2131 : bool = u_xlatb31.z;
        if (x_2131) {
          let x_2136 : f32 = u_xlat9.y;
          x_2132 = x_2136;
        } else {
          let x_2138 : f32 = u_xlat54;
          x_2132 = x_2138;
        }
        let x_2139 : f32 = x_2132;
        u_xlat54 = x_2139;
        let x_2142 : bool = u_xlatb31.x;
        if (x_2142) {
          let x_2147 : f32 = u_xlat9.x;
          x_2143 = x_2147;
        } else {
          let x_2149 : f32 = u_xlat54;
          x_2143 = x_2149;
        }
        let x_2150 : f32 = x_2143;
        u_xlat31.x = x_2150;
        let x_2152 : i32 = u_xlati75;
        let x_2154 : f32 = x_328.x_AdditionalShadowParams[x_2152].w;
        u_xlat54 = trunc(x_2154);
        let x_2157 : f32 = u_xlat31.x;
        let x_2158 : f32 = u_xlat54;
        u_xlat31.x = (x_2157 + x_2158);
        let x_2162 : f32 = u_xlat31.x;
        u_xlati8 = i32(x_2162);
      }
      let x_2164 : i32 = u_xlati8;
      u_xlati8 = (x_2164 << bitcast<u32>(2i));
      let x_2166 : vec3<f32> = vs_TEXCOORD1;
      let x_2169 : i32 = u_xlati8;
      let x_2172 : i32 = u_xlati8;
      let x_2176 : vec4<f32> = x_328.x_AdditionalLightsWorldToShadow[((x_2169 + 1i) / 4i)][((x_2172 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2166.y, x_2166.y, x_2166.y, x_2166.y) * x_2176);
      let x_2178 : i32 = u_xlati8;
      let x_2180 : i32 = u_xlati8;
      let x_2183 : vec4<f32> = x_328.x_AdditionalLightsWorldToShadow[(x_2178 / 4i)][(x_2180 % 4i)];
      let x_2184 : vec3<f32> = vs_TEXCOORD1;
      let x_2187 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2183 * vec4<f32>(x_2184.x, x_2184.x, x_2184.x, x_2184.x)) + x_2187);
      let x_2189 : i32 = u_xlati8;
      let x_2192 : i32 = u_xlati8;
      let x_2196 : vec4<f32> = x_328.x_AdditionalLightsWorldToShadow[((x_2189 + 2i) / 4i)][((x_2192 + 2i) % 4i)];
      let x_2197 : vec3<f32> = vs_TEXCOORD1;
      let x_2200 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2196 * vec4<f32>(x_2197.z, x_2197.z, x_2197.z, x_2197.z)) + x_2200);
      let x_2202 : vec4<f32> = u_xlat9;
      let x_2203 : i32 = u_xlati8;
      let x_2206 : i32 = u_xlati8;
      let x_2210 : vec4<f32> = x_328.x_AdditionalLightsWorldToShadow[((x_2203 + 3i) / 4i)][((x_2206 + 3i) % 4i)];
      u_xlat8 = (x_2202 + x_2210);
      let x_2212 : vec4<f32> = u_xlat8;
      let x_2214 : vec4<f32> = u_xlat8;
      let x_2216 : vec3<f32> = (vec3<f32>(x_2212.x, x_2212.y, x_2212.z) / vec3<f32>(x_2214.w, x_2214.w, x_2214.w));
      let x_2217 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
      let x_2220 : i32 = u_xlati75;
      let x_2222 : f32 = x_328.x_AdditionalShadowParams[x_2220].y;
      u_xlatb77 = (0.0f < x_2222);
      let x_2224 : bool = u_xlatb77;
      if (x_2224) {
        let x_2227 : i32 = u_xlati75;
        let x_2229 : f32 = x_328.x_AdditionalShadowParams[x_2227].y;
        u_xlatb77 = (1.0f == x_2229);
        let x_2231 : bool = u_xlatb77;
        if (x_2231) {
          let x_2234 : vec4<f32> = u_xlat8;
          let x_2237 : vec4<f32> = x_328.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2234.x, x_2234.y, x_2234.x, x_2234.y) + x_2237);
          let x_2240 : vec4<f32> = u_xlat9;
          let x_2241 : vec2<f32> = vec2<f32>(x_2240.x, x_2240.y);
          let x_2243 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2241.x, x_2241.y, x_2243);
          let x_2251 : vec3<f32> = txVec30;
          let x_2253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2251.xy, x_2251.z);
          u_xlat10.x = x_2253;
          let x_2256 : vec4<f32> = u_xlat9;
          let x_2257 : vec2<f32> = vec2<f32>(x_2256.z, x_2256.w);
          let x_2259 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2257.x, x_2257.y, x_2259);
          let x_2266 : vec3<f32> = txVec31;
          let x_2268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2266.xy, x_2266.z);
          u_xlat10.y = x_2268;
          let x_2270 : vec4<f32> = u_xlat8;
          let x_2274 : vec4<f32> = x_328.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2270.x, x_2270.y, x_2270.x, x_2270.y) + x_2274);
          let x_2277 : vec4<f32> = u_xlat9;
          let x_2278 : vec2<f32> = vec2<f32>(x_2277.x, x_2277.y);
          let x_2280 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2278.x, x_2278.y, x_2280);
          let x_2287 : vec3<f32> = txVec32;
          let x_2289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2287.xy, x_2287.z);
          u_xlat10.z = x_2289;
          let x_2292 : vec4<f32> = u_xlat9;
          let x_2293 : vec2<f32> = vec2<f32>(x_2292.z, x_2292.w);
          let x_2295 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2293.x, x_2293.y, x_2295);
          let x_2302 : vec3<f32> = txVec33;
          let x_2304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2302.xy, x_2302.z);
          u_xlat10.w = x_2304;
          let x_2307 : vec4<f32> = u_xlat10;
          u_xlat77 = dot(x_2307, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2310 : i32 = u_xlati75;
          let x_2312 : f32 = x_328.x_AdditionalShadowParams[x_2310].y;
          u_xlatb9.x = (2.0f == x_2312);
          let x_2316 : bool = u_xlatb9.x;
          if (x_2316) {
            let x_2319 : vec4<f32> = u_xlat8;
            let x_2323 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2326 : vec2<f32> = ((vec2<f32>(x_2319.x, x_2319.y) * vec2<f32>(x_2323.z, x_2323.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2327 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2326.x, x_2326.y, x_2327.z, x_2327.w);
            let x_2329 : vec4<f32> = u_xlat9;
            let x_2331 : vec2<f32> = floor(vec2<f32>(x_2329.x, x_2329.y));
            let x_2332 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2331.x, x_2331.y, x_2332.z, x_2332.w);
            let x_2335 : vec4<f32> = u_xlat8;
            let x_2338 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2341 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2335.x, x_2335.y) * vec2<f32>(x_2338.z, x_2338.w)) + -(vec2<f32>(x_2341.x, x_2341.y)));
            let x_2345 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2345.x, x_2345.x, x_2345.y, x_2345.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2348 : vec4<f32> = u_xlat10;
            let x_2350 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2348.x, x_2348.x, x_2348.z, x_2348.z) * vec4<f32>(x_2350.x, x_2350.x, x_2350.z, x_2350.z));
            let x_2353 : vec4<f32> = u_xlat11;
            let x_2355 : vec2<f32> = (vec2<f32>(x_2353.y, x_2353.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2356 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2355.x, x_2356.y, x_2355.y, x_2356.w);
            let x_2358 : vec4<f32> = u_xlat11;
            let x_2361 : vec2<f32> = u_xlat55;
            let x_2363 : vec2<f32> = ((vec2<f32>(x_2358.x, x_2358.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2361));
            let x_2364 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2363.x, x_2363.y, x_2364.z, x_2364.w);
            let x_2367 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2367) + vec2<f32>(1.0f, 1.0f));
            let x_2370 : vec2<f32> = u_xlat55;
            let x_2371 : vec2<f32> = min(x_2370, vec2<f32>(0.0f, 0.0f));
            let x_2372 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
            let x_2374 : vec4<f32> = u_xlat12;
            let x_2377 : vec4<f32> = u_xlat12;
            let x_2380 : vec2<f32> = u_xlat57;
            let x_2381 : vec2<f32> = ((-(vec2<f32>(x_2374.x, x_2374.y)) * vec2<f32>(x_2377.x, x_2377.y)) + x_2380);
            let x_2382 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2381.x, x_2381.y, x_2382.z, x_2382.w);
            let x_2384 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2384, vec2<f32>(0.0f, 0.0f));
            let x_2386 : vec2<f32> = u_xlat55;
            let x_2388 : vec2<f32> = u_xlat55;
            let x_2390 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2386) * x_2388) + vec2<f32>(x_2390.y, x_2390.w));
            let x_2393 : vec4<f32> = u_xlat12;
            let x_2395 : vec2<f32> = (vec2<f32>(x_2393.x, x_2393.y) + vec2<f32>(1.0f, 1.0f));
            let x_2396 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
            let x_2398 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2398 + vec2<f32>(1.0f, 1.0f));
            let x_2400 : vec4<f32> = u_xlat11;
            let x_2402 : vec2<f32> = (vec2<f32>(x_2400.x, x_2400.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2403 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2402.x, x_2402.y, x_2403.z, x_2403.w);
            let x_2405 : vec2<f32> = u_xlat57;
            let x_2406 : vec2<f32> = (x_2405 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2407 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2406.x, x_2406.y, x_2407.z, x_2407.w);
            let x_2409 : vec4<f32> = u_xlat12;
            let x_2411 : vec2<f32> = (vec2<f32>(x_2409.x, x_2409.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2412 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2411.x, x_2411.y, x_2412.z, x_2412.w);
            let x_2414 : vec2<f32> = u_xlat55;
            let x_2415 : vec2<f32> = (x_2414 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2416 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2415.x, x_2415.y, x_2416.z, x_2416.w);
            let x_2418 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2418.y, x_2418.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2422 : f32 = u_xlat12.x;
            u_xlat13.z = x_2422;
            let x_2425 : f32 = u_xlat55.x;
            u_xlat13.w = x_2425;
            let x_2428 : f32 = u_xlat14.x;
            u_xlat11.z = x_2428;
            let x_2431 : f32 = u_xlat10.x;
            u_xlat11.w = x_2431;
            let x_2433 : vec4<f32> = u_xlat11;
            let x_2435 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2433.z, x_2433.w, x_2433.x, x_2433.z) + vec4<f32>(x_2435.z, x_2435.w, x_2435.x, x_2435.z));
            let x_2439 : f32 = u_xlat13.y;
            u_xlat12.z = x_2439;
            let x_2442 : f32 = u_xlat55.y;
            u_xlat12.w = x_2442;
            let x_2445 : f32 = u_xlat11.y;
            u_xlat14.z = x_2445;
            let x_2448 : f32 = u_xlat10.z;
            u_xlat14.w = x_2448;
            let x_2450 : vec4<f32> = u_xlat12;
            let x_2452 : vec4<f32> = u_xlat14;
            let x_2454 : vec3<f32> = (vec3<f32>(x_2450.z, x_2450.y, x_2450.w) + vec3<f32>(x_2452.z, x_2452.y, x_2452.w));
            let x_2455 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
            let x_2457 : vec4<f32> = u_xlat11;
            let x_2459 : vec4<f32> = u_xlat15;
            let x_2461 : vec3<f32> = (vec3<f32>(x_2457.x, x_2457.z, x_2457.w) / vec3<f32>(x_2459.z, x_2459.w, x_2459.y));
            let x_2462 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
            let x_2464 : vec4<f32> = u_xlat11;
            let x_2466 : vec3<f32> = (vec3<f32>(x_2464.x, x_2464.y, x_2464.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2467 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
            let x_2469 : vec4<f32> = u_xlat14;
            let x_2471 : vec4<f32> = u_xlat10;
            let x_2473 : vec3<f32> = (vec3<f32>(x_2469.z, x_2469.y, x_2469.w) / vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
            let x_2474 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
            let x_2476 : vec4<f32> = u_xlat12;
            let x_2478 : vec3<f32> = (vec3<f32>(x_2476.x, x_2476.y, x_2476.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2479 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
            let x_2481 : vec4<f32> = u_xlat11;
            let x_2484 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2486 : vec3<f32> = (vec3<f32>(x_2481.y, x_2481.x, x_2481.z) * vec3<f32>(x_2484.x, x_2484.x, x_2484.x));
            let x_2487 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
            let x_2489 : vec4<f32> = u_xlat12;
            let x_2492 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2494 : vec3<f32> = (vec3<f32>(x_2489.x, x_2489.y, x_2489.z) * vec3<f32>(x_2492.y, x_2492.y, x_2492.y));
            let x_2495 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
            let x_2498 : f32 = u_xlat12.x;
            u_xlat11.w = x_2498;
            let x_2500 : vec4<f32> = u_xlat9;
            let x_2503 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2506 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2500.x, x_2500.y, x_2500.x, x_2500.y) * vec4<f32>(x_2503.x, x_2503.y, x_2503.x, x_2503.y)) + vec4<f32>(x_2506.y, x_2506.w, x_2506.x, x_2506.w));
            let x_2509 : vec4<f32> = u_xlat9;
            let x_2512 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2515 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2509.x, x_2509.y) * vec2<f32>(x_2512.x, x_2512.y)) + vec2<f32>(x_2515.z, x_2515.w));
            let x_2519 : f32 = u_xlat11.y;
            u_xlat12.w = x_2519;
            let x_2521 : vec4<f32> = u_xlat12;
            let x_2522 : vec2<f32> = vec2<f32>(x_2521.y, x_2521.z);
            let x_2523 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2523.x, x_2522.x, x_2523.z, x_2522.y);
            let x_2525 : vec4<f32> = u_xlat9;
            let x_2528 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2531 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2525.x, x_2525.y, x_2525.x, x_2525.y) * vec4<f32>(x_2528.x, x_2528.y, x_2528.x, x_2528.y)) + vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2531.y));
            let x_2534 : vec4<f32> = u_xlat9;
            let x_2537 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2540 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2534.x, x_2534.y, x_2534.x, x_2534.y) * vec4<f32>(x_2537.x, x_2537.y, x_2537.x, x_2537.y)) + vec4<f32>(x_2540.w, x_2540.y, x_2540.w, x_2540.z));
            let x_2543 : vec4<f32> = u_xlat9;
            let x_2546 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2549 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2543.x, x_2543.y, x_2543.x, x_2543.y) * vec4<f32>(x_2546.x, x_2546.y, x_2546.x, x_2546.y)) + vec4<f32>(x_2549.x, x_2549.w, x_2549.z, x_2549.w));
            let x_2552 : vec4<f32> = u_xlat10;
            let x_2554 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2552.x, x_2552.x, x_2552.x, x_2552.y) * vec4<f32>(x_2554.z, x_2554.w, x_2554.y, x_2554.z));
            let x_2557 : vec4<f32> = u_xlat10;
            let x_2559 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2557.y, x_2557.y, x_2557.z, x_2557.z) * x_2559);
            let x_2562 : f32 = u_xlat10.z;
            let x_2564 : f32 = u_xlat15.y;
            u_xlat9.x = (x_2562 * x_2564);
            let x_2568 : vec4<f32> = u_xlat13;
            let x_2569 : vec2<f32> = vec2<f32>(x_2568.x, x_2568.y);
            let x_2571 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2569.x, x_2569.y, x_2571);
            let x_2579 : vec3<f32> = txVec34;
            let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
            u_xlat32 = x_2581;
            let x_2583 : vec4<f32> = u_xlat13;
            let x_2584 : vec2<f32> = vec2<f32>(x_2583.z, x_2583.w);
            let x_2586 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2584.x, x_2584.y, x_2586);
            let x_2593 : vec3<f32> = txVec35;
            let x_2595 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2593.xy, x_2593.z);
            u_xlat10.x = x_2595;
            let x_2598 : f32 = u_xlat10.x;
            let x_2600 : f32 = u_xlat16.y;
            u_xlat10.x = (x_2598 * x_2600);
            let x_2604 : f32 = u_xlat16.x;
            let x_2605 : f32 = u_xlat32;
            let x_2608 : f32 = u_xlat10.x;
            u_xlat32 = ((x_2604 * x_2605) + x_2608);
            let x_2611 : vec2<f32> = u_xlat55;
            let x_2613 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2611.x, x_2611.y, x_2613);
            let x_2620 : vec3<f32> = txVec36;
            let x_2622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2620.xy, x_2620.z);
            u_xlat55.x = x_2622;
            let x_2625 : f32 = u_xlat16.z;
            let x_2627 : f32 = u_xlat55.x;
            let x_2629 : f32 = u_xlat32;
            u_xlat32 = ((x_2625 * x_2627) + x_2629);
            let x_2632 : vec4<f32> = u_xlat12;
            let x_2633 : vec2<f32> = vec2<f32>(x_2632.x, x_2632.y);
            let x_2635 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2633.x, x_2633.y, x_2635);
            let x_2642 : vec3<f32> = txVec37;
            let x_2644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2642.xy, x_2642.z);
            u_xlat55.x = x_2644;
            let x_2647 : f32 = u_xlat16.w;
            let x_2649 : f32 = u_xlat55.x;
            let x_2651 : f32 = u_xlat32;
            u_xlat32 = ((x_2647 * x_2649) + x_2651);
            let x_2654 : vec4<f32> = u_xlat14;
            let x_2655 : vec2<f32> = vec2<f32>(x_2654.x, x_2654.y);
            let x_2657 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2655.x, x_2655.y, x_2657);
            let x_2664 : vec3<f32> = txVec38;
            let x_2666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2664.xy, x_2664.z);
            u_xlat55.x = x_2666;
            let x_2669 : f32 = u_xlat17.x;
            let x_2671 : f32 = u_xlat55.x;
            let x_2673 : f32 = u_xlat32;
            u_xlat32 = ((x_2669 * x_2671) + x_2673);
            let x_2676 : vec4<f32> = u_xlat14;
            let x_2677 : vec2<f32> = vec2<f32>(x_2676.z, x_2676.w);
            let x_2679 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2677.x, x_2677.y, x_2679);
            let x_2686 : vec3<f32> = txVec39;
            let x_2688 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2686.xy, x_2686.z);
            u_xlat55.x = x_2688;
            let x_2691 : f32 = u_xlat17.y;
            let x_2693 : f32 = u_xlat55.x;
            let x_2695 : f32 = u_xlat32;
            u_xlat32 = ((x_2691 * x_2693) + x_2695);
            let x_2698 : vec4<f32> = u_xlat12;
            let x_2699 : vec2<f32> = vec2<f32>(x_2698.z, x_2698.w);
            let x_2701 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2699.x, x_2699.y, x_2701);
            let x_2708 : vec3<f32> = txVec40;
            let x_2710 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2708.xy, x_2708.z);
            u_xlat55.x = x_2710;
            let x_2713 : f32 = u_xlat17.z;
            let x_2715 : f32 = u_xlat55.x;
            let x_2717 : f32 = u_xlat32;
            u_xlat32 = ((x_2713 * x_2715) + x_2717);
            let x_2720 : vec4<f32> = u_xlat11;
            let x_2721 : vec2<f32> = vec2<f32>(x_2720.x, x_2720.y);
            let x_2723 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
            let x_2730 : vec3<f32> = txVec41;
            let x_2732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2730.xy, x_2730.z);
            u_xlat55.x = x_2732;
            let x_2735 : f32 = u_xlat17.w;
            let x_2737 : f32 = u_xlat55.x;
            let x_2739 : f32 = u_xlat32;
            u_xlat32 = ((x_2735 * x_2737) + x_2739);
            let x_2742 : vec4<f32> = u_xlat11;
            let x_2743 : vec2<f32> = vec2<f32>(x_2742.z, x_2742.w);
            let x_2745 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2743.x, x_2743.y, x_2745);
            let x_2752 : vec3<f32> = txVec42;
            let x_2754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2752.xy, x_2752.z);
            u_xlat55.x = x_2754;
            let x_2757 : f32 = u_xlat9.x;
            let x_2759 : f32 = u_xlat55.x;
            let x_2761 : f32 = u_xlat32;
            u_xlat77 = ((x_2757 * x_2759) + x_2761);
          } else {
            let x_2764 : vec4<f32> = u_xlat8;
            let x_2767 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2770 : vec2<f32> = ((vec2<f32>(x_2764.x, x_2764.y) * vec2<f32>(x_2767.z, x_2767.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2771 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
            let x_2773 : vec4<f32> = u_xlat9;
            let x_2775 : vec2<f32> = floor(vec2<f32>(x_2773.x, x_2773.y));
            let x_2776 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
            let x_2778 : vec4<f32> = u_xlat8;
            let x_2781 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2784 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2778.x, x_2778.y) * vec2<f32>(x_2781.z, x_2781.w)) + -(vec2<f32>(x_2784.x, x_2784.y)));
            let x_2788 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2788.x, x_2788.x, x_2788.y, x_2788.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2791 : vec4<f32> = u_xlat10;
            let x_2793 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2791.x, x_2791.x, x_2791.z, x_2791.z) * vec4<f32>(x_2793.x, x_2793.x, x_2793.z, x_2793.z));
            let x_2796 : vec4<f32> = u_xlat11;
            let x_2798 : vec2<f32> = (vec2<f32>(x_2796.y, x_2796.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2799 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2799.x, x_2798.x, x_2799.z, x_2798.y);
            let x_2801 : vec4<f32> = u_xlat11;
            let x_2804 : vec2<f32> = u_xlat55;
            let x_2806 : vec2<f32> = ((vec2<f32>(x_2801.x, x_2801.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2804));
            let x_2807 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2806.x, x_2807.y, x_2806.y, x_2807.w);
            let x_2809 : vec2<f32> = u_xlat55;
            let x_2811 : vec2<f32> = (-(x_2809) + vec2<f32>(1.0f, 1.0f));
            let x_2812 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2811.x, x_2811.y, x_2812.z, x_2812.w);
            let x_2814 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2814, vec2<f32>(0.0f, 0.0f));
            let x_2816 : vec2<f32> = u_xlat57;
            let x_2818 : vec2<f32> = u_xlat57;
            let x_2820 : vec4<f32> = u_xlat11;
            let x_2822 : vec2<f32> = ((-(x_2816) * x_2818) + vec2<f32>(x_2820.x, x_2820.y));
            let x_2823 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2822.x, x_2822.y, x_2823.z, x_2823.w);
            let x_2825 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2825, vec2<f32>(0.0f, 0.0f));
            let x_2828 : vec2<f32> = u_xlat57;
            let x_2830 : vec2<f32> = u_xlat57;
            let x_2832 : vec4<f32> = u_xlat10;
            let x_2834 : vec2<f32> = ((-(x_2828) * x_2830) + vec2<f32>(x_2832.y, x_2832.w));
            let x_2835 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2834.x, x_2835.y, x_2834.y);
            let x_2837 : vec4<f32> = u_xlat11;
            let x_2839 : vec2<f32> = (vec2<f32>(x_2837.x, x_2837.y) + vec2<f32>(2.0f, 2.0f));
            let x_2840 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2839.x, x_2839.y, x_2840.z, x_2840.w);
            let x_2842 : vec3<f32> = u_xlat33;
            let x_2844 : vec2<f32> = (vec2<f32>(x_2842.x, x_2842.z) + vec2<f32>(2.0f, 2.0f));
            let x_2845 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2845.x, x_2844.x, x_2845.z, x_2844.y);
            let x_2848 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2848 * 0.08163200318813323975f);
            let x_2851 : vec4<f32> = u_xlat10;
            let x_2853 : vec3<f32> = (vec3<f32>(x_2851.z, x_2851.x, x_2851.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2854 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2853.x, x_2853.y, x_2853.z, x_2854.w);
            let x_2856 : vec4<f32> = u_xlat11;
            let x_2858 : vec2<f32> = (vec2<f32>(x_2856.x, x_2856.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2859 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2858.x, x_2858.y, x_2859.z, x_2859.w);
            let x_2862 : f32 = u_xlat14.y;
            u_xlat13.x = x_2862;
            let x_2864 : vec2<f32> = u_xlat55;
            let x_2867 : vec2<f32> = ((vec2<f32>(x_2864.x, x_2864.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2868 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2868.x, x_2867.x, x_2868.z, x_2867.y);
            let x_2870 : vec2<f32> = u_xlat55;
            let x_2873 : vec2<f32> = ((vec2<f32>(x_2870.x, x_2870.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2874 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2873.x, x_2874.y, x_2873.y, x_2874.w);
            let x_2877 : f32 = u_xlat10.x;
            u_xlat11.y = x_2877;
            let x_2880 : f32 = u_xlat12.y;
            u_xlat11.w = x_2880;
            let x_2882 : vec4<f32> = u_xlat11;
            let x_2883 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2882 + x_2883);
            let x_2885 : vec2<f32> = u_xlat55;
            let x_2888 : vec2<f32> = ((vec2<f32>(x_2885.y, x_2885.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2889 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2889.x, x_2888.x, x_2889.z, x_2888.y);
            let x_2891 : vec2<f32> = u_xlat55;
            let x_2894 : vec2<f32> = ((vec2<f32>(x_2891.y, x_2891.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2895 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2894.x, x_2895.y, x_2894.y, x_2895.w);
            let x_2898 : f32 = u_xlat10.y;
            u_xlat12.y = x_2898;
            let x_2900 : vec4<f32> = u_xlat12;
            let x_2901 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2900 + x_2901);
            let x_2903 : vec4<f32> = u_xlat11;
            let x_2904 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2903 / x_2904);
            let x_2906 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2906 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2908 : vec4<f32> = u_xlat12;
            let x_2909 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2908 / x_2909);
            let x_2911 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2911 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2913 : vec4<f32> = u_xlat11;
            let x_2916 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2913.w, x_2913.x, x_2913.y, x_2913.z) * vec4<f32>(x_2916.x, x_2916.x, x_2916.x, x_2916.x));
            let x_2919 : vec4<f32> = u_xlat12;
            let x_2922 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2919.x, x_2919.w, x_2919.y, x_2919.z) * vec4<f32>(x_2922.y, x_2922.y, x_2922.y, x_2922.y));
            let x_2925 : vec4<f32> = u_xlat11;
            let x_2926 : vec3<f32> = vec3<f32>(x_2925.y, x_2925.z, x_2925.w);
            let x_2927 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2926.x, x_2927.y, x_2926.y, x_2926.z);
            let x_2930 : f32 = u_xlat12.x;
            u_xlat14.y = x_2930;
            let x_2932 : vec4<f32> = u_xlat9;
            let x_2935 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2938 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2932.x, x_2932.y, x_2932.x, x_2932.y) * vec4<f32>(x_2935.x, x_2935.y, x_2935.x, x_2935.y)) + vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2938.y));
            let x_2941 : vec4<f32> = u_xlat9;
            let x_2944 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2947 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2941.x, x_2941.y) * vec2<f32>(x_2944.x, x_2944.y)) + vec2<f32>(x_2947.w, x_2947.y));
            let x_2951 : f32 = u_xlat14.y;
            u_xlat11.y = x_2951;
            let x_2954 : f32 = u_xlat12.z;
            u_xlat14.y = x_2954;
            let x_2956 : vec4<f32> = u_xlat9;
            let x_2959 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2962 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2956.x, x_2956.y, x_2956.x, x_2956.y) * vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y)) + vec4<f32>(x_2962.x, x_2962.y, x_2962.z, x_2962.y));
            let x_2965 : vec4<f32> = u_xlat9;
            let x_2968 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2971 : vec4<f32> = u_xlat14;
            let x_2973 : vec2<f32> = ((vec2<f32>(x_2965.x, x_2965.y) * vec2<f32>(x_2968.x, x_2968.y)) + vec2<f32>(x_2971.w, x_2971.y));
            let x_2974 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2973.x, x_2973.y, x_2974.z, x_2974.w);
            let x_2977 : f32 = u_xlat14.y;
            u_xlat11.z = x_2977;
            let x_2980 : vec4<f32> = u_xlat9;
            let x_2983 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2986 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.y) * vec4<f32>(x_2983.x, x_2983.y, x_2983.x, x_2983.y)) + vec4<f32>(x_2986.x, x_2986.y, x_2986.x, x_2986.z));
            let x_2990 : f32 = u_xlat12.w;
            u_xlat14.y = x_2990;
            let x_2993 : vec4<f32> = u_xlat9;
            let x_2996 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2999 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2993.x, x_2993.y, x_2993.x, x_2993.y) * vec4<f32>(x_2996.x, x_2996.y, x_2996.x, x_2996.y)) + vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_2999.y));
            let x_3003 : vec4<f32> = u_xlat9;
            let x_3006 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_3009 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3003.x, x_3003.y) * vec2<f32>(x_3006.x, x_3006.y)) + vec2<f32>(x_3009.w, x_3009.y));
            let x_3013 : f32 = u_xlat14.y;
            u_xlat11.w = x_3013;
            let x_3016 : vec4<f32> = u_xlat9;
            let x_3019 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_3022 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3016.x, x_3016.y) * vec2<f32>(x_3019.x, x_3019.y)) + vec2<f32>(x_3022.x, x_3022.w));
            let x_3025 : vec4<f32> = u_xlat14;
            let x_3026 : vec3<f32> = vec3<f32>(x_3025.x, x_3025.z, x_3025.w);
            let x_3027 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3026.x, x_3027.y, x_3026.y, x_3026.z);
            let x_3029 : vec4<f32> = u_xlat9;
            let x_3032 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_3035 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3029.x, x_3029.y, x_3029.x, x_3029.y) * vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.y)) + vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3035.y));
            let x_3038 : vec4<f32> = u_xlat9;
            let x_3041 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_3044 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3038.x, x_3038.y) * vec2<f32>(x_3041.x, x_3041.y)) + vec2<f32>(x_3044.w, x_3044.y));
            let x_3048 : f32 = u_xlat11.x;
            u_xlat12.x = x_3048;
            let x_3050 : vec4<f32> = u_xlat9;
            let x_3053 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_3056 : vec4<f32> = u_xlat12;
            let x_3058 : vec2<f32> = ((vec2<f32>(x_3050.x, x_3050.y) * vec2<f32>(x_3053.x, x_3053.y)) + vec2<f32>(x_3056.x, x_3056.y));
            let x_3059 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3058.x, x_3058.y, x_3059.z, x_3059.w);
            let x_3062 : vec4<f32> = u_xlat10;
            let x_3064 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3062.x, x_3062.x, x_3062.x, x_3062.x) * x_3064);
            let x_3067 : vec4<f32> = u_xlat10;
            let x_3069 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3067.y, x_3067.y, x_3067.y, x_3067.y) * x_3069);
            let x_3072 : vec4<f32> = u_xlat10;
            let x_3074 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3072.z, x_3072.z, x_3072.z, x_3072.z) * x_3074);
            let x_3076 : vec4<f32> = u_xlat10;
            let x_3078 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3076.w, x_3076.w, x_3076.w, x_3076.w) * x_3078);
            let x_3081 : vec4<f32> = u_xlat15;
            let x_3082 : vec2<f32> = vec2<f32>(x_3081.x, x_3081.y);
            let x_3084 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
            let x_3091 : vec3<f32> = txVec43;
            let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
            u_xlat11.x = x_3093;
            let x_3096 : vec4<f32> = u_xlat15;
            let x_3097 : vec2<f32> = vec2<f32>(x_3096.z, x_3096.w);
            let x_3099 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
            let x_3107 : vec3<f32> = txVec44;
            let x_3109 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3107.xy, x_3107.z);
            u_xlat80 = x_3109;
            let x_3110 : f32 = u_xlat80;
            let x_3112 : f32 = u_xlat20.y;
            u_xlat80 = (x_3110 * x_3112);
            let x_3115 : f32 = u_xlat20.x;
            let x_3117 : f32 = u_xlat11.x;
            let x_3119 : f32 = u_xlat80;
            u_xlat11.x = ((x_3115 * x_3117) + x_3119);
            let x_3123 : vec2<f32> = u_xlat55;
            let x_3125 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
            let x_3132 : vec3<f32> = txVec45;
            let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
            u_xlat55.x = x_3134;
            let x_3137 : f32 = u_xlat20.z;
            let x_3139 : f32 = u_xlat55.x;
            let x_3142 : f32 = u_xlat11.x;
            u_xlat55.x = ((x_3137 * x_3139) + x_3142);
            let x_3146 : vec4<f32> = u_xlat18;
            let x_3147 : vec2<f32> = vec2<f32>(x_3146.x, x_3146.y);
            let x_3149 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3157 : vec3<f32> = txVec46;
            let x_3159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3157.xy, x_3157.z);
            u_xlat78 = x_3159;
            let x_3161 : f32 = u_xlat20.w;
            let x_3162 : f32 = u_xlat78;
            let x_3165 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3161 * x_3162) + x_3165);
            let x_3169 : vec4<f32> = u_xlat16;
            let x_3170 : vec2<f32> = vec2<f32>(x_3169.x, x_3169.y);
            let x_3172 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec47;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat78 = x_3181;
            let x_3183 : f32 = u_xlat21.x;
            let x_3184 : f32 = u_xlat78;
            let x_3187 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3183 * x_3184) + x_3187);
            let x_3191 : vec4<f32> = u_xlat16;
            let x_3192 : vec2<f32> = vec2<f32>(x_3191.z, x_3191.w);
            let x_3194 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
            let x_3201 : vec3<f32> = txVec48;
            let x_3203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
            u_xlat78 = x_3203;
            let x_3205 : f32 = u_xlat21.y;
            let x_3206 : f32 = u_xlat78;
            let x_3209 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3205 * x_3206) + x_3209);
            let x_3213 : vec4<f32> = u_xlat17;
            let x_3214 : vec2<f32> = vec2<f32>(x_3213.x, x_3213.y);
            let x_3216 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
            let x_3223 : vec3<f32> = txVec49;
            let x_3225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
            u_xlat78 = x_3225;
            let x_3227 : f32 = u_xlat21.z;
            let x_3228 : f32 = u_xlat78;
            let x_3231 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3227 * x_3228) + x_3231);
            let x_3235 : vec4<f32> = u_xlat18;
            let x_3236 : vec2<f32> = vec2<f32>(x_3235.z, x_3235.w);
            let x_3238 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3236.x, x_3236.y, x_3238);
            let x_3245 : vec3<f32> = txVec50;
            let x_3247 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3245.xy, x_3245.z);
            u_xlat78 = x_3247;
            let x_3249 : f32 = u_xlat21.w;
            let x_3250 : f32 = u_xlat78;
            let x_3253 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3249 * x_3250) + x_3253);
            let x_3257 : vec4<f32> = u_xlat19;
            let x_3258 : vec2<f32> = vec2<f32>(x_3257.x, x_3257.y);
            let x_3260 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3258.x, x_3258.y, x_3260);
            let x_3267 : vec3<f32> = txVec51;
            let x_3269 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3267.xy, x_3267.z);
            u_xlat78 = x_3269;
            let x_3271 : f32 = u_xlat22.x;
            let x_3272 : f32 = u_xlat78;
            let x_3275 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3271 * x_3272) + x_3275);
            let x_3279 : vec4<f32> = u_xlat19;
            let x_3280 : vec2<f32> = vec2<f32>(x_3279.z, x_3279.w);
            let x_3282 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3280.x, x_3280.y, x_3282);
            let x_3289 : vec3<f32> = txVec52;
            let x_3291 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3289.xy, x_3289.z);
            u_xlat78 = x_3291;
            let x_3293 : f32 = u_xlat22.y;
            let x_3294 : f32 = u_xlat78;
            let x_3297 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3293 * x_3294) + x_3297);
            let x_3301 : vec2<f32> = u_xlat34;
            let x_3303 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3301.x, x_3301.y, x_3303);
            let x_3310 : vec3<f32> = txVec53;
            let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
            u_xlat78 = x_3312;
            let x_3314 : f32 = u_xlat22.z;
            let x_3315 : f32 = u_xlat78;
            let x_3318 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3314 * x_3315) + x_3318);
            let x_3322 : vec2<f32> = u_xlat63;
            let x_3324 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3322.x, x_3322.y, x_3324);
            let x_3331 : vec3<f32> = txVec54;
            let x_3333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3331.xy, x_3331.z);
            u_xlat78 = x_3333;
            let x_3335 : f32 = u_xlat22.w;
            let x_3336 : f32 = u_xlat78;
            let x_3339 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3335 * x_3336) + x_3339);
            let x_3343 : vec4<f32> = u_xlat14;
            let x_3344 : vec2<f32> = vec2<f32>(x_3343.x, x_3343.y);
            let x_3346 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec55;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat78 = x_3355;
            let x_3357 : f32 = u_xlat10.x;
            let x_3358 : f32 = u_xlat78;
            let x_3361 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3357 * x_3358) + x_3361);
            let x_3365 : vec4<f32> = u_xlat14;
            let x_3366 : vec2<f32> = vec2<f32>(x_3365.z, x_3365.w);
            let x_3368 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3366.x, x_3366.y, x_3368);
            let x_3375 : vec3<f32> = txVec56;
            let x_3377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3375.xy, x_3375.z);
            u_xlat78 = x_3377;
            let x_3379 : f32 = u_xlat10.y;
            let x_3380 : f32 = u_xlat78;
            let x_3383 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3379 * x_3380) + x_3383);
            let x_3387 : vec2<f32> = u_xlat58;
            let x_3389 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec57;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat78 = x_3398;
            let x_3400 : f32 = u_xlat10.z;
            let x_3401 : f32 = u_xlat78;
            let x_3404 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3400 * x_3401) + x_3404);
            let x_3408 : vec4<f32> = u_xlat9;
            let x_3409 : vec2<f32> = vec2<f32>(x_3408.x, x_3408.y);
            let x_3411 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3409.x, x_3409.y, x_3411);
            let x_3418 : vec3<f32> = txVec58;
            let x_3420 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3418.xy, x_3418.z);
            u_xlat9.x = x_3420;
            let x_3423 : f32 = u_xlat10.w;
            let x_3425 : f32 = u_xlat9.x;
            let x_3428 : f32 = u_xlat55.x;
            u_xlat77 = ((x_3423 * x_3425) + x_3428);
          }
        }
      } else {
        let x_3432 : vec4<f32> = u_xlat8;
        let x_3433 : vec2<f32> = vec2<f32>(x_3432.x, x_3432.y);
        let x_3435 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3433.x, x_3433.y, x_3435);
        let x_3442 : vec3<f32> = txVec59;
        let x_3444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3442.xy, x_3442.z);
        u_xlat77 = x_3444;
      }
      let x_3445 : i32 = u_xlati75;
      let x_3447 : f32 = x_328.x_AdditionalShadowParams[x_3445].x;
      u_xlat8.x = (1.0f + -(x_3447));
      let x_3451 : f32 = u_xlat77;
      let x_3452 : i32 = u_xlati75;
      let x_3454 : f32 = x_328.x_AdditionalShadowParams[x_3452].x;
      let x_3457 : f32 = u_xlat8.x;
      u_xlat8.x = ((x_3451 * x_3454) + x_3457);
      let x_3461 : f32 = u_xlat8.z;
      u_xlatb31.x = (0.0f >= x_3461);
      let x_3466 : f32 = u_xlat8.z;
      u_xlatb54 = (x_3466 >= 1.0f);
      let x_3468 : bool = u_xlatb54;
      let x_3470 : bool = u_xlatb31.x;
      u_xlatb31.x = (x_3468 | x_3470);
      let x_3474 : bool = u_xlatb31.x;
      if (x_3474) {
        x_3475 = 1.0f;
      } else {
        let x_3480 : f32 = u_xlat8.x;
        x_3475 = x_3480;
      }
      let x_3481 : f32 = x_3475;
      u_xlat8.x = x_3481;
    } else {
      u_xlat8.x = 1.0f;
    }
    let x_3486 : f32 = u_xlat8.x;
    u_xlat31.x = (-(x_3486) + 1.0f);
    let x_3491 : f32 = u_xlat4.x;
    let x_3493 : f32 = u_xlat31.x;
    let x_3496 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_3491 * x_3493) + x_3496);
    let x_3500 : i32 = u_xlati75;
    u_xlati31 = (1i << bitcast<u32>((x_3500 & 31i)));
    let x_3504 : i32 = u_xlati31;
    let x_3507 : f32 = x_1679.x_AdditionalLightsCookieEnableBits;
    u_xlati31 = bitcast<i32>((bitcast<u32>(x_3504) & bitcast<u32>(x_3507)));
    let x_3511 : i32 = u_xlati31;
    if ((x_3511 != 0i)) {
      let x_3515 : i32 = u_xlati75;
      let x_3517 : f32 = x_1679.x_AdditionalLightsLightTypes[x_3515].el;
      u_xlati31 = i32(x_3517);
      let x_3520 : i32 = u_xlati31;
      u_xlati54 = select(1i, 0i, (x_3520 != 0i));
      let x_3524 : i32 = u_xlati75;
      u_xlati77 = (x_3524 << bitcast<u32>(2i));
      let x_3526 : i32 = u_xlati54;
      if ((x_3526 != 0i)) {
        let x_3530 : vec3<f32> = vs_TEXCOORD1;
        let x_3532 : i32 = u_xlati77;
        let x_3535 : i32 = u_xlati77;
        let x_3539 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3532 + 1i) / 4i)][((x_3535 + 1i) % 4i)];
        let x_3541 : vec3<f32> = (vec3<f32>(x_3530.y, x_3530.y, x_3530.y) * vec3<f32>(x_3539.x, x_3539.y, x_3539.w));
        let x_3542 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3541.x, x_3541.y, x_3541.z, x_3542.w);
        let x_3544 : i32 = u_xlati77;
        let x_3546 : i32 = u_xlati77;
        let x_3549 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[(x_3544 / 4i)][(x_3546 % 4i)];
        let x_3551 : vec3<f32> = vs_TEXCOORD1;
        let x_3554 : vec4<f32> = u_xlat9;
        let x_3556 : vec3<f32> = ((vec3<f32>(x_3549.x, x_3549.y, x_3549.w) * vec3<f32>(x_3551.x, x_3551.x, x_3551.x)) + vec3<f32>(x_3554.x, x_3554.y, x_3554.z));
        let x_3557 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3556.x, x_3556.y, x_3556.z, x_3557.w);
        let x_3559 : i32 = u_xlati77;
        let x_3562 : i32 = u_xlati77;
        let x_3566 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3559 + 2i) / 4i)][((x_3562 + 2i) % 4i)];
        let x_3568 : vec3<f32> = vs_TEXCOORD1;
        let x_3571 : vec4<f32> = u_xlat9;
        let x_3573 : vec3<f32> = ((vec3<f32>(x_3566.x, x_3566.y, x_3566.w) * vec3<f32>(x_3568.z, x_3568.z, x_3568.z)) + vec3<f32>(x_3571.x, x_3571.y, x_3571.z));
        let x_3574 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3573.x, x_3573.y, x_3573.z, x_3574.w);
        let x_3576 : vec4<f32> = u_xlat9;
        let x_3578 : i32 = u_xlati77;
        let x_3581 : i32 = u_xlati77;
        let x_3585 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3578 + 3i) / 4i)][((x_3581 + 3i) % 4i)];
        let x_3587 : vec3<f32> = (vec3<f32>(x_3576.x, x_3576.y, x_3576.z) + vec3<f32>(x_3585.x, x_3585.y, x_3585.w));
        let x_3588 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);
        let x_3590 : vec4<f32> = u_xlat9;
        let x_3592 : vec4<f32> = u_xlat9;
        let x_3594 : vec2<f32> = (vec2<f32>(x_3590.x, x_3590.y) / vec2<f32>(x_3592.z, x_3592.z));
        let x_3595 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3594.x, x_3594.y, x_3595.z, x_3595.w);
        let x_3597 : vec4<f32> = u_xlat9;
        let x_3600 : vec2<f32> = ((vec2<f32>(x_3597.x, x_3597.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3601 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3600.x, x_3600.y, x_3601.z, x_3601.w);
        let x_3603 : vec4<f32> = u_xlat9;
        let x_3607 : vec2<f32> = clamp(vec2<f32>(x_3603.x, x_3603.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3608 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3607.x, x_3607.y, x_3608.z, x_3608.w);
        let x_3610 : i32 = u_xlati75;
        let x_3612 : vec4<f32> = x_1679.x_AdditionalLightsCookieAtlasUVRects[x_3610];
        let x_3614 : vec4<f32> = u_xlat9;
        let x_3617 : i32 = u_xlati75;
        let x_3619 : vec4<f32> = x_1679.x_AdditionalLightsCookieAtlasUVRects[x_3617];
        let x_3621 : vec2<f32> = ((vec2<f32>(x_3612.x, x_3612.y) * vec2<f32>(x_3614.x, x_3614.y)) + vec2<f32>(x_3619.z, x_3619.w));
        let x_3622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3621.x, x_3621.y, x_3622.z, x_3622.w);
      } else {
        let x_3625 : i32 = u_xlati31;
        u_xlatb31.x = (x_3625 == 1i);
        let x_3629 : bool = u_xlatb31.x;
        u_xlati31 = select(0i, 1i, x_3629);
        let x_3631 : i32 = u_xlati31;
        if ((x_3631 != 0i)) {
          let x_3635 : vec3<f32> = vs_TEXCOORD1;
          let x_3637 : i32 = u_xlati77;
          let x_3640 : i32 = u_xlati77;
          let x_3644 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3637 + 1i) / 4i)][((x_3640 + 1i) % 4i)];
          let x_3646 : vec2<f32> = (vec2<f32>(x_3635.y, x_3635.y) * vec2<f32>(x_3644.x, x_3644.y));
          let x_3647 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3646.x, x_3646.y, x_3647.z);
          let x_3649 : i32 = u_xlati77;
          let x_3651 : i32 = u_xlati77;
          let x_3654 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[(x_3649 / 4i)][(x_3651 % 4i)];
          let x_3656 : vec3<f32> = vs_TEXCOORD1;
          let x_3659 : vec3<f32> = u_xlat31;
          let x_3661 : vec2<f32> = ((vec2<f32>(x_3654.x, x_3654.y) * vec2<f32>(x_3656.x, x_3656.x)) + vec2<f32>(x_3659.x, x_3659.y));
          let x_3662 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3661.x, x_3661.y, x_3662.z);
          let x_3664 : i32 = u_xlati77;
          let x_3667 : i32 = u_xlati77;
          let x_3671 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3664 + 2i) / 4i)][((x_3667 + 2i) % 4i)];
          let x_3673 : vec3<f32> = vs_TEXCOORD1;
          let x_3676 : vec3<f32> = u_xlat31;
          let x_3678 : vec2<f32> = ((vec2<f32>(x_3671.x, x_3671.y) * vec2<f32>(x_3673.z, x_3673.z)) + vec2<f32>(x_3676.x, x_3676.y));
          let x_3679 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3678.x, x_3678.y, x_3679.z);
          let x_3681 : vec3<f32> = u_xlat31;
          let x_3683 : i32 = u_xlati77;
          let x_3686 : i32 = u_xlati77;
          let x_3690 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3683 + 3i) / 4i)][((x_3686 + 3i) % 4i)];
          let x_3692 : vec2<f32> = (vec2<f32>(x_3681.x, x_3681.y) + vec2<f32>(x_3690.x, x_3690.y));
          let x_3693 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3692.x, x_3692.y, x_3693.z);
          let x_3695 : vec3<f32> = u_xlat31;
          let x_3698 : vec2<f32> = ((vec2<f32>(x_3695.x, x_3695.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3699 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3698.x, x_3698.y, x_3699.z);
          let x_3701 : vec3<f32> = u_xlat31;
          let x_3703 : vec2<f32> = fract(vec2<f32>(x_3701.x, x_3701.y));
          let x_3704 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3703.x, x_3703.y, x_3704.z);
          let x_3706 : i32 = u_xlati75;
          let x_3708 : vec4<f32> = x_1679.x_AdditionalLightsCookieAtlasUVRects[x_3706];
          let x_3710 : vec3<f32> = u_xlat31;
          let x_3713 : i32 = u_xlati75;
          let x_3715 : vec4<f32> = x_1679.x_AdditionalLightsCookieAtlasUVRects[x_3713];
          let x_3717 : vec2<f32> = ((vec2<f32>(x_3708.x, x_3708.y) * vec2<f32>(x_3710.x, x_3710.y)) + vec2<f32>(x_3715.z, x_3715.w));
          let x_3718 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3717.x, x_3717.y, x_3718.z, x_3718.w);
        } else {
          let x_3721 : vec3<f32> = vs_TEXCOORD1;
          let x_3723 : i32 = u_xlati77;
          let x_3726 : i32 = u_xlati77;
          let x_3730 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3723 + 1i) / 4i)][((x_3726 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3721.y, x_3721.y, x_3721.y, x_3721.y) * x_3730);
          let x_3732 : i32 = u_xlati77;
          let x_3734 : i32 = u_xlati77;
          let x_3737 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[(x_3732 / 4i)][(x_3734 % 4i)];
          let x_3738 : vec3<f32> = vs_TEXCOORD1;
          let x_3741 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3737 * vec4<f32>(x_3738.x, x_3738.x, x_3738.x, x_3738.x)) + x_3741);
          let x_3743 : i32 = u_xlati77;
          let x_3746 : i32 = u_xlati77;
          let x_3750 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3743 + 2i) / 4i)][((x_3746 + 2i) % 4i)];
          let x_3751 : vec3<f32> = vs_TEXCOORD1;
          let x_3754 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3750 * vec4<f32>(x_3751.z, x_3751.z, x_3751.z, x_3751.z)) + x_3754);
          let x_3756 : vec4<f32> = u_xlat10;
          let x_3757 : i32 = u_xlati77;
          let x_3760 : i32 = u_xlati77;
          let x_3764 : vec4<f32> = x_1679.x_AdditionalLightsWorldToLights[((x_3757 + 3i) / 4i)][((x_3760 + 3i) % 4i)];
          u_xlat10 = (x_3756 + x_3764);
          let x_3766 : vec4<f32> = u_xlat10;
          let x_3768 : vec4<f32> = u_xlat10;
          u_xlat31 = (vec3<f32>(x_3766.x, x_3766.y, x_3766.z) / vec3<f32>(x_3768.w, x_3768.w, x_3768.w));
          let x_3771 : vec3<f32> = u_xlat31;
          let x_3772 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(x_3771, x_3772);
          let x_3776 : f32 = u_xlat55.x;
          u_xlat55.x = inverseSqrt(x_3776);
          let x_3779 : vec3<f32> = u_xlat31;
          let x_3780 : vec2<f32> = u_xlat55;
          u_xlat31 = (x_3779 * vec3<f32>(x_3780.x, x_3780.x, x_3780.x));
          let x_3783 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(abs(x_3783), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3789 : f32 = u_xlat55.x;
          u_xlat55.x = max(x_3789, 0.00000099999999747524f);
          let x_3794 : f32 = u_xlat55.x;
          u_xlat55.x = (1.0f / x_3794);
          let x_3797 : vec3<f32> = u_xlat31;
          let x_3799 : vec2<f32> = u_xlat55;
          let x_3801 : vec3<f32> = (vec3<f32>(x_3797.z, x_3797.x, x_3797.y) * vec3<f32>(x_3799.x, x_3799.x, x_3799.x));
          let x_3802 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3802.w);
          let x_3805 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3805);
          let x_3809 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3809, 0.0f, 1.0f);
          let x_3813 : vec4<f32> = u_xlat10;
          let x_3815 : vec4<bool> = (vec4<f32>(x_3813.y, x_3813.z, x_3813.y, x_3813.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_3815.x, x_3815.y);
          let x_3818 : vec4<f32> = u_xlat10;
          hlslcc_movcTemp = x_3818;
          let x_3820 : bool = u_xlatb33.x;
          if (x_3820) {
            let x_3825 : f32 = u_xlat10.x;
            x_3821 = x_3825;
          } else {
            let x_3828 : f32 = u_xlat10.x;
            x_3821 = -(x_3828);
          }
          let x_3830 : f32 = x_3821;
          hlslcc_movcTemp.x = x_3830;
          let x_3833 : bool = u_xlatb33.y;
          if (x_3833) {
            let x_3838 : f32 = u_xlat10.x;
            x_3834 = x_3838;
          } else {
            let x_3841 : f32 = u_xlat10.x;
            x_3834 = -(x_3841);
          }
          let x_3843 : f32 = x_3834;
          hlslcc_movcTemp.y = x_3843;
          let x_3845 : vec4<f32> = hlslcc_movcTemp;
          u_xlat10 = x_3845;
          let x_3846 : vec3<f32> = u_xlat31;
          let x_3848 : vec2<f32> = u_xlat55;
          let x_3851 : vec4<f32> = u_xlat10;
          let x_3853 : vec2<f32> = ((vec2<f32>(x_3846.x, x_3846.y) * vec2<f32>(x_3848.x, x_3848.x)) + vec2<f32>(x_3851.x, x_3851.y));
          let x_3854 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3853.x, x_3853.y, x_3854.z);
          let x_3856 : vec3<f32> = u_xlat31;
          let x_3859 : vec2<f32> = ((vec2<f32>(x_3856.x, x_3856.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3860 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3859.x, x_3859.y, x_3860.z);
          let x_3862 : vec3<f32> = u_xlat31;
          let x_3866 : vec2<f32> = clamp(vec2<f32>(x_3862.x, x_3862.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3867 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3866.x, x_3866.y, x_3867.z);
          let x_3869 : i32 = u_xlati75;
          let x_3871 : vec4<f32> = x_1679.x_AdditionalLightsCookieAtlasUVRects[x_3869];
          let x_3873 : vec3<f32> = u_xlat31;
          let x_3876 : i32 = u_xlati75;
          let x_3878 : vec4<f32> = x_1679.x_AdditionalLightsCookieAtlasUVRects[x_3876];
          let x_3880 : vec2<f32> = ((vec2<f32>(x_3871.x, x_3871.y) * vec2<f32>(x_3873.x, x_3873.y)) + vec2<f32>(x_3878.z, x_3878.w));
          let x_3881 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3880.x, x_3880.y, x_3881.z, x_3881.w);
        }
      }
      let x_3888 : vec4<f32> = u_xlat9;
      let x_3890 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3888.x, x_3888.y), 0.0f);
      u_xlat9 = x_3890;
      let x_3892 : bool = u_xlatb28.y;
      if (x_3892) {
        let x_3897 : f32 = u_xlat9.w;
        x_3893 = x_3897;
      } else {
        let x_3900 : f32 = u_xlat9.x;
        x_3893 = x_3900;
      }
      let x_3901 : f32 = x_3893;
      u_xlat31.x = x_3901;
      let x_3904 : bool = u_xlatb28.x;
      if (x_3904) {
        let x_3908 : vec4<f32> = u_xlat9;
        x_3905 = vec3<f32>(x_3908.x, x_3908.y, x_3908.z);
      } else {
        let x_3911 : vec3<f32> = u_xlat31;
        x_3905 = vec3<f32>(x_3911.x, x_3911.x, x_3911.x);
      }
      let x_3913 : vec3<f32> = x_3905;
      u_xlat31 = x_3913;
    } else {
      u_xlat31.x = 1.0f;
      u_xlat31.y = 1.0f;
      u_xlat31.z = 1.0f;
    }
    let x_3918 : vec3<f32> = u_xlat31;
    let x_3919 : i32 = u_xlati75;
    let x_3921 : vec4<f32> = x_1981.x_AdditionalLightsColor[x_3919];
    u_xlat31 = (x_3918 * vec3<f32>(x_3921.x, x_3921.y, x_3921.z));
    let x_3924 : f32 = u_xlat76;
    let x_3926 : f32 = u_xlat8.x;
    u_xlat75 = (x_3924 * x_3926);
    let x_3928 : f32 = u_xlat75;
    let x_3930 : vec3<f32> = u_xlat31;
    let x_3931 : vec3<f32> = (vec3<f32>(x_3928, x_3928, x_3928) * x_3930);
    let x_3932 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3931.x, x_3931.y, x_3931.z, x_3932.w);
    let x_3934 : vec4<f32> = u_xlat2;
    let x_3936 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_3934.x, x_3934.y, x_3934.z), vec3<f32>(x_3936.x, x_3936.y, x_3936.z));
    let x_3939 : f32 = u_xlat75;
    u_xlat75 = clamp(x_3939, 0.0f, 1.0f);
    let x_3941 : f32 = u_xlat75;
    let x_3943 : vec4<f32> = u_xlat8;
    let x_3945 : vec3<f32> = (vec3<f32>(x_3941, x_3941, x_3941) * vec3<f32>(x_3943.x, x_3943.y, x_3943.z));
    let x_3946 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3945.x, x_3945.y, x_3945.z, x_3946.w);
    let x_3948 : vec3<f32> = u_xlat1;
    let x_3949 : f32 = u_xlat70;
    let x_3952 : vec4<f32> = u_xlat7;
    let x_3954 : vec3<f32> = ((x_3948 * vec3<f32>(x_3949, x_3949, x_3949)) + vec3<f32>(x_3952.x, x_3952.y, x_3952.z));
    let x_3955 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3954.x, x_3954.y, x_3954.z, x_3955.w);
    let x_3957 : vec4<f32> = u_xlat7;
    let x_3959 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_3957.x, x_3957.y, x_3957.z), vec3<f32>(x_3959.x, x_3959.y, x_3959.z));
    let x_3962 : f32 = u_xlat75;
    u_xlat75 = max(x_3962, 1.17549435e-38f);
    let x_3964 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_3964);
    let x_3966 : f32 = u_xlat75;
    let x_3968 : vec4<f32> = u_xlat7;
    let x_3970 : vec3<f32> = (vec3<f32>(x_3966, x_3966, x_3966) * vec3<f32>(x_3968.x, x_3968.y, x_3968.z));
    let x_3971 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3970.x, x_3970.y, x_3970.z, x_3971.w);
    let x_3973 : vec4<f32> = u_xlat2;
    let x_3975 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_3973.x, x_3973.y, x_3973.z), vec3<f32>(x_3975.x, x_3975.y, x_3975.z));
    let x_3978 : f32 = u_xlat75;
    u_xlat75 = clamp(x_3978, 0.0f, 1.0f);
    let x_3980 : f32 = u_xlat75;
    u_xlat75 = log2(x_3980);
    let x_3982 : f32 = u_xlat71;
    let x_3983 : f32 = u_xlat75;
    u_xlat75 = (x_3982 * x_3983);
    let x_3985 : f32 = u_xlat75;
    u_xlat75 = exp2(x_3985);
    let x_3987 : f32 = u_xlat75;
    let x_3990 : vec4<f32> = x_57.x_SpecColor;
    let x_3992 : vec3<f32> = (vec3<f32>(x_3987, x_3987, x_3987) * vec3<f32>(x_3990.x, x_3990.y, x_3990.z));
    let x_3993 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3992.x, x_3992.y, x_3992.z, x_3993.w);
    let x_3995 : vec4<f32> = u_xlat7;
    let x_3997 : vec4<f32> = u_xlat8;
    let x_3999 : vec3<f32> = (vec3<f32>(x_3995.x, x_3995.y, x_3995.z) * vec3<f32>(x_3997.x, x_3997.y, x_3997.z));
    let x_4000 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3999.x, x_3999.y, x_3999.z, x_4000.w);
    let x_4002 : vec4<f32> = u_xlat9;
    let x_4004 : vec4<f32> = u_xlat0;
    let x_4007 : vec4<f32> = u_xlat7;
    let x_4009 : vec3<f32> = ((vec3<f32>(x_4002.x, x_4002.y, x_4002.z) * vec3<f32>(x_4004.y, x_4004.z, x_4004.w)) + vec3<f32>(x_4007.x, x_4007.y, x_4007.z));
    let x_4010 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4009.x, x_4009.y, x_4009.z, x_4010.w);
    let x_4012 : vec4<f32> = u_xlat6;
    let x_4014 : vec4<f32> = u_xlat7;
    let x_4016 : vec3<f32> = (vec3<f32>(x_4012.x, x_4012.y, x_4012.z) + vec3<f32>(x_4014.x, x_4014.y, x_4014.z));
    let x_4017 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_4016.x, x_4016.y, x_4016.z, x_4017.w);

    continuing {
      let x_4019 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4019 + bitcast<u32>(1i));
    }
  }
  let x_4022 : vec3<f32> = u_xlat26;
  let x_4023 : vec4<f32> = u_xlat0;
  let x_4026 : vec3<f32> = u_xlat27;
  u_xlat23 = ((x_4022 * vec3<f32>(x_4023.y, x_4023.z, x_4023.w)) + x_4026);
  let x_4028 : vec4<f32> = u_xlat6;
  let x_4030 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_4028.x, x_4028.y, x_4028.z) + x_4030);
  let x_4032 : f32 = u_xlat3;
  let x_4033 : f32 = u_xlat3;
  u_xlat1.x = (x_4032 * -(x_4033));
  let x_4038 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4038);
  let x_4041 : vec3<f32> = u_xlat23;
  let x_4043 : vec4<f32> = x_45.unity_FogColor;
  u_xlat23 = (x_4041 + -(vec3<f32>(x_4043.x, x_4043.y, x_4043.z)));
  let x_4049 : vec3<f32> = u_xlat1;
  let x_4051 : vec3<f32> = u_xlat23;
  let x_4054 : vec4<f32> = x_45.unity_FogColor;
  let x_4056 : vec3<f32> = ((vec3<f32>(x_4049.x, x_4049.x, x_4049.x) * x_4051) + vec3<f32>(x_4054.x, x_4054.y, x_4054.z));
  let x_4057 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4056.x, x_4056.y, x_4056.z, x_4057.w);
  let x_4061 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_4061 == 1.0f);
  let x_4063 : bool = u_xlatb23;
  if (x_4063) {
    let x_4068 : f32 = u_xlat0.x;
    x_4064 = x_4068;
  } else {
    x_4064 = 1.0f;
  }
  let x_4070 : f32 = x_4064;
  SV_Target0.w = x_4070;
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


