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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_76 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat24 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_275 : UnityPerDraw;

var<private> u_xlat67 : f32;

var<private> u_xlatb67 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb68 : bool;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb24 : vec2<bool>;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1660 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu67 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1892 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlati72 : i32;

var<private> u_xlati7 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlatb29 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb48 : bool;

var<private> u_xlatu69 : u32;

fn main_1() {
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
  var x_1743 : f32;
  var x_1754 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2030 : f32;
  var x_2041 : f32;
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
  var x_3658 : f32;
  var x_3671 : f32;
  var x_3729 : f32;
  var x_3740 : vec3<f32>;
  var x_3825 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_50 : vec3<f32> = vs_TEXCOORD2;
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_50, x_51);
  let x_56 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_56);
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec3<f32> = vs_TEXCOORD2;
  let x_62 : vec3<f32> = (vec3<f32>(x_59.x, x_59.x, x_59.x) * x_61);
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_67 : vec3<f32> = vs_TEXCOORD1;
  let x_78 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres0;
  let x_81 : vec3<f32> = (x_67 + -(vec3<f32>(x_78.x, x_78.y, x_78.z)));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec3<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres1;
  let x_91 : vec3<f32> = (x_85 + -(vec3<f32>(x_88.x, x_88.y, x_88.z)));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec3<f32> = vs_TEXCOORD1;
  let x_98 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres2;
  let x_101 : vec3<f32> = (x_95 + -(vec3<f32>(x_98.x, x_98.y, x_98.z)));
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = vs_TEXCOORD1;
  let x_108 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres3;
  let x_111 : vec3<f32> = (x_105 + -(vec3<f32>(x_108.x, x_108.y, x_108.z)));
  let x_112 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat2;
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_120 : vec4<f32> = u_xlat3;
  let x_122 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_127 : vec4<f32> = u_xlat4;
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_134 : vec4<f32> = u_xlat5;
  let x_136 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_145 : vec4<f32> = u_xlat2;
  let x_148 : vec4<f32> = x_76.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_145 < x_148);
  let x_152 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_152);
  let x_158 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_158);
  let x_162 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_162);
  let x_166 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_166);
  let x_170 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_170);
  let x_176 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_176);
  let x_180 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_180);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat3;
  let x_187 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_185.y, x_185.z, x_185.w));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat2;
  let x_193 : vec3<f32> = max(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_194.x, x_193.x, x_193.y, x_193.z);
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_196, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_204 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_204) + 4.0f);
  let x_211 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_211);
  let x_215 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_215) << bitcast<u32>(2i));
  let x_220 : vec3<f32> = vs_TEXCOORD1;
  let x_222 : i32 = u_xlati2;
  let x_225 : i32 = u_xlati2;
  let x_229 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_222 + 1i) / 4i)][((x_225 + 1i) % 4i)];
  u_xlat24 = (vec3<f32>(x_220.y, x_220.y, x_220.y) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : i32 = u_xlati2;
  let x_234 : i32 = u_xlati2;
  let x_237 : vec4<f32> = x_76.x_MainLightWorldToShadow[(x_232 / 4i)][(x_234 % 4i)];
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_242 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239.x, x_239.x, x_239.x)) + x_242);
  let x_244 : i32 = u_xlati2;
  let x_247 : i32 = u_xlati2;
  let x_251 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_244 + 2i) / 4i)][((x_247 + 2i) % 4i)];
  let x_253 : vec3<f32> = vs_TEXCOORD1;
  let x_256 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253.z, x_253.z, x_253.z)) + x_256);
  let x_258 : vec3<f32> = u_xlat24;
  let x_259 : i32 = u_xlati2;
  let x_262 : i32 = u_xlati2;
  let x_266 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_259 + 3i) / 4i)][((x_262 + 3i) % 4i)];
  let x_268 : vec3<f32> = (x_258 + vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  u_xlat1.w = 1.0f;
  let x_278 : vec4<f32> = x_275.unity_SHAr;
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_278, x_279);
  let x_284 : vec4<f32> = x_275.unity_SHAg;
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_284, x_285);
  let x_290 : vec4<f32> = x_275.unity_SHAb;
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_290, x_291);
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_294.y, x_294.z, x_294.z, x_294.x) * vec4<f32>(x_296.x, x_296.y, x_296.z, x_296.z));
  let x_301 : vec4<f32> = x_275.unity_SHBr;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_301, x_302);
  let x_307 : vec4<f32> = x_275.unity_SHBg;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_307, x_308);
  let x_313 : vec4<f32> = x_275.unity_SHBb;
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_313, x_314);
  let x_319 : f32 = u_xlat1.y;
  let x_321 : f32 = u_xlat1.y;
  u_xlat67 = (x_319 * x_321);
  let x_324 : f32 = u_xlat1.x;
  let x_326 : f32 = u_xlat1.x;
  let x_328 : f32 = u_xlat67;
  u_xlat67 = ((x_324 * x_326) + -(x_328));
  let x_333 : vec4<f32> = x_275.unity_SHC;
  let x_335 : f32 = u_xlat67;
  let x_338 : vec4<f32> = u_xlat5;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335, x_335, x_335)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat3;
  let x_352 : vec3<f32> = max(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_358 : f32 = x_76.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_358);
  let x_360 : bool = u_xlatb67;
  if (x_360) {
    let x_364 : f32 = x_76.x_MainLightShadowParams.y;
    u_xlatb67 = (x_364 == 1.0f);
    let x_366 : bool = u_xlatb67;
    if (x_366) {
      let x_369 : vec4<f32> = u_xlat2;
      let x_373 : vec4<f32> = x_76.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_369.x, x_369.y, x_369.x, x_369.y) + x_373);
      let x_377 : vec4<f32> = u_xlat4;
      let x_378 : vec2<f32> = vec2<f32>(x_377.x, x_377.y);
      let x_380 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_378.x, x_378.y, x_380);
      let x_392 : vec3<f32> = txVec0;
      let x_394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_392.xy, x_392.z);
      u_xlat5.x = x_394;
      let x_397 : vec4<f32> = u_xlat4;
      let x_398 : vec2<f32> = vec2<f32>(x_397.z, x_397.w);
      let x_400 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_398.x, x_398.y, x_400);
      let x_407 : vec3<f32> = txVec1;
      let x_409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_407.xy, x_407.z);
      u_xlat5.y = x_409;
      let x_411 : vec4<f32> = u_xlat2;
      let x_415 : vec4<f32> = x_76.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_411.x, x_411.y, x_411.x, x_411.y) + x_415);
      let x_418 : vec4<f32> = u_xlat4;
      let x_419 : vec2<f32> = vec2<f32>(x_418.x, x_418.y);
      let x_421 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_419.x, x_419.y, x_421);
      let x_428 : vec3<f32> = txVec2;
      let x_430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_428.xy, x_428.z);
      u_xlat5.z = x_430;
      let x_433 : vec4<f32> = u_xlat4;
      let x_434 : vec2<f32> = vec2<f32>(x_433.z, x_433.w);
      let x_436 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_434.x, x_434.y, x_436);
      let x_443 : vec3<f32> = txVec3;
      let x_445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_443.xy, x_443.z);
      u_xlat5.w = x_445;
      let x_447 : vec4<f32> = u_xlat5;
      u_xlat67 = dot(x_447, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_454 : f32 = x_76.x_MainLightShadowParams.y;
      u_xlatb68 = (x_454 == 2.0f);
      let x_456 : bool = u_xlatb68;
      if (x_456) {
        let x_459 : vec4<f32> = u_xlat2;
        let x_463 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_468 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(x_463.z, x_463.w)) + vec2<f32>(0.5f, 0.5f));
        let x_469 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
        let x_471 : vec4<f32> = u_xlat4;
        let x_473 : vec2<f32> = floor(vec2<f32>(x_471.x, x_471.y));
        let x_474 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_478 : vec4<f32> = u_xlat2;
        let x_481 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_484 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_478.x, x_478.y) * vec2<f32>(x_481.z, x_481.w)) + -(vec2<f32>(x_484.x, x_484.y)));
        let x_488 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_488.x, x_488.x, x_488.y, x_488.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_493 : vec4<f32> = u_xlat5;
        let x_495 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_493.x, x_493.x, x_493.z, x_493.z) * vec4<f32>(x_495.x, x_495.x, x_495.z, x_495.z));
        let x_498 : vec4<f32> = u_xlat6;
        let x_502 : vec2<f32> = (vec2<f32>(x_498.y, x_498.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_503 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_502.x, x_503.y, x_502.y, x_503.w);
        let x_505 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = u_xlat48;
        let x_510 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.z) * vec2<f32>(0.5f, 0.5f)) + -(x_508));
        let x_511 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_514 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_514) + vec2<f32>(1.0f, 1.0f));
        let x_519 : vec2<f32> = u_xlat48;
        let x_521 : vec2<f32> = min(x_519, vec2<f32>(0.0f, 0.0f));
        let x_522 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat7;
        let x_527 : vec4<f32> = u_xlat7;
        let x_530 : vec2<f32> = u_xlat50;
        let x_531 : vec2<f32> = ((-(vec2<f32>(x_524.x, x_524.y)) * vec2<f32>(x_527.x, x_527.y)) + x_530);
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
        let x_534 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_534, vec2<f32>(0.0f, 0.0f));
        let x_536 : vec2<f32> = u_xlat48;
        let x_538 : vec2<f32> = u_xlat48;
        let x_540 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_536) * x_538) + vec2<f32>(x_540.y, x_540.w));
        let x_543 : vec4<f32> = u_xlat7;
        let x_545 : vec2<f32> = (vec2<f32>(x_543.x, x_543.y) + vec2<f32>(1.0f, 1.0f));
        let x_546 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_548 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_548 + vec2<f32>(1.0f, 1.0f));
        let x_551 : vec4<f32> = u_xlat6;
        let x_555 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_556 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
        let x_558 : vec2<f32> = u_xlat50;
        let x_559 : vec2<f32> = (x_558 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_560 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat7;
        let x_564 : vec2<f32> = (vec2<f32>(x_562.x, x_562.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_568 : vec2<f32> = u_xlat48;
        let x_569 : vec2<f32> = (x_568 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_570 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_572.y, x_572.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_576 : f32 = u_xlat7.x;
        u_xlat8.z = x_576;
        let x_579 : f32 = u_xlat48.x;
        u_xlat8.w = x_579;
        let x_582 : f32 = u_xlat9.x;
        u_xlat6.z = x_582;
        let x_585 : f32 = u_xlat5.x;
        u_xlat6.w = x_585;
        let x_588 : vec4<f32> = u_xlat6;
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_588.z, x_588.w, x_588.x, x_588.z) + vec4<f32>(x_590.z, x_590.w, x_590.x, x_590.z));
        let x_594 : f32 = u_xlat8.y;
        u_xlat7.z = x_594;
        let x_597 : f32 = u_xlat48.y;
        u_xlat7.w = x_597;
        let x_600 : f32 = u_xlat6.y;
        u_xlat9.z = x_600;
        let x_603 : f32 = u_xlat5.z;
        u_xlat9.w = x_603;
        let x_605 : vec4<f32> = u_xlat7;
        let x_607 : vec4<f32> = u_xlat9;
        let x_609 : vec3<f32> = (vec3<f32>(x_605.z, x_605.y, x_605.w) + vec3<f32>(x_607.z, x_607.y, x_607.w));
        let x_610 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat6;
        let x_614 : vec4<f32> = u_xlat10;
        let x_616 : vec3<f32> = (vec3<f32>(x_612.x, x_612.z, x_612.w) / vec3<f32>(x_614.z, x_614.w, x_614.y));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat6;
        let x_625 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat9;
        let x_630 : vec4<f32> = u_xlat5;
        let x_632 : vec3<f32> = (vec3<f32>(x_628.z, x_628.y, x_628.w) / vec3<f32>(x_630.x, x_630.y, x_630.z));
        let x_633 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat7;
        let x_637 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_638 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat6;
        let x_643 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_645 : vec3<f32> = (vec3<f32>(x_640.y, x_640.x, x_640.z) * vec3<f32>(x_643.x, x_643.x, x_643.x));
        let x_646 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat7;
        let x_651 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_653 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(x_651.y, x_651.y, x_651.y));
        let x_654 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_657 : f32 = u_xlat7.x;
        u_xlat6.w = x_657;
        let x_659 : vec4<f32> = u_xlat4;
        let x_662 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_665 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y) * vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y)) + vec4<f32>(x_665.y, x_665.w, x_665.x, x_665.w));
        let x_668 : vec4<f32> = u_xlat4;
        let x_671 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_674 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_668.x, x_668.y) * vec2<f32>(x_671.x, x_671.y)) + vec2<f32>(x_674.z, x_674.w));
        let x_678 : f32 = u_xlat6.y;
        u_xlat7.w = x_678;
        let x_680 : vec4<f32> = u_xlat7;
        let x_681 : vec2<f32> = vec2<f32>(x_680.y, x_680.z);
        let x_682 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_682.x, x_681.x, x_682.z, x_681.y);
        let x_684 : vec4<f32> = u_xlat4;
        let x_687 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_690 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_684.x, x_684.y, x_684.x, x_684.y) * vec4<f32>(x_687.x, x_687.y, x_687.x, x_687.y)) + vec4<f32>(x_690.x, x_690.y, x_690.z, x_690.y));
        let x_693 : vec4<f32> = u_xlat4;
        let x_696 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_699 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_693.x, x_693.y, x_693.x, x_693.y) * vec4<f32>(x_696.x, x_696.y, x_696.x, x_696.y)) + vec4<f32>(x_699.w, x_699.y, x_699.w, x_699.z));
        let x_702 : vec4<f32> = u_xlat4;
        let x_705 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_708 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y) * vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y)) + vec4<f32>(x_708.x, x_708.w, x_708.z, x_708.w));
        let x_712 : vec4<f32> = u_xlat5;
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_712.x, x_712.x, x_712.x, x_712.y) * vec4<f32>(x_714.z, x_714.w, x_714.y, x_714.z));
        let x_718 : vec4<f32> = u_xlat5;
        let x_720 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_718.y, x_718.y, x_718.z, x_718.z) * x_720);
        let x_724 : f32 = u_xlat5.z;
        let x_726 : f32 = u_xlat10.y;
        u_xlat68 = (x_724 * x_726);
        let x_729 : vec4<f32> = u_xlat8;
        let x_730 : vec2<f32> = vec2<f32>(x_729.x, x_729.y);
        let x_732 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_740 : vec3<f32> = txVec4;
        let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_740.xy, x_740.z);
        u_xlat69 = x_742;
        let x_744 : vec4<f32> = u_xlat8;
        let x_745 : vec2<f32> = vec2<f32>(x_744.z, x_744.w);
        let x_747 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec5;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat4.x = x_756;
        let x_759 : f32 = u_xlat4.x;
        let x_761 : f32 = u_xlat11.y;
        u_xlat4.x = (x_759 * x_761);
        let x_765 : f32 = u_xlat11.x;
        let x_766 : f32 = u_xlat69;
        let x_769 : f32 = u_xlat4.x;
        u_xlat69 = ((x_765 * x_766) + x_769);
        let x_772 : vec2<f32> = u_xlat48;
        let x_774 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec6;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat4.x = x_783;
        let x_786 : f32 = u_xlat11.z;
        let x_788 : f32 = u_xlat4.x;
        let x_790 : f32 = u_xlat69;
        u_xlat69 = ((x_786 * x_788) + x_790);
        let x_793 : vec4<f32> = u_xlat7;
        let x_794 : vec2<f32> = vec2<f32>(x_793.x, x_793.y);
        let x_796 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_794.x, x_794.y, x_796);
        let x_803 : vec3<f32> = txVec7;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_803.xy, x_803.z);
        u_xlat4.x = x_805;
        let x_808 : f32 = u_xlat11.w;
        let x_810 : f32 = u_xlat4.x;
        let x_812 : f32 = u_xlat69;
        u_xlat69 = ((x_808 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat9;
        let x_816 : vec2<f32> = vec2<f32>(x_815.x, x_815.y);
        let x_818 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec8;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_825.xy, x_825.z);
        u_xlat4.x = x_827;
        let x_830 : f32 = u_xlat12.x;
        let x_832 : f32 = u_xlat4.x;
        let x_834 : f32 = u_xlat69;
        u_xlat69 = ((x_830 * x_832) + x_834);
        let x_837 : vec4<f32> = u_xlat9;
        let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
        let x_840 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_847 : vec3<f32> = txVec9;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
        u_xlat4.x = x_849;
        let x_852 : f32 = u_xlat12.y;
        let x_854 : f32 = u_xlat4.x;
        let x_856 : f32 = u_xlat69;
        u_xlat69 = ((x_852 * x_854) + x_856);
        let x_859 : vec4<f32> = u_xlat7;
        let x_860 : vec2<f32> = vec2<f32>(x_859.z, x_859.w);
        let x_862 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_860.x, x_860.y, x_862);
        let x_869 : vec3<f32> = txVec10;
        let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_869.xy, x_869.z);
        u_xlat4.x = x_871;
        let x_874 : f32 = u_xlat12.z;
        let x_876 : f32 = u_xlat4.x;
        let x_878 : f32 = u_xlat69;
        u_xlat69 = ((x_874 * x_876) + x_878);
        let x_881 : vec4<f32> = u_xlat6;
        let x_882 : vec2<f32> = vec2<f32>(x_881.x, x_881.y);
        let x_884 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_882.x, x_882.y, x_884);
        let x_891 : vec3<f32> = txVec11;
        let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
        u_xlat4.x = x_893;
        let x_896 : f32 = u_xlat12.w;
        let x_898 : f32 = u_xlat4.x;
        let x_900 : f32 = u_xlat69;
        u_xlat69 = ((x_896 * x_898) + x_900);
        let x_903 : vec4<f32> = u_xlat6;
        let x_904 : vec2<f32> = vec2<f32>(x_903.z, x_903.w);
        let x_906 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_904.x, x_904.y, x_906);
        let x_913 : vec3<f32> = txVec12;
        let x_915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_913.xy, x_913.z);
        u_xlat4.x = x_915;
        let x_917 : f32 = u_xlat68;
        let x_919 : f32 = u_xlat4.x;
        let x_921 : f32 = u_xlat69;
        u_xlat67 = ((x_917 * x_919) + x_921);
      } else {
        let x_924 : vec4<f32> = u_xlat2;
        let x_927 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_930 : vec2<f32> = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_927.z, x_927.w)) + vec2<f32>(0.5f, 0.5f));
        let x_931 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat4;
        let x_935 : vec2<f32> = floor(vec2<f32>(x_933.x, x_933.y));
        let x_936 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat2;
        let x_941 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_944 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.z, x_941.w)) + -(vec2<f32>(x_944.x, x_944.y)));
        let x_948 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_948.x, x_948.x, x_948.y, x_948.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_951 : vec4<f32> = u_xlat5;
        let x_953 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_951.x, x_951.x, x_951.z, x_951.z) * vec4<f32>(x_953.x, x_953.x, x_953.z, x_953.z));
        let x_956 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = (vec2<f32>(x_956.y, x_956.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_961.x, x_960.x, x_961.z, x_960.y);
        let x_963 : vec4<f32> = u_xlat6;
        let x_966 : vec2<f32> = u_xlat48;
        let x_968 : vec2<f32> = ((vec2<f32>(x_963.x, x_963.z) * vec2<f32>(0.5f, 0.5f)) + -(x_966));
        let x_969 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_968.x, x_969.y, x_968.y, x_969.w);
        let x_971 : vec2<f32> = u_xlat48;
        let x_973 : vec2<f32> = (-(x_971) + vec2<f32>(1.0f, 1.0f));
        let x_974 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_976, vec2<f32>(0.0f, 0.0f));
        let x_978 : vec2<f32> = u_xlat50;
        let x_980 : vec2<f32> = u_xlat50;
        let x_982 : vec4<f32> = u_xlat6;
        let x_984 : vec2<f32> = ((-(x_978) * x_980) + vec2<f32>(x_982.x, x_982.y));
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_987, vec2<f32>(0.0f, 0.0f));
        let x_990 : vec2<f32> = u_xlat50;
        let x_992 : vec2<f32> = u_xlat50;
        let x_994 : vec4<f32> = u_xlat5;
        let x_996 : vec2<f32> = ((-(x_990) * x_992) + vec2<f32>(x_994.y, x_994.w));
        let x_997 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_996.x, x_997.y, x_996.y);
        let x_999 : vec4<f32> = u_xlat6;
        let x_1002 : vec2<f32> = (vec2<f32>(x_999.x, x_999.y) + vec2<f32>(2.0f, 2.0f));
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1005 : vec3<f32> = u_xlat27;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1005.x, x_1005.z) + vec2<f32>(2.0f, 2.0f));
        let x_1008 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1011 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1011 * 0.08163200318813323975f);
        let x_1015 : vec4<f32> = u_xlat5;
        let x_1018 : vec3<f32> = (vec3<f32>(x_1015.z, x_1015.x, x_1015.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1025 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1028 : f32 = u_xlat9.y;
        u_xlat8.x = x_1028;
        let x_1030 : vec2<f32> = u_xlat48;
        let x_1037 : vec2<f32> = ((vec2<f32>(x_1030.x, x_1030.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1038.x, x_1037.x, x_1038.z, x_1037.y);
        let x_1040 : vec2<f32> = u_xlat48;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1048 : f32 = u_xlat5.x;
        u_xlat6.y = x_1048;
        let x_1051 : f32 = u_xlat7.y;
        u_xlat6.w = x_1051;
        let x_1053 : vec4<f32> = u_xlat6;
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1053 + x_1054);
        let x_1056 : vec2<f32> = u_xlat48;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1056.y, x_1056.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1060.x, x_1059.x, x_1060.z, x_1059.y);
        let x_1062 : vec2<f32> = u_xlat48;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1062.y, x_1062.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1066 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1065.x, x_1066.y, x_1065.y, x_1066.w);
        let x_1069 : f32 = u_xlat5.y;
        u_xlat7.y = x_1069;
        let x_1071 : vec4<f32> = u_xlat7;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1071 + x_1072);
        let x_1074 : vec4<f32> = u_xlat6;
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1074 / x_1075);
        let x_1077 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1077 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1084 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1083 / x_1084);
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1086 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1088 : vec4<f32> = u_xlat6;
        let x_1091 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1088.w, x_1088.x, x_1088.y, x_1088.z) * vec4<f32>(x_1091.x, x_1091.x, x_1091.x, x_1091.x));
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1097 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1094.x, x_1094.w, x_1094.y, x_1094.z) * vec4<f32>(x_1097.y, x_1097.y, x_1097.y, x_1097.y));
        let x_1100 : vec4<f32> = u_xlat6;
        let x_1101 : vec3<f32> = vec3<f32>(x_1100.y, x_1100.z, x_1100.w);
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1101.x, x_1102.y, x_1101.y, x_1101.z);
        let x_1105 : f32 = u_xlat7.x;
        u_xlat9.y = x_1105;
        let x_1107 : vec4<f32> = u_xlat4;
        let x_1110 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1113.y));
        let x_1116 : vec4<f32> = u_xlat4;
        let x_1119 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.w, x_1122.y));
        let x_1126 : f32 = u_xlat9.y;
        u_xlat6.y = x_1126;
        let x_1129 : f32 = u_xlat7.z;
        u_xlat9.y = x_1129;
        let x_1131 : vec4<f32> = u_xlat4;
        let x_1134 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y) * vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y)) + vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat4;
        let x_1143 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(x_1146.w, x_1146.y));
        let x_1149 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : f32 = u_xlat9.y;
        u_xlat6.z = x_1152;
        let x_1155 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.z));
        let x_1165 : f32 = u_xlat7.w;
        u_xlat9.y = x_1165;
        let x_1168 : vec4<f32> = u_xlat4;
        let x_1171 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y) * vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y)) + vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1174.y));
        let x_1178 : vec4<f32> = u_xlat4;
        let x_1181 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1188 : f32 = u_xlat9.y;
        u_xlat6.w = x_1188;
        let x_1191 : vec4<f32> = u_xlat4;
        let x_1194 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.x, x_1197.w));
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1201 : vec3<f32> = vec3<f32>(x_1200.x, x_1200.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1201.x, x_1202.y, x_1201.y, x_1201.z);
        let x_1204 : vec4<f32> = u_xlat4;
        let x_1207 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y) * vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y)) + vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1210.y));
        let x_1214 : vec4<f32> = u_xlat4;
        let x_1217 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1224 : f32 = u_xlat6.x;
        u_xlat7.x = x_1224;
        let x_1226 : vec4<f32> = u_xlat4;
        let x_1229 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.x, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1240 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1238.x, x_1238.x, x_1238.x, x_1238.x) * x_1240);
        let x_1243 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1243.y, x_1243.y, x_1243.y, x_1243.y) * x_1245);
        let x_1248 : vec4<f32> = u_xlat5;
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1248.z, x_1248.z, x_1248.z, x_1248.z) * x_1250);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1252.w, x_1252.w, x_1252.w, x_1252.w) * x_1254);
        let x_1257 : vec4<f32> = u_xlat10;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.x, x_1257.y);
        let x_1260 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec13;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1267.xy, x_1267.z);
        u_xlat68 = x_1269;
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.z, x_1271.w);
        let x_1274 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec14;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat69 = x_1283;
        let x_1284 : f32 = u_xlat69;
        let x_1286 : f32 = u_xlat15.y;
        u_xlat69 = (x_1284 * x_1286);
        let x_1289 : f32 = u_xlat15.x;
        let x_1290 : f32 = u_xlat68;
        let x_1292 : f32 = u_xlat69;
        u_xlat68 = ((x_1289 * x_1290) + x_1292);
        let x_1295 : vec2<f32> = u_xlat48;
        let x_1297 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec15;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1304.xy, x_1304.z);
        u_xlat69 = x_1306;
        let x_1308 : f32 = u_xlat15.z;
        let x_1309 : f32 = u_xlat69;
        let x_1311 : f32 = u_xlat68;
        u_xlat68 = ((x_1308 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat13;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec16;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1324.xy, x_1324.z);
        u_xlat69 = x_1326;
        let x_1328 : f32 = u_xlat15.w;
        let x_1329 : f32 = u_xlat69;
        let x_1331 : f32 = u_xlat68;
        u_xlat68 = ((x_1328 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec17;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat69 = x_1346;
        let x_1348 : f32 = u_xlat16.x;
        let x_1349 : f32 = u_xlat69;
        let x_1351 : f32 = u_xlat68;
        u_xlat68 = ((x_1348 * x_1349) + x_1351);
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.z, x_1354.w);
        let x_1357 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec18;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat69 = x_1366;
        let x_1368 : f32 = u_xlat16.y;
        let x_1369 : f32 = u_xlat69;
        let x_1371 : f32 = u_xlat68;
        u_xlat68 = ((x_1368 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec19;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat69 = x_1386;
        let x_1388 : f32 = u_xlat16.z;
        let x_1389 : f32 = u_xlat69;
        let x_1391 : f32 = u_xlat68;
        u_xlat68 = ((x_1388 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat13;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.z, x_1394.w);
        let x_1397 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec20;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat69 = x_1406;
        let x_1408 : f32 = u_xlat16.w;
        let x_1409 : f32 = u_xlat69;
        let x_1411 : f32 = u_xlat68;
        u_xlat68 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat14;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.x, x_1414.y);
        let x_1417 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec21;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat69 = x_1426;
        let x_1428 : f32 = u_xlat17.x;
        let x_1429 : f32 = u_xlat69;
        let x_1431 : f32 = u_xlat68;
        u_xlat68 = ((x_1428 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat14;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec22;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat69 = x_1446;
        let x_1448 : f32 = u_xlat17.y;
        let x_1449 : f32 = u_xlat69;
        let x_1451 : f32 = u_xlat68;
        u_xlat68 = ((x_1448 * x_1449) + x_1451);
        let x_1454 : vec2<f32> = u_xlat28;
        let x_1456 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec23;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat69 = x_1465;
        let x_1467 : f32 = u_xlat17.z;
        let x_1468 : f32 = u_xlat69;
        let x_1470 : f32 = u_xlat68;
        u_xlat68 = ((x_1467 * x_1468) + x_1470);
        let x_1473 : vec2<f32> = u_xlat56;
        let x_1475 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec24;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1482.xy, x_1482.z);
        u_xlat69 = x_1484;
        let x_1486 : f32 = u_xlat17.w;
        let x_1487 : f32 = u_xlat69;
        let x_1489 : f32 = u_xlat68;
        u_xlat68 = ((x_1486 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat9;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.x, x_1492.y);
        let x_1495 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec25;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat69 = x_1504;
        let x_1506 : f32 = u_xlat5.x;
        let x_1507 : f32 = u_xlat69;
        let x_1509 : f32 = u_xlat68;
        u_xlat68 = ((x_1506 * x_1507) + x_1509);
        let x_1512 : vec4<f32> = u_xlat9;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.z, x_1512.w);
        let x_1515 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec26;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1522.xy, x_1522.z);
        u_xlat69 = x_1524;
        let x_1526 : f32 = u_xlat5.y;
        let x_1527 : f32 = u_xlat69;
        let x_1529 : f32 = u_xlat68;
        u_xlat68 = ((x_1526 * x_1527) + x_1529);
        let x_1532 : vec2<f32> = u_xlat51;
        let x_1534 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec27;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat69 = x_1543;
        let x_1545 : f32 = u_xlat5.z;
        let x_1546 : f32 = u_xlat69;
        let x_1548 : f32 = u_xlat68;
        u_xlat68 = ((x_1545 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat4;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec28;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat69 = x_1563;
        let x_1565 : f32 = u_xlat5.w;
        let x_1566 : f32 = u_xlat69;
        let x_1568 : f32 = u_xlat68;
        u_xlat67 = ((x_1565 * x_1566) + x_1568);
      }
    }
  } else {
    let x_1572 : vec4<f32> = u_xlat2;
    let x_1573 : vec2<f32> = vec2<f32>(x_1572.x, x_1572.y);
    let x_1575 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
    let x_1582 : vec3<f32> = txVec29;
    let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
    u_xlat67 = x_1584;
  }
  let x_1586 : f32 = x_76.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1586) + 1.0f);
  let x_1590 : f32 = u_xlat67;
  let x_1592 : f32 = x_76.x_MainLightShadowParams.x;
  let x_1595 : f32 = u_xlat2.x;
  u_xlat67 = ((x_1590 * x_1592) + x_1595);
  let x_1598 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_1598);
  let x_1605 : f32 = u_xlat2.z;
  u_xlatb24.x = (x_1605 >= 1.0f);
  let x_1609 : bool = u_xlatb24.x;
  let x_1611 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_1609 | x_1611);
  let x_1615 : bool = u_xlatb2.x;
  let x_1616 : f32 = u_xlat67;
  u_xlat67 = select(x_1616, 1.0f, x_1615);
  let x_1618 : vec3<f32> = vs_TEXCOORD1;
  let x_1621 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1623 : vec3<f32> = (x_1618 + -(x_1621));
  let x_1624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1624.w);
  let x_1626 : vec4<f32> = u_xlat2;
  let x_1628 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_1626.x, x_1626.y, x_1626.z), vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
  let x_1633 : f32 = u_xlat2.x;
  let x_1635 : f32 = x_76.x_MainLightShadowParams.z;
  let x_1638 : f32 = x_76.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_1633 * x_1635) + x_1638);
  let x_1642 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_1642, 0.0f, 1.0f);
  let x_1646 : f32 = u_xlat67;
  u_xlat46 = (-(x_1646) + 1.0f);
  let x_1650 : f32 = u_xlat24.x;
  let x_1651 : f32 = u_xlat46;
  let x_1653 : f32 = u_xlat67;
  u_xlat67 = ((x_1650 * x_1651) + x_1653);
  let x_1662 : f32 = x_1660.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_1662 == -1.0f));
  let x_1666 : bool = u_xlatb24.x;
  if (x_1666) {
    let x_1669 : vec3<f32> = vs_TEXCOORD1;
    let x_1672 : vec4<f32> = x_1660.x_MainLightWorldToLight[1i];
    let x_1674 : vec2<f32> = (vec2<f32>(x_1669.y, x_1669.y) * vec2<f32>(x_1672.x, x_1672.y));
    let x_1675 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1674.x, x_1674.y, x_1675.z);
    let x_1678 : vec4<f32> = x_1660.x_MainLightWorldToLight[0i];
    let x_1680 : vec3<f32> = vs_TEXCOORD1;
    let x_1683 : vec3<f32> = u_xlat24;
    let x_1685 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.y) * vec2<f32>(x_1680.x, x_1680.x)) + vec2<f32>(x_1683.x, x_1683.y));
    let x_1686 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1685.x, x_1685.y, x_1686.z);
    let x_1689 : vec4<f32> = x_1660.x_MainLightWorldToLight[2i];
    let x_1691 : vec3<f32> = vs_TEXCOORD1;
    let x_1694 : vec3<f32> = u_xlat24;
    let x_1696 : vec2<f32> = ((vec2<f32>(x_1689.x, x_1689.y) * vec2<f32>(x_1691.z, x_1691.z)) + vec2<f32>(x_1694.x, x_1694.y));
    let x_1697 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1696.x, x_1696.y, x_1697.z);
    let x_1699 : vec3<f32> = u_xlat24;
    let x_1702 : vec4<f32> = x_1660.x_MainLightWorldToLight[3i];
    let x_1704 : vec2<f32> = (vec2<f32>(x_1699.x, x_1699.y) + vec2<f32>(x_1702.x, x_1702.y));
    let x_1705 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1704.x, x_1704.y, x_1705.z);
    let x_1707 : vec3<f32> = u_xlat24;
    let x_1710 : vec2<f32> = ((vec2<f32>(x_1707.x, x_1707.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1711 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1710.x, x_1710.y, x_1711.z);
    let x_1718 : vec3<f32> = u_xlat24;
    let x_1721 : f32 = x_27.x_GlobalMipBias.x;
    let x_1722 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1718.x, x_1718.y), x_1721);
    u_xlat4 = x_1722;
    let x_1724 : f32 = x_1660.x_MainLightCookieTextureFormat;
    let x_1726 : f32 = x_1660.x_MainLightCookieTextureFormat;
    let x_1728 : f32 = x_1660.x_MainLightCookieTextureFormat;
    let x_1730 : f32 = x_1660.x_MainLightCookieTextureFormat;
    let x_1731 : vec4<f32> = vec4<f32>(x_1724, x_1726, x_1728, x_1730);
    let x_1738 : vec4<bool> = (vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1731.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_1738.x, x_1738.y);
    let x_1741 : bool = u_xlatb24.y;
    if (x_1741) {
      let x_1747 : f32 = u_xlat4.w;
      x_1743 = x_1747;
    } else {
      let x_1750 : f32 = u_xlat4.x;
      x_1743 = x_1750;
    }
    let x_1751 : f32 = x_1743;
    u_xlat46 = x_1751;
    let x_1753 : bool = u_xlatb24.x;
    if (x_1753) {
      let x_1757 : vec4<f32> = u_xlat4;
      x_1754 = vec3<f32>(x_1757.x, x_1757.y, x_1757.z);
    } else {
      let x_1760 : f32 = u_xlat46;
      x_1754 = vec3<f32>(x_1760, x_1760, x_1760);
    }
    let x_1762 : vec3<f32> = x_1754;
    u_xlat24 = x_1762;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_1767 : vec3<f32> = u_xlat24;
  let x_1769 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat24 = (x_1767 * vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
  let x_1772 : f32 = u_xlat67;
  let x_1774 : f32 = x_275.unity_LightData.z;
  u_xlat67 = (x_1772 * x_1774);
  let x_1776 : f32 = u_xlat67;
  let x_1778 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_1776, x_1776, x_1776) * x_1778);
  let x_1780 : vec4<f32> = u_xlat1;
  let x_1783 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat67 = dot(vec3<f32>(x_1780.x, x_1780.y, x_1780.z), vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1786 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1786, 0.0f, 1.0f);
  let x_1788 : f32 = u_xlat67;
  let x_1790 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_1788, x_1788, x_1788) * x_1790);
  let x_1792 : vec4<f32> = u_xlat0;
  let x_1794 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_1792.y, x_1792.z, x_1792.w) * x_1794);
  let x_1797 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1799 : f32 = x_275.unity_LightData.y;
  u_xlat67 = min(x_1797, x_1799);
  let x_1802 : f32 = u_xlat67;
  u_xlatu67 = bitcast<u32>(i32(x_1802));
  let x_1806 : f32 = u_xlat2.x;
  let x_1809 : f32 = x_76.x_AdditionalShadowFadeParams.x;
  let x_1812 : f32 = x_76.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1806 * x_1809) + x_1812);
  let x_1816 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1816, 0.0f, 1.0f);
  let x_1821 : f32 = x_1660.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1823 : f32 = x_1660.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1825 : f32 = x_1660.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1827 : f32 = x_1660.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1828 : vec4<f32> = vec4<f32>(x_1821, x_1823, x_1825, x_1827);
  let x_1834 : vec4<bool> = (vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1828.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1834.x, x_1834.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1846 : u32 = u_xlatu_loop_1;
    let x_1847 : u32 = u_xlatu67;
    if ((x_1846 < x_1847)) {
    } else {
      break;
    }
    let x_1850 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1850 >> 2u);
    let x_1853 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1853 & 3u));
    let x_1856 : u32 = u_xlatu48;
    let x_1859 : vec4<f32> = x_275.unity_LightIndices[bitcast<i32>(x_1856)];
    let x_1869 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1874 : vec4<u32> = indexable[x_1869];
    u_xlat48.x = dot(x_1859, bitcast<vec4<f32>>(x_1874));
    let x_1880 : f32 = u_xlat48.x;
    u_xlati48 = i32(x_1880);
    let x_1882 : vec3<f32> = vs_TEXCOORD1;
    let x_1893 : i32 = u_xlati48;
    let x_1895 : vec4<f32> = x_1892.x_AdditionalLightsPosition[x_1893];
    let x_1898 : i32 = u_xlati48;
    let x_1900 : vec4<f32> = x_1892.x_AdditionalLightsPosition[x_1898];
    let x_1902 : vec3<f32> = ((-(x_1882) * vec3<f32>(x_1895.w, x_1895.w, x_1895.w)) + vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
    let x_1903 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
    let x_1906 : vec4<f32> = u_xlat6;
    let x_1908 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1906.x, x_1906.y, x_1906.z), vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
    let x_1911 : f32 = u_xlat70;
    u_xlat70 = max(x_1911, 0.00006103515625f);
    let x_1915 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1915);
    let x_1917 : f32 = u_xlat71;
    let x_1919 : vec4<f32> = u_xlat6;
    let x_1921 : vec3<f32> = (vec3<f32>(x_1917, x_1917, x_1917) * vec3<f32>(x_1919.x, x_1919.y, x_1919.z));
    let x_1922 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1921.x, x_1921.y, x_1921.z, x_1922.w);
    let x_1924 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1924);
    let x_1926 : f32 = u_xlat70;
    let x_1927 : i32 = u_xlati48;
    let x_1929 : f32 = x_1892.x_AdditionalLightsAttenuation[x_1927].x;
    u_xlat70 = (x_1926 * x_1929);
    let x_1931 : f32 = u_xlat70;
    let x_1933 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1931) * x_1933) + 1.0f);
    let x_1936 : f32 = u_xlat70;
    u_xlat70 = max(x_1936, 0.0f);
    let x_1938 : f32 = u_xlat70;
    let x_1939 : f32 = u_xlat70;
    u_xlat70 = (x_1938 * x_1939);
    let x_1941 : f32 = u_xlat70;
    let x_1942 : f32 = u_xlat71;
    u_xlat70 = (x_1941 * x_1942);
    let x_1944 : i32 = u_xlati48;
    let x_1946 : vec4<f32> = x_1892.x_AdditionalLightsSpotDir[x_1944];
    let x_1948 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1946.x, x_1946.y, x_1946.z), vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
    let x_1951 : f32 = u_xlat71;
    let x_1952 : i32 = u_xlati48;
    let x_1954 : f32 = x_1892.x_AdditionalLightsAttenuation[x_1952].z;
    let x_1956 : i32 = u_xlati48;
    let x_1958 : f32 = x_1892.x_AdditionalLightsAttenuation[x_1956].w;
    u_xlat71 = ((x_1951 * x_1954) + x_1958);
    let x_1960 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1960, 0.0f, 1.0f);
    let x_1962 : f32 = u_xlat71;
    let x_1963 : f32 = u_xlat71;
    u_xlat71 = (x_1962 * x_1963);
    let x_1965 : f32 = u_xlat70;
    let x_1966 : f32 = u_xlat71;
    u_xlat70 = (x_1965 * x_1966);
    let x_1970 : i32 = u_xlati48;
    let x_1972 : f32 = x_76.x_AdditionalShadowParams[x_1970].w;
    u_xlati71 = i32(x_1972);
    let x_1975 : i32 = u_xlati71;
    u_xlatb72 = (x_1975 >= 0i);
    let x_1977 : bool = u_xlatb72;
    if (x_1977) {
      let x_1981 : i32 = u_xlati48;
      let x_1983 : f32 = x_76.x_AdditionalShadowParams[x_1981].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1983, x_1983, x_1983, x_1983))));
      let x_1987 : bool = u_xlatb72;
      if (x_1987) {
        let x_1991 : vec4<f32> = u_xlat6;
        let x_1994 : vec4<f32> = u_xlat6;
        let x_1997 : vec4<bool> = (abs(vec4<f32>(x_1991.z, x_1991.z, x_1991.y, x_1991.z)) >= abs(vec4<f32>(x_1994.x, x_1994.y, x_1994.x, x_1994.x)));
        let x_1999 : vec3<bool> = vec3<bool>(x_1997.x, x_1997.y, x_1997.z);
        let x_2000 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
        let x_2003 : bool = u_xlatb7.y;
        let x_2005 : bool = u_xlatb7.x;
        u_xlatb72 = (x_2003 & x_2005);
        let x_2007 : vec4<f32> = u_xlat6;
        let x_2010 : vec4<bool> = (-(vec4<f32>(x_2007.z, x_2007.y, x_2007.z, x_2007.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2011 : vec3<bool> = vec3<bool>(x_2010.x, x_2010.y, x_2010.w);
        let x_2012 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_2011.x, x_2011.y, x_2012.z, x_2011.z);
        let x_2015 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_2015);
        let x_2020 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_2020);
        let x_2025 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_2025);
        let x_2029 : bool = u_xlatb7.z;
        if (x_2029) {
          let x_2034 : f32 = u_xlat7.y;
          x_2030 = x_2034;
        } else {
          let x_2036 : f32 = u_xlat73;
          x_2030 = x_2036;
        }
        let x_2037 : f32 = x_2030;
        u_xlat29.x = x_2037;
        let x_2040 : bool = u_xlatb72;
        if (x_2040) {
          let x_2045 : f32 = u_xlat7.x;
          x_2041 = x_2045;
        } else {
          let x_2048 : f32 = u_xlat29.x;
          x_2041 = x_2048;
        }
        let x_2049 : f32 = x_2041;
        u_xlat72 = x_2049;
        let x_2050 : i32 = u_xlati48;
        let x_2052 : f32 = x_76.x_AdditionalShadowParams[x_2050].w;
        u_xlat7.x = trunc(x_2052);
        let x_2055 : f32 = u_xlat72;
        let x_2057 : f32 = u_xlat7.x;
        u_xlat72 = (x_2055 + x_2057);
        let x_2059 : f32 = u_xlat72;
        u_xlati71 = i32(x_2059);
      }
      let x_2061 : i32 = u_xlati71;
      u_xlati71 = (x_2061 << bitcast<u32>(2i));
      let x_2063 : vec3<f32> = vs_TEXCOORD1;
      let x_2066 : i32 = u_xlati71;
      let x_2069 : i32 = u_xlati71;
      let x_2073 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_2066 + 1i) / 4i)][((x_2069 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2063.y, x_2063.y, x_2063.y, x_2063.y) * x_2073);
      let x_2075 : i32 = u_xlati71;
      let x_2077 : i32 = u_xlati71;
      let x_2080 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[(x_2075 / 4i)][(x_2077 % 4i)];
      let x_2081 : vec3<f32> = vs_TEXCOORD1;
      let x_2084 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2080 * vec4<f32>(x_2081.x, x_2081.x, x_2081.x, x_2081.x)) + x_2084);
      let x_2086 : i32 = u_xlati71;
      let x_2089 : i32 = u_xlati71;
      let x_2093 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_2086 + 2i) / 4i)][((x_2089 + 2i) % 4i)];
      let x_2094 : vec3<f32> = vs_TEXCOORD1;
      let x_2097 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2093 * vec4<f32>(x_2094.z, x_2094.z, x_2094.z, x_2094.z)) + x_2097);
      let x_2099 : vec4<f32> = u_xlat7;
      let x_2100 : i32 = u_xlati71;
      let x_2103 : i32 = u_xlati71;
      let x_2107 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_2100 + 3i) / 4i)][((x_2103 + 3i) % 4i)];
      u_xlat7 = (x_2099 + x_2107);
      let x_2109 : vec4<f32> = u_xlat7;
      let x_2111 : vec4<f32> = u_xlat7;
      let x_2113 : vec3<f32> = (vec3<f32>(x_2109.x, x_2109.y, x_2109.z) / vec3<f32>(x_2111.w, x_2111.w, x_2111.w));
      let x_2114 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
      let x_2117 : i32 = u_xlati48;
      let x_2119 : f32 = x_76.x_AdditionalShadowParams[x_2117].y;
      u_xlatb71 = (0.0f < x_2119);
      let x_2121 : bool = u_xlatb71;
      if (x_2121) {
        let x_2124 : i32 = u_xlati48;
        let x_2126 : f32 = x_76.x_AdditionalShadowParams[x_2124].y;
        u_xlatb71 = (1.0f == x_2126);
        let x_2128 : bool = u_xlatb71;
        if (x_2128) {
          let x_2131 : vec4<f32> = u_xlat7;
          let x_2135 : vec4<f32> = x_76.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2131.x, x_2131.y, x_2131.x, x_2131.y) + x_2135);
          let x_2138 : vec4<f32> = u_xlat8;
          let x_2139 : vec2<f32> = vec2<f32>(x_2138.x, x_2138.y);
          let x_2141 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2139.x, x_2139.y, x_2141);
          let x_2149 : vec3<f32> = txVec30;
          let x_2151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2149.xy, x_2149.z);
          u_xlat9.x = x_2151;
          let x_2154 : vec4<f32> = u_xlat8;
          let x_2155 : vec2<f32> = vec2<f32>(x_2154.z, x_2154.w);
          let x_2157 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
          let x_2164 : vec3<f32> = txVec31;
          let x_2166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2164.xy, x_2164.z);
          u_xlat9.y = x_2166;
          let x_2168 : vec4<f32> = u_xlat7;
          let x_2172 : vec4<f32> = x_76.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2168.x, x_2168.y, x_2168.x, x_2168.y) + x_2172);
          let x_2175 : vec4<f32> = u_xlat8;
          let x_2176 : vec2<f32> = vec2<f32>(x_2175.x, x_2175.y);
          let x_2178 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2176.x, x_2176.y, x_2178);
          let x_2185 : vec3<f32> = txVec32;
          let x_2187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2185.xy, x_2185.z);
          u_xlat9.z = x_2187;
          let x_2190 : vec4<f32> = u_xlat8;
          let x_2191 : vec2<f32> = vec2<f32>(x_2190.z, x_2190.w);
          let x_2193 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2191.x, x_2191.y, x_2193);
          let x_2200 : vec3<f32> = txVec33;
          let x_2202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2200.xy, x_2200.z);
          u_xlat9.w = x_2202;
          let x_2204 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2204, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2207 : i32 = u_xlati48;
          let x_2209 : f32 = x_76.x_AdditionalShadowParams[x_2207].y;
          u_xlatb72 = (2.0f == x_2209);
          let x_2211 : bool = u_xlatb72;
          if (x_2211) {
            let x_2214 : vec4<f32> = u_xlat7;
            let x_2218 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2221 : vec2<f32> = ((vec2<f32>(x_2214.x, x_2214.y) * vec2<f32>(x_2218.z, x_2218.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2222 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2221.x, x_2221.y, x_2222.z, x_2222.w);
            let x_2224 : vec4<f32> = u_xlat8;
            let x_2226 : vec2<f32> = floor(vec2<f32>(x_2224.x, x_2224.y));
            let x_2227 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2226.x, x_2226.y, x_2227.z, x_2227.w);
            let x_2230 : vec4<f32> = u_xlat7;
            let x_2233 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2236 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2230.x, x_2230.y) * vec2<f32>(x_2233.z, x_2233.w)) + -(vec2<f32>(x_2236.x, x_2236.y)));
            let x_2240 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2240.x, x_2240.x, x_2240.y, x_2240.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2243 : vec4<f32> = u_xlat9;
            let x_2245 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2243.x, x_2243.x, x_2243.z, x_2243.z) * vec4<f32>(x_2245.x, x_2245.x, x_2245.z, x_2245.z));
            let x_2248 : vec4<f32> = u_xlat10;
            let x_2250 : vec2<f32> = (vec2<f32>(x_2248.y, x_2248.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2251 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2250.x, x_2251.y, x_2250.y, x_2251.w);
            let x_2253 : vec4<f32> = u_xlat10;
            let x_2256 : vec2<f32> = u_xlat52;
            let x_2258 : vec2<f32> = ((vec2<f32>(x_2253.x, x_2253.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2256));
            let x_2259 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
            let x_2262 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2262) + vec2<f32>(1.0f, 1.0f));
            let x_2265 : vec2<f32> = u_xlat52;
            let x_2266 : vec2<f32> = min(x_2265, vec2<f32>(0.0f, 0.0f));
            let x_2267 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2266.x, x_2266.y, x_2267.z, x_2267.w);
            let x_2269 : vec4<f32> = u_xlat11;
            let x_2272 : vec4<f32> = u_xlat11;
            let x_2275 : vec2<f32> = u_xlat54;
            let x_2276 : vec2<f32> = ((-(vec2<f32>(x_2269.x, x_2269.y)) * vec2<f32>(x_2272.x, x_2272.y)) + x_2275);
            let x_2277 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2276.x, x_2276.y, x_2277.z, x_2277.w);
            let x_2279 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2279, vec2<f32>(0.0f, 0.0f));
            let x_2281 : vec2<f32> = u_xlat52;
            let x_2283 : vec2<f32> = u_xlat52;
            let x_2285 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2281) * x_2283) + vec2<f32>(x_2285.y, x_2285.w));
            let x_2288 : vec4<f32> = u_xlat11;
            let x_2290 : vec2<f32> = (vec2<f32>(x_2288.x, x_2288.y) + vec2<f32>(1.0f, 1.0f));
            let x_2291 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2290.x, x_2290.y, x_2291.z, x_2291.w);
            let x_2293 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2293 + vec2<f32>(1.0f, 1.0f));
            let x_2295 : vec4<f32> = u_xlat10;
            let x_2297 : vec2<f32> = (vec2<f32>(x_2295.x, x_2295.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2298 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2297.x, x_2297.y, x_2298.z, x_2298.w);
            let x_2300 : vec2<f32> = u_xlat54;
            let x_2301 : vec2<f32> = (x_2300 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2302 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2301.x, x_2301.y, x_2302.z, x_2302.w);
            let x_2304 : vec4<f32> = u_xlat11;
            let x_2306 : vec2<f32> = (vec2<f32>(x_2304.x, x_2304.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2307 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2306.x, x_2306.y, x_2307.z, x_2307.w);
            let x_2309 : vec2<f32> = u_xlat52;
            let x_2310 : vec2<f32> = (x_2309 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2311 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2310.x, x_2310.y, x_2311.z, x_2311.w);
            let x_2313 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2313.y, x_2313.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2317 : f32 = u_xlat11.x;
            u_xlat12.z = x_2317;
            let x_2320 : f32 = u_xlat52.x;
            u_xlat12.w = x_2320;
            let x_2323 : f32 = u_xlat13.x;
            u_xlat10.z = x_2323;
            let x_2326 : f32 = u_xlat9.x;
            u_xlat10.w = x_2326;
            let x_2328 : vec4<f32> = u_xlat10;
            let x_2330 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2328.z, x_2328.w, x_2328.x, x_2328.z) + vec4<f32>(x_2330.z, x_2330.w, x_2330.x, x_2330.z));
            let x_2334 : f32 = u_xlat12.y;
            u_xlat11.z = x_2334;
            let x_2337 : f32 = u_xlat52.y;
            u_xlat11.w = x_2337;
            let x_2340 : f32 = u_xlat10.y;
            u_xlat13.z = x_2340;
            let x_2343 : f32 = u_xlat9.z;
            u_xlat13.w = x_2343;
            let x_2345 : vec4<f32> = u_xlat11;
            let x_2347 : vec4<f32> = u_xlat13;
            let x_2349 : vec3<f32> = (vec3<f32>(x_2345.z, x_2345.y, x_2345.w) + vec3<f32>(x_2347.z, x_2347.y, x_2347.w));
            let x_2350 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
            let x_2352 : vec4<f32> = u_xlat10;
            let x_2354 : vec4<f32> = u_xlat14;
            let x_2356 : vec3<f32> = (vec3<f32>(x_2352.x, x_2352.z, x_2352.w) / vec3<f32>(x_2354.z, x_2354.w, x_2354.y));
            let x_2357 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
            let x_2359 : vec4<f32> = u_xlat10;
            let x_2361 : vec3<f32> = (vec3<f32>(x_2359.x, x_2359.y, x_2359.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2362 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
            let x_2364 : vec4<f32> = u_xlat13;
            let x_2366 : vec4<f32> = u_xlat9;
            let x_2368 : vec3<f32> = (vec3<f32>(x_2364.z, x_2364.y, x_2364.w) / vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
            let x_2369 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
            let x_2371 : vec4<f32> = u_xlat11;
            let x_2373 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.y, x_2371.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2374 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
            let x_2376 : vec4<f32> = u_xlat10;
            let x_2379 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2381 : vec3<f32> = (vec3<f32>(x_2376.y, x_2376.x, x_2376.z) * vec3<f32>(x_2379.x, x_2379.x, x_2379.x));
            let x_2382 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
            let x_2384 : vec4<f32> = u_xlat11;
            let x_2387 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2389 : vec3<f32> = (vec3<f32>(x_2384.x, x_2384.y, x_2384.z) * vec3<f32>(x_2387.y, x_2387.y, x_2387.y));
            let x_2390 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
            let x_2393 : f32 = u_xlat11.x;
            u_xlat10.w = x_2393;
            let x_2395 : vec4<f32> = u_xlat8;
            let x_2398 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2401 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2395.x, x_2395.y, x_2395.x, x_2395.y) * vec4<f32>(x_2398.x, x_2398.y, x_2398.x, x_2398.y)) + vec4<f32>(x_2401.y, x_2401.w, x_2401.x, x_2401.w));
            let x_2404 : vec4<f32> = u_xlat8;
            let x_2407 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2410 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2404.x, x_2404.y) * vec2<f32>(x_2407.x, x_2407.y)) + vec2<f32>(x_2410.z, x_2410.w));
            let x_2414 : f32 = u_xlat10.y;
            u_xlat11.w = x_2414;
            let x_2416 : vec4<f32> = u_xlat11;
            let x_2417 : vec2<f32> = vec2<f32>(x_2416.y, x_2416.z);
            let x_2418 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2418.x, x_2417.x, x_2418.z, x_2417.y);
            let x_2420 : vec4<f32> = u_xlat8;
            let x_2423 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2426 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2420.x, x_2420.y, x_2420.x, x_2420.y) * vec4<f32>(x_2423.x, x_2423.y, x_2423.x, x_2423.y)) + vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2426.y));
            let x_2429 : vec4<f32> = u_xlat8;
            let x_2432 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2435 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2429.x, x_2429.y, x_2429.x, x_2429.y) * vec4<f32>(x_2432.x, x_2432.y, x_2432.x, x_2432.y)) + vec4<f32>(x_2435.w, x_2435.y, x_2435.w, x_2435.z));
            let x_2438 : vec4<f32> = u_xlat8;
            let x_2441 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2444 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2438.x, x_2438.y, x_2438.x, x_2438.y) * vec4<f32>(x_2441.x, x_2441.y, x_2441.x, x_2441.y)) + vec4<f32>(x_2444.x, x_2444.w, x_2444.z, x_2444.w));
            let x_2447 : vec4<f32> = u_xlat9;
            let x_2449 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2447.x, x_2447.x, x_2447.x, x_2447.y) * vec4<f32>(x_2449.z, x_2449.w, x_2449.y, x_2449.z));
            let x_2452 : vec4<f32> = u_xlat9;
            let x_2454 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2452.y, x_2452.y, x_2452.z, x_2452.z) * x_2454);
            let x_2457 : f32 = u_xlat9.z;
            let x_2459 : f32 = u_xlat14.y;
            u_xlat72 = (x_2457 * x_2459);
            let x_2462 : vec4<f32> = u_xlat12;
            let x_2463 : vec2<f32> = vec2<f32>(x_2462.x, x_2462.y);
            let x_2465 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2463.x, x_2463.y, x_2465);
            let x_2472 : vec3<f32> = txVec34;
            let x_2474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2472.xy, x_2472.z);
            u_xlat73 = x_2474;
            let x_2476 : vec4<f32> = u_xlat12;
            let x_2477 : vec2<f32> = vec2<f32>(x_2476.z, x_2476.w);
            let x_2479 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
            let x_2486 : vec3<f32> = txVec35;
            let x_2488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2486.xy, x_2486.z);
            u_xlat8.x = x_2488;
            let x_2491 : f32 = u_xlat8.x;
            let x_2493 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2491 * x_2493);
            let x_2497 : f32 = u_xlat15.x;
            let x_2498 : f32 = u_xlat73;
            let x_2501 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2497 * x_2498) + x_2501);
            let x_2504 : vec2<f32> = u_xlat52;
            let x_2506 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2504.x, x_2504.y, x_2506);
            let x_2513 : vec3<f32> = txVec36;
            let x_2515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2513.xy, x_2513.z);
            u_xlat8.x = x_2515;
            let x_2518 : f32 = u_xlat15.z;
            let x_2520 : f32 = u_xlat8.x;
            let x_2522 : f32 = u_xlat73;
            u_xlat73 = ((x_2518 * x_2520) + x_2522);
            let x_2525 : vec4<f32> = u_xlat11;
            let x_2526 : vec2<f32> = vec2<f32>(x_2525.x, x_2525.y);
            let x_2528 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2526.x, x_2526.y, x_2528);
            let x_2535 : vec3<f32> = txVec37;
            let x_2537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2535.xy, x_2535.z);
            u_xlat8.x = x_2537;
            let x_2540 : f32 = u_xlat15.w;
            let x_2542 : f32 = u_xlat8.x;
            let x_2544 : f32 = u_xlat73;
            u_xlat73 = ((x_2540 * x_2542) + x_2544);
            let x_2547 : vec4<f32> = u_xlat13;
            let x_2548 : vec2<f32> = vec2<f32>(x_2547.x, x_2547.y);
            let x_2550 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2548.x, x_2548.y, x_2550);
            let x_2557 : vec3<f32> = txVec38;
            let x_2559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2557.xy, x_2557.z);
            u_xlat8.x = x_2559;
            let x_2562 : f32 = u_xlat16.x;
            let x_2564 : f32 = u_xlat8.x;
            let x_2566 : f32 = u_xlat73;
            u_xlat73 = ((x_2562 * x_2564) + x_2566);
            let x_2569 : vec4<f32> = u_xlat13;
            let x_2570 : vec2<f32> = vec2<f32>(x_2569.z, x_2569.w);
            let x_2572 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2570.x, x_2570.y, x_2572);
            let x_2579 : vec3<f32> = txVec39;
            let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
            u_xlat8.x = x_2581;
            let x_2584 : f32 = u_xlat16.y;
            let x_2586 : f32 = u_xlat8.x;
            let x_2588 : f32 = u_xlat73;
            u_xlat73 = ((x_2584 * x_2586) + x_2588);
            let x_2591 : vec4<f32> = u_xlat11;
            let x_2592 : vec2<f32> = vec2<f32>(x_2591.z, x_2591.w);
            let x_2594 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2592.x, x_2592.y, x_2594);
            let x_2601 : vec3<f32> = txVec40;
            let x_2603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2601.xy, x_2601.z);
            u_xlat8.x = x_2603;
            let x_2606 : f32 = u_xlat16.z;
            let x_2608 : f32 = u_xlat8.x;
            let x_2610 : f32 = u_xlat73;
            u_xlat73 = ((x_2606 * x_2608) + x_2610);
            let x_2613 : vec4<f32> = u_xlat10;
            let x_2614 : vec2<f32> = vec2<f32>(x_2613.x, x_2613.y);
            let x_2616 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2614.x, x_2614.y, x_2616);
            let x_2623 : vec3<f32> = txVec41;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat8.x = x_2625;
            let x_2628 : f32 = u_xlat16.w;
            let x_2630 : f32 = u_xlat8.x;
            let x_2632 : f32 = u_xlat73;
            u_xlat73 = ((x_2628 * x_2630) + x_2632);
            let x_2635 : vec4<f32> = u_xlat10;
            let x_2636 : vec2<f32> = vec2<f32>(x_2635.z, x_2635.w);
            let x_2638 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec42;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat8.x = x_2647;
            let x_2649 : f32 = u_xlat72;
            let x_2651 : f32 = u_xlat8.x;
            let x_2653 : f32 = u_xlat73;
            u_xlat71 = ((x_2649 * x_2651) + x_2653);
          } else {
            let x_2656 : vec4<f32> = u_xlat7;
            let x_2659 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2662 : vec2<f32> = ((vec2<f32>(x_2656.x, x_2656.y) * vec2<f32>(x_2659.z, x_2659.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2663 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2662.x, x_2662.y, x_2663.z, x_2663.w);
            let x_2665 : vec4<f32> = u_xlat8;
            let x_2667 : vec2<f32> = floor(vec2<f32>(x_2665.x, x_2665.y));
            let x_2668 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2667.x, x_2667.y, x_2668.z, x_2668.w);
            let x_2670 : vec4<f32> = u_xlat7;
            let x_2673 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2676 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2670.x, x_2670.y) * vec2<f32>(x_2673.z, x_2673.w)) + -(vec2<f32>(x_2676.x, x_2676.y)));
            let x_2680 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2680.x, x_2680.x, x_2680.y, x_2680.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2683 : vec4<f32> = u_xlat9;
            let x_2685 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2683.x, x_2683.x, x_2683.z, x_2683.z) * vec4<f32>(x_2685.x, x_2685.x, x_2685.z, x_2685.z));
            let x_2688 : vec4<f32> = u_xlat10;
            let x_2690 : vec2<f32> = (vec2<f32>(x_2688.y, x_2688.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2691 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2691.x, x_2690.x, x_2691.z, x_2690.y);
            let x_2693 : vec4<f32> = u_xlat10;
            let x_2696 : vec2<f32> = u_xlat52;
            let x_2698 : vec2<f32> = ((vec2<f32>(x_2693.x, x_2693.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2696));
            let x_2699 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2698.x, x_2699.y, x_2698.y, x_2699.w);
            let x_2701 : vec2<f32> = u_xlat52;
            let x_2703 : vec2<f32> = (-(x_2701) + vec2<f32>(1.0f, 1.0f));
            let x_2704 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2703.x, x_2703.y, x_2704.z, x_2704.w);
            let x_2706 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2706, vec2<f32>(0.0f, 0.0f));
            let x_2708 : vec2<f32> = u_xlat54;
            let x_2710 : vec2<f32> = u_xlat54;
            let x_2712 : vec4<f32> = u_xlat10;
            let x_2714 : vec2<f32> = ((-(x_2708) * x_2710) + vec2<f32>(x_2712.x, x_2712.y));
            let x_2715 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2714.x, x_2714.y, x_2715.z, x_2715.w);
            let x_2717 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2717, vec2<f32>(0.0f, 0.0f));
            let x_2720 : vec2<f32> = u_xlat54;
            let x_2722 : vec2<f32> = u_xlat54;
            let x_2724 : vec4<f32> = u_xlat9;
            let x_2726 : vec2<f32> = ((-(x_2720) * x_2722) + vec2<f32>(x_2724.y, x_2724.w));
            let x_2727 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2726.x, x_2727.y, x_2726.y);
            let x_2729 : vec4<f32> = u_xlat10;
            let x_2731 : vec2<f32> = (vec2<f32>(x_2729.x, x_2729.y) + vec2<f32>(2.0f, 2.0f));
            let x_2732 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2731.x, x_2731.y, x_2732.z, x_2732.w);
            let x_2734 : vec3<f32> = u_xlat31;
            let x_2736 : vec2<f32> = (vec2<f32>(x_2734.x, x_2734.z) + vec2<f32>(2.0f, 2.0f));
            let x_2737 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2737.x, x_2736.x, x_2737.z, x_2736.y);
            let x_2740 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2740 * 0.08163200318813323975f);
            let x_2743 : vec4<f32> = u_xlat9;
            let x_2745 : vec3<f32> = (vec3<f32>(x_2743.z, x_2743.x, x_2743.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2746 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2746.w);
            let x_2748 : vec4<f32> = u_xlat10;
            let x_2750 : vec2<f32> = (vec2<f32>(x_2748.x, x_2748.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2751 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
            let x_2754 : f32 = u_xlat13.y;
            u_xlat12.x = x_2754;
            let x_2756 : vec2<f32> = u_xlat52;
            let x_2759 : vec2<f32> = ((vec2<f32>(x_2756.x, x_2756.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2760 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2760.x, x_2759.x, x_2760.z, x_2759.y);
            let x_2762 : vec2<f32> = u_xlat52;
            let x_2765 : vec2<f32> = ((vec2<f32>(x_2762.x, x_2762.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2766 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2765.x, x_2766.y, x_2765.y, x_2766.w);
            let x_2769 : f32 = u_xlat9.x;
            u_xlat10.y = x_2769;
            let x_2772 : f32 = u_xlat11.y;
            u_xlat10.w = x_2772;
            let x_2774 : vec4<f32> = u_xlat10;
            let x_2775 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2774 + x_2775);
            let x_2777 : vec2<f32> = u_xlat52;
            let x_2780 : vec2<f32> = ((vec2<f32>(x_2777.y, x_2777.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2781 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2781.x, x_2780.x, x_2781.z, x_2780.y);
            let x_2783 : vec2<f32> = u_xlat52;
            let x_2786 : vec2<f32> = ((vec2<f32>(x_2783.y, x_2783.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2787 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2786.x, x_2787.y, x_2786.y, x_2787.w);
            let x_2790 : f32 = u_xlat9.y;
            u_xlat11.y = x_2790;
            let x_2792 : vec4<f32> = u_xlat11;
            let x_2793 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2792 + x_2793);
            let x_2795 : vec4<f32> = u_xlat10;
            let x_2796 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2795 / x_2796);
            let x_2798 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2798 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2800 : vec4<f32> = u_xlat11;
            let x_2801 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2800 / x_2801);
            let x_2803 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2803 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2805 : vec4<f32> = u_xlat10;
            let x_2808 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2805.w, x_2805.x, x_2805.y, x_2805.z) * vec4<f32>(x_2808.x, x_2808.x, x_2808.x, x_2808.x));
            let x_2811 : vec4<f32> = u_xlat11;
            let x_2814 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2811.x, x_2811.w, x_2811.y, x_2811.z) * vec4<f32>(x_2814.y, x_2814.y, x_2814.y, x_2814.y));
            let x_2817 : vec4<f32> = u_xlat10;
            let x_2818 : vec3<f32> = vec3<f32>(x_2817.y, x_2817.z, x_2817.w);
            let x_2819 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2818.x, x_2819.y, x_2818.y, x_2818.z);
            let x_2822 : f32 = u_xlat11.x;
            u_xlat13.y = x_2822;
            let x_2824 : vec4<f32> = u_xlat8;
            let x_2827 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2830 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.y) * vec4<f32>(x_2827.x, x_2827.y, x_2827.x, x_2827.y)) + vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2830.y));
            let x_2833 : vec4<f32> = u_xlat8;
            let x_2836 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2839 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.x, x_2836.y)) + vec2<f32>(x_2839.w, x_2839.y));
            let x_2843 : f32 = u_xlat13.y;
            u_xlat10.y = x_2843;
            let x_2846 : f32 = u_xlat11.z;
            u_xlat13.y = x_2846;
            let x_2848 : vec4<f32> = u_xlat8;
            let x_2851 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2854 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y) * vec4<f32>(x_2851.x, x_2851.y, x_2851.x, x_2851.y)) + vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2854.y));
            let x_2857 : vec4<f32> = u_xlat8;
            let x_2860 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2863 : vec4<f32> = u_xlat13;
            let x_2865 : vec2<f32> = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.x, x_2860.y)) + vec2<f32>(x_2863.w, x_2863.y));
            let x_2866 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
            let x_2869 : f32 = u_xlat13.y;
            u_xlat10.z = x_2869;
            let x_2871 : vec4<f32> = u_xlat8;
            let x_2874 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2877 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2871.x, x_2871.y, x_2871.x, x_2871.y) * vec4<f32>(x_2874.x, x_2874.y, x_2874.x, x_2874.y)) + vec4<f32>(x_2877.x, x_2877.y, x_2877.x, x_2877.z));
            let x_2881 : f32 = u_xlat11.w;
            u_xlat13.y = x_2881;
            let x_2884 : vec4<f32> = u_xlat8;
            let x_2887 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2890 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2884.x, x_2884.y, x_2884.x, x_2884.y) * vec4<f32>(x_2887.x, x_2887.y, x_2887.x, x_2887.y)) + vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2890.y));
            let x_2894 : vec4<f32> = u_xlat8;
            let x_2897 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2900 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2894.x, x_2894.y) * vec2<f32>(x_2897.x, x_2897.y)) + vec2<f32>(x_2900.w, x_2900.y));
            let x_2904 : f32 = u_xlat13.y;
            u_xlat10.w = x_2904;
            let x_2907 : vec4<f32> = u_xlat8;
            let x_2910 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2913 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2907.x, x_2907.y) * vec2<f32>(x_2910.x, x_2910.y)) + vec2<f32>(x_2913.x, x_2913.w));
            let x_2916 : vec4<f32> = u_xlat13;
            let x_2917 : vec3<f32> = vec3<f32>(x_2916.x, x_2916.z, x_2916.w);
            let x_2918 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2917.x, x_2918.y, x_2917.y, x_2917.z);
            let x_2920 : vec4<f32> = u_xlat8;
            let x_2923 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2926 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2920.x, x_2920.y, x_2920.x, x_2920.y) * vec4<f32>(x_2923.x, x_2923.y, x_2923.x, x_2923.y)) + vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2926.y));
            let x_2930 : vec4<f32> = u_xlat8;
            let x_2933 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2936 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2930.x, x_2930.y) * vec2<f32>(x_2933.x, x_2933.y)) + vec2<f32>(x_2936.w, x_2936.y));
            let x_2940 : f32 = u_xlat10.x;
            u_xlat11.x = x_2940;
            let x_2942 : vec4<f32> = u_xlat8;
            let x_2945 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2948 : vec4<f32> = u_xlat11;
            let x_2950 : vec2<f32> = ((vec2<f32>(x_2942.x, x_2942.y) * vec2<f32>(x_2945.x, x_2945.y)) + vec2<f32>(x_2948.x, x_2948.y));
            let x_2951 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2954 : vec4<f32> = u_xlat9;
            let x_2956 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2954.x, x_2954.x, x_2954.x, x_2954.x) * x_2956);
            let x_2959 : vec4<f32> = u_xlat9;
            let x_2961 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2959.y, x_2959.y, x_2959.y, x_2959.y) * x_2961);
            let x_2964 : vec4<f32> = u_xlat9;
            let x_2966 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2964.z, x_2964.z, x_2964.z, x_2964.z) * x_2966);
            let x_2968 : vec4<f32> = u_xlat9;
            let x_2970 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2968.w, x_2968.w, x_2968.w, x_2968.w) * x_2970);
            let x_2973 : vec4<f32> = u_xlat14;
            let x_2974 : vec2<f32> = vec2<f32>(x_2973.x, x_2973.y);
            let x_2976 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2974.x, x_2974.y, x_2976);
            let x_2983 : vec3<f32> = txVec43;
            let x_2985 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2983.xy, x_2983.z);
            u_xlat72 = x_2985;
            let x_2987 : vec4<f32> = u_xlat14;
            let x_2988 : vec2<f32> = vec2<f32>(x_2987.z, x_2987.w);
            let x_2990 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2988.x, x_2988.y, x_2990);
            let x_2997 : vec3<f32> = txVec44;
            let x_2999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2997.xy, x_2997.z);
            u_xlat73 = x_2999;
            let x_3000 : f32 = u_xlat73;
            let x_3002 : f32 = u_xlat19.y;
            u_xlat73 = (x_3000 * x_3002);
            let x_3005 : f32 = u_xlat19.x;
            let x_3006 : f32 = u_xlat72;
            let x_3008 : f32 = u_xlat73;
            u_xlat72 = ((x_3005 * x_3006) + x_3008);
            let x_3011 : vec2<f32> = u_xlat52;
            let x_3013 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_3011.x, x_3011.y, x_3013);
            let x_3020 : vec3<f32> = txVec45;
            let x_3022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3020.xy, x_3020.z);
            u_xlat73 = x_3022;
            let x_3024 : f32 = u_xlat19.z;
            let x_3025 : f32 = u_xlat73;
            let x_3027 : f32 = u_xlat72;
            u_xlat72 = ((x_3024 * x_3025) + x_3027);
            let x_3030 : vec4<f32> = u_xlat17;
            let x_3031 : vec2<f32> = vec2<f32>(x_3030.x, x_3030.y);
            let x_3033 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_3031.x, x_3031.y, x_3033);
            let x_3040 : vec3<f32> = txVec46;
            let x_3042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3040.xy, x_3040.z);
            u_xlat73 = x_3042;
            let x_3044 : f32 = u_xlat19.w;
            let x_3045 : f32 = u_xlat73;
            let x_3047 : f32 = u_xlat72;
            u_xlat72 = ((x_3044 * x_3045) + x_3047);
            let x_3050 : vec4<f32> = u_xlat15;
            let x_3051 : vec2<f32> = vec2<f32>(x_3050.x, x_3050.y);
            let x_3053 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec47;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat73 = x_3062;
            let x_3064 : f32 = u_xlat20.x;
            let x_3065 : f32 = u_xlat73;
            let x_3067 : f32 = u_xlat72;
            u_xlat72 = ((x_3064 * x_3065) + x_3067);
            let x_3070 : vec4<f32> = u_xlat15;
            let x_3071 : vec2<f32> = vec2<f32>(x_3070.z, x_3070.w);
            let x_3073 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
            let x_3080 : vec3<f32> = txVec48;
            let x_3082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
            u_xlat73 = x_3082;
            let x_3084 : f32 = u_xlat20.y;
            let x_3085 : f32 = u_xlat73;
            let x_3087 : f32 = u_xlat72;
            u_xlat72 = ((x_3084 * x_3085) + x_3087);
            let x_3090 : vec4<f32> = u_xlat16;
            let x_3091 : vec2<f32> = vec2<f32>(x_3090.x, x_3090.y);
            let x_3093 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3091.x, x_3091.y, x_3093);
            let x_3100 : vec3<f32> = txVec49;
            let x_3102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
            u_xlat73 = x_3102;
            let x_3104 : f32 = u_xlat20.z;
            let x_3105 : f32 = u_xlat73;
            let x_3107 : f32 = u_xlat72;
            u_xlat72 = ((x_3104 * x_3105) + x_3107);
            let x_3110 : vec4<f32> = u_xlat17;
            let x_3111 : vec2<f32> = vec2<f32>(x_3110.z, x_3110.w);
            let x_3113 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3111.x, x_3111.y, x_3113);
            let x_3120 : vec3<f32> = txVec50;
            let x_3122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3120.xy, x_3120.z);
            u_xlat73 = x_3122;
            let x_3124 : f32 = u_xlat20.w;
            let x_3125 : f32 = u_xlat73;
            let x_3127 : f32 = u_xlat72;
            u_xlat72 = ((x_3124 * x_3125) + x_3127);
            let x_3130 : vec4<f32> = u_xlat18;
            let x_3131 : vec2<f32> = vec2<f32>(x_3130.x, x_3130.y);
            let x_3133 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
            let x_3140 : vec3<f32> = txVec51;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat73 = x_3142;
            let x_3144 : f32 = u_xlat21.x;
            let x_3145 : f32 = u_xlat73;
            let x_3147 : f32 = u_xlat72;
            u_xlat72 = ((x_3144 * x_3145) + x_3147);
            let x_3150 : vec4<f32> = u_xlat18;
            let x_3151 : vec2<f32> = vec2<f32>(x_3150.z, x_3150.w);
            let x_3153 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec52;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat73 = x_3162;
            let x_3164 : f32 = u_xlat21.y;
            let x_3165 : f32 = u_xlat73;
            let x_3167 : f32 = u_xlat72;
            u_xlat72 = ((x_3164 * x_3165) + x_3167);
            let x_3170 : vec2<f32> = u_xlat32;
            let x_3172 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec53;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat73 = x_3181;
            let x_3183 : f32 = u_xlat21.z;
            let x_3184 : f32 = u_xlat73;
            let x_3186 : f32 = u_xlat72;
            u_xlat72 = ((x_3183 * x_3184) + x_3186);
            let x_3189 : vec2<f32> = u_xlat60;
            let x_3191 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec54;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat73 = x_3200;
            let x_3202 : f32 = u_xlat21.w;
            let x_3203 : f32 = u_xlat73;
            let x_3205 : f32 = u_xlat72;
            u_xlat72 = ((x_3202 * x_3203) + x_3205);
            let x_3208 : vec4<f32> = u_xlat13;
            let x_3209 : vec2<f32> = vec2<f32>(x_3208.x, x_3208.y);
            let x_3211 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
            let x_3218 : vec3<f32> = txVec55;
            let x_3220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
            u_xlat73 = x_3220;
            let x_3222 : f32 = u_xlat9.x;
            let x_3223 : f32 = u_xlat73;
            let x_3225 : f32 = u_xlat72;
            u_xlat72 = ((x_3222 * x_3223) + x_3225);
            let x_3228 : vec4<f32> = u_xlat13;
            let x_3229 : vec2<f32> = vec2<f32>(x_3228.z, x_3228.w);
            let x_3231 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec56;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat73 = x_3240;
            let x_3242 : f32 = u_xlat9.y;
            let x_3243 : f32 = u_xlat73;
            let x_3245 : f32 = u_xlat72;
            u_xlat72 = ((x_3242 * x_3243) + x_3245);
            let x_3248 : vec2<f32> = u_xlat55;
            let x_3250 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
            let x_3257 : vec3<f32> = txVec57;
            let x_3259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
            u_xlat73 = x_3259;
            let x_3261 : f32 = u_xlat9.z;
            let x_3262 : f32 = u_xlat73;
            let x_3264 : f32 = u_xlat72;
            u_xlat72 = ((x_3261 * x_3262) + x_3264);
            let x_3267 : vec4<f32> = u_xlat8;
            let x_3268 : vec2<f32> = vec2<f32>(x_3267.x, x_3267.y);
            let x_3270 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec58;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat73 = x_3279;
            let x_3281 : f32 = u_xlat9.w;
            let x_3282 : f32 = u_xlat73;
            let x_3284 : f32 = u_xlat72;
            u_xlat71 = ((x_3281 * x_3282) + x_3284);
          }
        }
      } else {
        let x_3288 : vec4<f32> = u_xlat7;
        let x_3289 : vec2<f32> = vec2<f32>(x_3288.x, x_3288.y);
        let x_3291 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
        let x_3298 : vec3<f32> = txVec59;
        let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
        u_xlat71 = x_3300;
      }
      let x_3301 : i32 = u_xlati48;
      let x_3303 : f32 = x_76.x_AdditionalShadowParams[x_3301].x;
      u_xlat72 = (1.0f + -(x_3303));
      let x_3306 : f32 = u_xlat71;
      let x_3307 : i32 = u_xlati48;
      let x_3309 : f32 = x_76.x_AdditionalShadowParams[x_3307].x;
      let x_3311 : f32 = u_xlat72;
      u_xlat71 = ((x_3306 * x_3309) + x_3311);
      let x_3314 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3314);
      let x_3317 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3317 >= 1.0f);
      let x_3320 : bool = u_xlatb72;
      let x_3322 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3320 | x_3322);
      let x_3324 : bool = u_xlatb72;
      let x_3325 : f32 = u_xlat71;
      u_xlat71 = select(x_3325, 1.0f, x_3324);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3328 : f32 = u_xlat71;
    u_xlat72 = (-(x_3328) + 1.0f);
    let x_3332 : f32 = u_xlat2.x;
    let x_3333 : f32 = u_xlat72;
    let x_3335 : f32 = u_xlat71;
    u_xlat71 = ((x_3332 * x_3333) + x_3335);
    let x_3338 : i32 = u_xlati48;
    u_xlati72 = (1i << bitcast<u32>((x_3338 & 31i)));
    let x_3342 : i32 = u_xlati72;
    let x_3345 : f32 = x_1660.x_AdditionalLightsCookieEnableBits;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_3342) & bitcast<u32>(x_3345)));
    let x_3349 : i32 = u_xlati72;
    if ((x_3349 != 0i)) {
      let x_3353 : i32 = u_xlati48;
      let x_3355 : f32 = x_1660.x_AdditionalLightsLightTypes[x_3353].el;
      u_xlati72 = i32(x_3355);
      let x_3358 : i32 = u_xlati72;
      u_xlati7 = select(1i, 0i, (x_3358 != 0i));
      let x_3362 : i32 = u_xlati48;
      u_xlati29 = (x_3362 << bitcast<u32>(2i));
      let x_3364 : i32 = u_xlati7;
      if ((x_3364 != 0i)) {
        let x_3368 : vec3<f32> = vs_TEXCOORD1;
        let x_3370 : i32 = u_xlati29;
        let x_3373 : i32 = u_xlati29;
        let x_3377 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3370 + 1i) / 4i)][((x_3373 + 1i) % 4i)];
        let x_3379 : vec3<f32> = (vec3<f32>(x_3368.y, x_3368.y, x_3368.y) * vec3<f32>(x_3377.x, x_3377.y, x_3377.w));
        let x_3380 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3379.x, x_3380.y, x_3379.y, x_3379.z);
        let x_3382 : i32 = u_xlati29;
        let x_3384 : i32 = u_xlati29;
        let x_3387 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[(x_3382 / 4i)][(x_3384 % 4i)];
        let x_3389 : vec3<f32> = vs_TEXCOORD1;
        let x_3392 : vec4<f32> = u_xlat7;
        let x_3394 : vec3<f32> = ((vec3<f32>(x_3387.x, x_3387.y, x_3387.w) * vec3<f32>(x_3389.x, x_3389.x, x_3389.x)) + vec3<f32>(x_3392.x, x_3392.z, x_3392.w));
        let x_3395 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3394.x, x_3395.y, x_3394.y, x_3394.z);
        let x_3397 : i32 = u_xlati29;
        let x_3400 : i32 = u_xlati29;
        let x_3404 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3397 + 2i) / 4i)][((x_3400 + 2i) % 4i)];
        let x_3406 : vec3<f32> = vs_TEXCOORD1;
        let x_3409 : vec4<f32> = u_xlat7;
        let x_3411 : vec3<f32> = ((vec3<f32>(x_3404.x, x_3404.y, x_3404.w) * vec3<f32>(x_3406.z, x_3406.z, x_3406.z)) + vec3<f32>(x_3409.x, x_3409.z, x_3409.w));
        let x_3412 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3411.x, x_3412.y, x_3411.y, x_3411.z);
        let x_3414 : vec4<f32> = u_xlat7;
        let x_3416 : i32 = u_xlati29;
        let x_3419 : i32 = u_xlati29;
        let x_3423 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3416 + 3i) / 4i)][((x_3419 + 3i) % 4i)];
        let x_3425 : vec3<f32> = (vec3<f32>(x_3414.x, x_3414.z, x_3414.w) + vec3<f32>(x_3423.x, x_3423.y, x_3423.w));
        let x_3426 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3425.x, x_3426.y, x_3425.y, x_3425.z);
        let x_3428 : vec4<f32> = u_xlat7;
        let x_3430 : vec4<f32> = u_xlat7;
        let x_3432 : vec2<f32> = (vec2<f32>(x_3428.x, x_3428.z) / vec2<f32>(x_3430.w, x_3430.w));
        let x_3433 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3432.x, x_3433.y, x_3432.y, x_3433.w);
        let x_3435 : vec4<f32> = u_xlat7;
        let x_3438 : vec2<f32> = ((vec2<f32>(x_3435.x, x_3435.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3439 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3438.x, x_3439.y, x_3438.y, x_3439.w);
        let x_3441 : vec4<f32> = u_xlat7;
        let x_3445 : vec2<f32> = clamp(vec2<f32>(x_3441.x, x_3441.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3446 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3445.x, x_3446.y, x_3445.y, x_3446.w);
        let x_3448 : i32 = u_xlati48;
        let x_3450 : vec4<f32> = x_1660.x_AdditionalLightsCookieAtlasUVRects[x_3448];
        let x_3452 : vec4<f32> = u_xlat7;
        let x_3455 : i32 = u_xlati48;
        let x_3457 : vec4<f32> = x_1660.x_AdditionalLightsCookieAtlasUVRects[x_3455];
        let x_3459 : vec2<f32> = ((vec2<f32>(x_3450.x, x_3450.y) * vec2<f32>(x_3452.x, x_3452.z)) + vec2<f32>(x_3457.z, x_3457.w));
        let x_3460 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3459.x, x_3460.y, x_3459.y, x_3460.w);
      } else {
        let x_3463 : i32 = u_xlati72;
        u_xlatb72 = (x_3463 == 1i);
        let x_3465 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_3465);
        let x_3467 : i32 = u_xlati72;
        if ((x_3467 != 0i)) {
          let x_3471 : vec3<f32> = vs_TEXCOORD1;
          let x_3473 : i32 = u_xlati29;
          let x_3476 : i32 = u_xlati29;
          let x_3480 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3473 + 1i) / 4i)][((x_3476 + 1i) % 4i)];
          let x_3482 : vec2<f32> = (vec2<f32>(x_3471.y, x_3471.y) * vec2<f32>(x_3480.x, x_3480.y));
          let x_3483 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3482.x, x_3482.y, x_3483.z, x_3483.w);
          let x_3485 : i32 = u_xlati29;
          let x_3487 : i32 = u_xlati29;
          let x_3490 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[(x_3485 / 4i)][(x_3487 % 4i)];
          let x_3492 : vec3<f32> = vs_TEXCOORD1;
          let x_3495 : vec4<f32> = u_xlat8;
          let x_3497 : vec2<f32> = ((vec2<f32>(x_3490.x, x_3490.y) * vec2<f32>(x_3492.x, x_3492.x)) + vec2<f32>(x_3495.x, x_3495.y));
          let x_3498 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3497.x, x_3497.y, x_3498.z, x_3498.w);
          let x_3500 : i32 = u_xlati29;
          let x_3503 : i32 = u_xlati29;
          let x_3507 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3500 + 2i) / 4i)][((x_3503 + 2i) % 4i)];
          let x_3509 : vec3<f32> = vs_TEXCOORD1;
          let x_3512 : vec4<f32> = u_xlat8;
          let x_3514 : vec2<f32> = ((vec2<f32>(x_3507.x, x_3507.y) * vec2<f32>(x_3509.z, x_3509.z)) + vec2<f32>(x_3512.x, x_3512.y));
          let x_3515 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3514.x, x_3514.y, x_3515.z, x_3515.w);
          let x_3517 : vec4<f32> = u_xlat8;
          let x_3519 : i32 = u_xlati29;
          let x_3522 : i32 = u_xlati29;
          let x_3526 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3519 + 3i) / 4i)][((x_3522 + 3i) % 4i)];
          let x_3528 : vec2<f32> = (vec2<f32>(x_3517.x, x_3517.y) + vec2<f32>(x_3526.x, x_3526.y));
          let x_3529 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3528.x, x_3528.y, x_3529.z, x_3529.w);
          let x_3531 : vec4<f32> = u_xlat8;
          let x_3534 : vec2<f32> = ((vec2<f32>(x_3531.x, x_3531.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3535 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3534.x, x_3534.y, x_3535.z, x_3535.w);
          let x_3537 : vec4<f32> = u_xlat8;
          let x_3539 : vec2<f32> = fract(vec2<f32>(x_3537.x, x_3537.y));
          let x_3540 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3539.x, x_3539.y, x_3540.z, x_3540.w);
          let x_3542 : i32 = u_xlati48;
          let x_3544 : vec4<f32> = x_1660.x_AdditionalLightsCookieAtlasUVRects[x_3542];
          let x_3546 : vec4<f32> = u_xlat8;
          let x_3549 : i32 = u_xlati48;
          let x_3551 : vec4<f32> = x_1660.x_AdditionalLightsCookieAtlasUVRects[x_3549];
          let x_3553 : vec2<f32> = ((vec2<f32>(x_3544.x, x_3544.y) * vec2<f32>(x_3546.x, x_3546.y)) + vec2<f32>(x_3551.z, x_3551.w));
          let x_3554 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3553.x, x_3554.y, x_3553.y, x_3554.w);
        } else {
          let x_3557 : vec3<f32> = vs_TEXCOORD1;
          let x_3559 : i32 = u_xlati29;
          let x_3562 : i32 = u_xlati29;
          let x_3566 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3559 + 1i) / 4i)][((x_3562 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_3557.y, x_3557.y, x_3557.y, x_3557.y) * x_3566);
          let x_3568 : i32 = u_xlati29;
          let x_3570 : i32 = u_xlati29;
          let x_3573 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[(x_3568 / 4i)][(x_3570 % 4i)];
          let x_3574 : vec3<f32> = vs_TEXCOORD1;
          let x_3577 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3573 * vec4<f32>(x_3574.x, x_3574.x, x_3574.x, x_3574.x)) + x_3577);
          let x_3579 : i32 = u_xlati29;
          let x_3582 : i32 = u_xlati29;
          let x_3586 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3579 + 2i) / 4i)][((x_3582 + 2i) % 4i)];
          let x_3587 : vec3<f32> = vs_TEXCOORD1;
          let x_3590 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3586 * vec4<f32>(x_3587.z, x_3587.z, x_3587.z, x_3587.z)) + x_3590);
          let x_3592 : vec4<f32> = u_xlat8;
          let x_3593 : i32 = u_xlati29;
          let x_3596 : i32 = u_xlati29;
          let x_3600 : vec4<f32> = x_1660.x_AdditionalLightsWorldToLights[((x_3593 + 3i) / 4i)][((x_3596 + 3i) % 4i)];
          u_xlat8 = (x_3592 + x_3600);
          let x_3602 : vec4<f32> = u_xlat8;
          let x_3604 : vec4<f32> = u_xlat8;
          let x_3606 : vec3<f32> = (vec3<f32>(x_3602.x, x_3602.y, x_3602.z) / vec3<f32>(x_3604.w, x_3604.w, x_3604.w));
          let x_3607 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3606.x, x_3606.y, x_3606.z, x_3607.w);
          let x_3609 : vec4<f32> = u_xlat8;
          let x_3611 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(vec3<f32>(x_3609.x, x_3609.y, x_3609.z), vec3<f32>(x_3611.x, x_3611.y, x_3611.z));
          let x_3614 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_3614);
          let x_3616 : f32 = u_xlat72;
          let x_3618 : vec4<f32> = u_xlat8;
          let x_3620 : vec3<f32> = (vec3<f32>(x_3616, x_3616, x_3616) * vec3<f32>(x_3618.x, x_3618.y, x_3618.z));
          let x_3621 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3620.x, x_3620.y, x_3620.z, x_3621.w);
          let x_3623 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(abs(vec3<f32>(x_3623.x, x_3623.y, x_3623.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3628 : f32 = u_xlat72;
          u_xlat72 = max(x_3628, 0.00000099999999747524f);
          let x_3631 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_3631);
          let x_3633 : f32 = u_xlat72;
          let x_3635 : vec4<f32> = u_xlat8;
          let x_3637 : vec3<f32> = (vec3<f32>(x_3633, x_3633, x_3633) * vec3<f32>(x_3635.z, x_3635.x, x_3635.y));
          let x_3638 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3637.x, x_3637.y, x_3637.z, x_3638.w);
          let x_3641 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_3641);
          let x_3645 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_3645, 0.0f, 1.0f);
          let x_3650 : vec4<f32> = u_xlat9;
          let x_3652 : vec4<bool> = (vec4<f32>(x_3650.y, x_3650.y, x_3650.z, x_3650.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3653 : vec2<bool> = vec2<bool>(x_3652.x, x_3652.z);
          let x_3654 : vec3<bool> = u_xlatb29;
          u_xlatb29 = vec3<bool>(x_3653.x, x_3654.y, x_3653.y);
          let x_3657 : bool = u_xlatb29.x;
          if (x_3657) {
            let x_3662 : f32 = u_xlat9.x;
            x_3658 = x_3662;
          } else {
            let x_3665 : f32 = u_xlat9.x;
            x_3658 = -(x_3665);
          }
          let x_3667 : f32 = x_3658;
          u_xlat29.x = x_3667;
          let x_3670 : bool = u_xlatb29.z;
          if (x_3670) {
            let x_3675 : f32 = u_xlat9.x;
            x_3671 = x_3675;
          } else {
            let x_3678 : f32 = u_xlat9.x;
            x_3671 = -(x_3678);
          }
          let x_3680 : f32 = x_3671;
          u_xlat29.z = x_3680;
          let x_3682 : vec4<f32> = u_xlat8;
          let x_3684 : f32 = u_xlat72;
          let x_3687 : vec3<f32> = u_xlat29;
          let x_3689 : vec2<f32> = ((vec2<f32>(x_3682.x, x_3682.y) * vec2<f32>(x_3684, x_3684)) + vec2<f32>(x_3687.x, x_3687.z));
          let x_3690 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3689.x, x_3690.y, x_3689.y);
          let x_3692 : vec3<f32> = u_xlat29;
          let x_3695 : vec2<f32> = ((vec2<f32>(x_3692.x, x_3692.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3696 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3695.x, x_3696.y, x_3695.y);
          let x_3698 : vec3<f32> = u_xlat29;
          let x_3702 : vec2<f32> = clamp(vec2<f32>(x_3698.x, x_3698.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3703 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3702.x, x_3703.y, x_3702.y);
          let x_3705 : i32 = u_xlati48;
          let x_3707 : vec4<f32> = x_1660.x_AdditionalLightsCookieAtlasUVRects[x_3705];
          let x_3709 : vec3<f32> = u_xlat29;
          let x_3712 : i32 = u_xlati48;
          let x_3714 : vec4<f32> = x_1660.x_AdditionalLightsCookieAtlasUVRects[x_3712];
          let x_3716 : vec2<f32> = ((vec2<f32>(x_3707.x, x_3707.y) * vec2<f32>(x_3709.x, x_3709.z)) + vec2<f32>(x_3714.z, x_3714.w));
          let x_3717 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3716.x, x_3717.y, x_3716.y, x_3717.w);
        }
      }
      let x_3724 : vec4<f32> = u_xlat7;
      let x_3726 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3724.x, x_3724.z), 0.0f);
      u_xlat7 = x_3726;
      let x_3728 : bool = u_xlatb4.y;
      if (x_3728) {
        let x_3733 : f32 = u_xlat7.w;
        x_3729 = x_3733;
      } else {
        let x_3736 : f32 = u_xlat7.x;
        x_3729 = x_3736;
      }
      let x_3737 : f32 = x_3729;
      u_xlat72 = x_3737;
      let x_3739 : bool = u_xlatb4.x;
      if (x_3739) {
        let x_3743 : vec4<f32> = u_xlat7;
        x_3740 = vec3<f32>(x_3743.x, x_3743.y, x_3743.z);
      } else {
        let x_3746 : f32 = u_xlat72;
        x_3740 = vec3<f32>(x_3746, x_3746, x_3746);
      }
      let x_3748 : vec3<f32> = x_3740;
      let x_3749 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_3748.x, x_3748.y, x_3748.z, x_3749.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_3755 : vec4<f32> = u_xlat7;
    let x_3757 : i32 = u_xlati48;
    let x_3759 : vec4<f32> = x_1892.x_AdditionalLightsColor[x_3757];
    let x_3761 : vec3<f32> = (vec3<f32>(x_3755.x, x_3755.y, x_3755.z) * vec3<f32>(x_3759.x, x_3759.y, x_3759.z));
    let x_3762 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3761.x, x_3761.y, x_3761.z, x_3762.w);
    let x_3764 : f32 = u_xlat70;
    let x_3765 : f32 = u_xlat71;
    u_xlat48.x = (x_3764 * x_3765);
    let x_3768 : vec2<f32> = u_xlat48;
    let x_3770 : vec4<f32> = u_xlat7;
    let x_3772 : vec3<f32> = (vec3<f32>(x_3768.x, x_3768.x, x_3768.x) * vec3<f32>(x_3770.x, x_3770.y, x_3770.z));
    let x_3773 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3772.x, x_3772.y, x_3772.z, x_3773.w);
    let x_3775 : vec4<f32> = u_xlat1;
    let x_3777 : vec4<f32> = u_xlat6;
    u_xlat48.x = dot(vec3<f32>(x_3775.x, x_3775.y, x_3775.z), vec3<f32>(x_3777.x, x_3777.y, x_3777.z));
    let x_3782 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_3782, 0.0f, 1.0f);
    let x_3785 : vec2<f32> = u_xlat48;
    let x_3787 : vec4<f32> = u_xlat7;
    let x_3789 : vec3<f32> = (vec3<f32>(x_3785.x, x_3785.x, x_3785.x) * vec3<f32>(x_3787.x, x_3787.y, x_3787.z));
    let x_3790 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3789.x, x_3789.y, x_3789.z, x_3790.w);
    let x_3792 : vec4<f32> = u_xlat6;
    let x_3794 : vec4<f32> = u_xlat0;
    let x_3797 : vec4<f32> = u_xlat5;
    let x_3799 : vec3<f32> = ((vec3<f32>(x_3792.x, x_3792.y, x_3792.z) * vec3<f32>(x_3794.y, x_3794.z, x_3794.w)) + vec3<f32>(x_3797.x, x_3797.y, x_3797.z));
    let x_3800 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3799.x, x_3799.y, x_3799.z, x_3800.w);

    continuing {
      let x_3802 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3802 + bitcast<u32>(1i));
    }
  }
  let x_3805 : vec4<f32> = u_xlat3;
  let x_3807 : vec4<f32> = u_xlat0;
  let x_3810 : vec3<f32> = u_xlat24;
  u_xlat22 = ((vec3<f32>(x_3805.x, x_3805.y, x_3805.z) * vec3<f32>(x_3807.y, x_3807.z, x_3807.w)) + x_3810);
  let x_3814 : vec4<f32> = u_xlat5;
  let x_3816 : vec3<f32> = u_xlat22;
  let x_3817 : vec3<f32> = (vec3<f32>(x_3814.x, x_3814.y, x_3814.z) + x_3816);
  let x_3818 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3817.x, x_3817.y, x_3817.z, x_3818.w);
  let x_3822 : f32 = x_40.x_Surface;
  u_xlatb22 = (x_3822 == 1.0f);
  let x_3824 : bool = u_xlatb22;
  if (x_3824) {
    let x_3829 : f32 = u_xlat0.x;
    x_3825 = x_3829;
  } else {
    x_3825 = 1.0f;
  }
  let x_3831 : f32 = x_3825;
  SV_Target0.w = x_3831;
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


