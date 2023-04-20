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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_133 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat71 : f32;

var<private> u_xlatu71 : u32;

var<private> u_xlati71 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb72 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb73 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlatb49 : vec2<bool>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat49 : vec2<f32>;

@group(1) @binding(5) var<uniform> x_1748 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1854 : UnityPerDraw;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati7 : i32;

var<private> u_xlat75 : f32;

var<private> u_xlati75 : i32;

@group(1) @binding(1) var<uniform> x_2051 : AdditionalLights;

var<private> u_xlat76 : f32;

var<private> u_xlati8 : i32;

var<private> u_xlatb31 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb77 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat77 : f32;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

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

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu74 : u32;

var<private> u_xlatb75 : bool;

fn main_1() {
  var x_98 : vec3<f32>;
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
  var x_1699 : f32;
  var x_1815 : f32;
  var x_1826 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2200 : f32;
  var x_2213 : f32;
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
  var x_3549 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_3896 : f32;
  var x_3909 : f32;
  var x_3968 : f32;
  var x_3980 : vec3<f32>;
  var x_4139 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat24 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat24;
  let x_70 : vec3<f32> = u_xlat24;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat24;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat24 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_85 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat2.x = x_85;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2.y = x_88;
  let x_93 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat2.z = x_93;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_101 : vec3<f32> = u_xlat24;
    x_98 = x_101;
  } else {
    let x_103 : vec3<f32> = u_xlat2;
    x_98 = x_103;
  }
  let x_104 : vec3<f32> = x_98;
  u_xlat1 = x_104;
  let x_107 : vec3<f32> = vs_TEXCOORD2;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat70;
  let x_114 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_116 : vec3<f32> = u_xlat1;
  let x_117 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_116, x_117);
  let x_119 : f32 = u_xlat70;
  u_xlat70 = max(x_119, 0.00006103515625f);
  let x_122 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_122);
  let x_125 : vec3<f32> = vs_TEXCOORD1;
  let x_135 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres0;
  let x_138 : vec3<f32> = (x_125 + -(vec3<f32>(x_135.x, x_135.y, x_135.z)));
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_144 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres1;
  let x_147 : vec3<f32> = (x_142 + -(vec3<f32>(x_144.x, x_144.y, x_144.z)));
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres2;
  let x_157 : vec3<f32> = (x_151 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_158 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec3<f32> = vs_TEXCOORD1;
  let x_163 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres3;
  let x_166 : vec3<f32> = (x_161 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_167 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec4<f32> = u_xlat3;
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec4<f32> = u_xlat5;
  let x_183 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : vec4<f32> = u_xlat6;
  let x_189 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_196 : vec4<f32> = u_xlat3;
  let x_199 : vec4<f32> = x_133.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_196 < x_199);
  let x_202 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_202);
  let x_207 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_211);
  let x_215 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_215);
  let x_219 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_219);
  let x_225 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_225);
  let x_229 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_229);
  let x_232 : vec4<f32> = u_xlat3;
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + vec3<f32>(x_234.y, x_234.z, x_234.w));
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat3;
  let x_242 : vec3<f32> = max(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_243.x, x_242.x, x_242.y, x_242.z);
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat71 = dot(x_246, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_252 : f32 = u_xlat71;
  u_xlat71 = (-(x_252) + 4.0f);
  let x_257 : f32 = u_xlat71;
  u_xlatu71 = u32(x_257);
  let x_261 : u32 = u_xlatu71;
  u_xlati71 = (bitcast<i32>(x_261) << bitcast<u32>(2i));
  let x_264 : vec3<f32> = vs_TEXCOORD1;
  let x_266 : i32 = u_xlati71;
  let x_269 : i32 = u_xlati71;
  let x_273 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati71;
  let x_280 : i32 = u_xlati71;
  let x_283 : vec4<f32> = x_133.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = u_xlat3;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati71;
  let x_296 : i32 = u_xlati71;
  let x_300 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_TEXCOORD1;
  let x_305 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat3;
  let x_312 : i32 = u_xlati71;
  let x_315 : i32 = u_xlati71;
  let x_319 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_312 + 3i) / 4i)][((x_315 + 3i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_326 : f32 = vs_TEXCOORD1.y;
  let x_328 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat71 = (x_326 * x_328);
  let x_331 : f32 = x_28.unity_MatrixV[0i].z;
  let x_333 : f32 = vs_TEXCOORD1.x;
  let x_335 : f32 = u_xlat71;
  u_xlat71 = ((x_331 * x_333) + x_335);
  let x_338 : f32 = x_28.unity_MatrixV[2i].z;
  let x_340 : f32 = vs_TEXCOORD1.z;
  let x_342 : f32 = u_xlat71;
  u_xlat71 = ((x_338 * x_340) + x_342);
  let x_344 : f32 = u_xlat71;
  let x_346 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat71 = (x_344 + x_346);
  let x_348 : f32 = u_xlat71;
  let x_351 : f32 = x_28.x_ProjectionParams.y;
  u_xlat71 = (-(x_348) + -(x_351));
  let x_354 : f32 = u_xlat71;
  u_xlat71 = max(x_354, 0.0f);
  let x_356 : f32 = u_xlat71;
  let x_359 : f32 = x_28.unity_FogParams.x;
  u_xlat71 = (x_356 * x_359);
  let x_367 : vec2<f32> = vs_TEXCOORD7;
  let x_369 : f32 = x_28.x_GlobalMipBias.x;
  let x_370 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_367, x_369);
  u_xlat4 = x_370;
  let x_375 : vec2<f32> = vs_TEXCOORD7;
  let x_377 : f32 = x_28.x_GlobalMipBias.x;
  let x_378 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_375, x_377);
  let x_379 : vec3<f32> = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat4;
  let x_386 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : vec3<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(x_390, vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat72;
  u_xlat72 = (x_394 + 0.5f);
  let x_397 : f32 = u_xlat72;
  let x_399 : vec4<f32> = u_xlat5;
  let x_401 : vec3<f32> = (vec3<f32>(x_397, x_397, x_397) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : f32 = u_xlat4.w;
  u_xlat72 = max(x_405, 0.00009999999747378752f);
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : f32 = u_xlat72;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) / vec3<f32>(x_410, x_410, x_410));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_418 : f32 = x_133.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_418);
  let x_420 : bool = u_xlatb72;
  if (x_420) {
    let x_424 : f32 = x_133.x_MainLightShadowParams.y;
    u_xlatb72 = (x_424 == 1.0f);
    let x_426 : bool = u_xlatb72;
    if (x_426) {
      let x_429 : vec4<f32> = u_xlat3;
      let x_432 : vec4<f32> = x_133.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_429.x, x_429.y, x_429.x, x_429.y) + x_432);
      let x_435 : vec4<f32> = u_xlat5;
      let x_436 : vec2<f32> = vec2<f32>(x_435.x, x_435.y);
      let x_438 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_436.x, x_436.y, x_438);
      let x_450 : vec3<f32> = txVec0;
      let x_452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_450.xy, x_450.z);
      u_xlat6.x = x_452;
      let x_455 : vec4<f32> = u_xlat5;
      let x_456 : vec2<f32> = vec2<f32>(x_455.z, x_455.w);
      let x_458 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_456.x, x_456.y, x_458);
      let x_465 : vec3<f32> = txVec1;
      let x_467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_465.xy, x_465.z);
      u_xlat6.y = x_467;
      let x_469 : vec4<f32> = u_xlat3;
      let x_472 : vec4<f32> = x_133.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_469.x, x_469.y, x_469.x, x_469.y) + x_472);
      let x_475 : vec4<f32> = u_xlat5;
      let x_476 : vec2<f32> = vec2<f32>(x_475.x, x_475.y);
      let x_478 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_476.x, x_476.y, x_478);
      let x_485 : vec3<f32> = txVec2;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_485.xy, x_485.z);
      u_xlat6.z = x_487;
      let x_490 : vec4<f32> = u_xlat5;
      let x_491 : vec2<f32> = vec2<f32>(x_490.z, x_490.w);
      let x_493 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_491.x, x_491.y, x_493);
      let x_500 : vec3<f32> = txVec3;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat6.w = x_502;
      let x_504 : vec4<f32> = u_xlat6;
      u_xlat72 = dot(x_504, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_511 : f32 = x_133.x_MainLightShadowParams.y;
      u_xlatb73 = (x_511 == 2.0f);
      let x_513 : bool = u_xlatb73;
      if (x_513) {
        let x_516 : vec4<f32> = u_xlat3;
        let x_519 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_523 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_519.z, x_519.w)) + vec2<f32>(0.5f, 0.5f));
        let x_524 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat5;
        let x_528 : vec2<f32> = floor(vec2<f32>(x_526.x, x_526.y));
        let x_529 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_533 : vec4<f32> = u_xlat3;
        let x_536 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_539 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_536.z, x_536.w)) + -(vec2<f32>(x_539.x, x_539.y)));
        let x_543 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_543.x, x_543.x, x_543.y, x_543.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_548 : vec4<f32> = u_xlat6;
        let x_550 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_548.x, x_548.x, x_548.z, x_548.z) * vec4<f32>(x_550.x, x_550.x, x_550.z, x_550.z));
        let x_553 : vec4<f32> = u_xlat7;
        let x_557 : vec2<f32> = (vec2<f32>(x_553.y, x_553.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_558.y, x_557.y, x_558.w);
        let x_560 : vec4<f32> = u_xlat7;
        let x_563 : vec2<f32> = u_xlat51;
        let x_565 : vec2<f32> = ((vec2<f32>(x_560.x, x_560.z) * vec2<f32>(0.5f, 0.5f)) + -(x_563));
        let x_566 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_569 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_569) + vec2<f32>(1.0f, 1.0f));
        let x_574 : vec2<f32> = u_xlat51;
        let x_576 : vec2<f32> = min(x_574, vec2<f32>(0.0f, 0.0f));
        let x_577 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat8;
        let x_582 : vec4<f32> = u_xlat8;
        let x_585 : vec2<f32> = u_xlat53;
        let x_586 : vec2<f32> = ((-(vec2<f32>(x_579.x, x_579.y)) * vec2<f32>(x_582.x, x_582.y)) + x_585);
        let x_587 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
        let x_589 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_589, vec2<f32>(0.0f, 0.0f));
        let x_591 : vec2<f32> = u_xlat51;
        let x_593 : vec2<f32> = u_xlat51;
        let x_595 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_591) * x_593) + vec2<f32>(x_595.y, x_595.w));
        let x_598 : vec4<f32> = u_xlat8;
        let x_600 : vec2<f32> = (vec2<f32>(x_598.x, x_598.y) + vec2<f32>(1.0f, 1.0f));
        let x_601 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
        let x_603 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_603 + vec2<f32>(1.0f, 1.0f));
        let x_606 : vec4<f32> = u_xlat7;
        let x_610 : vec2<f32> = (vec2<f32>(x_606.x, x_606.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_611 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
        let x_613 : vec2<f32> = u_xlat53;
        let x_614 : vec2<f32> = (x_613 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_615 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat8;
        let x_619 : vec2<f32> = (vec2<f32>(x_617.x, x_617.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
        let x_623 : vec2<f32> = u_xlat51;
        let x_624 : vec2<f32> = (x_623 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_625 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_627.y, x_627.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_631 : f32 = u_xlat8.x;
        u_xlat9.z = x_631;
        let x_634 : f32 = u_xlat51.x;
        u_xlat9.w = x_634;
        let x_637 : f32 = u_xlat10.x;
        u_xlat7.z = x_637;
        let x_640 : f32 = u_xlat6.x;
        u_xlat7.w = x_640;
        let x_643 : vec4<f32> = u_xlat7;
        let x_645 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_643.z, x_643.w, x_643.x, x_643.z) + vec4<f32>(x_645.z, x_645.w, x_645.x, x_645.z));
        let x_649 : f32 = u_xlat9.y;
        u_xlat8.z = x_649;
        let x_652 : f32 = u_xlat51.y;
        u_xlat8.w = x_652;
        let x_655 : f32 = u_xlat7.y;
        u_xlat10.z = x_655;
        let x_658 : f32 = u_xlat6.z;
        u_xlat10.w = x_658;
        let x_660 : vec4<f32> = u_xlat8;
        let x_662 : vec4<f32> = u_xlat10;
        let x_664 : vec3<f32> = (vec3<f32>(x_660.z, x_660.y, x_660.w) + vec3<f32>(x_662.z, x_662.y, x_662.w));
        let x_665 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
        let x_667 : vec4<f32> = u_xlat7;
        let x_669 : vec4<f32> = u_xlat11;
        let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.z, x_667.w) / vec3<f32>(x_669.z, x_669.w, x_669.y));
        let x_672 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat7;
        let x_679 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
        let x_682 : vec4<f32> = u_xlat10;
        let x_684 : vec4<f32> = u_xlat6;
        let x_686 : vec3<f32> = (vec3<f32>(x_682.z, x_682.y, x_682.w) / vec3<f32>(x_684.x, x_684.y, x_684.z));
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat8;
        let x_691 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_692 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat7;
        let x_697 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_699 : vec3<f32> = (vec3<f32>(x_694.y, x_694.x, x_694.z) * vec3<f32>(x_697.x, x_697.x, x_697.x));
        let x_700 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat8;
        let x_705 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_707 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_705.y, x_705.y, x_705.y));
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_711 : f32 = u_xlat8.x;
        u_xlat7.w = x_711;
        let x_713 : vec4<f32> = u_xlat5;
        let x_716 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.y, x_719.w, x_719.x, x_719.w));
        let x_722 : vec4<f32> = u_xlat5;
        let x_725 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_725.x, x_725.y)) + vec2<f32>(x_728.z, x_728.w));
        let x_732 : f32 = u_xlat7.y;
        u_xlat8.w = x_732;
        let x_734 : vec4<f32> = u_xlat8;
        let x_735 : vec2<f32> = vec2<f32>(x_734.y, x_734.z);
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_736.x, x_735.x, x_736.z, x_735.y);
        let x_738 : vec4<f32> = u_xlat5;
        let x_741 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_744 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y) * vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y)) + vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.y));
        let x_747 : vec4<f32> = u_xlat5;
        let x_750 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_753 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) * vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.y)) + vec4<f32>(x_753.w, x_753.y, x_753.w, x_753.z));
        let x_756 : vec4<f32> = u_xlat5;
        let x_759 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y) * vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y)) + vec4<f32>(x_762.x, x_762.w, x_762.z, x_762.w));
        let x_766 : vec4<f32> = u_xlat6;
        let x_768 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_766.x, x_766.x, x_766.x, x_766.y) * vec4<f32>(x_768.z, x_768.w, x_768.y, x_768.z));
        let x_772 : vec4<f32> = u_xlat6;
        let x_774 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_772.y, x_772.y, x_772.z, x_772.z) * x_774);
        let x_778 : f32 = u_xlat6.z;
        let x_780 : f32 = u_xlat11.y;
        u_xlat73 = (x_778 * x_780);
        let x_783 : vec4<f32> = u_xlat9;
        let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
        let x_786 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_793 : vec3<f32> = txVec4;
        let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_793.xy, x_793.z);
        u_xlat5.x = x_795;
        let x_798 : vec4<f32> = u_xlat9;
        let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
        let x_801 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_809 : vec3<f32> = txVec5;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_809.xy, x_809.z);
        u_xlat28 = x_811;
        let x_812 : f32 = u_xlat28;
        let x_814 : f32 = u_xlat12.y;
        u_xlat28 = (x_812 * x_814);
        let x_817 : f32 = u_xlat12.x;
        let x_819 : f32 = u_xlat5.x;
        let x_821 : f32 = u_xlat28;
        u_xlat5.x = ((x_817 * x_819) + x_821);
        let x_825 : vec2<f32> = u_xlat51;
        let x_827 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec6;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
        u_xlat28 = x_836;
        let x_838 : f32 = u_xlat12.z;
        let x_839 : f32 = u_xlat28;
        let x_842 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_838 * x_839) + x_842);
        let x_846 : vec4<f32> = u_xlat8;
        let x_847 : vec2<f32> = vec2<f32>(x_846.x, x_846.y);
        let x_849 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec7;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
        u_xlat28 = x_858;
        let x_860 : f32 = u_xlat12.w;
        let x_861 : f32 = u_xlat28;
        let x_864 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_860 * x_861) + x_864);
        let x_868 : vec4<f32> = u_xlat10;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec8;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_878.xy, x_878.z);
        u_xlat28 = x_880;
        let x_882 : f32 = u_xlat13.x;
        let x_883 : f32 = u_xlat28;
        let x_886 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_882 * x_883) + x_886);
        let x_890 : vec4<f32> = u_xlat10;
        let x_891 : vec2<f32> = vec2<f32>(x_890.z, x_890.w);
        let x_893 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec9;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_900.xy, x_900.z);
        u_xlat28 = x_902;
        let x_904 : f32 = u_xlat13.y;
        let x_905 : f32 = u_xlat28;
        let x_908 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_904 * x_905) + x_908);
        let x_912 : vec4<f32> = u_xlat8;
        let x_913 : vec2<f32> = vec2<f32>(x_912.z, x_912.w);
        let x_915 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_922 : vec3<f32> = txVec10;
        let x_924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_922.xy, x_922.z);
        u_xlat28 = x_924;
        let x_926 : f32 = u_xlat13.z;
        let x_927 : f32 = u_xlat28;
        let x_930 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_926 * x_927) + x_930);
        let x_934 : vec4<f32> = u_xlat7;
        let x_935 : vec2<f32> = vec2<f32>(x_934.x, x_934.y);
        let x_937 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_944 : vec3<f32> = txVec11;
        let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_944.xy, x_944.z);
        u_xlat28 = x_946;
        let x_948 : f32 = u_xlat13.w;
        let x_949 : f32 = u_xlat28;
        let x_952 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_948 * x_949) + x_952);
        let x_956 : vec4<f32> = u_xlat7;
        let x_957 : vec2<f32> = vec2<f32>(x_956.z, x_956.w);
        let x_959 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_957.x, x_957.y, x_959);
        let x_966 : vec3<f32> = txVec12;
        let x_968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_966.xy, x_966.z);
        u_xlat28 = x_968;
        let x_969 : f32 = u_xlat73;
        let x_970 : f32 = u_xlat28;
        let x_973 : f32 = u_xlat5.x;
        u_xlat72 = ((x_969 * x_970) + x_973);
      } else {
        let x_976 : vec4<f32> = u_xlat3;
        let x_979 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_982 : vec2<f32> = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.z, x_979.w)) + vec2<f32>(0.5f, 0.5f));
        let x_983 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat5;
        let x_987 : vec2<f32> = floor(vec2<f32>(x_985.x, x_985.y));
        let x_988 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_990 : vec4<f32> = u_xlat3;
        let x_993 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_990.x, x_990.y) * vec2<f32>(x_993.z, x_993.w)) + -(vec2<f32>(x_996.x, x_996.y)));
        let x_1000 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1000.x, x_1000.x, x_1000.y, x_1000.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1005 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1003.x, x_1003.x, x_1003.z, x_1003.z) * vec4<f32>(x_1005.x, x_1005.x, x_1005.z, x_1005.z));
        let x_1008 : vec4<f32> = u_xlat7;
        let x_1012 : vec2<f32> = (vec2<f32>(x_1008.y, x_1008.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1013.x, x_1012.x, x_1013.z, x_1012.y);
        let x_1015 : vec4<f32> = u_xlat7;
        let x_1018 : vec2<f32> = u_xlat51;
        let x_1020 : vec2<f32> = ((vec2<f32>(x_1015.x, x_1015.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1018));
        let x_1021 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1021.w);
        let x_1023 : vec2<f32> = u_xlat51;
        let x_1025 : vec2<f32> = (-(x_1023) + vec2<f32>(1.0f, 1.0f));
        let x_1026 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
        let x_1028 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1028, vec2<f32>(0.0f, 0.0f));
        let x_1030 : vec2<f32> = u_xlat53;
        let x_1032 : vec2<f32> = u_xlat53;
        let x_1034 : vec4<f32> = u_xlat7;
        let x_1036 : vec2<f32> = ((-(x_1030) * x_1032) + vec2<f32>(x_1034.x, x_1034.y));
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
        let x_1039 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1039, vec2<f32>(0.0f, 0.0f));
        let x_1042 : vec2<f32> = u_xlat53;
        let x_1044 : vec2<f32> = u_xlat53;
        let x_1046 : vec4<f32> = u_xlat6;
        let x_1048 : vec2<f32> = ((-(x_1042) * x_1044) + vec2<f32>(x_1046.y, x_1046.w));
        let x_1049 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1048.x, x_1049.y, x_1048.y);
        let x_1051 : vec4<f32> = u_xlat7;
        let x_1054 : vec2<f32> = (vec2<f32>(x_1051.x, x_1051.y) + vec2<f32>(2.0f, 2.0f));
        let x_1055 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1057 : vec3<f32> = u_xlat29;
        let x_1059 : vec2<f32> = (vec2<f32>(x_1057.x, x_1057.z) + vec2<f32>(2.0f, 2.0f));
        let x_1060 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1060.x, x_1059.x, x_1060.z, x_1059.y);
        let x_1063 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1063 * 0.08163200318813323975f);
        let x_1067 : vec4<f32> = u_xlat6;
        let x_1070 : vec3<f32> = (vec3<f32>(x_1067.z, x_1067.x, x_1067.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1071 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
        let x_1073 : vec4<f32> = u_xlat7;
        let x_1076 : vec2<f32> = (vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1077 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1080 : f32 = u_xlat10.y;
        u_xlat9.x = x_1080;
        let x_1082 : vec2<f32> = u_xlat51;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1082.x, x_1082.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1090 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1090.x, x_1089.x, x_1090.z, x_1089.y);
        let x_1092 : vec2<f32> = u_xlat51;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1092.x, x_1092.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1096.x, x_1097.y, x_1096.y, x_1097.w);
        let x_1100 : f32 = u_xlat6.x;
        u_xlat7.y = x_1100;
        let x_1103 : f32 = u_xlat8.y;
        u_xlat7.w = x_1103;
        let x_1105 : vec4<f32> = u_xlat7;
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1105 + x_1106);
        let x_1108 : vec2<f32> = u_xlat51;
        let x_1111 : vec2<f32> = ((vec2<f32>(x_1108.y, x_1108.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1112.x, x_1111.x, x_1112.z, x_1111.y);
        let x_1114 : vec2<f32> = u_xlat51;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1114.y, x_1114.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1118 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1117.x, x_1118.y, x_1117.y, x_1118.w);
        let x_1121 : f32 = u_xlat6.y;
        u_xlat8.y = x_1121;
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1124 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1123 + x_1124);
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1126 / x_1127);
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1129 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1135 : vec4<f32> = u_xlat8;
        let x_1136 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1135 / x_1136);
        let x_1138 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1138 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1143 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1140.w, x_1140.x, x_1140.y, x_1140.z) * vec4<f32>(x_1143.x, x_1143.x, x_1143.x, x_1143.x));
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1149 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1146.x, x_1146.w, x_1146.y, x_1146.z) * vec4<f32>(x_1149.y, x_1149.y, x_1149.y, x_1149.y));
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1153 : vec3<f32> = vec3<f32>(x_1152.y, x_1152.z, x_1152.w);
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1153.x, x_1154.y, x_1153.y, x_1153.z);
        let x_1157 : f32 = u_xlat8.x;
        u_xlat10.y = x_1157;
        let x_1159 : vec4<f32> = u_xlat5;
        let x_1162 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y) * vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.y)) + vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1165.y));
        let x_1168 : vec4<f32> = u_xlat5;
        let x_1171 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.w, x_1174.y));
        let x_1178 : f32 = u_xlat10.y;
        u_xlat7.y = x_1178;
        let x_1181 : f32 = u_xlat8.z;
        u_xlat10.y = x_1181;
        let x_1183 : vec4<f32> = u_xlat5;
        let x_1186 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.y) * vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y)) + vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat5;
        let x_1195 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat10;
        let x_1200 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.w, x_1198.y));
        let x_1201 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1204 : f32 = u_xlat10.y;
        u_xlat7.z = x_1204;
        let x_1207 : vec4<f32> = u_xlat5;
        let x_1210 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.z));
        let x_1217 : f32 = u_xlat8.w;
        u_xlat10.y = x_1217;
        let x_1220 : vec4<f32> = u_xlat5;
        let x_1223 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.y) * vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.y)) + vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1226.y));
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1233 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1233.x, x_1233.y)) + vec2<f32>(x_1236.w, x_1236.y));
        let x_1240 : f32 = u_xlat10.y;
        u_xlat7.w = x_1240;
        let x_1243 : vec4<f32> = u_xlat5;
        let x_1246 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(x_1246.x, x_1246.y)) + vec2<f32>(x_1249.x, x_1249.w));
        let x_1252 : vec4<f32> = u_xlat10;
        let x_1253 : vec3<f32> = vec3<f32>(x_1252.x, x_1252.z, x_1252.w);
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1253.x, x_1254.y, x_1253.y, x_1253.z);
        let x_1256 : vec4<f32> = u_xlat5;
        let x_1259 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1262 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y) * vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y)) + vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1262.y));
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.w, x_1272.y));
        let x_1276 : f32 = u_xlat7.x;
        u_xlat8.x = x_1276;
        let x_1278 : vec4<f32> = u_xlat5;
        let x_1281 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1286 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.x, x_1281.y)) + vec2<f32>(x_1284.x, x_1284.y));
        let x_1287 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1286.x, x_1286.y, x_1287.z, x_1287.w);
        let x_1290 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1290.x, x_1290.x, x_1290.x, x_1290.x) * x_1292);
        let x_1295 : vec4<f32> = u_xlat6;
        let x_1297 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1295.y, x_1295.y, x_1295.y, x_1295.y) * x_1297);
        let x_1300 : vec4<f32> = u_xlat6;
        let x_1302 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1300.z, x_1300.z, x_1300.z, x_1300.z) * x_1302);
        let x_1304 : vec4<f32> = u_xlat6;
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1304.w, x_1304.w, x_1304.w, x_1304.w) * x_1306);
        let x_1309 : vec4<f32> = u_xlat11;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.x, x_1309.y);
        let x_1312 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec13;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat73 = x_1321;
        let x_1323 : vec4<f32> = u_xlat11;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec14;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat7.x = x_1335;
        let x_1338 : f32 = u_xlat7.x;
        let x_1340 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1338 * x_1340);
        let x_1344 : f32 = u_xlat16.x;
        let x_1345 : f32 = u_xlat73;
        let x_1348 : f32 = u_xlat7.x;
        u_xlat73 = ((x_1344 * x_1345) + x_1348);
        let x_1351 : vec2<f32> = u_xlat51;
        let x_1353 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec15;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat51.x = x_1362;
        let x_1365 : f32 = u_xlat16.z;
        let x_1367 : f32 = u_xlat51.x;
        let x_1369 : f32 = u_xlat73;
        u_xlat73 = ((x_1365 * x_1367) + x_1369);
        let x_1372 : vec4<f32> = u_xlat14;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.x, x_1372.y);
        let x_1375 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec16;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1382.xy, x_1382.z);
        u_xlat51.x = x_1384;
        let x_1387 : f32 = u_xlat16.w;
        let x_1389 : f32 = u_xlat51.x;
        let x_1391 : f32 = u_xlat73;
        u_xlat73 = ((x_1387 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat12;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec17;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat51.x = x_1406;
        let x_1409 : f32 = u_xlat17.x;
        let x_1411 : f32 = u_xlat51.x;
        let x_1413 : f32 = u_xlat73;
        u_xlat73 = ((x_1409 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat12;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.z, x_1416.w);
        let x_1419 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec18;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat51.x = x_1428;
        let x_1431 : f32 = u_xlat17.y;
        let x_1433 : f32 = u_xlat51.x;
        let x_1435 : f32 = u_xlat73;
        u_xlat73 = ((x_1431 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat13;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.x, x_1438.y);
        let x_1441 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec19;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat51.x = x_1450;
        let x_1453 : f32 = u_xlat17.z;
        let x_1455 : f32 = u_xlat51.x;
        let x_1457 : f32 = u_xlat73;
        u_xlat73 = ((x_1453 * x_1455) + x_1457);
        let x_1460 : vec4<f32> = u_xlat14;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.z, x_1460.w);
        let x_1463 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec20;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1470.xy, x_1470.z);
        u_xlat51.x = x_1472;
        let x_1475 : f32 = u_xlat17.w;
        let x_1477 : f32 = u_xlat51.x;
        let x_1479 : f32 = u_xlat73;
        u_xlat73 = ((x_1475 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat15;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.x, x_1482.y);
        let x_1485 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec21;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat51.x = x_1494;
        let x_1497 : f32 = u_xlat18.x;
        let x_1499 : f32 = u_xlat51.x;
        let x_1501 : f32 = u_xlat73;
        u_xlat73 = ((x_1497 * x_1499) + x_1501);
        let x_1504 : vec4<f32> = u_xlat15;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.z, x_1504.w);
        let x_1507 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec22;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat51.x = x_1516;
        let x_1519 : f32 = u_xlat18.y;
        let x_1521 : f32 = u_xlat51.x;
        let x_1523 : f32 = u_xlat73;
        u_xlat73 = ((x_1519 * x_1521) + x_1523);
        let x_1526 : vec2<f32> = u_xlat30;
        let x_1528 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec23;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat51.x = x_1537;
        let x_1540 : f32 = u_xlat18.z;
        let x_1542 : f32 = u_xlat51.x;
        let x_1544 : f32 = u_xlat73;
        u_xlat73 = ((x_1540 * x_1542) + x_1544);
        let x_1547 : vec2<f32> = u_xlat59;
        let x_1549 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec24;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1556.xy, x_1556.z);
        u_xlat51.x = x_1558;
        let x_1561 : f32 = u_xlat18.w;
        let x_1563 : f32 = u_xlat51.x;
        let x_1565 : f32 = u_xlat73;
        u_xlat73 = ((x_1561 * x_1563) + x_1565);
        let x_1568 : vec4<f32> = u_xlat10;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.x, x_1568.y);
        let x_1571 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec25;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat51.x = x_1580;
        let x_1583 : f32 = u_xlat6.x;
        let x_1585 : f32 = u_xlat51.x;
        let x_1587 : f32 = u_xlat73;
        u_xlat73 = ((x_1583 * x_1585) + x_1587);
        let x_1590 : vec4<f32> = u_xlat10;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.z, x_1590.w);
        let x_1593 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec26;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1600.xy, x_1600.z);
        u_xlat51.x = x_1602;
        let x_1605 : f32 = u_xlat6.y;
        let x_1607 : f32 = u_xlat51.x;
        let x_1609 : f32 = u_xlat73;
        u_xlat73 = ((x_1605 * x_1607) + x_1609);
        let x_1612 : vec2<f32> = u_xlat54;
        let x_1614 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec27;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat51.x = x_1623;
        let x_1626 : f32 = u_xlat6.z;
        let x_1628 : f32 = u_xlat51.x;
        let x_1630 : f32 = u_xlat73;
        u_xlat73 = ((x_1626 * x_1628) + x_1630);
        let x_1633 : vec4<f32> = u_xlat5;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.x, x_1633.y);
        let x_1636 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec28;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
        u_xlat5.x = x_1645;
        let x_1648 : f32 = u_xlat6.w;
        let x_1650 : f32 = u_xlat5.x;
        let x_1652 : f32 = u_xlat73;
        u_xlat72 = ((x_1648 * x_1650) + x_1652);
      }
    }
  } else {
    let x_1656 : vec4<f32> = u_xlat3;
    let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
    let x_1659 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
    let x_1666 : vec3<f32> = txVec29;
    let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
    u_xlat72 = x_1668;
  }
  let x_1670 : f32 = x_133.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1670) + 1.0f);
  let x_1674 : f32 = u_xlat72;
  let x_1676 : f32 = x_133.x_MainLightShadowParams.x;
  let x_1679 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1674 * x_1676) + x_1679);
  let x_1684 : f32 = u_xlat3.z;
  u_xlatb26 = (0.0f >= x_1684);
  let x_1690 : f32 = u_xlat3.z;
  u_xlatb49.x = (x_1690 >= 1.0f);
  let x_1694 : bool = u_xlatb49.x;
  let x_1695 : bool = u_xlatb26;
  u_xlatb26 = (x_1694 | x_1695);
  let x_1697 : bool = u_xlatb26;
  if (x_1697) {
    x_1699 = 1.0f;
  } else {
    let x_1704 : f32 = u_xlat3.x;
    x_1699 = x_1704;
  }
  let x_1705 : f32 = x_1699;
  u_xlat3.x = x_1705;
  let x_1708 : vec3<f32> = vs_TEXCOORD1;
  let x_1710 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1708 + -(x_1710));
  let x_1713 : vec3<f32> = u_xlat26;
  let x_1714 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1713, x_1714);
  let x_1719 : f32 = u_xlat26.x;
  let x_1721 : f32 = x_133.x_MainLightShadowParams.z;
  let x_1724 : f32 = x_133.x_MainLightShadowParams.w;
  u_xlat49.x = ((x_1719 * x_1721) + x_1724);
  let x_1728 : f32 = u_xlat49.x;
  u_xlat49.x = clamp(x_1728, 0.0f, 1.0f);
  let x_1732 : f32 = u_xlat3.x;
  u_xlat72 = (-(x_1732) + 1.0f);
  let x_1736 : f32 = u_xlat49.x;
  let x_1737 : f32 = u_xlat72;
  let x_1740 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1736 * x_1737) + x_1740);
  let x_1750 : f32 = x_1748.x_MainLightCookieTextureFormat;
  u_xlatb49.x = !((x_1750 == -1.0f));
  let x_1754 : bool = u_xlatb49.x;
  if (x_1754) {
    let x_1757 : vec3<f32> = vs_TEXCOORD1;
    let x_1760 : vec4<f32> = x_1748.x_MainLightWorldToLight[1i];
    u_xlat49 = (vec2<f32>(x_1757.y, x_1757.y) * vec2<f32>(x_1760.x, x_1760.y));
    let x_1764 : vec4<f32> = x_1748.x_MainLightWorldToLight[0i];
    let x_1766 : vec3<f32> = vs_TEXCOORD1;
    let x_1769 : vec2<f32> = u_xlat49;
    u_xlat49 = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1766.x, x_1766.x)) + x_1769);
    let x_1772 : vec4<f32> = x_1748.x_MainLightWorldToLight[2i];
    let x_1774 : vec3<f32> = vs_TEXCOORD1;
    let x_1777 : vec2<f32> = u_xlat49;
    u_xlat49 = ((vec2<f32>(x_1772.x, x_1772.y) * vec2<f32>(x_1774.z, x_1774.z)) + x_1777);
    let x_1779 : vec2<f32> = u_xlat49;
    let x_1781 : vec4<f32> = x_1748.x_MainLightWorldToLight[3i];
    u_xlat49 = (x_1779 + vec2<f32>(x_1781.x, x_1781.y));
    let x_1784 : vec2<f32> = u_xlat49;
    u_xlat49 = ((x_1784 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1792 : vec2<f32> = u_xlat49;
    let x_1794 : f32 = x_28.x_GlobalMipBias.x;
    let x_1795 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1792, x_1794);
    u_xlat5 = x_1795;
    let x_1797 : f32 = x_1748.x_MainLightCookieTextureFormat;
    let x_1799 : f32 = x_1748.x_MainLightCookieTextureFormat;
    let x_1801 : f32 = x_1748.x_MainLightCookieTextureFormat;
    let x_1803 : f32 = x_1748.x_MainLightCookieTextureFormat;
    let x_1804 : vec4<f32> = vec4<f32>(x_1797, x_1799, x_1801, x_1803);
    let x_1811 : vec4<bool> = (vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1804.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb49 = vec2<bool>(x_1811.x, x_1811.y);
    let x_1814 : bool = u_xlatb49.y;
    if (x_1814) {
      let x_1819 : f32 = u_xlat5.w;
      x_1815 = x_1819;
    } else {
      let x_1822 : f32 = u_xlat5.x;
      x_1815 = x_1822;
    }
    let x_1823 : f32 = x_1815;
    u_xlat72 = x_1823;
    let x_1825 : bool = u_xlatb49.x;
    if (x_1825) {
      let x_1829 : vec4<f32> = u_xlat5;
      x_1826 = vec3<f32>(x_1829.x, x_1829.y, x_1829.z);
    } else {
      let x_1832 : f32 = u_xlat72;
      x_1826 = vec3<f32>(x_1832, x_1832, x_1832);
    }
    let x_1834 : vec3<f32> = x_1826;
    let x_1835 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1841 : vec4<f32> = u_xlat5;
  let x_1844 : vec4<f32> = x_28.x_MainLightColor;
  let x_1846 : vec3<f32> = (vec3<f32>(x_1841.x, x_1841.y, x_1841.z) * vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
  let x_1847 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
  let x_1850 : f32 = u_xlat3.x;
  let x_1856 : f32 = x_1854.unity_LightData.z;
  u_xlat3.x = (x_1850 * x_1856);
  let x_1859 : vec4<f32> = u_xlat3;
  let x_1861 : vec4<f32> = u_xlat5;
  let x_1863 : vec3<f32> = (vec3<f32>(x_1859.x, x_1859.x, x_1859.x) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1863.x, x_1864.y, x_1863.y, x_1863.z);
  let x_1866 : vec3<f32> = u_xlat2;
  let x_1868 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat73 = dot(x_1866, vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1871, 0.0f, 1.0f);
  let x_1873 : vec4<f32> = u_xlat3;
  let x_1875 : f32 = u_xlat73;
  let x_1877 : vec3<f32> = (vec3<f32>(x_1873.x, x_1873.z, x_1873.w) * vec3<f32>(x_1875, x_1875, x_1875));
  let x_1878 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
  let x_1881 : f32 = u_xlat0.x;
  u_xlat73 = ((x_1881 * 10.0f) + 1.0f);
  let x_1885 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1885);
  let x_1887 : vec3<f32> = u_xlat1;
  let x_1888 : f32 = u_xlat70;
  let x_1892 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1894 : vec3<f32> = ((x_1887 * vec3<f32>(x_1888, x_1888, x_1888)) + vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
  let x_1895 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
  let x_1898 : vec4<f32> = u_xlat6;
  let x_1900 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1898.x, x_1898.y, x_1898.z), vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : f32 = u_xlat74;
  u_xlat74 = max(x_1903, 1.17549435e-38f);
  let x_1906 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1906);
  let x_1908 : f32 = u_xlat74;
  let x_1910 : vec4<f32> = u_xlat6;
  let x_1912 : vec3<f32> = (vec3<f32>(x_1908, x_1908, x_1908) * vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
  let x_1913 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
  let x_1915 : vec3<f32> = u_xlat2;
  let x_1916 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(x_1915, vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1919, 0.0f, 1.0f);
  let x_1921 : f32 = u_xlat74;
  u_xlat74 = log2(x_1921);
  let x_1923 : f32 = u_xlat73;
  let x_1924 : f32 = u_xlat74;
  u_xlat74 = (x_1923 * x_1924);
  let x_1926 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1926);
  let x_1928 : f32 = u_xlat74;
  let x_1931 : vec4<f32> = x_41.x_SpecColor;
  let x_1933 : vec3<f32> = (vec3<f32>(x_1928, x_1928, x_1928) * vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
  let x_1936 : vec4<f32> = u_xlat3;
  let x_1938 : vec4<f32> = u_xlat6;
  let x_1940 : vec3<f32> = (vec3<f32>(x_1936.x, x_1936.z, x_1936.w) * vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
  let x_1941 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1940.x, x_1941.y, x_1940.y, x_1940.z);
  let x_1943 : vec4<f32> = u_xlat5;
  let x_1945 : vec4<f32> = u_xlat0;
  let x_1948 : vec4<f32> = u_xlat3;
  let x_1950 : vec3<f32> = ((vec3<f32>(x_1943.x, x_1943.y, x_1943.z) * vec3<f32>(x_1945.y, x_1945.z, x_1945.w)) + vec3<f32>(x_1948.x, x_1948.z, x_1948.w));
  let x_1951 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1950.x, x_1951.y, x_1950.y, x_1950.z);
  let x_1954 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1956 : f32 = x_1854.unity_LightData.y;
  u_xlat5.x = min(x_1954, x_1956);
  let x_1961 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1961));
  let x_1965 : f32 = u_xlat26.x;
  let x_1968 : f32 = x_133.x_AdditionalShadowFadeParams.x;
  let x_1971 : f32 = x_133.x_AdditionalShadowFadeParams.y;
  u_xlat26.x = ((x_1965 * x_1968) + x_1971);
  let x_1975 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1975, 0.0f, 1.0f);
  let x_1980 : f32 = x_1748.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1982 : f32 = x_1748.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1984 : f32 = x_1748.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1986 : f32 = x_1748.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1987 : vec4<f32> = vec4<f32>(x_1980, x_1982, x_1984, x_1986);
  let x_1994 : vec4<bool> = (vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1987.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_1994.x, x_1994.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2006 : u32 = u_xlatu_loop_1;
    let x_2007 : u32 = u_xlatu5;
    if ((x_2006 < x_2007)) {
    } else {
      break;
    }
    let x_2010 : u32 = u_xlatu_loop_1;
    u_xlatu75 = (x_2010 >> 2u);
    let x_2013 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_2013 & 3u));
    let x_2017 : u32 = u_xlatu75;
    let x_2020 : vec4<f32> = x_1854.unity_LightIndices[bitcast<i32>(x_2017)];
    let x_2030 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2035 : vec4<u32> = indexable[x_2030];
    u_xlat75 = dot(x_2020, bitcast<vec4<f32>>(x_2035));
    let x_2039 : f32 = u_xlat75;
    u_xlati75 = i32(x_2039);
    let x_2041 : vec3<f32> = vs_TEXCOORD1;
    let x_2052 : i32 = u_xlati75;
    let x_2054 : vec4<f32> = x_2051.x_AdditionalLightsPosition[x_2052];
    let x_2057 : i32 = u_xlati75;
    let x_2059 : vec4<f32> = x_2051.x_AdditionalLightsPosition[x_2057];
    let x_2061 : vec3<f32> = ((-(x_2041) * vec3<f32>(x_2054.w, x_2054.w, x_2054.w)) + vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
    let x_2062 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
    let x_2065 : vec4<f32> = u_xlat7;
    let x_2067 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
    let x_2070 : f32 = u_xlat76;
    u_xlat76 = max(x_2070, 0.00006103515625f);
    let x_2072 : f32 = u_xlat76;
    u_xlat8.x = inverseSqrt(x_2072);
    let x_2075 : vec4<f32> = u_xlat7;
    let x_2077 : vec4<f32> = u_xlat8;
    let x_2079 : vec3<f32> = (vec3<f32>(x_2075.x, x_2075.y, x_2075.z) * vec3<f32>(x_2077.x, x_2077.x, x_2077.x));
    let x_2080 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
    let x_2082 : f32 = u_xlat76;
    u_xlat8.x = (1.0f / x_2082);
    let x_2085 : f32 = u_xlat76;
    let x_2086 : i32 = u_xlati75;
    let x_2088 : f32 = x_2051.x_AdditionalLightsAttenuation[x_2086].x;
    u_xlat76 = (x_2085 * x_2088);
    let x_2090 : f32 = u_xlat76;
    let x_2092 : f32 = u_xlat76;
    u_xlat76 = ((-(x_2090) * x_2092) + 1.0f);
    let x_2095 : f32 = u_xlat76;
    u_xlat76 = max(x_2095, 0.0f);
    let x_2097 : f32 = u_xlat76;
    let x_2098 : f32 = u_xlat76;
    u_xlat76 = (x_2097 * x_2098);
    let x_2100 : f32 = u_xlat76;
    let x_2102 : f32 = u_xlat8.x;
    u_xlat76 = (x_2100 * x_2102);
    let x_2104 : i32 = u_xlati75;
    let x_2106 : vec4<f32> = x_2051.x_AdditionalLightsSpotDir[x_2104];
    let x_2108 : vec4<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2113 : f32 = u_xlat8.x;
    let x_2114 : i32 = u_xlati75;
    let x_2116 : f32 = x_2051.x_AdditionalLightsAttenuation[x_2114].z;
    let x_2118 : i32 = u_xlati75;
    let x_2120 : f32 = x_2051.x_AdditionalLightsAttenuation[x_2118].w;
    u_xlat8.x = ((x_2113 * x_2116) + x_2120);
    let x_2124 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2124, 0.0f, 1.0f);
    let x_2128 : f32 = u_xlat8.x;
    let x_2130 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2128 * x_2130);
    let x_2133 : f32 = u_xlat76;
    let x_2135 : f32 = u_xlat8.x;
    u_xlat76 = (x_2133 * x_2135);
    let x_2139 : i32 = u_xlati75;
    let x_2141 : f32 = x_133.x_AdditionalShadowParams[x_2139].w;
    u_xlati8 = i32(x_2141);
    let x_2146 : i32 = u_xlati8;
    u_xlatb31.x = (x_2146 >= 0i);
    let x_2150 : bool = u_xlatb31.x;
    if (x_2150) {
      let x_2154 : i32 = u_xlati75;
      let x_2156 : f32 = x_133.x_AdditionalShadowParams[x_2154].z;
      u_xlatb31.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2156, x_2156, x_2156, x_2156))));
      let x_2162 : bool = u_xlatb31.x;
      if (x_2162) {
        let x_2165 : vec4<f32> = u_xlat7;
        let x_2168 : vec4<f32> = u_xlat7;
        let x_2171 : vec4<bool> = (abs(vec4<f32>(x_2165.z, x_2165.z, x_2165.y, x_2165.y)) >= abs(vec4<f32>(x_2168.x, x_2168.y, x_2168.x, x_2168.x)));
        u_xlatb31 = vec3<bool>(x_2171.x, x_2171.y, x_2171.z);
        let x_2174 : bool = u_xlatb31.y;
        let x_2176 : bool = u_xlatb31.x;
        u_xlatb31.x = (x_2174 & x_2176);
        let x_2180 : vec4<f32> = u_xlat7;
        let x_2183 : vec4<bool> = (-(vec4<f32>(x_2180.z, x_2180.y, x_2180.x, x_2180.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2183.x, x_2183.y, x_2183.z);
        let x_2186 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2186);
        let x_2191 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2191);
        let x_2195 : bool = u_xlatb9.z;
        u_xlat54.x = select(0.0f, 1.0f, x_2195);
        let x_2199 : bool = u_xlatb31.z;
        if (x_2199) {
          let x_2204 : f32 = u_xlat9.y;
          x_2200 = x_2204;
        } else {
          let x_2207 : f32 = u_xlat54.x;
          x_2200 = x_2207;
        }
        let x_2208 : f32 = x_2200;
        u_xlat54.x = x_2208;
        let x_2212 : bool = u_xlatb31.x;
        if (x_2212) {
          let x_2217 : f32 = u_xlat9.x;
          x_2213 = x_2217;
        } else {
          let x_2220 : f32 = u_xlat54.x;
          x_2213 = x_2220;
        }
        let x_2221 : f32 = x_2213;
        u_xlat31.x = x_2221;
        let x_2223 : i32 = u_xlati75;
        let x_2225 : f32 = x_133.x_AdditionalShadowParams[x_2223].w;
        u_xlat54.x = trunc(x_2225);
        let x_2229 : f32 = u_xlat31.x;
        let x_2231 : f32 = u_xlat54.x;
        u_xlat31.x = (x_2229 + x_2231);
        let x_2235 : f32 = u_xlat31.x;
        u_xlati8 = i32(x_2235);
      }
      let x_2237 : i32 = u_xlati8;
      u_xlati8 = (x_2237 << bitcast<u32>(2i));
      let x_2239 : vec3<f32> = vs_TEXCOORD1;
      let x_2242 : i32 = u_xlati8;
      let x_2245 : i32 = u_xlati8;
      let x_2249 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_2242 + 1i) / 4i)][((x_2245 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2239.y, x_2239.y, x_2239.y, x_2239.y) * x_2249);
      let x_2251 : i32 = u_xlati8;
      let x_2253 : i32 = u_xlati8;
      let x_2256 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[(x_2251 / 4i)][(x_2253 % 4i)];
      let x_2257 : vec3<f32> = vs_TEXCOORD1;
      let x_2260 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2256 * vec4<f32>(x_2257.x, x_2257.x, x_2257.x, x_2257.x)) + x_2260);
      let x_2262 : i32 = u_xlati8;
      let x_2265 : i32 = u_xlati8;
      let x_2269 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_2262 + 2i) / 4i)][((x_2265 + 2i) % 4i)];
      let x_2270 : vec3<f32> = vs_TEXCOORD1;
      let x_2273 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2269 * vec4<f32>(x_2270.z, x_2270.z, x_2270.z, x_2270.z)) + x_2273);
      let x_2275 : vec4<f32> = u_xlat9;
      let x_2276 : i32 = u_xlati8;
      let x_2279 : i32 = u_xlati8;
      let x_2283 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_2276 + 3i) / 4i)][((x_2279 + 3i) % 4i)];
      u_xlat8 = (x_2275 + x_2283);
      let x_2285 : vec4<f32> = u_xlat8;
      let x_2287 : vec4<f32> = u_xlat8;
      let x_2289 : vec3<f32> = (vec3<f32>(x_2285.x, x_2285.y, x_2285.z) / vec3<f32>(x_2287.w, x_2287.w, x_2287.w));
      let x_2290 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
      let x_2293 : i32 = u_xlati75;
      let x_2295 : f32 = x_133.x_AdditionalShadowParams[x_2293].y;
      u_xlatb77 = (0.0f < x_2295);
      let x_2297 : bool = u_xlatb77;
      if (x_2297) {
        let x_2300 : i32 = u_xlati75;
        let x_2302 : f32 = x_133.x_AdditionalShadowParams[x_2300].y;
        u_xlatb77 = (1.0f == x_2302);
        let x_2304 : bool = u_xlatb77;
        if (x_2304) {
          let x_2307 : vec4<f32> = u_xlat8;
          let x_2311 : vec4<f32> = x_133.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2307.x, x_2307.y, x_2307.x, x_2307.y) + x_2311);
          let x_2314 : vec4<f32> = u_xlat9;
          let x_2315 : vec2<f32> = vec2<f32>(x_2314.x, x_2314.y);
          let x_2317 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2315.x, x_2315.y, x_2317);
          let x_2325 : vec3<f32> = txVec30;
          let x_2327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2325.xy, x_2325.z);
          u_xlat10.x = x_2327;
          let x_2330 : vec4<f32> = u_xlat9;
          let x_2331 : vec2<f32> = vec2<f32>(x_2330.z, x_2330.w);
          let x_2333 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2331.x, x_2331.y, x_2333);
          let x_2340 : vec3<f32> = txVec31;
          let x_2342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2340.xy, x_2340.z);
          u_xlat10.y = x_2342;
          let x_2344 : vec4<f32> = u_xlat8;
          let x_2348 : vec4<f32> = x_133.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2344.x, x_2344.y, x_2344.x, x_2344.y) + x_2348);
          let x_2351 : vec4<f32> = u_xlat9;
          let x_2352 : vec2<f32> = vec2<f32>(x_2351.x, x_2351.y);
          let x_2354 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
          let x_2361 : vec3<f32> = txVec32;
          let x_2363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
          u_xlat10.z = x_2363;
          let x_2366 : vec4<f32> = u_xlat9;
          let x_2367 : vec2<f32> = vec2<f32>(x_2366.z, x_2366.w);
          let x_2369 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2367.x, x_2367.y, x_2369);
          let x_2376 : vec3<f32> = txVec33;
          let x_2378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2376.xy, x_2376.z);
          u_xlat10.w = x_2378;
          let x_2381 : vec4<f32> = u_xlat10;
          u_xlat77 = dot(x_2381, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2384 : i32 = u_xlati75;
          let x_2386 : f32 = x_133.x_AdditionalShadowParams[x_2384].y;
          u_xlatb9.x = (2.0f == x_2386);
          let x_2390 : bool = u_xlatb9.x;
          if (x_2390) {
            let x_2393 : vec4<f32> = u_xlat8;
            let x_2397 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2400 : vec2<f32> = ((vec2<f32>(x_2393.x, x_2393.y) * vec2<f32>(x_2397.z, x_2397.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2401 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2400.x, x_2400.y, x_2401.z, x_2401.w);
            let x_2403 : vec4<f32> = u_xlat9;
            let x_2405 : vec2<f32> = floor(vec2<f32>(x_2403.x, x_2403.y));
            let x_2406 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2405.x, x_2405.y, x_2406.z, x_2406.w);
            let x_2409 : vec4<f32> = u_xlat8;
            let x_2412 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2415 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2409.x, x_2409.y) * vec2<f32>(x_2412.z, x_2412.w)) + -(vec2<f32>(x_2415.x, x_2415.y)));
            let x_2419 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2419.x, x_2419.x, x_2419.y, x_2419.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2422 : vec4<f32> = u_xlat10;
            let x_2424 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2422.x, x_2422.x, x_2422.z, x_2422.z) * vec4<f32>(x_2424.x, x_2424.x, x_2424.z, x_2424.z));
            let x_2427 : vec4<f32> = u_xlat11;
            let x_2429 : vec2<f32> = (vec2<f32>(x_2427.y, x_2427.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2430 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2429.x, x_2430.y, x_2429.y, x_2430.w);
            let x_2432 : vec4<f32> = u_xlat11;
            let x_2435 : vec2<f32> = u_xlat55;
            let x_2437 : vec2<f32> = ((vec2<f32>(x_2432.x, x_2432.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2435));
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
            let x_2441 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2441) + vec2<f32>(1.0f, 1.0f));
            let x_2444 : vec2<f32> = u_xlat55;
            let x_2445 : vec2<f32> = min(x_2444, vec2<f32>(0.0f, 0.0f));
            let x_2446 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec4<f32> = u_xlat12;
            let x_2451 : vec4<f32> = u_xlat12;
            let x_2454 : vec2<f32> = u_xlat57;
            let x_2455 : vec2<f32> = ((-(vec2<f32>(x_2448.x, x_2448.y)) * vec2<f32>(x_2451.x, x_2451.y)) + x_2454);
            let x_2456 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2455.x, x_2455.y, x_2456.z, x_2456.w);
            let x_2458 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2458, vec2<f32>(0.0f, 0.0f));
            let x_2460 : vec2<f32> = u_xlat55;
            let x_2462 : vec2<f32> = u_xlat55;
            let x_2464 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2460) * x_2462) + vec2<f32>(x_2464.y, x_2464.w));
            let x_2467 : vec4<f32> = u_xlat12;
            let x_2469 : vec2<f32> = (vec2<f32>(x_2467.x, x_2467.y) + vec2<f32>(1.0f, 1.0f));
            let x_2470 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2472 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2472 + vec2<f32>(1.0f, 1.0f));
            let x_2474 : vec4<f32> = u_xlat11;
            let x_2476 : vec2<f32> = (vec2<f32>(x_2474.x, x_2474.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2477 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
            let x_2479 : vec2<f32> = u_xlat57;
            let x_2480 : vec2<f32> = (x_2479 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2481 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2480.x, x_2480.y, x_2481.z, x_2481.w);
            let x_2483 : vec4<f32> = u_xlat12;
            let x_2485 : vec2<f32> = (vec2<f32>(x_2483.x, x_2483.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2486 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
            let x_2488 : vec2<f32> = u_xlat55;
            let x_2489 : vec2<f32> = (x_2488 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2490 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
            let x_2492 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2492.y, x_2492.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2496 : f32 = u_xlat12.x;
            u_xlat13.z = x_2496;
            let x_2499 : f32 = u_xlat55.x;
            u_xlat13.w = x_2499;
            let x_2502 : f32 = u_xlat14.x;
            u_xlat11.z = x_2502;
            let x_2505 : f32 = u_xlat10.x;
            u_xlat11.w = x_2505;
            let x_2507 : vec4<f32> = u_xlat11;
            let x_2509 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2507.z, x_2507.w, x_2507.x, x_2507.z) + vec4<f32>(x_2509.z, x_2509.w, x_2509.x, x_2509.z));
            let x_2513 : f32 = u_xlat13.y;
            u_xlat12.z = x_2513;
            let x_2516 : f32 = u_xlat55.y;
            u_xlat12.w = x_2516;
            let x_2519 : f32 = u_xlat11.y;
            u_xlat14.z = x_2519;
            let x_2522 : f32 = u_xlat10.z;
            u_xlat14.w = x_2522;
            let x_2524 : vec4<f32> = u_xlat12;
            let x_2526 : vec4<f32> = u_xlat14;
            let x_2528 : vec3<f32> = (vec3<f32>(x_2524.z, x_2524.y, x_2524.w) + vec3<f32>(x_2526.z, x_2526.y, x_2526.w));
            let x_2529 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat11;
            let x_2533 : vec4<f32> = u_xlat15;
            let x_2535 : vec3<f32> = (vec3<f32>(x_2531.x, x_2531.z, x_2531.w) / vec3<f32>(x_2533.z, x_2533.w, x_2533.y));
            let x_2536 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat11;
            let x_2540 : vec3<f32> = (vec3<f32>(x_2538.x, x_2538.y, x_2538.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2541 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat14;
            let x_2545 : vec4<f32> = u_xlat10;
            let x_2547 : vec3<f32> = (vec3<f32>(x_2543.z, x_2543.y, x_2543.w) / vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
            let x_2548 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
            let x_2550 : vec4<f32> = u_xlat12;
            let x_2552 : vec3<f32> = (vec3<f32>(x_2550.x, x_2550.y, x_2550.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2553 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat11;
            let x_2558 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2560 : vec3<f32> = (vec3<f32>(x_2555.y, x_2555.x, x_2555.z) * vec3<f32>(x_2558.x, x_2558.x, x_2558.x));
            let x_2561 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
            let x_2563 : vec4<f32> = u_xlat12;
            let x_2566 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2568 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.y, x_2563.z) * vec3<f32>(x_2566.y, x_2566.y, x_2566.y));
            let x_2569 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
            let x_2572 : f32 = u_xlat12.x;
            u_xlat11.w = x_2572;
            let x_2574 : vec4<f32> = u_xlat9;
            let x_2577 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2580 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2574.x, x_2574.y, x_2574.x, x_2574.y) * vec4<f32>(x_2577.x, x_2577.y, x_2577.x, x_2577.y)) + vec4<f32>(x_2580.y, x_2580.w, x_2580.x, x_2580.w));
            let x_2583 : vec4<f32> = u_xlat9;
            let x_2586 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2589 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2583.x, x_2583.y) * vec2<f32>(x_2586.x, x_2586.y)) + vec2<f32>(x_2589.z, x_2589.w));
            let x_2593 : f32 = u_xlat11.y;
            u_xlat12.w = x_2593;
            let x_2595 : vec4<f32> = u_xlat12;
            let x_2596 : vec2<f32> = vec2<f32>(x_2595.y, x_2595.z);
            let x_2597 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2597.x, x_2596.x, x_2597.z, x_2596.y);
            let x_2599 : vec4<f32> = u_xlat9;
            let x_2602 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2605 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.y) * vec4<f32>(x_2602.x, x_2602.y, x_2602.x, x_2602.y)) + vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2605.y));
            let x_2608 : vec4<f32> = u_xlat9;
            let x_2611 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2614 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2608.x, x_2608.y, x_2608.x, x_2608.y) * vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y)) + vec4<f32>(x_2614.w, x_2614.y, x_2614.w, x_2614.z));
            let x_2617 : vec4<f32> = u_xlat9;
            let x_2620 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2623 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2617.x, x_2617.y, x_2617.x, x_2617.y) * vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.y)) + vec4<f32>(x_2623.x, x_2623.w, x_2623.z, x_2623.w));
            let x_2626 : vec4<f32> = u_xlat10;
            let x_2628 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2626.x, x_2626.x, x_2626.x, x_2626.y) * vec4<f32>(x_2628.z, x_2628.w, x_2628.y, x_2628.z));
            let x_2631 : vec4<f32> = u_xlat10;
            let x_2633 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2631.y, x_2631.y, x_2631.z, x_2631.z) * x_2633);
            let x_2636 : f32 = u_xlat10.z;
            let x_2638 : f32 = u_xlat15.y;
            u_xlat9.x = (x_2636 * x_2638);
            let x_2642 : vec4<f32> = u_xlat13;
            let x_2643 : vec2<f32> = vec2<f32>(x_2642.x, x_2642.y);
            let x_2645 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2643.x, x_2643.y, x_2645);
            let x_2653 : vec3<f32> = txVec34;
            let x_2655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2653.xy, x_2653.z);
            u_xlat32 = x_2655;
            let x_2657 : vec4<f32> = u_xlat13;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.z, x_2657.w);
            let x_2660 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
            let x_2667 : vec3<f32> = txVec35;
            let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
            u_xlat10.x = x_2669;
            let x_2672 : f32 = u_xlat10.x;
            let x_2674 : f32 = u_xlat16.y;
            u_xlat10.x = (x_2672 * x_2674);
            let x_2678 : f32 = u_xlat16.x;
            let x_2679 : f32 = u_xlat32;
            let x_2682 : f32 = u_xlat10.x;
            u_xlat32 = ((x_2678 * x_2679) + x_2682);
            let x_2685 : vec2<f32> = u_xlat55;
            let x_2687 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2685.x, x_2685.y, x_2687);
            let x_2694 : vec3<f32> = txVec36;
            let x_2696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2694.xy, x_2694.z);
            u_xlat55.x = x_2696;
            let x_2699 : f32 = u_xlat16.z;
            let x_2701 : f32 = u_xlat55.x;
            let x_2703 : f32 = u_xlat32;
            u_xlat32 = ((x_2699 * x_2701) + x_2703);
            let x_2706 : vec4<f32> = u_xlat12;
            let x_2707 : vec2<f32> = vec2<f32>(x_2706.x, x_2706.y);
            let x_2709 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2707.x, x_2707.y, x_2709);
            let x_2716 : vec3<f32> = txVec37;
            let x_2718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2716.xy, x_2716.z);
            u_xlat55.x = x_2718;
            let x_2721 : f32 = u_xlat16.w;
            let x_2723 : f32 = u_xlat55.x;
            let x_2725 : f32 = u_xlat32;
            u_xlat32 = ((x_2721 * x_2723) + x_2725);
            let x_2728 : vec4<f32> = u_xlat14;
            let x_2729 : vec2<f32> = vec2<f32>(x_2728.x, x_2728.y);
            let x_2731 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2738 : vec3<f32> = txVec38;
            let x_2740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2738.xy, x_2738.z);
            u_xlat55.x = x_2740;
            let x_2743 : f32 = u_xlat17.x;
            let x_2745 : f32 = u_xlat55.x;
            let x_2747 : f32 = u_xlat32;
            u_xlat32 = ((x_2743 * x_2745) + x_2747);
            let x_2750 : vec4<f32> = u_xlat14;
            let x_2751 : vec2<f32> = vec2<f32>(x_2750.z, x_2750.w);
            let x_2753 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
            let x_2760 : vec3<f32> = txVec39;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat55.x = x_2762;
            let x_2765 : f32 = u_xlat17.y;
            let x_2767 : f32 = u_xlat55.x;
            let x_2769 : f32 = u_xlat32;
            u_xlat32 = ((x_2765 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat12;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.z, x_2772.w);
            let x_2775 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec40;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat55.x = x_2784;
            let x_2787 : f32 = u_xlat17.z;
            let x_2789 : f32 = u_xlat55.x;
            let x_2791 : f32 = u_xlat32;
            u_xlat32 = ((x_2787 * x_2789) + x_2791);
            let x_2794 : vec4<f32> = u_xlat11;
            let x_2795 : vec2<f32> = vec2<f32>(x_2794.x, x_2794.y);
            let x_2797 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
            let x_2804 : vec3<f32> = txVec41;
            let x_2806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2804.xy, x_2804.z);
            u_xlat55.x = x_2806;
            let x_2809 : f32 = u_xlat17.w;
            let x_2811 : f32 = u_xlat55.x;
            let x_2813 : f32 = u_xlat32;
            u_xlat32 = ((x_2809 * x_2811) + x_2813);
            let x_2816 : vec4<f32> = u_xlat11;
            let x_2817 : vec2<f32> = vec2<f32>(x_2816.z, x_2816.w);
            let x_2819 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2817.x, x_2817.y, x_2819);
            let x_2826 : vec3<f32> = txVec42;
            let x_2828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
            u_xlat55.x = x_2828;
            let x_2831 : f32 = u_xlat9.x;
            let x_2833 : f32 = u_xlat55.x;
            let x_2835 : f32 = u_xlat32;
            u_xlat77 = ((x_2831 * x_2833) + x_2835);
          } else {
            let x_2838 : vec4<f32> = u_xlat8;
            let x_2841 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2844 : vec2<f32> = ((vec2<f32>(x_2838.x, x_2838.y) * vec2<f32>(x_2841.z, x_2841.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2845 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2844.x, x_2844.y, x_2845.z, x_2845.w);
            let x_2847 : vec4<f32> = u_xlat9;
            let x_2849 : vec2<f32> = floor(vec2<f32>(x_2847.x, x_2847.y));
            let x_2850 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2849.x, x_2849.y, x_2850.z, x_2850.w);
            let x_2852 : vec4<f32> = u_xlat8;
            let x_2855 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2858 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2852.x, x_2852.y) * vec2<f32>(x_2855.z, x_2855.w)) + -(vec2<f32>(x_2858.x, x_2858.y)));
            let x_2862 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2862.x, x_2862.x, x_2862.y, x_2862.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2865 : vec4<f32> = u_xlat10;
            let x_2867 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2865.x, x_2865.x, x_2865.z, x_2865.z) * vec4<f32>(x_2867.x, x_2867.x, x_2867.z, x_2867.z));
            let x_2870 : vec4<f32> = u_xlat11;
            let x_2872 : vec2<f32> = (vec2<f32>(x_2870.y, x_2870.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2873 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2873.x, x_2872.x, x_2873.z, x_2872.y);
            let x_2875 : vec4<f32> = u_xlat11;
            let x_2878 : vec2<f32> = u_xlat55;
            let x_2880 : vec2<f32> = ((vec2<f32>(x_2875.x, x_2875.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2878));
            let x_2881 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2880.x, x_2881.y, x_2880.y, x_2881.w);
            let x_2883 : vec2<f32> = u_xlat55;
            let x_2885 : vec2<f32> = (-(x_2883) + vec2<f32>(1.0f, 1.0f));
            let x_2886 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2885.x, x_2885.y, x_2886.z, x_2886.w);
            let x_2888 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2888, vec2<f32>(0.0f, 0.0f));
            let x_2890 : vec2<f32> = u_xlat57;
            let x_2892 : vec2<f32> = u_xlat57;
            let x_2894 : vec4<f32> = u_xlat11;
            let x_2896 : vec2<f32> = ((-(x_2890) * x_2892) + vec2<f32>(x_2894.x, x_2894.y));
            let x_2897 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2896.x, x_2896.y, x_2897.z, x_2897.w);
            let x_2899 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2899, vec2<f32>(0.0f, 0.0f));
            let x_2902 : vec2<f32> = u_xlat57;
            let x_2904 : vec2<f32> = u_xlat57;
            let x_2906 : vec4<f32> = u_xlat10;
            let x_2908 : vec2<f32> = ((-(x_2902) * x_2904) + vec2<f32>(x_2906.y, x_2906.w));
            let x_2909 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2908.x, x_2909.y, x_2908.y);
            let x_2911 : vec4<f32> = u_xlat11;
            let x_2913 : vec2<f32> = (vec2<f32>(x_2911.x, x_2911.y) + vec2<f32>(2.0f, 2.0f));
            let x_2914 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2913.x, x_2913.y, x_2914.z, x_2914.w);
            let x_2916 : vec3<f32> = u_xlat33;
            let x_2918 : vec2<f32> = (vec2<f32>(x_2916.x, x_2916.z) + vec2<f32>(2.0f, 2.0f));
            let x_2919 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2919.x, x_2918.x, x_2919.z, x_2918.y);
            let x_2922 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2922 * 0.08163200318813323975f);
            let x_2925 : vec4<f32> = u_xlat10;
            let x_2927 : vec3<f32> = (vec3<f32>(x_2925.z, x_2925.x, x_2925.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2928 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2927.x, x_2927.y, x_2927.z, x_2928.w);
            let x_2930 : vec4<f32> = u_xlat11;
            let x_2932 : vec2<f32> = (vec2<f32>(x_2930.x, x_2930.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2933 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2932.x, x_2932.y, x_2933.z, x_2933.w);
            let x_2936 : f32 = u_xlat14.y;
            u_xlat13.x = x_2936;
            let x_2938 : vec2<f32> = u_xlat55;
            let x_2941 : vec2<f32> = ((vec2<f32>(x_2938.x, x_2938.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2942 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2942.x, x_2941.x, x_2942.z, x_2941.y);
            let x_2944 : vec2<f32> = u_xlat55;
            let x_2947 : vec2<f32> = ((vec2<f32>(x_2944.x, x_2944.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2948 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2947.x, x_2948.y, x_2947.y, x_2948.w);
            let x_2951 : f32 = u_xlat10.x;
            u_xlat11.y = x_2951;
            let x_2954 : f32 = u_xlat12.y;
            u_xlat11.w = x_2954;
            let x_2956 : vec4<f32> = u_xlat11;
            let x_2957 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2956 + x_2957);
            let x_2959 : vec2<f32> = u_xlat55;
            let x_2962 : vec2<f32> = ((vec2<f32>(x_2959.y, x_2959.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2963 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2963.x, x_2962.x, x_2963.z, x_2962.y);
            let x_2965 : vec2<f32> = u_xlat55;
            let x_2968 : vec2<f32> = ((vec2<f32>(x_2965.y, x_2965.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2969 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2968.x, x_2969.y, x_2968.y, x_2969.w);
            let x_2972 : f32 = u_xlat10.y;
            u_xlat12.y = x_2972;
            let x_2974 : vec4<f32> = u_xlat12;
            let x_2975 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2974 + x_2975);
            let x_2977 : vec4<f32> = u_xlat11;
            let x_2978 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2977 / x_2978);
            let x_2980 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2980 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2982 : vec4<f32> = u_xlat12;
            let x_2983 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2982 / x_2983);
            let x_2985 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2985 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2987 : vec4<f32> = u_xlat11;
            let x_2990 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2987.w, x_2987.x, x_2987.y, x_2987.z) * vec4<f32>(x_2990.x, x_2990.x, x_2990.x, x_2990.x));
            let x_2993 : vec4<f32> = u_xlat12;
            let x_2996 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2993.x, x_2993.w, x_2993.y, x_2993.z) * vec4<f32>(x_2996.y, x_2996.y, x_2996.y, x_2996.y));
            let x_2999 : vec4<f32> = u_xlat11;
            let x_3000 : vec3<f32> = vec3<f32>(x_2999.y, x_2999.z, x_2999.w);
            let x_3001 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3000.x, x_3001.y, x_3000.y, x_3000.z);
            let x_3004 : f32 = u_xlat12.x;
            u_xlat14.y = x_3004;
            let x_3006 : vec4<f32> = u_xlat9;
            let x_3009 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3012 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y) * vec4<f32>(x_3009.x, x_3009.y, x_3009.x, x_3009.y)) + vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3012.y));
            let x_3015 : vec4<f32> = u_xlat9;
            let x_3018 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3021 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_3015.x, x_3015.y) * vec2<f32>(x_3018.x, x_3018.y)) + vec2<f32>(x_3021.w, x_3021.y));
            let x_3025 : f32 = u_xlat14.y;
            u_xlat11.y = x_3025;
            let x_3028 : f32 = u_xlat12.z;
            u_xlat14.y = x_3028;
            let x_3030 : vec4<f32> = u_xlat9;
            let x_3033 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3030.x, x_3030.y, x_3030.x, x_3030.y) * vec4<f32>(x_3033.x, x_3033.y, x_3033.x, x_3033.y)) + vec4<f32>(x_3036.x, x_3036.y, x_3036.z, x_3036.y));
            let x_3039 : vec4<f32> = u_xlat9;
            let x_3042 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat14;
            let x_3047 : vec2<f32> = ((vec2<f32>(x_3039.x, x_3039.y) * vec2<f32>(x_3042.x, x_3042.y)) + vec2<f32>(x_3045.w, x_3045.y));
            let x_3048 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3047.x, x_3047.y, x_3048.z, x_3048.w);
            let x_3051 : f32 = u_xlat14.y;
            u_xlat11.z = x_3051;
            let x_3053 : vec4<f32> = u_xlat9;
            let x_3056 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3059 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_3053.x, x_3053.y, x_3053.x, x_3053.y) * vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.y)) + vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.z));
            let x_3063 : f32 = u_xlat12.w;
            u_xlat14.y = x_3063;
            let x_3066 : vec4<f32> = u_xlat9;
            let x_3069 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3072 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_3066.x, x_3066.y, x_3066.x, x_3066.y) * vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y)) + vec4<f32>(x_3072.x, x_3072.y, x_3072.z, x_3072.y));
            let x_3076 : vec4<f32> = u_xlat9;
            let x_3079 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3082 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3076.x, x_3076.y) * vec2<f32>(x_3079.x, x_3079.y)) + vec2<f32>(x_3082.w, x_3082.y));
            let x_3086 : f32 = u_xlat14.y;
            u_xlat11.w = x_3086;
            let x_3089 : vec4<f32> = u_xlat9;
            let x_3092 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3095 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3089.x, x_3089.y) * vec2<f32>(x_3092.x, x_3092.y)) + vec2<f32>(x_3095.x, x_3095.w));
            let x_3098 : vec4<f32> = u_xlat14;
            let x_3099 : vec3<f32> = vec3<f32>(x_3098.x, x_3098.z, x_3098.w);
            let x_3100 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3099.x, x_3100.y, x_3099.y, x_3099.z);
            let x_3102 : vec4<f32> = u_xlat9;
            let x_3105 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3108 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3102.x, x_3102.y, x_3102.x, x_3102.y) * vec4<f32>(x_3105.x, x_3105.y, x_3105.x, x_3105.y)) + vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3108.y));
            let x_3112 : vec4<f32> = u_xlat9;
            let x_3115 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3112.x, x_3112.y) * vec2<f32>(x_3115.x, x_3115.y)) + vec2<f32>(x_3118.w, x_3118.y));
            let x_3122 : f32 = u_xlat11.x;
            u_xlat12.x = x_3122;
            let x_3124 : vec4<f32> = u_xlat9;
            let x_3127 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_3130 : vec4<f32> = u_xlat12;
            let x_3132 : vec2<f32> = ((vec2<f32>(x_3124.x, x_3124.y) * vec2<f32>(x_3127.x, x_3127.y)) + vec2<f32>(x_3130.x, x_3130.y));
            let x_3133 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3132.x, x_3132.y, x_3133.z, x_3133.w);
            let x_3136 : vec4<f32> = u_xlat10;
            let x_3138 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3136.x, x_3136.x, x_3136.x, x_3136.x) * x_3138);
            let x_3141 : vec4<f32> = u_xlat10;
            let x_3143 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3141.y, x_3141.y, x_3141.y, x_3141.y) * x_3143);
            let x_3146 : vec4<f32> = u_xlat10;
            let x_3148 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3146.z, x_3146.z, x_3146.z, x_3146.z) * x_3148);
            let x_3150 : vec4<f32> = u_xlat10;
            let x_3152 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3150.w, x_3150.w, x_3150.w, x_3150.w) * x_3152);
            let x_3155 : vec4<f32> = u_xlat15;
            let x_3156 : vec2<f32> = vec2<f32>(x_3155.x, x_3155.y);
            let x_3158 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3156.x, x_3156.y, x_3158);
            let x_3165 : vec3<f32> = txVec43;
            let x_3167 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3165.xy, x_3165.z);
            u_xlat11.x = x_3167;
            let x_3170 : vec4<f32> = u_xlat15;
            let x_3171 : vec2<f32> = vec2<f32>(x_3170.z, x_3170.w);
            let x_3173 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3171.x, x_3171.y, x_3173);
            let x_3181 : vec3<f32> = txVec44;
            let x_3183 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3181.xy, x_3181.z);
            u_xlat80 = x_3183;
            let x_3184 : f32 = u_xlat80;
            let x_3186 : f32 = u_xlat20.y;
            u_xlat80 = (x_3184 * x_3186);
            let x_3189 : f32 = u_xlat20.x;
            let x_3191 : f32 = u_xlat11.x;
            let x_3193 : f32 = u_xlat80;
            u_xlat11.x = ((x_3189 * x_3191) + x_3193);
            let x_3197 : vec2<f32> = u_xlat55;
            let x_3199 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3197.x, x_3197.y, x_3199);
            let x_3206 : vec3<f32> = txVec45;
            let x_3208 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3206.xy, x_3206.z);
            u_xlat55.x = x_3208;
            let x_3211 : f32 = u_xlat20.z;
            let x_3213 : f32 = u_xlat55.x;
            let x_3216 : f32 = u_xlat11.x;
            u_xlat55.x = ((x_3211 * x_3213) + x_3216);
            let x_3220 : vec4<f32> = u_xlat18;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.x, x_3220.y);
            let x_3223 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3231 : vec3<f32> = txVec46;
            let x_3233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3231.xy, x_3231.z);
            u_xlat78 = x_3233;
            let x_3235 : f32 = u_xlat20.w;
            let x_3236 : f32 = u_xlat78;
            let x_3239 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3235 * x_3236) + x_3239);
            let x_3243 : vec4<f32> = u_xlat16;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.x, x_3243.y);
            let x_3246 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec47;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat78 = x_3255;
            let x_3257 : f32 = u_xlat21.x;
            let x_3258 : f32 = u_xlat78;
            let x_3261 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3257 * x_3258) + x_3261);
            let x_3265 : vec4<f32> = u_xlat16;
            let x_3266 : vec2<f32> = vec2<f32>(x_3265.z, x_3265.w);
            let x_3268 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3266.x, x_3266.y, x_3268);
            let x_3275 : vec3<f32> = txVec48;
            let x_3277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3275.xy, x_3275.z);
            u_xlat78 = x_3277;
            let x_3279 : f32 = u_xlat21.y;
            let x_3280 : f32 = u_xlat78;
            let x_3283 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3279 * x_3280) + x_3283);
            let x_3287 : vec4<f32> = u_xlat17;
            let x_3288 : vec2<f32> = vec2<f32>(x_3287.x, x_3287.y);
            let x_3290 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3288.x, x_3288.y, x_3290);
            let x_3297 : vec3<f32> = txVec49;
            let x_3299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3297.xy, x_3297.z);
            u_xlat78 = x_3299;
            let x_3301 : f32 = u_xlat21.z;
            let x_3302 : f32 = u_xlat78;
            let x_3305 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3301 * x_3302) + x_3305);
            let x_3309 : vec4<f32> = u_xlat18;
            let x_3310 : vec2<f32> = vec2<f32>(x_3309.z, x_3309.w);
            let x_3312 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3310.x, x_3310.y, x_3312);
            let x_3319 : vec3<f32> = txVec50;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat78 = x_3321;
            let x_3323 : f32 = u_xlat21.w;
            let x_3324 : f32 = u_xlat78;
            let x_3327 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3323 * x_3324) + x_3327);
            let x_3331 : vec4<f32> = u_xlat19;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.x, x_3331.y);
            let x_3334 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec51;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat78 = x_3343;
            let x_3345 : f32 = u_xlat22.x;
            let x_3346 : f32 = u_xlat78;
            let x_3349 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3345 * x_3346) + x_3349);
            let x_3353 : vec4<f32> = u_xlat19;
            let x_3354 : vec2<f32> = vec2<f32>(x_3353.z, x_3353.w);
            let x_3356 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3354.x, x_3354.y, x_3356);
            let x_3363 : vec3<f32> = txVec52;
            let x_3365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3363.xy, x_3363.z);
            u_xlat78 = x_3365;
            let x_3367 : f32 = u_xlat22.y;
            let x_3368 : f32 = u_xlat78;
            let x_3371 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3367 * x_3368) + x_3371);
            let x_3375 : vec2<f32> = u_xlat34;
            let x_3377 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3375.x, x_3375.y, x_3377);
            let x_3384 : vec3<f32> = txVec53;
            let x_3386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3384.xy, x_3384.z);
            u_xlat78 = x_3386;
            let x_3388 : f32 = u_xlat22.z;
            let x_3389 : f32 = u_xlat78;
            let x_3392 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3388 * x_3389) + x_3392);
            let x_3396 : vec2<f32> = u_xlat63;
            let x_3398 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3396.x, x_3396.y, x_3398);
            let x_3405 : vec3<f32> = txVec54;
            let x_3407 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3405.xy, x_3405.z);
            u_xlat78 = x_3407;
            let x_3409 : f32 = u_xlat22.w;
            let x_3410 : f32 = u_xlat78;
            let x_3413 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3409 * x_3410) + x_3413);
            let x_3417 : vec4<f32> = u_xlat14;
            let x_3418 : vec2<f32> = vec2<f32>(x_3417.x, x_3417.y);
            let x_3420 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec55;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat78 = x_3429;
            let x_3431 : f32 = u_xlat10.x;
            let x_3432 : f32 = u_xlat78;
            let x_3435 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3431 * x_3432) + x_3435);
            let x_3439 : vec4<f32> = u_xlat14;
            let x_3440 : vec2<f32> = vec2<f32>(x_3439.z, x_3439.w);
            let x_3442 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3440.x, x_3440.y, x_3442);
            let x_3449 : vec3<f32> = txVec56;
            let x_3451 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3449.xy, x_3449.z);
            u_xlat78 = x_3451;
            let x_3453 : f32 = u_xlat10.y;
            let x_3454 : f32 = u_xlat78;
            let x_3457 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3453 * x_3454) + x_3457);
            let x_3461 : vec2<f32> = u_xlat58;
            let x_3463 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3461.x, x_3461.y, x_3463);
            let x_3470 : vec3<f32> = txVec57;
            let x_3472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3470.xy, x_3470.z);
            u_xlat78 = x_3472;
            let x_3474 : f32 = u_xlat10.z;
            let x_3475 : f32 = u_xlat78;
            let x_3478 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3474 * x_3475) + x_3478);
            let x_3482 : vec4<f32> = u_xlat9;
            let x_3483 : vec2<f32> = vec2<f32>(x_3482.x, x_3482.y);
            let x_3485 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3483.x, x_3483.y, x_3485);
            let x_3492 : vec3<f32> = txVec58;
            let x_3494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3492.xy, x_3492.z);
            u_xlat9.x = x_3494;
            let x_3497 : f32 = u_xlat10.w;
            let x_3499 : f32 = u_xlat9.x;
            let x_3502 : f32 = u_xlat55.x;
            u_xlat77 = ((x_3497 * x_3499) + x_3502);
          }
        }
      } else {
        let x_3506 : vec4<f32> = u_xlat8;
        let x_3507 : vec2<f32> = vec2<f32>(x_3506.x, x_3506.y);
        let x_3509 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
        let x_3516 : vec3<f32> = txVec59;
        let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
        u_xlat77 = x_3518;
      }
      let x_3519 : i32 = u_xlati75;
      let x_3521 : f32 = x_133.x_AdditionalShadowParams[x_3519].x;
      u_xlat8.x = (1.0f + -(x_3521));
      let x_3525 : f32 = u_xlat77;
      let x_3526 : i32 = u_xlati75;
      let x_3528 : f32 = x_133.x_AdditionalShadowParams[x_3526].x;
      let x_3531 : f32 = u_xlat8.x;
      u_xlat8.x = ((x_3525 * x_3528) + x_3531);
      let x_3535 : f32 = u_xlat8.z;
      u_xlatb31.x = (0.0f >= x_3535);
      let x_3540 : f32 = u_xlat8.z;
      u_xlatb54 = (x_3540 >= 1.0f);
      let x_3542 : bool = u_xlatb54;
      let x_3544 : bool = u_xlatb31.x;
      u_xlatb31.x = (x_3542 | x_3544);
      let x_3548 : bool = u_xlatb31.x;
      if (x_3548) {
        x_3549 = 1.0f;
      } else {
        let x_3554 : f32 = u_xlat8.x;
        x_3549 = x_3554;
      }
      let x_3555 : f32 = x_3549;
      u_xlat8.x = x_3555;
    } else {
      u_xlat8.x = 1.0f;
    }
    let x_3560 : f32 = u_xlat8.x;
    u_xlat31.x = (-(x_3560) + 1.0f);
    let x_3565 : f32 = u_xlat26.x;
    let x_3567 : f32 = u_xlat31.x;
    let x_3570 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_3565 * x_3567) + x_3570);
    let x_3574 : i32 = u_xlati75;
    u_xlati31 = (1i << bitcast<u32>((x_3574 & 31i)));
    let x_3578 : i32 = u_xlati31;
    let x_3581 : f32 = x_1748.x_AdditionalLightsCookieEnableBits;
    u_xlati31 = bitcast<i32>((bitcast<u32>(x_3578) & bitcast<u32>(x_3581)));
    let x_3585 : i32 = u_xlati31;
    if ((x_3585 != 0i)) {
      let x_3589 : i32 = u_xlati75;
      let x_3591 : f32 = x_1748.x_AdditionalLightsLightTypes[x_3589].el;
      u_xlati31 = i32(x_3591);
      let x_3594 : i32 = u_xlati31;
      u_xlati54 = select(1i, 0i, (x_3594 != 0i));
      let x_3598 : i32 = u_xlati75;
      u_xlati77 = (x_3598 << bitcast<u32>(2i));
      let x_3600 : i32 = u_xlati54;
      if ((x_3600 != 0i)) {
        let x_3604 : vec3<f32> = vs_TEXCOORD1;
        let x_3606 : i32 = u_xlati77;
        let x_3609 : i32 = u_xlati77;
        let x_3613 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3606 + 1i) / 4i)][((x_3609 + 1i) % 4i)];
        let x_3615 : vec3<f32> = (vec3<f32>(x_3604.y, x_3604.y, x_3604.y) * vec3<f32>(x_3613.x, x_3613.y, x_3613.w));
        let x_3616 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3615.x, x_3615.y, x_3615.z, x_3616.w);
        let x_3618 : i32 = u_xlati77;
        let x_3620 : i32 = u_xlati77;
        let x_3623 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[(x_3618 / 4i)][(x_3620 % 4i)];
        let x_3625 : vec3<f32> = vs_TEXCOORD1;
        let x_3628 : vec4<f32> = u_xlat9;
        let x_3630 : vec3<f32> = ((vec3<f32>(x_3623.x, x_3623.y, x_3623.w) * vec3<f32>(x_3625.x, x_3625.x, x_3625.x)) + vec3<f32>(x_3628.x, x_3628.y, x_3628.z));
        let x_3631 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3630.x, x_3630.y, x_3630.z, x_3631.w);
        let x_3633 : i32 = u_xlati77;
        let x_3636 : i32 = u_xlati77;
        let x_3640 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3633 + 2i) / 4i)][((x_3636 + 2i) % 4i)];
        let x_3642 : vec3<f32> = vs_TEXCOORD1;
        let x_3645 : vec4<f32> = u_xlat9;
        let x_3647 : vec3<f32> = ((vec3<f32>(x_3640.x, x_3640.y, x_3640.w) * vec3<f32>(x_3642.z, x_3642.z, x_3642.z)) + vec3<f32>(x_3645.x, x_3645.y, x_3645.z));
        let x_3648 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3647.x, x_3647.y, x_3647.z, x_3648.w);
        let x_3650 : vec4<f32> = u_xlat9;
        let x_3652 : i32 = u_xlati77;
        let x_3655 : i32 = u_xlati77;
        let x_3659 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3652 + 3i) / 4i)][((x_3655 + 3i) % 4i)];
        let x_3661 : vec3<f32> = (vec3<f32>(x_3650.x, x_3650.y, x_3650.z) + vec3<f32>(x_3659.x, x_3659.y, x_3659.w));
        let x_3662 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3661.x, x_3661.y, x_3661.z, x_3662.w);
        let x_3664 : vec4<f32> = u_xlat9;
        let x_3666 : vec4<f32> = u_xlat9;
        let x_3668 : vec2<f32> = (vec2<f32>(x_3664.x, x_3664.y) / vec2<f32>(x_3666.z, x_3666.z));
        let x_3669 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3668.x, x_3668.y, x_3669.z, x_3669.w);
        let x_3671 : vec4<f32> = u_xlat9;
        let x_3674 : vec2<f32> = ((vec2<f32>(x_3671.x, x_3671.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3675 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3674.x, x_3674.y, x_3675.z, x_3675.w);
        let x_3677 : vec4<f32> = u_xlat9;
        let x_3681 : vec2<f32> = clamp(vec2<f32>(x_3677.x, x_3677.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3682 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3681.x, x_3681.y, x_3682.z, x_3682.w);
        let x_3684 : i32 = u_xlati75;
        let x_3686 : vec4<f32> = x_1748.x_AdditionalLightsCookieAtlasUVRects[x_3684];
        let x_3688 : vec4<f32> = u_xlat9;
        let x_3691 : i32 = u_xlati75;
        let x_3693 : vec4<f32> = x_1748.x_AdditionalLightsCookieAtlasUVRects[x_3691];
        let x_3695 : vec2<f32> = ((vec2<f32>(x_3686.x, x_3686.y) * vec2<f32>(x_3688.x, x_3688.y)) + vec2<f32>(x_3693.z, x_3693.w));
        let x_3696 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3695.x, x_3695.y, x_3696.z, x_3696.w);
      } else {
        let x_3699 : i32 = u_xlati31;
        u_xlatb31.x = (x_3699 == 1i);
        let x_3703 : bool = u_xlatb31.x;
        u_xlati31 = select(0i, 1i, x_3703);
        let x_3705 : i32 = u_xlati31;
        if ((x_3705 != 0i)) {
          let x_3709 : vec3<f32> = vs_TEXCOORD1;
          let x_3711 : i32 = u_xlati77;
          let x_3714 : i32 = u_xlati77;
          let x_3718 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3711 + 1i) / 4i)][((x_3714 + 1i) % 4i)];
          let x_3720 : vec2<f32> = (vec2<f32>(x_3709.y, x_3709.y) * vec2<f32>(x_3718.x, x_3718.y));
          let x_3721 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3720.x, x_3720.y, x_3721.z);
          let x_3723 : i32 = u_xlati77;
          let x_3725 : i32 = u_xlati77;
          let x_3728 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[(x_3723 / 4i)][(x_3725 % 4i)];
          let x_3730 : vec3<f32> = vs_TEXCOORD1;
          let x_3733 : vec3<f32> = u_xlat31;
          let x_3735 : vec2<f32> = ((vec2<f32>(x_3728.x, x_3728.y) * vec2<f32>(x_3730.x, x_3730.x)) + vec2<f32>(x_3733.x, x_3733.y));
          let x_3736 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3735.x, x_3735.y, x_3736.z);
          let x_3738 : i32 = u_xlati77;
          let x_3741 : i32 = u_xlati77;
          let x_3745 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3738 + 2i) / 4i)][((x_3741 + 2i) % 4i)];
          let x_3747 : vec3<f32> = vs_TEXCOORD1;
          let x_3750 : vec3<f32> = u_xlat31;
          let x_3752 : vec2<f32> = ((vec2<f32>(x_3745.x, x_3745.y) * vec2<f32>(x_3747.z, x_3747.z)) + vec2<f32>(x_3750.x, x_3750.y));
          let x_3753 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3752.x, x_3752.y, x_3753.z);
          let x_3755 : vec3<f32> = u_xlat31;
          let x_3757 : i32 = u_xlati77;
          let x_3760 : i32 = u_xlati77;
          let x_3764 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3757 + 3i) / 4i)][((x_3760 + 3i) % 4i)];
          let x_3766 : vec2<f32> = (vec2<f32>(x_3755.x, x_3755.y) + vec2<f32>(x_3764.x, x_3764.y));
          let x_3767 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3766.x, x_3766.y, x_3767.z);
          let x_3769 : vec3<f32> = u_xlat31;
          let x_3772 : vec2<f32> = ((vec2<f32>(x_3769.x, x_3769.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3773 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3772.x, x_3772.y, x_3773.z);
          let x_3775 : vec3<f32> = u_xlat31;
          let x_3777 : vec2<f32> = fract(vec2<f32>(x_3775.x, x_3775.y));
          let x_3778 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3777.x, x_3777.y, x_3778.z);
          let x_3780 : i32 = u_xlati75;
          let x_3782 : vec4<f32> = x_1748.x_AdditionalLightsCookieAtlasUVRects[x_3780];
          let x_3784 : vec3<f32> = u_xlat31;
          let x_3787 : i32 = u_xlati75;
          let x_3789 : vec4<f32> = x_1748.x_AdditionalLightsCookieAtlasUVRects[x_3787];
          let x_3791 : vec2<f32> = ((vec2<f32>(x_3782.x, x_3782.y) * vec2<f32>(x_3784.x, x_3784.y)) + vec2<f32>(x_3789.z, x_3789.w));
          let x_3792 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3791.x, x_3791.y, x_3792.z, x_3792.w);
        } else {
          let x_3795 : vec3<f32> = vs_TEXCOORD1;
          let x_3797 : i32 = u_xlati77;
          let x_3800 : i32 = u_xlati77;
          let x_3804 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3797 + 1i) / 4i)][((x_3800 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3795.y, x_3795.y, x_3795.y, x_3795.y) * x_3804);
          let x_3806 : i32 = u_xlati77;
          let x_3808 : i32 = u_xlati77;
          let x_3811 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[(x_3806 / 4i)][(x_3808 % 4i)];
          let x_3812 : vec3<f32> = vs_TEXCOORD1;
          let x_3815 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3811 * vec4<f32>(x_3812.x, x_3812.x, x_3812.x, x_3812.x)) + x_3815);
          let x_3817 : i32 = u_xlati77;
          let x_3820 : i32 = u_xlati77;
          let x_3824 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3817 + 2i) / 4i)][((x_3820 + 2i) % 4i)];
          let x_3825 : vec3<f32> = vs_TEXCOORD1;
          let x_3828 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3824 * vec4<f32>(x_3825.z, x_3825.z, x_3825.z, x_3825.z)) + x_3828);
          let x_3830 : vec4<f32> = u_xlat10;
          let x_3831 : i32 = u_xlati77;
          let x_3834 : i32 = u_xlati77;
          let x_3838 : vec4<f32> = x_1748.x_AdditionalLightsWorldToLights[((x_3831 + 3i) / 4i)][((x_3834 + 3i) % 4i)];
          u_xlat10 = (x_3830 + x_3838);
          let x_3840 : vec4<f32> = u_xlat10;
          let x_3842 : vec4<f32> = u_xlat10;
          u_xlat31 = (vec3<f32>(x_3840.x, x_3840.y, x_3840.z) / vec3<f32>(x_3842.w, x_3842.w, x_3842.w));
          let x_3845 : vec3<f32> = u_xlat31;
          let x_3846 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(x_3845, x_3846);
          let x_3850 : f32 = u_xlat55.x;
          u_xlat55.x = inverseSqrt(x_3850);
          let x_3853 : vec3<f32> = u_xlat31;
          let x_3854 : vec2<f32> = u_xlat55;
          u_xlat31 = (x_3853 * vec3<f32>(x_3854.x, x_3854.x, x_3854.x));
          let x_3857 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(abs(x_3857), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3863 : f32 = u_xlat55.x;
          u_xlat55.x = max(x_3863, 0.00000099999999747524f);
          let x_3868 : f32 = u_xlat55.x;
          u_xlat55.x = (1.0f / x_3868);
          let x_3871 : vec3<f32> = u_xlat31;
          let x_3873 : vec2<f32> = u_xlat55;
          let x_3875 : vec3<f32> = (vec3<f32>(x_3871.z, x_3871.x, x_3871.y) * vec3<f32>(x_3873.x, x_3873.x, x_3873.x));
          let x_3876 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3875.x, x_3875.y, x_3875.z, x_3876.w);
          let x_3879 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3879);
          let x_3883 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3883, 0.0f, 1.0f);
          let x_3887 : vec4<f32> = u_xlat10;
          let x_3889 : vec4<bool> = (vec4<f32>(x_3887.y, x_3887.z, x_3887.y, x_3887.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_3889.x, x_3889.y);
          let x_3893 : vec4<f32> = u_xlat10;
          hlslcc_movcTemp = x_3893;
          let x_3895 : bool = u_xlatb33.x;
          if (x_3895) {
            let x_3900 : f32 = u_xlat10.x;
            x_3896 = x_3900;
          } else {
            let x_3903 : f32 = u_xlat10.x;
            x_3896 = -(x_3903);
          }
          let x_3905 : f32 = x_3896;
          hlslcc_movcTemp.x = x_3905;
          let x_3908 : bool = u_xlatb33.y;
          if (x_3908) {
            let x_3913 : f32 = u_xlat10.x;
            x_3909 = x_3913;
          } else {
            let x_3916 : f32 = u_xlat10.x;
            x_3909 = -(x_3916);
          }
          let x_3918 : f32 = x_3909;
          hlslcc_movcTemp.y = x_3918;
          let x_3920 : vec4<f32> = hlslcc_movcTemp;
          u_xlat10 = x_3920;
          let x_3921 : vec3<f32> = u_xlat31;
          let x_3923 : vec2<f32> = u_xlat55;
          let x_3926 : vec4<f32> = u_xlat10;
          let x_3928 : vec2<f32> = ((vec2<f32>(x_3921.x, x_3921.y) * vec2<f32>(x_3923.x, x_3923.x)) + vec2<f32>(x_3926.x, x_3926.y));
          let x_3929 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3928.x, x_3928.y, x_3929.z);
          let x_3931 : vec3<f32> = u_xlat31;
          let x_3934 : vec2<f32> = ((vec2<f32>(x_3931.x, x_3931.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3935 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3934.x, x_3934.y, x_3935.z);
          let x_3937 : vec3<f32> = u_xlat31;
          let x_3941 : vec2<f32> = clamp(vec2<f32>(x_3937.x, x_3937.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3942 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3941.x, x_3941.y, x_3942.z);
          let x_3944 : i32 = u_xlati75;
          let x_3946 : vec4<f32> = x_1748.x_AdditionalLightsCookieAtlasUVRects[x_3944];
          let x_3948 : vec3<f32> = u_xlat31;
          let x_3951 : i32 = u_xlati75;
          let x_3953 : vec4<f32> = x_1748.x_AdditionalLightsCookieAtlasUVRects[x_3951];
          let x_3955 : vec2<f32> = ((vec2<f32>(x_3946.x, x_3946.y) * vec2<f32>(x_3948.x, x_3948.y)) + vec2<f32>(x_3953.z, x_3953.w));
          let x_3956 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3955.x, x_3955.y, x_3956.z, x_3956.w);
        }
      }
      let x_3963 : vec4<f32> = u_xlat9;
      let x_3965 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3963.x, x_3963.y), 0.0f);
      u_xlat9 = x_3965;
      let x_3967 : bool = u_xlatb28.y;
      if (x_3967) {
        let x_3972 : f32 = u_xlat9.w;
        x_3968 = x_3972;
      } else {
        let x_3975 : f32 = u_xlat9.x;
        x_3968 = x_3975;
      }
      let x_3976 : f32 = x_3968;
      u_xlat31.x = x_3976;
      let x_3979 : bool = u_xlatb28.x;
      if (x_3979) {
        let x_3983 : vec4<f32> = u_xlat9;
        x_3980 = vec3<f32>(x_3983.x, x_3983.y, x_3983.z);
      } else {
        let x_3986 : vec3<f32> = u_xlat31;
        x_3980 = vec3<f32>(x_3986.x, x_3986.x, x_3986.x);
      }
      let x_3988 : vec3<f32> = x_3980;
      u_xlat31 = x_3988;
    } else {
      u_xlat31.x = 1.0f;
      u_xlat31.y = 1.0f;
      u_xlat31.z = 1.0f;
    }
    let x_3993 : vec3<f32> = u_xlat31;
    let x_3994 : i32 = u_xlati75;
    let x_3996 : vec4<f32> = x_2051.x_AdditionalLightsColor[x_3994];
    u_xlat31 = (x_3993 * vec3<f32>(x_3996.x, x_3996.y, x_3996.z));
    let x_3999 : f32 = u_xlat76;
    let x_4001 : f32 = u_xlat8.x;
    u_xlat75 = (x_3999 * x_4001);
    let x_4003 : f32 = u_xlat75;
    let x_4005 : vec3<f32> = u_xlat31;
    let x_4006 : vec3<f32> = (vec3<f32>(x_4003, x_4003, x_4003) * x_4005);
    let x_4007 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4006.x, x_4006.y, x_4006.z, x_4007.w);
    let x_4009 : vec3<f32> = u_xlat2;
    let x_4010 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(x_4009, vec3<f32>(x_4010.x, x_4010.y, x_4010.z));
    let x_4013 : f32 = u_xlat75;
    u_xlat75 = clamp(x_4013, 0.0f, 1.0f);
    let x_4015 : f32 = u_xlat75;
    let x_4017 : vec4<f32> = u_xlat8;
    let x_4019 : vec3<f32> = (vec3<f32>(x_4015, x_4015, x_4015) * vec3<f32>(x_4017.x, x_4017.y, x_4017.z));
    let x_4020 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4019.x, x_4019.y, x_4019.z, x_4020.w);
    let x_4022 : vec3<f32> = u_xlat1;
    let x_4023 : f32 = u_xlat70;
    let x_4026 : vec4<f32> = u_xlat7;
    let x_4028 : vec3<f32> = ((x_4022 * vec3<f32>(x_4023, x_4023, x_4023)) + vec3<f32>(x_4026.x, x_4026.y, x_4026.z));
    let x_4029 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4028.x, x_4028.y, x_4028.z, x_4029.w);
    let x_4031 : vec4<f32> = u_xlat7;
    let x_4033 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_4031.x, x_4031.y, x_4031.z), vec3<f32>(x_4033.x, x_4033.y, x_4033.z));
    let x_4036 : f32 = u_xlat75;
    u_xlat75 = max(x_4036, 1.17549435e-38f);
    let x_4038 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_4038);
    let x_4040 : f32 = u_xlat75;
    let x_4042 : vec4<f32> = u_xlat7;
    let x_4044 : vec3<f32> = (vec3<f32>(x_4040, x_4040, x_4040) * vec3<f32>(x_4042.x, x_4042.y, x_4042.z));
    let x_4045 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4044.x, x_4044.y, x_4044.z, x_4045.w);
    let x_4047 : vec3<f32> = u_xlat2;
    let x_4048 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(x_4047, vec3<f32>(x_4048.x, x_4048.y, x_4048.z));
    let x_4051 : f32 = u_xlat75;
    u_xlat75 = clamp(x_4051, 0.0f, 1.0f);
    let x_4053 : f32 = u_xlat75;
    u_xlat75 = log2(x_4053);
    let x_4055 : f32 = u_xlat73;
    let x_4056 : f32 = u_xlat75;
    u_xlat75 = (x_4055 * x_4056);
    let x_4058 : f32 = u_xlat75;
    u_xlat75 = exp2(x_4058);
    let x_4060 : f32 = u_xlat75;
    let x_4063 : vec4<f32> = x_41.x_SpecColor;
    let x_4065 : vec3<f32> = (vec3<f32>(x_4060, x_4060, x_4060) * vec3<f32>(x_4063.x, x_4063.y, x_4063.z));
    let x_4066 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4065.x, x_4065.y, x_4065.z, x_4066.w);
    let x_4068 : vec4<f32> = u_xlat7;
    let x_4070 : vec4<f32> = u_xlat8;
    let x_4072 : vec3<f32> = (vec3<f32>(x_4068.x, x_4068.y, x_4068.z) * vec3<f32>(x_4070.x, x_4070.y, x_4070.z));
    let x_4073 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4072.x, x_4072.y, x_4072.z, x_4073.w);
    let x_4075 : vec4<f32> = u_xlat9;
    let x_4077 : vec4<f32> = u_xlat0;
    let x_4080 : vec4<f32> = u_xlat7;
    let x_4082 : vec3<f32> = ((vec3<f32>(x_4075.x, x_4075.y, x_4075.z) * vec3<f32>(x_4077.y, x_4077.z, x_4077.w)) + vec3<f32>(x_4080.x, x_4080.y, x_4080.z));
    let x_4083 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4082.x, x_4082.y, x_4082.z, x_4083.w);
    let x_4085 : vec4<f32> = u_xlat6;
    let x_4087 : vec4<f32> = u_xlat7;
    let x_4089 : vec3<f32> = (vec3<f32>(x_4085.x, x_4085.y, x_4085.z) + vec3<f32>(x_4087.x, x_4087.y, x_4087.z));
    let x_4090 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_4089.x, x_4089.y, x_4089.z, x_4090.w);

    continuing {
      let x_4092 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4092 + bitcast<u32>(1i));
    }
  }
  let x_4095 : vec4<f32> = u_xlat4;
  let x_4097 : vec4<f32> = u_xlat0;
  let x_4100 : vec4<f32> = u_xlat3;
  u_xlat23 = ((vec3<f32>(x_4095.x, x_4095.y, x_4095.z) * vec3<f32>(x_4097.y, x_4097.z, x_4097.w)) + vec3<f32>(x_4100.x, x_4100.z, x_4100.w));
  let x_4103 : vec4<f32> = u_xlat6;
  let x_4105 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_4103.x, x_4103.y, x_4103.z) + x_4105);
  let x_4107 : f32 = u_xlat71;
  let x_4108 : f32 = u_xlat71;
  u_xlat1.x = (x_4107 * -(x_4108));
  let x_4113 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4113);
  let x_4116 : vec3<f32> = u_xlat23;
  let x_4118 : vec4<f32> = x_28.unity_FogColor;
  u_xlat23 = (x_4116 + -(vec3<f32>(x_4118.x, x_4118.y, x_4118.z)));
  let x_4124 : vec3<f32> = u_xlat1;
  let x_4126 : vec3<f32> = u_xlat23;
  let x_4129 : vec4<f32> = x_28.unity_FogColor;
  let x_4131 : vec3<f32> = ((vec3<f32>(x_4124.x, x_4124.x, x_4124.x) * x_4126) + vec3<f32>(x_4129.x, x_4129.y, x_4129.z));
  let x_4132 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4131.x, x_4131.y, x_4131.z, x_4132.w);
  let x_4136 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_4136 == 1.0f);
  let x_4138 : bool = u_xlatb23;
  if (x_4138) {
    let x_4143 : f32 = u_xlat0.x;
    x_4139 = x_4143;
  } else {
    x_4139 = 1.0f;
  }
  let x_4145 : f32 = x_4139;
  SV_Target0.w = x_4145;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


