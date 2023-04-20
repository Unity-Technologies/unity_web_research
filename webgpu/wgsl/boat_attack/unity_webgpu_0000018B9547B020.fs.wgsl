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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_128 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat80 : f32;

var<private> u_xlatu80 : u32;

var<private> u_xlati80 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatb29 : bool;

var<private> u_xlatb55 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat55 : f32;

@group(1) @binding(4) var<uniform> x_1784 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1962 : UnityPerDraw;

var<private> u_xlatu78 : u32;

var<private> u_xlatu84 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2218 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu29 : u32;

var<private> u_xlatb84 : bool;

fn main_1() {
  var x_99 : vec3<f32>;
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
  var x_1735 : f32;
  var x_1867 : f32;
  var x_1878 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2375 : f32;
  var x_2386 : f32;
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
  var x_4005 : f32;
  var x_4018 : f32;
  var x_4076 : f32;
  var x_4087 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_57 == 0.0f);
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_64) + x_69);
  let x_72 : vec3<f32> = u_xlat2;
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(x_72, x_73);
  let x_75 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_75);
  let x_77 : f32 = u_xlat53;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_77, x_77, x_77) * x_79);
  let x_85 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_85;
  let x_89 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_89;
  let x_94 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_94;
  let x_97 : bool = u_xlatb27;
  if (x_97) {
    let x_102 : vec3<f32> = u_xlat2;
    x_99 = x_102;
  } else {
    let x_104 : vec4<f32> = u_xlat3;
    x_99 = vec3<f32>(x_104.x, x_104.y, x_104.z);
  }
  let x_106 : vec3<f32> = x_99;
  u_xlat27 = x_106;
  let x_108 : vec3<f32> = vs_TEXCOORD3;
  let x_109 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_108, x_109);
  let x_113 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_113);
  let x_116 : vec3<f32> = u_xlat2;
  let x_118 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * x_118);
  let x_120 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres0;
  let x_134 : vec3<f32> = (x_120 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres1;
  let x_143 : vec3<f32> = (x_138 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_TEXCOORD7;
  let x_150 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_147 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_155 : vec3<f32> = vs_TEXCOORD7;
  let x_157 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres3;
  let x_160 : vec3<f32> = (x_155 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat3;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec3<f32> = u_xlat5;
  let x_176 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_175, x_176);
  let x_179 : vec4<f32> = u_xlat6;
  let x_181 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_188 : vec4<f32> = u_xlat3;
  let x_191 : vec4<f32> = x_128.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_188 < x_191);
  let x_194 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_194);
  let x_199 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_199);
  let x_203 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_203);
  let x_207 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_211);
  let x_217 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_217);
  let x_221 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_221);
  let x_224 : vec4<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_226.y, x_226.z, x_226.w));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat3;
  let x_234 : vec3<f32> = max(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_234.x, x_234.y, x_234.z);
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_238, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_244 : f32 = u_xlat80;
  u_xlat80 = (-(x_244) + 4.0f);
  let x_249 : f32 = u_xlat80;
  u_xlatu80 = u32(x_249);
  let x_253 : u32 = u_xlatu80;
  u_xlati80 = (bitcast<i32>(x_253) << bitcast<u32>(2i));
  let x_256 : vec3<f32> = vs_TEXCOORD7;
  let x_258 : i32 = u_xlati80;
  let x_261 : i32 = u_xlati80;
  let x_265 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_258 + 1i) / 4i)][((x_261 + 1i) % 4i)];
  let x_267 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : i32 = u_xlati80;
  let x_272 : i32 = u_xlati80;
  let x_275 : vec4<f32> = x_128.x_MainLightWorldToShadow[(x_270 / 4i)][(x_272 % 4i)];
  let x_277 : vec3<f32> = vs_TEXCOORD7;
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.x, x_277.x, x_277.x)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : i32 = u_xlati80;
  let x_288 : i32 = u_xlati80;
  let x_292 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_285 + 2i) / 4i)][((x_288 + 2i) % 4i)];
  let x_294 : vec3<f32> = vs_TEXCOORD7;
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : i32 = u_xlati80;
  let x_307 : i32 = u_xlati80;
  let x_311 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_304 + 3i) / 4i)][((x_307 + 3i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : f32 = vs_TEXCOORD7.y;
  let x_320 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat80 = (x_318 * x_320);
  let x_323 : f32 = x_29.unity_MatrixV[0i].z;
  let x_325 : f32 = vs_TEXCOORD7.x;
  let x_327 : f32 = u_xlat80;
  u_xlat80 = ((x_323 * x_325) + x_327);
  let x_330 : f32 = x_29.unity_MatrixV[2i].z;
  let x_332 : f32 = vs_TEXCOORD7.z;
  let x_334 : f32 = u_xlat80;
  u_xlat80 = ((x_330 * x_332) + x_334);
  let x_336 : f32 = u_xlat80;
  let x_338 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat80 = (x_336 + x_338);
  let x_340 : f32 = u_xlat80;
  let x_343 : f32 = x_29.x_ProjectionParams.y;
  u_xlat80 = (-(x_340) + -(x_343));
  let x_346 : f32 = u_xlat80;
  u_xlat80 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat80;
  let x_351 : f32 = x_29.unity_FogParams.x;
  u_xlat80 = (x_348 * x_351);
  let x_358 : vec4<f32> = vs_TEXCOORD0;
  let x_361 : f32 = x_29.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_358.z, x_358.w), x_361);
  u_xlat4 = x_362;
  let x_367 : vec4<f32> = vs_TEXCOORD0;
  let x_370 : f32 = x_29.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_367.z, x_367.w), x_370);
  u_xlat5 = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec3<f32> = u_xlat2;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat81 = dot(x_381, vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : f32 = u_xlat81;
  u_xlat81 = (x_385 + 0.5f);
  let x_388 : f32 = u_xlat81;
  let x_390 : vec3<f32> = u_xlat5;
  let x_391 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * x_390);
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat4.w;
  u_xlat81 = max(x_395, 0.00009999999747378752f);
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : f32 = u_xlat81;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) / vec3<f32>(x_400, x_400, x_400));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : f32 = u_xlat1;
  u_xlat81 = ((-(x_405) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_411 : f32 = u_xlat81;
  u_xlat82 = (-(x_411) + 1.0f);
  let x_414 : vec4<f32> = u_xlat0;
  let x_416 : f32 = u_xlat81;
  u_xlat5 = (vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416, x_416, x_416));
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : f32 = u_xlat1;
  let x_428 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = ((vec3<f32>(x_426, x_426, x_426) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat1;
  let x_441 : f32 = u_xlat1;
  u_xlat81 = (x_440 * x_441);
  let x_443 : f32 = u_xlat81;
  u_xlat81 = max(x_443, 0.0078125f);
  let x_447 : f32 = u_xlat81;
  let x_448 : f32 = u_xlat81;
  u_xlat83 = (x_447 * x_448);
  let x_452 : f32 = u_xlat0.w;
  let x_453 : f32 = u_xlat82;
  u_xlat78 = (x_452 + x_453);
  let x_455 : f32 = u_xlat78;
  u_xlat78 = clamp(x_455, 0.0f, 1.0f);
  let x_457 : f32 = u_xlat81;
  u_xlat82 = ((x_457 * 4.0f) + 2.0f);
  let x_463 : f32 = x_128.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_463);
  let x_465 : bool = u_xlatb6;
  if (x_465) {
    let x_469 : f32 = x_128.x_MainLightShadowParams.y;
    u_xlatb6 = (x_469 == 1.0f);
    let x_471 : bool = u_xlatb6;
    if (x_471) {
      let x_474 : vec4<f32> = u_xlat3;
      let x_477 : vec4<f32> = x_128.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y) + x_477);
      let x_480 : vec4<f32> = u_xlat6;
      let x_481 : vec2<f32> = vec2<f32>(x_480.x, x_480.y);
      let x_483 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_481.x, x_481.y, x_483);
      let x_496 : vec3<f32> = txVec0;
      let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_496.xy, x_496.z);
      u_xlat7.x = x_498;
      let x_501 : vec4<f32> = u_xlat6;
      let x_502 : vec2<f32> = vec2<f32>(x_501.z, x_501.w);
      let x_504 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_502.x, x_502.y, x_504);
      let x_511 : vec3<f32> = txVec1;
      let x_513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_511.xy, x_511.z);
      u_xlat7.y = x_513;
      let x_515 : vec4<f32> = u_xlat3;
      let x_518 : vec4<f32> = x_128.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_515.x, x_515.y, x_515.x, x_515.y) + x_518);
      let x_521 : vec4<f32> = u_xlat6;
      let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
      let x_524 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_522.x, x_522.y, x_524);
      let x_531 : vec3<f32> = txVec2;
      let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_531.xy, x_531.z);
      u_xlat7.z = x_533;
      let x_536 : vec4<f32> = u_xlat6;
      let x_537 : vec2<f32> = vec2<f32>(x_536.z, x_536.w);
      let x_539 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_537.x, x_537.y, x_539);
      let x_546 : vec3<f32> = txVec3;
      let x_548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_546.xy, x_546.z);
      u_xlat7.w = x_548;
      let x_550 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_550, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_558 : f32 = x_128.x_MainLightShadowParams.y;
      u_xlatb32 = (x_558 == 2.0f);
      let x_560 : bool = u_xlatb32;
      if (x_560) {
        let x_565 : vec4<f32> = u_xlat3;
        let x_568 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_568.z, x_568.w)) + vec2<f32>(0.5f, 0.5f));
        let x_573 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_573);
        let x_575 : vec4<f32> = u_xlat3;
        let x_578 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_581 : vec2<f32> = u_xlat32;
        let x_583 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_578.z, x_578.w)) + -(x_581));
        let x_584 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_587.x, x_587.x, x_587.y, x_587.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_592 : vec4<f32> = u_xlat8;
        let x_594 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_592.x, x_592.x, x_592.z, x_592.z) * vec4<f32>(x_594.x, x_594.x, x_594.z, x_594.z));
        let x_598 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_598.y, x_598.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_603 : vec4<f32> = u_xlat9;
        let x_606 : vec4<f32> = u_xlat7;
        let x_609 : vec2<f32> = ((vec2<f32>(x_603.x, x_603.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_606.x, x_606.y)));
        let x_610 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_609.x, x_610.y, x_609.y, x_610.w);
        let x_612 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = (-(vec2<f32>(x_612.x, x_612.y)) + vec2<f32>(1.0f, 1.0f));
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_620.x, x_620.y), vec2<f32>(0.0f, 0.0f));
        let x_624 : vec2<f32> = u_xlat61;
        let x_626 : vec2<f32> = u_xlat61;
        let x_628 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_624) * x_626) + vec2<f32>(x_628.x, x_628.y));
        let x_631 : vec4<f32> = u_xlat7;
        let x_633 : vec2<f32> = max(vec2<f32>(x_631.x, x_631.y), vec2<f32>(0.0f, 0.0f));
        let x_634 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec4<f32> = u_xlat7;
        let x_639 : vec4<f32> = u_xlat7;
        let x_642 : vec4<f32> = u_xlat8;
        let x_644 : vec2<f32> = ((-(vec2<f32>(x_636.x, x_636.y)) * vec2<f32>(x_639.x, x_639.y)) + vec2<f32>(x_642.y, x_642.w));
        let x_645 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
        let x_647 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_647 + vec2<f32>(1.0f, 1.0f));
        let x_649 : vec4<f32> = u_xlat7;
        let x_651 : vec2<f32> = (vec2<f32>(x_649.x, x_649.y) + vec2<f32>(1.0f, 1.0f));
        let x_652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_655 : vec4<f32> = u_xlat8;
        let x_659 : vec2<f32> = (vec2<f32>(x_655.x, x_655.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_660 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_663 : vec4<f32> = u_xlat9;
        let x_665 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_666 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_668 : vec2<f32> = u_xlat61;
        let x_669 : vec2<f32> = (x_668 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_670 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_673 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_676 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec2<f32> = (vec2<f32>(x_678.y, x_678.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_681 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_684 : f32 = u_xlat9.x;
        u_xlat10.z = x_684;
        let x_687 : f32 = u_xlat7.x;
        u_xlat10.w = x_687;
        let x_690 : f32 = u_xlat12.x;
        u_xlat11.z = x_690;
        let x_693 : f32 = u_xlat59.x;
        u_xlat11.w = x_693;
        let x_695 : vec4<f32> = u_xlat10;
        let x_697 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_695.z, x_695.w, x_695.x, x_695.z) + vec4<f32>(x_697.z, x_697.w, x_697.x, x_697.z));
        let x_701 : f32 = u_xlat10.y;
        u_xlat9.z = x_701;
        let x_704 : f32 = u_xlat7.y;
        u_xlat9.w = x_704;
        let x_707 : f32 = u_xlat11.y;
        u_xlat12.z = x_707;
        let x_710 : f32 = u_xlat59.y;
        u_xlat12.w = x_710;
        let x_712 : vec4<f32> = u_xlat9;
        let x_714 : vec4<f32> = u_xlat12;
        let x_716 : vec3<f32> = (vec3<f32>(x_712.z, x_712.y, x_712.w) + vec3<f32>(x_714.z, x_714.y, x_714.w));
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
        let x_719 : vec4<f32> = u_xlat11;
        let x_721 : vec4<f32> = u_xlat8;
        let x_723 : vec3<f32> = (vec3<f32>(x_719.x, x_719.z, x_719.w) / vec3<f32>(x_721.z, x_721.w, x_721.y));
        let x_724 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat9;
        let x_731 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat12;
        let x_736 : vec4<f32> = u_xlat7;
        let x_738 : vec3<f32> = (vec3<f32>(x_734.z, x_734.y, x_734.w) / vec3<f32>(x_736.x, x_736.y, x_736.z));
        let x_739 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat10;
        let x_743 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_744 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat9;
        let x_749 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_751 : vec3<f32> = (vec3<f32>(x_746.y, x_746.x, x_746.z) * vec3<f32>(x_749.x, x_749.x, x_749.x));
        let x_752 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat10;
        let x_757 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_759 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(x_757.y, x_757.y, x_757.y));
        let x_760 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
        let x_763 : f32 = u_xlat10.x;
        u_xlat9.w = x_763;
        let x_765 : vec2<f32> = u_xlat32;
        let x_768 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_771 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) * vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y)) + vec4<f32>(x_771.y, x_771.w, x_771.x, x_771.w));
        let x_774 : vec2<f32> = u_xlat32;
        let x_776 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat9;
        let x_781 : vec2<f32> = ((x_774 * vec2<f32>(x_776.x, x_776.y)) + vec2<f32>(x_779.z, x_779.w));
        let x_782 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_785 : f32 = u_xlat9.y;
        u_xlat10.w = x_785;
        let x_787 : vec4<f32> = u_xlat10;
        let x_788 : vec2<f32> = vec2<f32>(x_787.y, x_787.z);
        let x_789 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_789.x, x_788.x, x_789.z, x_788.y);
        let x_792 : vec2<f32> = u_xlat32;
        let x_795 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y) * vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y)) + vec4<f32>(x_798.x, x_798.y, x_798.z, x_798.y));
        let x_801 : vec2<f32> = u_xlat32;
        let x_804 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_807 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y) * vec4<f32>(x_804.x, x_804.y, x_804.x, x_804.y)) + vec4<f32>(x_807.w, x_807.y, x_807.w, x_807.z));
        let x_810 : vec2<f32> = u_xlat32;
        let x_813 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_816 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_810.x, x_810.y, x_810.x, x_810.y) * vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y)) + vec4<f32>(x_816.x, x_816.w, x_816.z, x_816.w));
        let x_820 : vec4<f32> = u_xlat7;
        let x_822 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_820.x, x_820.x, x_820.x, x_820.y) * vec4<f32>(x_822.z, x_822.w, x_822.y, x_822.z));
        let x_826 : vec4<f32> = u_xlat7;
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_826.y, x_826.y, x_826.z, x_826.z) * x_828);
        let x_831 : f32 = u_xlat7.z;
        let x_833 : f32 = u_xlat8.y;
        u_xlat32.x = (x_831 * x_833);
        let x_837 : vec4<f32> = u_xlat11;
        let x_838 : vec2<f32> = vec2<f32>(x_837.x, x_837.y);
        let x_840 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_848 : vec3<f32> = txVec4;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_848.xy, x_848.z);
        u_xlat58 = x_850;
        let x_852 : vec4<f32> = u_xlat11;
        let x_853 : vec2<f32> = vec2<f32>(x_852.z, x_852.w);
        let x_855 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_863 : vec3<f32> = txVec5;
        let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_863.xy, x_863.z);
        u_xlat84 = x_865;
        let x_866 : f32 = u_xlat84;
        let x_868 : f32 = u_xlat14.y;
        u_xlat84 = (x_866 * x_868);
        let x_871 : f32 = u_xlat14.x;
        let x_872 : f32 = u_xlat58;
        let x_874 : f32 = u_xlat84;
        u_xlat58 = ((x_871 * x_872) + x_874);
        let x_877 : vec4<f32> = u_xlat12;
        let x_878 : vec2<f32> = vec2<f32>(x_877.x, x_877.y);
        let x_880 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_878.x, x_878.y, x_880);
        let x_887 : vec3<f32> = txVec6;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_887.xy, x_887.z);
        u_xlat84 = x_889;
        let x_891 : f32 = u_xlat14.z;
        let x_892 : f32 = u_xlat84;
        let x_894 : f32 = u_xlat58;
        u_xlat58 = ((x_891 * x_892) + x_894);
        let x_897 : vec4<f32> = u_xlat10;
        let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
        let x_900 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_907 : vec3<f32> = txVec7;
        let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_907.xy, x_907.z);
        u_xlat84 = x_909;
        let x_911 : f32 = u_xlat14.w;
        let x_912 : f32 = u_xlat84;
        let x_914 : f32 = u_xlat58;
        u_xlat58 = ((x_911 * x_912) + x_914);
        let x_917 : vec4<f32> = u_xlat13;
        let x_918 : vec2<f32> = vec2<f32>(x_917.x, x_917.y);
        let x_920 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec8;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_927.xy, x_927.z);
        u_xlat84 = x_929;
        let x_931 : f32 = u_xlat15.x;
        let x_932 : f32 = u_xlat84;
        let x_934 : f32 = u_xlat58;
        u_xlat58 = ((x_931 * x_932) + x_934);
        let x_937 : vec4<f32> = u_xlat13;
        let x_938 : vec2<f32> = vec2<f32>(x_937.z, x_937.w);
        let x_940 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_938.x, x_938.y, x_940);
        let x_947 : vec3<f32> = txVec9;
        let x_949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_947.xy, x_947.z);
        u_xlat84 = x_949;
        let x_951 : f32 = u_xlat15.y;
        let x_952 : f32 = u_xlat84;
        let x_954 : f32 = u_xlat58;
        u_xlat58 = ((x_951 * x_952) + x_954);
        let x_957 : vec4<f32> = u_xlat10;
        let x_958 : vec2<f32> = vec2<f32>(x_957.z, x_957.w);
        let x_960 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_958.x, x_958.y, x_960);
        let x_967 : vec3<f32> = txVec10;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_967.xy, x_967.z);
        u_xlat84 = x_969;
        let x_971 : f32 = u_xlat15.z;
        let x_972 : f32 = u_xlat84;
        let x_974 : f32 = u_xlat58;
        u_xlat58 = ((x_971 * x_972) + x_974);
        let x_977 : vec4<f32> = u_xlat9;
        let x_978 : vec2<f32> = vec2<f32>(x_977.x, x_977.y);
        let x_980 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec11;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_987.xy, x_987.z);
        u_xlat84 = x_989;
        let x_991 : f32 = u_xlat15.w;
        let x_992 : f32 = u_xlat84;
        let x_994 : f32 = u_xlat58;
        u_xlat58 = ((x_991 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat9;
        let x_998 : vec2<f32> = vec2<f32>(x_997.z, x_997.w);
        let x_1000 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec12;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1007.xy, x_1007.z);
        u_xlat84 = x_1009;
        let x_1011 : f32 = u_xlat32.x;
        let x_1012 : f32 = u_xlat84;
        let x_1014 : f32 = u_xlat58;
        u_xlat6.x = ((x_1011 * x_1012) + x_1014);
      } else {
        let x_1018 : vec4<f32> = u_xlat3;
        let x_1021 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_1018.x, x_1018.y) * vec2<f32>(x_1021.z, x_1021.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1025 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_1025);
        let x_1027 : vec4<f32> = u_xlat3;
        let x_1030 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1033 : vec2<f32> = u_xlat32;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.z, x_1030.w)) + -(x_1033));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
        let x_1038 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1038.x, x_1038.x, x_1038.y, x_1038.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1041 : vec4<f32> = u_xlat8;
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1041.x, x_1041.x, x_1041.z, x_1041.z) * vec4<f32>(x_1043.x, x_1043.x, x_1043.z, x_1043.z));
        let x_1046 : vec4<f32> = u_xlat9;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1046.y, x_1046.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1051 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1051.x, x_1050.x, x_1051.z, x_1050.y);
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1053.x, x_1053.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1056.x, x_1056.y)));
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1063 : vec2<f32> = (-(vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1063.x, x_1064.y, x_1063.y, x_1064.w);
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = min(vec2<f32>(x_1066.x, x_1066.y), vec2<f32>(0.0f, 0.0f));
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1077 : vec4<f32> = u_xlat8;
        let x_1079 : vec2<f32> = ((-(vec2<f32>(x_1071.x, x_1071.y)) * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1077.x, x_1077.z));
        let x_1080 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1079.x, x_1080.y, x_1079.y, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat7;
        let x_1084 : vec2<f32> = max(vec2<f32>(x_1082.x, x_1082.y), vec2<f32>(0.0f, 0.0f));
        let x_1085 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat9;
        let x_1090 : vec4<f32> = u_xlat9;
        let x_1093 : vec4<f32> = u_xlat8;
        let x_1095 : vec2<f32> = ((-(vec2<f32>(x_1087.x, x_1087.y)) * vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(x_1093.y, x_1093.w));
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1096.x, x_1095.x, x_1096.z, x_1095.y);
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1098 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1102 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1102 * 0.08163200318813323975f);
        let x_1106 : vec2<f32> = u_xlat59;
        let x_1109 : vec2<f32> = (vec2<f32>(x_1106.y, x_1106.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1110 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1112.x, x_1112.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1116 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1116 * 0.08163200318813323975f);
        let x_1120 : f32 = u_xlat11.y;
        u_xlat9.x = x_1120;
        let x_1122 : vec4<f32> = u_xlat7;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1130 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1129.x, x_1130.z, x_1129.y);
        let x_1132 : vec4<f32> = u_xlat7;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1136.x, x_1137.y, x_1136.y, x_1137.w);
        let x_1140 : f32 = u_xlat59.x;
        u_xlat8.y = x_1140;
        let x_1143 : f32 = u_xlat10.y;
        u_xlat8.w = x_1143;
        let x_1145 : vec4<f32> = u_xlat8;
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1145 + x_1146);
        let x_1148 : vec4<f32> = u_xlat7;
        let x_1151 : vec2<f32> = ((vec2<f32>(x_1148.y, x_1148.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1152.x, x_1151.x, x_1152.z, x_1151.y);
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1157 : vec2<f32> = ((vec2<f32>(x_1154.y, x_1154.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1157.x, x_1158.y, x_1157.y, x_1158.w);
        let x_1161 : f32 = u_xlat59.y;
        u_xlat10.y = x_1161;
        let x_1163 : vec4<f32> = u_xlat10;
        let x_1164 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1163 + x_1164);
        let x_1166 : vec4<f32> = u_xlat8;
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1166 / x_1167);
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1169 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1175 / x_1176);
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1178 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1183 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1180.w, x_1180.x, x_1180.y, x_1180.z) * vec4<f32>(x_1183.x, x_1183.x, x_1183.x, x_1183.x));
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1189 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1186.x, x_1186.w, x_1186.y, x_1186.z) * vec4<f32>(x_1189.y, x_1189.y, x_1189.y, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat8;
        let x_1193 : vec3<f32> = vec3<f32>(x_1192.y, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1193.x, x_1194.y, x_1193.y, x_1193.z);
        let x_1197 : f32 = u_xlat10.x;
        u_xlat11.y = x_1197;
        let x_1199 : vec2<f32> = u_xlat32;
        let x_1202 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.y) * vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y)) + vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1205.y));
        let x_1208 : vec2<f32> = u_xlat32;
        let x_1210 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat11;
        let x_1215 : vec2<f32> = ((x_1208 * vec2<f32>(x_1210.x, x_1210.y)) + vec2<f32>(x_1213.w, x_1213.y));
        let x_1216 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1219 : f32 = u_xlat11.y;
        u_xlat8.y = x_1219;
        let x_1222 : f32 = u_xlat10.z;
        u_xlat11.y = x_1222;
        let x_1224 : vec2<f32> = u_xlat32;
        let x_1227 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y) * vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) + vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1230.y));
        let x_1234 : vec2<f32> = u_xlat32;
        let x_1236 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1234 * vec2<f32>(x_1236.x, x_1236.y)) + vec2<f32>(x_1239.w, x_1239.y));
        let x_1243 : f32 = u_xlat11.y;
        u_xlat8.z = x_1243;
        let x_1245 : vec2<f32> = u_xlat32;
        let x_1248 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.z));
        let x_1255 : f32 = u_xlat10.w;
        u_xlat11.y = x_1255;
        let x_1258 : vec2<f32> = u_xlat32;
        let x_1261 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y) * vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y)) + vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1264.y));
        let x_1268 : vec2<f32> = u_xlat32;
        let x_1270 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat11;
        let x_1275 : vec2<f32> = ((x_1268 * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.w, x_1273.y));
        let x_1276 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1275.x, x_1275.y, x_1276.z);
        let x_1279 : f32 = u_xlat11.y;
        u_xlat8.w = x_1279;
        let x_1282 : vec2<f32> = u_xlat32;
        let x_1284 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat8;
        let x_1289 : vec2<f32> = ((x_1282 * vec2<f32>(x_1284.x, x_1284.y)) + vec2<f32>(x_1287.x, x_1287.w));
        let x_1290 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1293 : vec3<f32> = vec3<f32>(x_1292.x, x_1292.z, x_1292.w);
        let x_1294 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1293.x, x_1294.y, x_1293.y, x_1293.z);
        let x_1296 : vec2<f32> = u_xlat32;
        let x_1299 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1302.y));
        let x_1306 : vec2<f32> = u_xlat32;
        let x_1308 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1306 * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.w, x_1311.y));
        let x_1315 : f32 = u_xlat8.x;
        u_xlat10.x = x_1315;
        let x_1317 : vec2<f32> = u_xlat32;
        let x_1319 : vec4<f32> = x_128.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat10;
        u_xlat32 = ((x_1317 * vec2<f32>(x_1319.x, x_1319.y)) + vec2<f32>(x_1322.x, x_1322.y));
        let x_1326 : vec4<f32> = u_xlat7;
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1326.x, x_1326.x, x_1326.x, x_1326.x) * x_1328);
        let x_1331 : vec4<f32> = u_xlat7;
        let x_1333 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1331.y, x_1331.y, x_1331.y, x_1331.y) * x_1333);
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1336.z, x_1336.z, x_1336.z, x_1336.z) * x_1338);
        let x_1340 : vec4<f32> = u_xlat7;
        let x_1342 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1340.w, x_1340.w, x_1340.w, x_1340.w) * x_1342);
        let x_1345 : vec4<f32> = u_xlat12;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec13;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat84 = x_1357;
        let x_1359 : vec4<f32> = u_xlat12;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.z, x_1359.w);
        let x_1362 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec14;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1369.xy, x_1369.z);
        u_xlat8.x = x_1371;
        let x_1374 : f32 = u_xlat8.x;
        let x_1376 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1374 * x_1376);
        let x_1380 : f32 = u_xlat18.x;
        let x_1381 : f32 = u_xlat84;
        let x_1384 : f32 = u_xlat8.x;
        u_xlat84 = ((x_1380 * x_1381) + x_1384);
        let x_1387 : vec4<f32> = u_xlat13;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec15;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
        u_xlat8.x = x_1399;
        let x_1402 : f32 = u_xlat18.z;
        let x_1404 : f32 = u_xlat8.x;
        let x_1406 : f32 = u_xlat84;
        u_xlat84 = ((x_1402 * x_1404) + x_1406);
        let x_1409 : vec4<f32> = u_xlat15;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.x, x_1409.y);
        let x_1412 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec16;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat8.x = x_1421;
        let x_1424 : f32 = u_xlat18.w;
        let x_1426 : f32 = u_xlat8.x;
        let x_1428 : f32 = u_xlat84;
        u_xlat84 = ((x_1424 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat14;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec17;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat8.x = x_1443;
        let x_1446 : f32 = u_xlat19.x;
        let x_1448 : f32 = u_xlat8.x;
        let x_1450 : f32 = u_xlat84;
        u_xlat84 = ((x_1446 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat14;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.z, x_1453.w);
        let x_1456 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec18;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat8.x = x_1465;
        let x_1468 : f32 = u_xlat19.y;
        let x_1470 : f32 = u_xlat8.x;
        let x_1472 : f32 = u_xlat84;
        u_xlat84 = ((x_1468 * x_1470) + x_1472);
        let x_1475 : vec2<f32> = u_xlat65;
        let x_1477 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec19;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1484.xy, x_1484.z);
        u_xlat8.x = x_1486;
        let x_1489 : f32 = u_xlat19.z;
        let x_1491 : f32 = u_xlat8.x;
        let x_1493 : f32 = u_xlat84;
        u_xlat84 = ((x_1489 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat15;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.z, x_1496.w);
        let x_1499 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec20;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1506.xy, x_1506.z);
        u_xlat8.x = x_1508;
        let x_1511 : f32 = u_xlat19.w;
        let x_1513 : f32 = u_xlat8.x;
        let x_1515 : f32 = u_xlat84;
        u_xlat84 = ((x_1511 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat16;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.x, x_1518.y);
        let x_1521 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec21;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
        u_xlat8.x = x_1530;
        let x_1533 : f32 = u_xlat20.x;
        let x_1535 : f32 = u_xlat8.x;
        let x_1537 : f32 = u_xlat84;
        u_xlat84 = ((x_1533 * x_1535) + x_1537);
        let x_1540 : vec4<f32> = u_xlat16;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.z, x_1540.w);
        let x_1543 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec22;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat8.x = x_1552;
        let x_1555 : f32 = u_xlat20.y;
        let x_1557 : f32 = u_xlat8.x;
        let x_1559 : f32 = u_xlat84;
        u_xlat84 = ((x_1555 * x_1557) + x_1559);
        let x_1562 : vec3<f32> = u_xlat34;
        let x_1563 : vec2<f32> = vec2<f32>(x_1562.x, x_1562.y);
        let x_1565 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec23;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat8.x = x_1574;
        let x_1577 : f32 = u_xlat20.z;
        let x_1579 : f32 = u_xlat8.x;
        let x_1581 : f32 = u_xlat84;
        u_xlat84 = ((x_1577 * x_1579) + x_1581);
        let x_1584 : vec4<f32> = u_xlat17;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
        let x_1587 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec24;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat8.x = x_1596;
        let x_1599 : f32 = u_xlat20.w;
        let x_1601 : f32 = u_xlat8.x;
        let x_1603 : f32 = u_xlat84;
        u_xlat84 = ((x_1599 * x_1601) + x_1603);
        let x_1606 : vec4<f32> = u_xlat11;
        let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
        let x_1609 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec25;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
        u_xlat8.x = x_1618;
        let x_1621 : f32 = u_xlat7.x;
        let x_1623 : f32 = u_xlat8.x;
        let x_1625 : f32 = u_xlat84;
        u_xlat84 = ((x_1621 * x_1623) + x_1625);
        let x_1628 : vec4<f32> = u_xlat11;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.z, x_1628.w);
        let x_1631 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec26;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat7.x = x_1640;
        let x_1643 : f32 = u_xlat7.y;
        let x_1645 : f32 = u_xlat7.x;
        let x_1647 : f32 = u_xlat84;
        u_xlat84 = ((x_1643 * x_1645) + x_1647);
        let x_1650 : vec2<f32> = u_xlat62;
        let x_1652 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec27;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat7.x = x_1661;
        let x_1664 : f32 = u_xlat7.z;
        let x_1666 : f32 = u_xlat7.x;
        let x_1668 : f32 = u_xlat84;
        u_xlat84 = ((x_1664 * x_1666) + x_1668);
        let x_1671 : vec2<f32> = u_xlat32;
        let x_1673 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec28;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1680.xy, x_1680.z);
        u_xlat32.x = x_1682;
        let x_1685 : f32 = u_xlat7.w;
        let x_1687 : f32 = u_xlat32.x;
        let x_1689 : f32 = u_xlat84;
        u_xlat6.x = ((x_1685 * x_1687) + x_1689);
      }
    }
  } else {
    let x_1694 : vec4<f32> = u_xlat3;
    let x_1695 : vec2<f32> = vec2<f32>(x_1694.x, x_1694.y);
    let x_1697 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
    let x_1704 : vec3<f32> = txVec29;
    let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1704.xy, x_1704.z);
    u_xlat6.x = x_1706;
  }
  let x_1709 : f32 = x_128.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1709) + 1.0f);
  let x_1714 : f32 = u_xlat6.x;
  let x_1716 : f32 = x_128.x_MainLightShadowParams.x;
  let x_1719 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1714 * x_1716) + x_1719);
  let x_1724 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_1724);
  let x_1728 : f32 = u_xlat3.z;
  u_xlatb55 = (x_1728 >= 1.0f);
  let x_1730 : bool = u_xlatb55;
  let x_1731 : bool = u_xlatb29;
  u_xlatb29 = (x_1730 | x_1731);
  let x_1733 : bool = u_xlatb29;
  if (x_1733) {
    x_1735 = 1.0f;
  } else {
    let x_1740 : f32 = u_xlat3.x;
    x_1735 = x_1740;
  }
  let x_1741 : f32 = x_1735;
  u_xlat3.x = x_1741;
  let x_1743 : vec3<f32> = vs_TEXCOORD7;
  let x_1745 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1747 : vec3<f32> = (x_1743 + -(x_1745));
  let x_1748 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
  let x_1751 : vec4<f32> = u_xlat6;
  let x_1753 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_1751.x, x_1751.y, x_1751.z), vec3<f32>(x_1753.x, x_1753.y, x_1753.z));
  let x_1757 : f32 = u_xlat29;
  let x_1759 : f32 = x_128.x_MainLightShadowParams.z;
  let x_1762 : f32 = x_128.x_MainLightShadowParams.w;
  u_xlat55 = ((x_1757 * x_1759) + x_1762);
  let x_1764 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1764, 0.0f, 1.0f);
  let x_1767 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_1767) + 1.0f);
  let x_1771 : f32 = u_xlat55;
  let x_1773 : f32 = u_xlat6.x;
  let x_1776 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1771 * x_1773) + x_1776);
  let x_1786 : f32 = x_1784.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_1786 == -1.0f));
  let x_1788 : bool = u_xlatb55;
  if (x_1788) {
    let x_1791 : vec3<f32> = vs_TEXCOORD7;
    let x_1794 : vec4<f32> = x_1784.x_MainLightWorldToLight[1i];
    let x_1796 : vec2<f32> = (vec2<f32>(x_1791.y, x_1791.y) * vec2<f32>(x_1794.x, x_1794.y));
    let x_1797 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1796.x, x_1796.y, x_1797.z, x_1797.w);
    let x_1800 : vec4<f32> = x_1784.x_MainLightWorldToLight[0i];
    let x_1802 : vec3<f32> = vs_TEXCOORD7;
    let x_1805 : vec4<f32> = u_xlat6;
    let x_1807 : vec2<f32> = ((vec2<f32>(x_1800.x, x_1800.y) * vec2<f32>(x_1802.x, x_1802.x)) + vec2<f32>(x_1805.x, x_1805.y));
    let x_1808 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
    let x_1811 : vec4<f32> = x_1784.x_MainLightWorldToLight[2i];
    let x_1813 : vec3<f32> = vs_TEXCOORD7;
    let x_1816 : vec4<f32> = u_xlat6;
    let x_1818 : vec2<f32> = ((vec2<f32>(x_1811.x, x_1811.y) * vec2<f32>(x_1813.z, x_1813.z)) + vec2<f32>(x_1816.x, x_1816.y));
    let x_1819 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1818.x, x_1818.y, x_1819.z, x_1819.w);
    let x_1821 : vec4<f32> = u_xlat6;
    let x_1824 : vec4<f32> = x_1784.x_MainLightWorldToLight[3i];
    let x_1826 : vec2<f32> = (vec2<f32>(x_1821.x, x_1821.y) + vec2<f32>(x_1824.x, x_1824.y));
    let x_1827 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1826.x, x_1826.y, x_1827.z, x_1827.w);
    let x_1829 : vec4<f32> = u_xlat6;
    let x_1832 : vec2<f32> = ((vec2<f32>(x_1829.x, x_1829.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1833 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1832.x, x_1832.y, x_1833.z, x_1833.w);
    let x_1840 : vec4<f32> = u_xlat6;
    let x_1843 : f32 = x_29.x_GlobalMipBias.x;
    let x_1844 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1840.x, x_1840.y), x_1843);
    u_xlat6 = x_1844;
    let x_1849 : f32 = x_1784.x_MainLightCookieTextureFormat;
    let x_1851 : f32 = x_1784.x_MainLightCookieTextureFormat;
    let x_1853 : f32 = x_1784.x_MainLightCookieTextureFormat;
    let x_1855 : f32 = x_1784.x_MainLightCookieTextureFormat;
    let x_1856 : vec4<f32> = vec4<f32>(x_1849, x_1851, x_1853, x_1855);
    let x_1863 : vec4<bool> = (vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1856.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1863.x, x_1863.y);
    let x_1866 : bool = u_xlatb7.y;
    if (x_1866) {
      let x_1871 : f32 = u_xlat6.w;
      x_1867 = x_1871;
    } else {
      let x_1874 : f32 = u_xlat6.x;
      x_1867 = x_1874;
    }
    let x_1875 : f32 = x_1867;
    u_xlat55 = x_1875;
    let x_1877 : bool = u_xlatb7.x;
    if (x_1877) {
      let x_1881 : vec4<f32> = u_xlat6;
      x_1878 = vec3<f32>(x_1881.x, x_1881.y, x_1881.z);
    } else {
      let x_1884 : f32 = u_xlat55;
      x_1878 = vec3<f32>(x_1884, x_1884, x_1884);
    }
    let x_1886 : vec3<f32> = x_1878;
    let x_1887 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1893 : vec4<f32> = u_xlat6;
  let x_1896 : vec4<f32> = x_29.x_MainLightColor;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1893.x, x_1893.y, x_1893.z) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : vec3<f32> = u_xlat27;
  let x_1903 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(-(x_1901), x_1903);
  let x_1905 : f32 = u_xlat55;
  let x_1906 : f32 = u_xlat55;
  u_xlat55 = (x_1905 + x_1906);
  let x_1908 : vec3<f32> = u_xlat2;
  let x_1909 : f32 = u_xlat55;
  let x_1913 : vec3<f32> = u_xlat27;
  let x_1915 : vec3<f32> = ((x_1908 * -(vec3<f32>(x_1909, x_1909, x_1909))) + -(x_1913));
  let x_1916 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
  let x_1918 : vec3<f32> = u_xlat2;
  let x_1919 : vec3<f32> = u_xlat27;
  u_xlat55 = dot(x_1918, x_1919);
  let x_1921 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1921, 0.0f, 1.0f);
  let x_1923 : f32 = u_xlat55;
  u_xlat55 = (-(x_1923) + 1.0f);
  let x_1926 : f32 = u_xlat55;
  let x_1927 : f32 = u_xlat55;
  u_xlat55 = (x_1926 * x_1927);
  let x_1929 : f32 = u_xlat55;
  let x_1930 : f32 = u_xlat55;
  u_xlat55 = (x_1929 * x_1930);
  let x_1932 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1932) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1938 : f32 = u_xlat1;
  let x_1939 : f32 = u_xlat84;
  u_xlat1 = (x_1938 * x_1939);
  let x_1941 : f32 = u_xlat1;
  u_xlat1 = (x_1941 * 6.0f);
  let x_1952 : vec4<f32> = u_xlat7;
  let x_1954 : f32 = u_xlat1;
  let x_1955 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1952.x, x_1952.y, x_1952.z), x_1954);
  u_xlat7 = x_1955;
  let x_1957 : f32 = u_xlat7.w;
  u_xlat1 = (x_1957 + -1.0f);
  let x_1964 : f32 = x_1962.unity_SpecCube0_HDR.w;
  let x_1965 : f32 = u_xlat1;
  u_xlat1 = ((x_1964 * x_1965) + 1.0f);
  let x_1968 : f32 = u_xlat1;
  u_xlat1 = max(x_1968, 0.0f);
  let x_1970 : f32 = u_xlat1;
  u_xlat1 = log2(x_1970);
  let x_1972 : f32 = u_xlat1;
  let x_1974 : f32 = x_1962.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1972 * x_1974);
  let x_1976 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1976);
  let x_1978 : f32 = u_xlat1;
  let x_1980 : f32 = x_1962.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1978 * x_1980);
  let x_1982 : vec4<f32> = u_xlat7;
  let x_1984 : f32 = u_xlat1;
  let x_1986 : vec3<f32> = (vec3<f32>(x_1982.x, x_1982.y, x_1982.z) * vec3<f32>(x_1984, x_1984, x_1984));
  let x_1987 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
  let x_1989 : f32 = u_xlat81;
  let x_1991 : f32 = u_xlat81;
  let x_1995 : vec2<f32> = ((vec2<f32>(x_1989, x_1989) * vec2<f32>(x_1991, x_1991)) + vec2<f32>(-1.0f, 1.0f));
  let x_1996 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1995.x, x_1995.y, x_1996.z, x_1996.w);
  let x_1999 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1999);
  let x_2001 : vec4<f32> = u_xlat0;
  let x_2004 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2001.x, x_2001.y, x_2001.z)) + vec3<f32>(x_2004, x_2004, x_2004));
  let x_2007 : f32 = u_xlat55;
  let x_2009 : vec3<f32> = u_xlat34;
  let x_2011 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2007, x_2007, x_2007) * x_2009) + vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
  let x_2014 : f32 = u_xlat1;
  let x_2016 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2014, x_2014, x_2014) * x_2016);
  let x_2018 : vec4<f32> = u_xlat7;
  let x_2020 : vec3<f32> = u_xlat34;
  let x_2021 : vec3<f32> = (vec3<f32>(x_2018.x, x_2018.y, x_2018.z) * x_2020);
  let x_2022 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  let x_2024 : vec4<f32> = u_xlat4;
  let x_2026 : vec3<f32> = u_xlat5;
  let x_2028 : vec4<f32> = u_xlat7;
  let x_2030 : vec3<f32> = ((vec3<f32>(x_2024.x, x_2024.y, x_2024.z) * x_2026) + vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
  let x_2031 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
  let x_2034 : f32 = u_xlat3.x;
  let x_2036 : f32 = x_1962.unity_LightData.z;
  u_xlat78 = (x_2034 * x_2036);
  let x_2038 : vec3<f32> = u_xlat2;
  let x_2040 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_2038, vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
  let x_2043 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2043, 0.0f, 1.0f);
  let x_2045 : f32 = u_xlat78;
  let x_2046 : f32 = u_xlat1;
  u_xlat78 = (x_2045 * x_2046);
  let x_2048 : f32 = u_xlat78;
  let x_2050 : vec4<f32> = u_xlat6;
  let x_2052 : vec3<f32> = (vec3<f32>(x_2048, x_2048, x_2048) * vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
  let x_2053 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2052.x, x_2053.y, x_2052.y, x_2052.z);
  let x_2055 : vec3<f32> = u_xlat27;
  let x_2057 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2059 : vec3<f32> = (x_2055 + vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
  let x_2060 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
  let x_2062 : vec4<f32> = u_xlat6;
  let x_2064 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2062.x, x_2062.y, x_2062.z), vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2067 : f32 = u_xlat78;
  u_xlat78 = max(x_2067, 1.17549435e-38f);
  let x_2070 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2070);
  let x_2072 : f32 = u_xlat78;
  let x_2074 : vec4<f32> = u_xlat6;
  let x_2076 : vec3<f32> = (vec3<f32>(x_2072, x_2072, x_2072) * vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
  let x_2079 : vec3<f32> = u_xlat2;
  let x_2080 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_2079, vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
  let x_2083 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2083, 0.0f, 1.0f);
  let x_2086 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2088 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_2086.x, x_2086.y, x_2086.z), vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
  let x_2091 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2091, 0.0f, 1.0f);
  let x_2093 : f32 = u_xlat78;
  let x_2094 : f32 = u_xlat78;
  u_xlat78 = (x_2093 * x_2094);
  let x_2096 : f32 = u_xlat78;
  let x_2098 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2096 * x_2098) + 1.00001001358032226562f);
  let x_2102 : f32 = u_xlat1;
  let x_2103 : f32 = u_xlat1;
  u_xlat1 = (x_2102 * x_2103);
  let x_2105 : f32 = u_xlat78;
  let x_2106 : f32 = u_xlat78;
  u_xlat78 = (x_2105 * x_2106);
  let x_2108 : f32 = u_xlat1;
  u_xlat1 = max(x_2108, 0.10000000149011611938f);
  let x_2111 : f32 = u_xlat78;
  let x_2112 : f32 = u_xlat1;
  u_xlat78 = (x_2111 * x_2112);
  let x_2114 : f32 = u_xlat82;
  let x_2115 : f32 = u_xlat78;
  u_xlat78 = (x_2114 * x_2115);
  let x_2117 : f32 = u_xlat83;
  let x_2118 : f32 = u_xlat78;
  u_xlat78 = (x_2117 / x_2118);
  let x_2120 : vec4<f32> = u_xlat0;
  let x_2122 : f32 = u_xlat78;
  let x_2125 : vec3<f32> = u_xlat5;
  let x_2126 : vec3<f32> = ((vec3<f32>(x_2120.x, x_2120.y, x_2120.z) * vec3<f32>(x_2122, x_2122, x_2122)) + x_2125);
  let x_2127 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
  let x_2130 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2132 : f32 = x_1962.unity_LightData.y;
  u_xlat78 = min(x_2130, x_2132);
  let x_2135 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2135));
  let x_2138 : f32 = u_xlat29;
  let x_2141 : f32 = x_128.x_AdditionalShadowFadeParams.x;
  let x_2144 : f32 = x_128.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2138 * x_2141) + x_2144);
  let x_2146 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2146, 0.0f, 1.0f);
  let x_2149 : f32 = x_1784.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2151 : f32 = x_1784.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2153 : f32 = x_1784.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2155 : f32 = x_1784.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2156 : vec4<f32> = vec4<f32>(x_2149, x_2151, x_2153, x_2155);
  let x_2162 : vec4<bool> = (vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2156.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2162.x, x_2162.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2174 : u32 = u_xlatu_loop_1;
    let x_2175 : u32 = u_xlatu78;
    if ((x_2174 < x_2175)) {
    } else {
      break;
    }
    let x_2178 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2178 >> 2u);
    let x_2181 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2181 & 3u));
    let x_2184 : u32 = u_xlatu84;
    let x_2187 : vec4<f32> = x_1962.unity_LightIndices[bitcast<i32>(x_2184)];
    let x_2197 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2202 : vec4<u32> = indexable[x_2197];
    u_xlat84 = dot(x_2187, bitcast<vec4<f32>>(x_2202));
    let x_2206 : f32 = u_xlat84;
    u_xlati84 = i32(x_2206);
    let x_2208 : vec3<f32> = vs_TEXCOORD7;
    let x_2219 : i32 = u_xlati84;
    let x_2221 : vec4<f32> = x_2218.x_AdditionalLightsPosition[x_2219];
    let x_2224 : i32 = u_xlati84;
    let x_2226 : vec4<f32> = x_2218.x_AdditionalLightsPosition[x_2224];
    let x_2228 : vec3<f32> = ((-(x_2208) * vec3<f32>(x_2221.w, x_2221.w, x_2221.w)) + vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
    let x_2229 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
    let x_2231 : vec4<f32> = u_xlat9;
    let x_2233 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_2231.x, x_2231.y, x_2231.z), vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
    let x_2238 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2238, 0.00006103515625f);
    let x_2244 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_2244);
    let x_2246 : f32 = u_xlat85;
    let x_2248 : vec4<f32> = u_xlat9;
    let x_2250 : vec3<f32> = (vec3<f32>(x_2246, x_2246, x_2246) * vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
    let x_2251 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
    let x_2255 : f32 = u_xlat59.x;
    u_xlat87 = (1.0f / x_2255);
    let x_2258 : f32 = u_xlat59.x;
    let x_2259 : i32 = u_xlati84;
    let x_2261 : f32 = x_2218.x_AdditionalLightsAttenuation[x_2259].x;
    u_xlat59.x = (x_2258 * x_2261);
    let x_2265 : f32 = u_xlat59.x;
    let x_2268 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_2265) * x_2268) + 1.0f);
    let x_2273 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2273, 0.0f);
    let x_2277 : f32 = u_xlat59.x;
    let x_2279 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2277 * x_2279);
    let x_2283 : f32 = u_xlat59.x;
    let x_2284 : f32 = u_xlat87;
    u_xlat59.x = (x_2283 * x_2284);
    let x_2287 : i32 = u_xlati84;
    let x_2289 : vec4<f32> = x_2218.x_AdditionalLightsSpotDir[x_2287];
    let x_2291 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2289.x, x_2289.y, x_2289.z), vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
    let x_2294 : f32 = u_xlat87;
    let x_2295 : i32 = u_xlati84;
    let x_2297 : f32 = x_2218.x_AdditionalLightsAttenuation[x_2295].z;
    let x_2299 : i32 = u_xlati84;
    let x_2301 : f32 = x_2218.x_AdditionalLightsAttenuation[x_2299].w;
    u_xlat87 = ((x_2294 * x_2297) + x_2301);
    let x_2303 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2303, 0.0f, 1.0f);
    let x_2305 : f32 = u_xlat87;
    let x_2306 : f32 = u_xlat87;
    u_xlat87 = (x_2305 * x_2306);
    let x_2309 : f32 = u_xlat59.x;
    let x_2310 : f32 = u_xlat87;
    u_xlat59.x = (x_2309 * x_2310);
    let x_2315 : i32 = u_xlati84;
    let x_2317 : f32 = x_128.x_AdditionalShadowParams[x_2315].w;
    u_xlati87 = i32(x_2317);
    let x_2320 : i32 = u_xlati87;
    u_xlatb88 = (x_2320 >= 0i);
    let x_2322 : bool = u_xlatb88;
    if (x_2322) {
      let x_2326 : i32 = u_xlati84;
      let x_2328 : f32 = x_128.x_AdditionalShadowParams[x_2326].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2328, x_2328, x_2328, x_2328))));
      let x_2332 : bool = u_xlatb88;
      if (x_2332) {
        let x_2336 : vec4<f32> = u_xlat10;
        let x_2339 : vec4<f32> = u_xlat10;
        let x_2342 : vec4<bool> = (abs(vec4<f32>(x_2336.z, x_2336.z, x_2336.y, x_2336.z)) >= abs(vec4<f32>(x_2339.x, x_2339.y, x_2339.x, x_2339.x)));
        let x_2344 : vec3<bool> = vec3<bool>(x_2342.x, x_2342.y, x_2342.z);
        let x_2345 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
        let x_2348 : bool = u_xlatb11.y;
        let x_2350 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2348 & x_2350);
        let x_2352 : vec4<f32> = u_xlat10;
        let x_2355 : vec4<bool> = (-(vec4<f32>(x_2352.z, x_2352.y, x_2352.z, x_2352.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2356 : vec3<bool> = vec3<bool>(x_2355.x, x_2355.y, x_2355.w);
        let x_2357 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2356.x, x_2356.y, x_2357.z, x_2356.z);
        let x_2360 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2360);
        let x_2365 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2365);
        let x_2370 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2370);
        let x_2374 : bool = u_xlatb11.z;
        if (x_2374) {
          let x_2379 : f32 = u_xlat11.y;
          x_2375 = x_2379;
        } else {
          let x_2381 : f32 = u_xlat89;
          x_2375 = x_2381;
        }
        let x_2382 : f32 = x_2375;
        u_xlat37.x = x_2382;
        let x_2385 : bool = u_xlatb88;
        if (x_2385) {
          let x_2390 : f32 = u_xlat11.x;
          x_2386 = x_2390;
        } else {
          let x_2393 : f32 = u_xlat37.x;
          x_2386 = x_2393;
        }
        let x_2394 : f32 = x_2386;
        u_xlat88 = x_2394;
        let x_2395 : i32 = u_xlati84;
        let x_2397 : f32 = x_128.x_AdditionalShadowParams[x_2395].w;
        u_xlat11.x = trunc(x_2397);
        let x_2400 : f32 = u_xlat88;
        let x_2402 : f32 = u_xlat11.x;
        u_xlat88 = (x_2400 + x_2402);
        let x_2404 : f32 = u_xlat88;
        u_xlati87 = i32(x_2404);
      }
      let x_2406 : i32 = u_xlati87;
      u_xlati87 = (x_2406 << bitcast<u32>(2i));
      let x_2408 : vec3<f32> = vs_TEXCOORD7;
      let x_2411 : i32 = u_xlati87;
      let x_2414 : i32 = u_xlati87;
      let x_2418 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_2411 + 1i) / 4i)][((x_2414 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2408.y, x_2408.y, x_2408.y, x_2408.y) * x_2418);
      let x_2420 : i32 = u_xlati87;
      let x_2422 : i32 = u_xlati87;
      let x_2425 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[(x_2420 / 4i)][(x_2422 % 4i)];
      let x_2426 : vec3<f32> = vs_TEXCOORD7;
      let x_2429 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2425 * vec4<f32>(x_2426.x, x_2426.x, x_2426.x, x_2426.x)) + x_2429);
      let x_2431 : i32 = u_xlati87;
      let x_2434 : i32 = u_xlati87;
      let x_2438 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_2431 + 2i) / 4i)][((x_2434 + 2i) % 4i)];
      let x_2439 : vec3<f32> = vs_TEXCOORD7;
      let x_2442 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2438 * vec4<f32>(x_2439.z, x_2439.z, x_2439.z, x_2439.z)) + x_2442);
      let x_2444 : vec4<f32> = u_xlat11;
      let x_2445 : i32 = u_xlati87;
      let x_2448 : i32 = u_xlati87;
      let x_2452 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_2445 + 3i) / 4i)][((x_2448 + 3i) % 4i)];
      u_xlat11 = (x_2444 + x_2452);
      let x_2454 : vec4<f32> = u_xlat11;
      let x_2456 : vec4<f32> = u_xlat11;
      let x_2458 : vec3<f32> = (vec3<f32>(x_2454.x, x_2454.y, x_2454.z) / vec3<f32>(x_2456.w, x_2456.w, x_2456.w));
      let x_2459 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
      let x_2462 : i32 = u_xlati84;
      let x_2464 : f32 = x_128.x_AdditionalShadowParams[x_2462].y;
      u_xlatb87 = (0.0f < x_2464);
      let x_2466 : bool = u_xlatb87;
      if (x_2466) {
        let x_2469 : i32 = u_xlati84;
        let x_2471 : f32 = x_128.x_AdditionalShadowParams[x_2469].y;
        u_xlatb87 = (1.0f == x_2471);
        let x_2473 : bool = u_xlatb87;
        if (x_2473) {
          let x_2476 : vec4<f32> = u_xlat11;
          let x_2480 : vec4<f32> = x_128.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2476.x, x_2476.y, x_2476.x, x_2476.y) + x_2480);
          let x_2483 : vec4<f32> = u_xlat12;
          let x_2484 : vec2<f32> = vec2<f32>(x_2483.x, x_2483.y);
          let x_2486 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2484.x, x_2484.y, x_2486);
          let x_2494 : vec3<f32> = txVec30;
          let x_2496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2494.xy, x_2494.z);
          u_xlat13.x = x_2496;
          let x_2499 : vec4<f32> = u_xlat12;
          let x_2500 : vec2<f32> = vec2<f32>(x_2499.z, x_2499.w);
          let x_2502 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2500.x, x_2500.y, x_2502);
          let x_2509 : vec3<f32> = txVec31;
          let x_2511 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2509.xy, x_2509.z);
          u_xlat13.y = x_2511;
          let x_2513 : vec4<f32> = u_xlat11;
          let x_2517 : vec4<f32> = x_128.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2513.x, x_2513.y, x_2513.x, x_2513.y) + x_2517);
          let x_2520 : vec4<f32> = u_xlat12;
          let x_2521 : vec2<f32> = vec2<f32>(x_2520.x, x_2520.y);
          let x_2523 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2521.x, x_2521.y, x_2523);
          let x_2530 : vec3<f32> = txVec32;
          let x_2532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2530.xy, x_2530.z);
          u_xlat13.z = x_2532;
          let x_2535 : vec4<f32> = u_xlat12;
          let x_2536 : vec2<f32> = vec2<f32>(x_2535.z, x_2535.w);
          let x_2538 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2536.x, x_2536.y, x_2538);
          let x_2545 : vec3<f32> = txVec33;
          let x_2547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2545.xy, x_2545.z);
          u_xlat13.w = x_2547;
          let x_2549 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2549, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2552 : i32 = u_xlati84;
          let x_2554 : f32 = x_128.x_AdditionalShadowParams[x_2552].y;
          u_xlatb88 = (2.0f == x_2554);
          let x_2556 : bool = u_xlatb88;
          if (x_2556) {
            let x_2559 : vec4<f32> = u_xlat11;
            let x_2563 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2566 : vec2<f32> = ((vec2<f32>(x_2559.x, x_2559.y) * vec2<f32>(x_2563.z, x_2563.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2567 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
            let x_2569 : vec4<f32> = u_xlat12;
            let x_2571 : vec2<f32> = floor(vec2<f32>(x_2569.x, x_2569.y));
            let x_2572 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2571.x, x_2571.y, x_2572.z, x_2572.w);
            let x_2575 : vec4<f32> = u_xlat11;
            let x_2578 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2581 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2575.x, x_2575.y) * vec2<f32>(x_2578.z, x_2578.w)) + -(vec2<f32>(x_2581.x, x_2581.y)));
            let x_2585 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2585.x, x_2585.x, x_2585.y, x_2585.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2588 : vec4<f32> = u_xlat13;
            let x_2590 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2588.x, x_2588.x, x_2588.z, x_2588.z) * vec4<f32>(x_2590.x, x_2590.x, x_2590.z, x_2590.z));
            let x_2593 : vec4<f32> = u_xlat14;
            let x_2595 : vec2<f32> = (vec2<f32>(x_2593.y, x_2593.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2596 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2595.x, x_2596.y, x_2595.y, x_2596.w);
            let x_2598 : vec4<f32> = u_xlat14;
            let x_2601 : vec2<f32> = u_xlat64;
            let x_2603 : vec2<f32> = ((vec2<f32>(x_2598.x, x_2598.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2601));
            let x_2604 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2603.x, x_2603.y, x_2604.z, x_2604.w);
            let x_2607 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2607) + vec2<f32>(1.0f, 1.0f));
            let x_2610 : vec2<f32> = u_xlat64;
            let x_2611 : vec2<f32> = min(x_2610, vec2<f32>(0.0f, 0.0f));
            let x_2612 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2611.x, x_2611.y, x_2612.z, x_2612.w);
            let x_2614 : vec4<f32> = u_xlat15;
            let x_2617 : vec4<f32> = u_xlat15;
            let x_2620 : vec2<f32> = u_xlat66;
            let x_2621 : vec2<f32> = ((-(vec2<f32>(x_2614.x, x_2614.y)) * vec2<f32>(x_2617.x, x_2617.y)) + x_2620);
            let x_2622 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2621.x, x_2621.y, x_2622.z, x_2622.w);
            let x_2624 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2624, vec2<f32>(0.0f, 0.0f));
            let x_2626 : vec2<f32> = u_xlat64;
            let x_2628 : vec2<f32> = u_xlat64;
            let x_2630 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2626) * x_2628) + vec2<f32>(x_2630.y, x_2630.w));
            let x_2633 : vec4<f32> = u_xlat15;
            let x_2635 : vec2<f32> = (vec2<f32>(x_2633.x, x_2633.y) + vec2<f32>(1.0f, 1.0f));
            let x_2636 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2638 + vec2<f32>(1.0f, 1.0f));
            let x_2640 : vec4<f32> = u_xlat14;
            let x_2642 : vec2<f32> = (vec2<f32>(x_2640.x, x_2640.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2643 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2642.x, x_2642.y, x_2643.z, x_2643.w);
            let x_2645 : vec2<f32> = u_xlat66;
            let x_2646 : vec2<f32> = (x_2645 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2647 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2646.x, x_2646.y, x_2647.z, x_2647.w);
            let x_2649 : vec4<f32> = u_xlat15;
            let x_2651 : vec2<f32> = (vec2<f32>(x_2649.x, x_2649.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2652 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2651.x, x_2651.y, x_2652.z, x_2652.w);
            let x_2654 : vec2<f32> = u_xlat64;
            let x_2655 : vec2<f32> = (x_2654 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2656 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
            let x_2658 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2658.y, x_2658.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2662 : f32 = u_xlat15.x;
            u_xlat16.z = x_2662;
            let x_2665 : f32 = u_xlat64.x;
            u_xlat16.w = x_2665;
            let x_2668 : f32 = u_xlat17.x;
            u_xlat14.z = x_2668;
            let x_2671 : f32 = u_xlat13.x;
            u_xlat14.w = x_2671;
            let x_2673 : vec4<f32> = u_xlat14;
            let x_2675 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2673.z, x_2673.w, x_2673.x, x_2673.z) + vec4<f32>(x_2675.z, x_2675.w, x_2675.x, x_2675.z));
            let x_2679 : f32 = u_xlat16.y;
            u_xlat15.z = x_2679;
            let x_2682 : f32 = u_xlat64.y;
            u_xlat15.w = x_2682;
            let x_2685 : f32 = u_xlat14.y;
            u_xlat17.z = x_2685;
            let x_2688 : f32 = u_xlat13.z;
            u_xlat17.w = x_2688;
            let x_2690 : vec4<f32> = u_xlat15;
            let x_2692 : vec4<f32> = u_xlat17;
            let x_2694 : vec3<f32> = (vec3<f32>(x_2690.z, x_2690.y, x_2690.w) + vec3<f32>(x_2692.z, x_2692.y, x_2692.w));
            let x_2695 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2694.x, x_2694.y, x_2694.z, x_2695.w);
            let x_2697 : vec4<f32> = u_xlat14;
            let x_2699 : vec4<f32> = u_xlat18;
            let x_2701 : vec3<f32> = (vec3<f32>(x_2697.x, x_2697.z, x_2697.w) / vec3<f32>(x_2699.z, x_2699.w, x_2699.y));
            let x_2702 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2701.x, x_2701.y, x_2701.z, x_2702.w);
            let x_2704 : vec4<f32> = u_xlat14;
            let x_2706 : vec3<f32> = (vec3<f32>(x_2704.x, x_2704.y, x_2704.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2707 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2707.w);
            let x_2709 : vec4<f32> = u_xlat17;
            let x_2711 : vec4<f32> = u_xlat13;
            let x_2713 : vec3<f32> = (vec3<f32>(x_2709.z, x_2709.y, x_2709.w) / vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
            let x_2714 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
            let x_2716 : vec4<f32> = u_xlat15;
            let x_2718 : vec3<f32> = (vec3<f32>(x_2716.x, x_2716.y, x_2716.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2719 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
            let x_2721 : vec4<f32> = u_xlat14;
            let x_2724 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2726 : vec3<f32> = (vec3<f32>(x_2721.y, x_2721.x, x_2721.z) * vec3<f32>(x_2724.x, x_2724.x, x_2724.x));
            let x_2727 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2726.x, x_2726.y, x_2726.z, x_2727.w);
            let x_2729 : vec4<f32> = u_xlat15;
            let x_2732 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2734 : vec3<f32> = (vec3<f32>(x_2729.x, x_2729.y, x_2729.z) * vec3<f32>(x_2732.y, x_2732.y, x_2732.y));
            let x_2735 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
            let x_2738 : f32 = u_xlat15.x;
            u_xlat14.w = x_2738;
            let x_2740 : vec4<f32> = u_xlat12;
            let x_2743 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2746 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.y) * vec4<f32>(x_2743.x, x_2743.y, x_2743.x, x_2743.y)) + vec4<f32>(x_2746.y, x_2746.w, x_2746.x, x_2746.w));
            let x_2749 : vec4<f32> = u_xlat12;
            let x_2752 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2755 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2749.x, x_2749.y) * vec2<f32>(x_2752.x, x_2752.y)) + vec2<f32>(x_2755.z, x_2755.w));
            let x_2759 : f32 = u_xlat14.y;
            u_xlat15.w = x_2759;
            let x_2761 : vec4<f32> = u_xlat15;
            let x_2762 : vec2<f32> = vec2<f32>(x_2761.y, x_2761.z);
            let x_2763 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2763.x, x_2762.x, x_2763.z, x_2762.y);
            let x_2765 : vec4<f32> = u_xlat12;
            let x_2768 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2771 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y) * vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y)) + vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2771.y));
            let x_2774 : vec4<f32> = u_xlat12;
            let x_2777 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2780 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y) * vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y)) + vec4<f32>(x_2780.w, x_2780.y, x_2780.w, x_2780.z));
            let x_2783 : vec4<f32> = u_xlat12;
            let x_2786 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_2789 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y) * vec4<f32>(x_2786.x, x_2786.y, x_2786.x, x_2786.y)) + vec4<f32>(x_2789.x, x_2789.w, x_2789.z, x_2789.w));
            let x_2792 : vec4<f32> = u_xlat13;
            let x_2794 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2792.x, x_2792.x, x_2792.x, x_2792.y) * vec4<f32>(x_2794.z, x_2794.w, x_2794.y, x_2794.z));
            let x_2797 : vec4<f32> = u_xlat13;
            let x_2799 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2797.y, x_2797.y, x_2797.z, x_2797.z) * x_2799);
            let x_2802 : f32 = u_xlat13.z;
            let x_2804 : f32 = u_xlat18.y;
            u_xlat88 = (x_2802 * x_2804);
            let x_2807 : vec4<f32> = u_xlat16;
            let x_2808 : vec2<f32> = vec2<f32>(x_2807.x, x_2807.y);
            let x_2810 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2808.x, x_2808.y, x_2810);
            let x_2817 : vec3<f32> = txVec34;
            let x_2819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2817.xy, x_2817.z);
            u_xlat89 = x_2819;
            let x_2821 : vec4<f32> = u_xlat16;
            let x_2822 : vec2<f32> = vec2<f32>(x_2821.z, x_2821.w);
            let x_2824 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2822.x, x_2822.y, x_2824);
            let x_2831 : vec3<f32> = txVec35;
            let x_2833 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2831.xy, x_2831.z);
            u_xlat12.x = x_2833;
            let x_2836 : f32 = u_xlat12.x;
            let x_2838 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2836 * x_2838);
            let x_2842 : f32 = u_xlat19.x;
            let x_2843 : f32 = u_xlat89;
            let x_2846 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2842 * x_2843) + x_2846);
            let x_2849 : vec2<f32> = u_xlat64;
            let x_2851 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2849.x, x_2849.y, x_2851);
            let x_2858 : vec3<f32> = txVec36;
            let x_2860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2858.xy, x_2858.z);
            u_xlat12.x = x_2860;
            let x_2863 : f32 = u_xlat19.z;
            let x_2865 : f32 = u_xlat12.x;
            let x_2867 : f32 = u_xlat89;
            u_xlat89 = ((x_2863 * x_2865) + x_2867);
            let x_2870 : vec4<f32> = u_xlat15;
            let x_2871 : vec2<f32> = vec2<f32>(x_2870.x, x_2870.y);
            let x_2873 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2871.x, x_2871.y, x_2873);
            let x_2880 : vec3<f32> = txVec37;
            let x_2882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2880.xy, x_2880.z);
            u_xlat12.x = x_2882;
            let x_2885 : f32 = u_xlat19.w;
            let x_2887 : f32 = u_xlat12.x;
            let x_2889 : f32 = u_xlat89;
            u_xlat89 = ((x_2885 * x_2887) + x_2889);
            let x_2892 : vec4<f32> = u_xlat17;
            let x_2893 : vec2<f32> = vec2<f32>(x_2892.x, x_2892.y);
            let x_2895 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
            let x_2902 : vec3<f32> = txVec38;
            let x_2904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2902.xy, x_2902.z);
            u_xlat12.x = x_2904;
            let x_2907 : f32 = u_xlat20.x;
            let x_2909 : f32 = u_xlat12.x;
            let x_2911 : f32 = u_xlat89;
            u_xlat89 = ((x_2907 * x_2909) + x_2911);
            let x_2914 : vec4<f32> = u_xlat17;
            let x_2915 : vec2<f32> = vec2<f32>(x_2914.z, x_2914.w);
            let x_2917 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
            let x_2924 : vec3<f32> = txVec39;
            let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
            u_xlat12.x = x_2926;
            let x_2929 : f32 = u_xlat20.y;
            let x_2931 : f32 = u_xlat12.x;
            let x_2933 : f32 = u_xlat89;
            u_xlat89 = ((x_2929 * x_2931) + x_2933);
            let x_2936 : vec4<f32> = u_xlat15;
            let x_2937 : vec2<f32> = vec2<f32>(x_2936.z, x_2936.w);
            let x_2939 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2937.x, x_2937.y, x_2939);
            let x_2946 : vec3<f32> = txVec40;
            let x_2948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2946.xy, x_2946.z);
            u_xlat12.x = x_2948;
            let x_2951 : f32 = u_xlat20.z;
            let x_2953 : f32 = u_xlat12.x;
            let x_2955 : f32 = u_xlat89;
            u_xlat89 = ((x_2951 * x_2953) + x_2955);
            let x_2958 : vec4<f32> = u_xlat14;
            let x_2959 : vec2<f32> = vec2<f32>(x_2958.x, x_2958.y);
            let x_2961 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2959.x, x_2959.y, x_2961);
            let x_2968 : vec3<f32> = txVec41;
            let x_2970 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2968.xy, x_2968.z);
            u_xlat12.x = x_2970;
            let x_2973 : f32 = u_xlat20.w;
            let x_2975 : f32 = u_xlat12.x;
            let x_2977 : f32 = u_xlat89;
            u_xlat89 = ((x_2973 * x_2975) + x_2977);
            let x_2980 : vec4<f32> = u_xlat14;
            let x_2981 : vec2<f32> = vec2<f32>(x_2980.z, x_2980.w);
            let x_2983 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
            let x_2990 : vec3<f32> = txVec42;
            let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
            u_xlat12.x = x_2992;
            let x_2994 : f32 = u_xlat88;
            let x_2996 : f32 = u_xlat12.x;
            let x_2998 : f32 = u_xlat89;
            u_xlat87 = ((x_2994 * x_2996) + x_2998);
          } else {
            let x_3001 : vec4<f32> = u_xlat11;
            let x_3004 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3007 : vec2<f32> = ((vec2<f32>(x_3001.x, x_3001.y) * vec2<f32>(x_3004.z, x_3004.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3008 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3007.x, x_3007.y, x_3008.z, x_3008.w);
            let x_3010 : vec4<f32> = u_xlat12;
            let x_3012 : vec2<f32> = floor(vec2<f32>(x_3010.x, x_3010.y));
            let x_3013 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3012.x, x_3012.y, x_3013.z, x_3013.w);
            let x_3015 : vec4<f32> = u_xlat11;
            let x_3018 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3021 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3015.x, x_3015.y) * vec2<f32>(x_3018.z, x_3018.w)) + -(vec2<f32>(x_3021.x, x_3021.y)));
            let x_3025 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3025.x, x_3025.x, x_3025.y, x_3025.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3028 : vec4<f32> = u_xlat13;
            let x_3030 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3028.x, x_3028.x, x_3028.z, x_3028.z) * vec4<f32>(x_3030.x, x_3030.x, x_3030.z, x_3030.z));
            let x_3033 : vec4<f32> = u_xlat14;
            let x_3035 : vec2<f32> = (vec2<f32>(x_3033.y, x_3033.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3036 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3036.x, x_3035.x, x_3036.z, x_3035.y);
            let x_3038 : vec4<f32> = u_xlat14;
            let x_3041 : vec2<f32> = u_xlat64;
            let x_3043 : vec2<f32> = ((vec2<f32>(x_3038.x, x_3038.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3041));
            let x_3044 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3043.x, x_3044.y, x_3043.y, x_3044.w);
            let x_3046 : vec2<f32> = u_xlat64;
            let x_3048 : vec2<f32> = (-(x_3046) + vec2<f32>(1.0f, 1.0f));
            let x_3049 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3048.x, x_3048.y, x_3049.z, x_3049.w);
            let x_3051 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3051, vec2<f32>(0.0f, 0.0f));
            let x_3053 : vec2<f32> = u_xlat66;
            let x_3055 : vec2<f32> = u_xlat66;
            let x_3057 : vec4<f32> = u_xlat14;
            let x_3059 : vec2<f32> = ((-(x_3053) * x_3055) + vec2<f32>(x_3057.x, x_3057.y));
            let x_3060 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3059.x, x_3059.y, x_3060.z, x_3060.w);
            let x_3062 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3062, vec2<f32>(0.0f, 0.0f));
            let x_3065 : vec2<f32> = u_xlat66;
            let x_3067 : vec2<f32> = u_xlat66;
            let x_3069 : vec4<f32> = u_xlat13;
            let x_3071 : vec2<f32> = ((-(x_3065) * x_3067) + vec2<f32>(x_3069.y, x_3069.w));
            let x_3072 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3071.x, x_3072.y, x_3071.y);
            let x_3074 : vec4<f32> = u_xlat14;
            let x_3077 : vec2<f32> = (vec2<f32>(x_3074.x, x_3074.y) + vec2<f32>(2.0f, 2.0f));
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3077.x, x_3077.y, x_3078.z, x_3078.w);
            let x_3080 : vec3<f32> = u_xlat39;
            let x_3082 : vec2<f32> = (vec2<f32>(x_3080.x, x_3080.z) + vec2<f32>(2.0f, 2.0f));
            let x_3083 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3083.x, x_3082.x, x_3083.z, x_3082.y);
            let x_3086 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3086 * 0.08163200318813323975f);
            let x_3089 : vec4<f32> = u_xlat13;
            let x_3092 : vec3<f32> = (vec3<f32>(x_3089.z, x_3089.x, x_3089.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3093 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3092.x, x_3092.y, x_3092.z, x_3093.w);
            let x_3095 : vec4<f32> = u_xlat14;
            let x_3097 : vec2<f32> = (vec2<f32>(x_3095.x, x_3095.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3098 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3097.x, x_3097.y, x_3098.z, x_3098.w);
            let x_3101 : f32 = u_xlat17.y;
            u_xlat16.x = x_3101;
            let x_3103 : vec2<f32> = u_xlat64;
            let x_3106 : vec2<f32> = ((vec2<f32>(x_3103.x, x_3103.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3107 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3107.x, x_3106.x, x_3107.z, x_3106.y);
            let x_3109 : vec2<f32> = u_xlat64;
            let x_3112 : vec2<f32> = ((vec2<f32>(x_3109.x, x_3109.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3113 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3112.x, x_3113.y, x_3112.y, x_3113.w);
            let x_3116 : f32 = u_xlat13.x;
            u_xlat14.y = x_3116;
            let x_3119 : f32 = u_xlat15.y;
            u_xlat14.w = x_3119;
            let x_3121 : vec4<f32> = u_xlat14;
            let x_3122 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3121 + x_3122);
            let x_3124 : vec2<f32> = u_xlat64;
            let x_3127 : vec2<f32> = ((vec2<f32>(x_3124.y, x_3124.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3128 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3128.x, x_3127.x, x_3128.z, x_3127.y);
            let x_3130 : vec2<f32> = u_xlat64;
            let x_3133 : vec2<f32> = ((vec2<f32>(x_3130.y, x_3130.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3134 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3133.x, x_3134.y, x_3133.y, x_3134.w);
            let x_3137 : f32 = u_xlat13.y;
            u_xlat15.y = x_3137;
            let x_3139 : vec4<f32> = u_xlat15;
            let x_3140 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3139 + x_3140);
            let x_3142 : vec4<f32> = u_xlat14;
            let x_3143 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3142 / x_3143);
            let x_3145 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3145 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3147 : vec4<f32> = u_xlat15;
            let x_3148 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3147 / x_3148);
            let x_3150 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3150 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3152 : vec4<f32> = u_xlat14;
            let x_3155 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3152.w, x_3152.x, x_3152.y, x_3152.z) * vec4<f32>(x_3155.x, x_3155.x, x_3155.x, x_3155.x));
            let x_3158 : vec4<f32> = u_xlat15;
            let x_3161 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3158.x, x_3158.w, x_3158.y, x_3158.z) * vec4<f32>(x_3161.y, x_3161.y, x_3161.y, x_3161.y));
            let x_3164 : vec4<f32> = u_xlat14;
            let x_3165 : vec3<f32> = vec3<f32>(x_3164.y, x_3164.z, x_3164.w);
            let x_3166 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3165.x, x_3166.y, x_3165.y, x_3165.z);
            let x_3169 : f32 = u_xlat15.x;
            u_xlat17.y = x_3169;
            let x_3171 : vec4<f32> = u_xlat12;
            let x_3174 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3177 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3171.x, x_3171.y, x_3171.x, x_3171.y) * vec4<f32>(x_3174.x, x_3174.y, x_3174.x, x_3174.y)) + vec4<f32>(x_3177.x, x_3177.y, x_3177.z, x_3177.y));
            let x_3180 : vec4<f32> = u_xlat12;
            let x_3183 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3186 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3180.x, x_3180.y) * vec2<f32>(x_3183.x, x_3183.y)) + vec2<f32>(x_3186.w, x_3186.y));
            let x_3190 : f32 = u_xlat17.y;
            u_xlat14.y = x_3190;
            let x_3193 : f32 = u_xlat15.z;
            u_xlat17.y = x_3193;
            let x_3195 : vec4<f32> = u_xlat12;
            let x_3198 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3201 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3195.x, x_3195.y, x_3195.x, x_3195.y) * vec4<f32>(x_3198.x, x_3198.y, x_3198.x, x_3198.y)) + vec4<f32>(x_3201.x, x_3201.y, x_3201.z, x_3201.y));
            let x_3204 : vec4<f32> = u_xlat12;
            let x_3207 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3210 : vec4<f32> = u_xlat17;
            let x_3212 : vec2<f32> = ((vec2<f32>(x_3204.x, x_3204.y) * vec2<f32>(x_3207.x, x_3207.y)) + vec2<f32>(x_3210.w, x_3210.y));
            let x_3213 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3212.x, x_3212.y, x_3213.z, x_3213.w);
            let x_3216 : f32 = u_xlat17.y;
            u_xlat14.z = x_3216;
            let x_3219 : vec4<f32> = u_xlat12;
            let x_3222 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3225 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3219.x, x_3219.y, x_3219.x, x_3219.y) * vec4<f32>(x_3222.x, x_3222.y, x_3222.x, x_3222.y)) + vec4<f32>(x_3225.x, x_3225.y, x_3225.x, x_3225.z));
            let x_3229 : f32 = u_xlat15.w;
            u_xlat17.y = x_3229;
            let x_3232 : vec4<f32> = u_xlat12;
            let x_3235 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3238 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3232.x, x_3232.y, x_3232.x, x_3232.y) * vec4<f32>(x_3235.x, x_3235.y, x_3235.x, x_3235.y)) + vec4<f32>(x_3238.x, x_3238.y, x_3238.z, x_3238.y));
            let x_3242 : vec4<f32> = u_xlat12;
            let x_3245 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3248 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3242.x, x_3242.y) * vec2<f32>(x_3245.x, x_3245.y)) + vec2<f32>(x_3248.w, x_3248.y));
            let x_3252 : f32 = u_xlat17.y;
            u_xlat14.w = x_3252;
            let x_3255 : vec4<f32> = u_xlat12;
            let x_3258 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3261 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3255.x, x_3255.y) * vec2<f32>(x_3258.x, x_3258.y)) + vec2<f32>(x_3261.x, x_3261.w));
            let x_3264 : vec4<f32> = u_xlat17;
            let x_3265 : vec3<f32> = vec3<f32>(x_3264.x, x_3264.z, x_3264.w);
            let x_3266 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3265.x, x_3266.y, x_3265.y, x_3265.z);
            let x_3268 : vec4<f32> = u_xlat12;
            let x_3271 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3274 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3268.x, x_3268.y, x_3268.x, x_3268.y) * vec4<f32>(x_3271.x, x_3271.y, x_3271.x, x_3271.y)) + vec4<f32>(x_3274.x, x_3274.y, x_3274.z, x_3274.y));
            let x_3278 : vec4<f32> = u_xlat12;
            let x_3281 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3284 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3278.x, x_3278.y) * vec2<f32>(x_3281.x, x_3281.y)) + vec2<f32>(x_3284.w, x_3284.y));
            let x_3288 : f32 = u_xlat14.x;
            u_xlat15.x = x_3288;
            let x_3290 : vec4<f32> = u_xlat12;
            let x_3293 : vec4<f32> = x_128.x_AdditionalShadowmapSize;
            let x_3296 : vec4<f32> = u_xlat15;
            let x_3298 : vec2<f32> = ((vec2<f32>(x_3290.x, x_3290.y) * vec2<f32>(x_3293.x, x_3293.y)) + vec2<f32>(x_3296.x, x_3296.y));
            let x_3299 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3298.x, x_3298.y, x_3299.z, x_3299.w);
            let x_3302 : vec4<f32> = u_xlat13;
            let x_3304 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3302.x, x_3302.x, x_3302.x, x_3302.x) * x_3304);
            let x_3307 : vec4<f32> = u_xlat13;
            let x_3309 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3307.y, x_3307.y, x_3307.y, x_3307.y) * x_3309);
            let x_3312 : vec4<f32> = u_xlat13;
            let x_3314 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3312.z, x_3312.z, x_3312.z, x_3312.z) * x_3314);
            let x_3316 : vec4<f32> = u_xlat13;
            let x_3318 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3316.w, x_3316.w, x_3316.w, x_3316.w) * x_3318);
            let x_3321 : vec4<f32> = u_xlat18;
            let x_3322 : vec2<f32> = vec2<f32>(x_3321.x, x_3321.y);
            let x_3324 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3322.x, x_3322.y, x_3324);
            let x_3331 : vec3<f32> = txVec43;
            let x_3333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3331.xy, x_3331.z);
            u_xlat88 = x_3333;
            let x_3335 : vec4<f32> = u_xlat18;
            let x_3336 : vec2<f32> = vec2<f32>(x_3335.z, x_3335.w);
            let x_3338 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3336.x, x_3336.y, x_3338);
            let x_3345 : vec3<f32> = txVec44;
            let x_3347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3345.xy, x_3345.z);
            u_xlat89 = x_3347;
            let x_3348 : f32 = u_xlat89;
            let x_3350 : f32 = u_xlat23.y;
            u_xlat89 = (x_3348 * x_3350);
            let x_3353 : f32 = u_xlat23.x;
            let x_3354 : f32 = u_xlat88;
            let x_3356 : f32 = u_xlat89;
            u_xlat88 = ((x_3353 * x_3354) + x_3356);
            let x_3359 : vec2<f32> = u_xlat64;
            let x_3361 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec45;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat89 = x_3370;
            let x_3372 : f32 = u_xlat23.z;
            let x_3373 : f32 = u_xlat89;
            let x_3375 : f32 = u_xlat88;
            u_xlat88 = ((x_3372 * x_3373) + x_3375);
            let x_3378 : vec4<f32> = u_xlat21;
            let x_3379 : vec2<f32> = vec2<f32>(x_3378.x, x_3378.y);
            let x_3381 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3379.x, x_3379.y, x_3381);
            let x_3388 : vec3<f32> = txVec46;
            let x_3390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3388.xy, x_3388.z);
            u_xlat89 = x_3390;
            let x_3392 : f32 = u_xlat23.w;
            let x_3393 : f32 = u_xlat89;
            let x_3395 : f32 = u_xlat88;
            u_xlat88 = ((x_3392 * x_3393) + x_3395);
            let x_3398 : vec4<f32> = u_xlat19;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
            let x_3401 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec47;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat89 = x_3410;
            let x_3412 : f32 = u_xlat24.x;
            let x_3413 : f32 = u_xlat89;
            let x_3415 : f32 = u_xlat88;
            u_xlat88 = ((x_3412 * x_3413) + x_3415);
            let x_3418 : vec4<f32> = u_xlat19;
            let x_3419 : vec2<f32> = vec2<f32>(x_3418.z, x_3418.w);
            let x_3421 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3419.x, x_3419.y, x_3421);
            let x_3428 : vec3<f32> = txVec48;
            let x_3430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3428.xy, x_3428.z);
            u_xlat89 = x_3430;
            let x_3432 : f32 = u_xlat24.y;
            let x_3433 : f32 = u_xlat89;
            let x_3435 : f32 = u_xlat88;
            u_xlat88 = ((x_3432 * x_3433) + x_3435);
            let x_3438 : vec4<f32> = u_xlat20;
            let x_3439 : vec2<f32> = vec2<f32>(x_3438.x, x_3438.y);
            let x_3441 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3439.x, x_3439.y, x_3441);
            let x_3448 : vec3<f32> = txVec49;
            let x_3450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3448.xy, x_3448.z);
            u_xlat89 = x_3450;
            let x_3452 : f32 = u_xlat24.z;
            let x_3453 : f32 = u_xlat89;
            let x_3455 : f32 = u_xlat88;
            u_xlat88 = ((x_3452 * x_3453) + x_3455);
            let x_3458 : vec4<f32> = u_xlat21;
            let x_3459 : vec2<f32> = vec2<f32>(x_3458.z, x_3458.w);
            let x_3461 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3459.x, x_3459.y, x_3461);
            let x_3468 : vec3<f32> = txVec50;
            let x_3470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3468.xy, x_3468.z);
            u_xlat89 = x_3470;
            let x_3472 : f32 = u_xlat24.w;
            let x_3473 : f32 = u_xlat89;
            let x_3475 : f32 = u_xlat88;
            u_xlat88 = ((x_3472 * x_3473) + x_3475);
            let x_3478 : vec4<f32> = u_xlat22;
            let x_3479 : vec2<f32> = vec2<f32>(x_3478.x, x_3478.y);
            let x_3481 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3479.x, x_3479.y, x_3481);
            let x_3488 : vec3<f32> = txVec51;
            let x_3490 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3488.xy, x_3488.z);
            u_xlat89 = x_3490;
            let x_3492 : f32 = u_xlat25.x;
            let x_3493 : f32 = u_xlat89;
            let x_3495 : f32 = u_xlat88;
            u_xlat88 = ((x_3492 * x_3493) + x_3495);
            let x_3498 : vec4<f32> = u_xlat22;
            let x_3499 : vec2<f32> = vec2<f32>(x_3498.z, x_3498.w);
            let x_3501 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3499.x, x_3499.y, x_3501);
            let x_3508 : vec3<f32> = txVec52;
            let x_3510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3508.xy, x_3508.z);
            u_xlat89 = x_3510;
            let x_3512 : f32 = u_xlat25.y;
            let x_3513 : f32 = u_xlat89;
            let x_3515 : f32 = u_xlat88;
            u_xlat88 = ((x_3512 * x_3513) + x_3515);
            let x_3518 : vec2<f32> = u_xlat40;
            let x_3520 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3518.x, x_3518.y, x_3520);
            let x_3527 : vec3<f32> = txVec53;
            let x_3529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3527.xy, x_3527.z);
            u_xlat89 = x_3529;
            let x_3531 : f32 = u_xlat25.z;
            let x_3532 : f32 = u_xlat89;
            let x_3534 : f32 = u_xlat88;
            u_xlat88 = ((x_3531 * x_3532) + x_3534);
            let x_3537 : vec2<f32> = u_xlat72;
            let x_3539 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3537.x, x_3537.y, x_3539);
            let x_3546 : vec3<f32> = txVec54;
            let x_3548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3546.xy, x_3546.z);
            u_xlat89 = x_3548;
            let x_3550 : f32 = u_xlat25.w;
            let x_3551 : f32 = u_xlat89;
            let x_3553 : f32 = u_xlat88;
            u_xlat88 = ((x_3550 * x_3551) + x_3553);
            let x_3556 : vec4<f32> = u_xlat17;
            let x_3557 : vec2<f32> = vec2<f32>(x_3556.x, x_3556.y);
            let x_3559 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3557.x, x_3557.y, x_3559);
            let x_3566 : vec3<f32> = txVec55;
            let x_3568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3566.xy, x_3566.z);
            u_xlat89 = x_3568;
            let x_3570 : f32 = u_xlat13.x;
            let x_3571 : f32 = u_xlat89;
            let x_3573 : f32 = u_xlat88;
            u_xlat88 = ((x_3570 * x_3571) + x_3573);
            let x_3576 : vec4<f32> = u_xlat17;
            let x_3577 : vec2<f32> = vec2<f32>(x_3576.z, x_3576.w);
            let x_3579 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3577.x, x_3577.y, x_3579);
            let x_3586 : vec3<f32> = txVec56;
            let x_3588 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3586.xy, x_3586.z);
            u_xlat89 = x_3588;
            let x_3590 : f32 = u_xlat13.y;
            let x_3591 : f32 = u_xlat89;
            let x_3593 : f32 = u_xlat88;
            u_xlat88 = ((x_3590 * x_3591) + x_3593);
            let x_3596 : vec2<f32> = u_xlat67;
            let x_3598 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3596.x, x_3596.y, x_3598);
            let x_3605 : vec3<f32> = txVec57;
            let x_3607 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3605.xy, x_3605.z);
            u_xlat89 = x_3607;
            let x_3609 : f32 = u_xlat13.z;
            let x_3610 : f32 = u_xlat89;
            let x_3612 : f32 = u_xlat88;
            u_xlat88 = ((x_3609 * x_3610) + x_3612);
            let x_3615 : vec4<f32> = u_xlat12;
            let x_3616 : vec2<f32> = vec2<f32>(x_3615.x, x_3615.y);
            let x_3618 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3616.x, x_3616.y, x_3618);
            let x_3625 : vec3<f32> = txVec58;
            let x_3627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3625.xy, x_3625.z);
            u_xlat89 = x_3627;
            let x_3629 : f32 = u_xlat13.w;
            let x_3630 : f32 = u_xlat89;
            let x_3632 : f32 = u_xlat88;
            u_xlat87 = ((x_3629 * x_3630) + x_3632);
          }
        }
      } else {
        let x_3636 : vec4<f32> = u_xlat11;
        let x_3637 : vec2<f32> = vec2<f32>(x_3636.x, x_3636.y);
        let x_3639 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3637.x, x_3637.y, x_3639);
        let x_3646 : vec3<f32> = txVec59;
        let x_3648 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3646.xy, x_3646.z);
        u_xlat87 = x_3648;
      }
      let x_3649 : i32 = u_xlati84;
      let x_3651 : f32 = x_128.x_AdditionalShadowParams[x_3649].x;
      u_xlat88 = (1.0f + -(x_3651));
      let x_3654 : f32 = u_xlat87;
      let x_3655 : i32 = u_xlati84;
      let x_3657 : f32 = x_128.x_AdditionalShadowParams[x_3655].x;
      let x_3659 : f32 = u_xlat88;
      u_xlat87 = ((x_3654 * x_3657) + x_3659);
      let x_3662 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3662);
      let x_3665 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3665 >= 1.0f);
      let x_3668 : bool = u_xlatb88;
      let x_3670 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3668 | x_3670);
      let x_3672 : bool = u_xlatb88;
      let x_3673 : f32 = u_xlat87;
      u_xlat87 = select(x_3673, 1.0f, x_3672);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3676 : f32 = u_xlat87;
    u_xlat88 = (-(x_3676) + 1.0f);
    let x_3679 : f32 = u_xlat1;
    let x_3680 : f32 = u_xlat88;
    let x_3682 : f32 = u_xlat87;
    u_xlat87 = ((x_3679 * x_3680) + x_3682);
    let x_3685 : i32 = u_xlati84;
    u_xlati88 = (1i << bitcast<u32>((x_3685 & 31i)));
    let x_3689 : i32 = u_xlati88;
    let x_3692 : f32 = x_1784.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3689) & bitcast<u32>(x_3692)));
    let x_3696 : i32 = u_xlati88;
    if ((x_3696 != 0i)) {
      let x_3700 : i32 = u_xlati84;
      let x_3702 : f32 = x_1784.x_AdditionalLightsLightTypes[x_3700].el;
      u_xlati88 = i32(x_3702);
      let x_3705 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3705 != 0i));
      let x_3709 : i32 = u_xlati84;
      u_xlati37 = (x_3709 << bitcast<u32>(2i));
      let x_3711 : i32 = u_xlati11;
      if ((x_3711 != 0i)) {
        let x_3715 : vec3<f32> = vs_TEXCOORD7;
        let x_3717 : i32 = u_xlati37;
        let x_3720 : i32 = u_xlati37;
        let x_3724 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3717 + 1i) / 4i)][((x_3720 + 1i) % 4i)];
        let x_3726 : vec3<f32> = (vec3<f32>(x_3715.y, x_3715.y, x_3715.y) * vec3<f32>(x_3724.x, x_3724.y, x_3724.w));
        let x_3727 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3726.x, x_3727.y, x_3726.y, x_3726.z);
        let x_3729 : i32 = u_xlati37;
        let x_3731 : i32 = u_xlati37;
        let x_3734 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[(x_3729 / 4i)][(x_3731 % 4i)];
        let x_3736 : vec3<f32> = vs_TEXCOORD7;
        let x_3739 : vec4<f32> = u_xlat11;
        let x_3741 : vec3<f32> = ((vec3<f32>(x_3734.x, x_3734.y, x_3734.w) * vec3<f32>(x_3736.x, x_3736.x, x_3736.x)) + vec3<f32>(x_3739.x, x_3739.z, x_3739.w));
        let x_3742 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3741.x, x_3742.y, x_3741.y, x_3741.z);
        let x_3744 : i32 = u_xlati37;
        let x_3747 : i32 = u_xlati37;
        let x_3751 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3744 + 2i) / 4i)][((x_3747 + 2i) % 4i)];
        let x_3753 : vec3<f32> = vs_TEXCOORD7;
        let x_3756 : vec4<f32> = u_xlat11;
        let x_3758 : vec3<f32> = ((vec3<f32>(x_3751.x, x_3751.y, x_3751.w) * vec3<f32>(x_3753.z, x_3753.z, x_3753.z)) + vec3<f32>(x_3756.x, x_3756.z, x_3756.w));
        let x_3759 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3758.x, x_3759.y, x_3758.y, x_3758.z);
        let x_3761 : vec4<f32> = u_xlat11;
        let x_3763 : i32 = u_xlati37;
        let x_3766 : i32 = u_xlati37;
        let x_3770 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3763 + 3i) / 4i)][((x_3766 + 3i) % 4i)];
        let x_3772 : vec3<f32> = (vec3<f32>(x_3761.x, x_3761.z, x_3761.w) + vec3<f32>(x_3770.x, x_3770.y, x_3770.w));
        let x_3773 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3772.x, x_3773.y, x_3772.y, x_3772.z);
        let x_3775 : vec4<f32> = u_xlat11;
        let x_3777 : vec4<f32> = u_xlat11;
        let x_3779 : vec2<f32> = (vec2<f32>(x_3775.x, x_3775.z) / vec2<f32>(x_3777.w, x_3777.w));
        let x_3780 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3779.x, x_3780.y, x_3779.y, x_3780.w);
        let x_3782 : vec4<f32> = u_xlat11;
        let x_3785 : vec2<f32> = ((vec2<f32>(x_3782.x, x_3782.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3786 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3785.x, x_3786.y, x_3785.y, x_3786.w);
        let x_3788 : vec4<f32> = u_xlat11;
        let x_3792 : vec2<f32> = clamp(vec2<f32>(x_3788.x, x_3788.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3793 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3792.x, x_3793.y, x_3792.y, x_3793.w);
        let x_3795 : i32 = u_xlati84;
        let x_3797 : vec4<f32> = x_1784.x_AdditionalLightsCookieAtlasUVRects[x_3795];
        let x_3799 : vec4<f32> = u_xlat11;
        let x_3802 : i32 = u_xlati84;
        let x_3804 : vec4<f32> = x_1784.x_AdditionalLightsCookieAtlasUVRects[x_3802];
        let x_3806 : vec2<f32> = ((vec2<f32>(x_3797.x, x_3797.y) * vec2<f32>(x_3799.x, x_3799.z)) + vec2<f32>(x_3804.z, x_3804.w));
        let x_3807 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3806.x, x_3807.y, x_3806.y, x_3807.w);
      } else {
        let x_3810 : i32 = u_xlati88;
        u_xlatb88 = (x_3810 == 1i);
        let x_3812 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3812);
        let x_3814 : i32 = u_xlati88;
        if ((x_3814 != 0i)) {
          let x_3818 : vec3<f32> = vs_TEXCOORD7;
          let x_3820 : i32 = u_xlati37;
          let x_3823 : i32 = u_xlati37;
          let x_3827 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3820 + 1i) / 4i)][((x_3823 + 1i) % 4i)];
          let x_3829 : vec2<f32> = (vec2<f32>(x_3818.y, x_3818.y) * vec2<f32>(x_3827.x, x_3827.y));
          let x_3830 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3829.x, x_3829.y, x_3830.z, x_3830.w);
          let x_3832 : i32 = u_xlati37;
          let x_3834 : i32 = u_xlati37;
          let x_3837 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[(x_3832 / 4i)][(x_3834 % 4i)];
          let x_3839 : vec3<f32> = vs_TEXCOORD7;
          let x_3842 : vec4<f32> = u_xlat12;
          let x_3844 : vec2<f32> = ((vec2<f32>(x_3837.x, x_3837.y) * vec2<f32>(x_3839.x, x_3839.x)) + vec2<f32>(x_3842.x, x_3842.y));
          let x_3845 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3844.x, x_3844.y, x_3845.z, x_3845.w);
          let x_3847 : i32 = u_xlati37;
          let x_3850 : i32 = u_xlati37;
          let x_3854 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3847 + 2i) / 4i)][((x_3850 + 2i) % 4i)];
          let x_3856 : vec3<f32> = vs_TEXCOORD7;
          let x_3859 : vec4<f32> = u_xlat12;
          let x_3861 : vec2<f32> = ((vec2<f32>(x_3854.x, x_3854.y) * vec2<f32>(x_3856.z, x_3856.z)) + vec2<f32>(x_3859.x, x_3859.y));
          let x_3862 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3861.x, x_3861.y, x_3862.z, x_3862.w);
          let x_3864 : vec4<f32> = u_xlat12;
          let x_3866 : i32 = u_xlati37;
          let x_3869 : i32 = u_xlati37;
          let x_3873 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3866 + 3i) / 4i)][((x_3869 + 3i) % 4i)];
          let x_3875 : vec2<f32> = (vec2<f32>(x_3864.x, x_3864.y) + vec2<f32>(x_3873.x, x_3873.y));
          let x_3876 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3875.x, x_3875.y, x_3876.z, x_3876.w);
          let x_3878 : vec4<f32> = u_xlat12;
          let x_3881 : vec2<f32> = ((vec2<f32>(x_3878.x, x_3878.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3882 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3881.x, x_3881.y, x_3882.z, x_3882.w);
          let x_3884 : vec4<f32> = u_xlat12;
          let x_3886 : vec2<f32> = fract(vec2<f32>(x_3884.x, x_3884.y));
          let x_3887 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3886.x, x_3886.y, x_3887.z, x_3887.w);
          let x_3889 : i32 = u_xlati84;
          let x_3891 : vec4<f32> = x_1784.x_AdditionalLightsCookieAtlasUVRects[x_3889];
          let x_3893 : vec4<f32> = u_xlat12;
          let x_3896 : i32 = u_xlati84;
          let x_3898 : vec4<f32> = x_1784.x_AdditionalLightsCookieAtlasUVRects[x_3896];
          let x_3900 : vec2<f32> = ((vec2<f32>(x_3891.x, x_3891.y) * vec2<f32>(x_3893.x, x_3893.y)) + vec2<f32>(x_3898.z, x_3898.w));
          let x_3901 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3900.x, x_3901.y, x_3900.y, x_3901.w);
        } else {
          let x_3904 : vec3<f32> = vs_TEXCOORD7;
          let x_3906 : i32 = u_xlati37;
          let x_3909 : i32 = u_xlati37;
          let x_3913 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3906 + 1i) / 4i)][((x_3909 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3904.y, x_3904.y, x_3904.y, x_3904.y) * x_3913);
          let x_3915 : i32 = u_xlati37;
          let x_3917 : i32 = u_xlati37;
          let x_3920 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[(x_3915 / 4i)][(x_3917 % 4i)];
          let x_3921 : vec3<f32> = vs_TEXCOORD7;
          let x_3924 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3920 * vec4<f32>(x_3921.x, x_3921.x, x_3921.x, x_3921.x)) + x_3924);
          let x_3926 : i32 = u_xlati37;
          let x_3929 : i32 = u_xlati37;
          let x_3933 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3926 + 2i) / 4i)][((x_3929 + 2i) % 4i)];
          let x_3934 : vec3<f32> = vs_TEXCOORD7;
          let x_3937 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3933 * vec4<f32>(x_3934.z, x_3934.z, x_3934.z, x_3934.z)) + x_3937);
          let x_3939 : vec4<f32> = u_xlat12;
          let x_3940 : i32 = u_xlati37;
          let x_3943 : i32 = u_xlati37;
          let x_3947 : vec4<f32> = x_1784.x_AdditionalLightsWorldToLights[((x_3940 + 3i) / 4i)][((x_3943 + 3i) % 4i)];
          u_xlat12 = (x_3939 + x_3947);
          let x_3949 : vec4<f32> = u_xlat12;
          let x_3951 : vec4<f32> = u_xlat12;
          let x_3953 : vec3<f32> = (vec3<f32>(x_3949.x, x_3949.y, x_3949.z) / vec3<f32>(x_3951.w, x_3951.w, x_3951.w));
          let x_3954 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3953.x, x_3953.y, x_3953.z, x_3954.w);
          let x_3956 : vec4<f32> = u_xlat12;
          let x_3958 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3956.x, x_3956.y, x_3956.z), vec3<f32>(x_3958.x, x_3958.y, x_3958.z));
          let x_3961 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3961);
          let x_3963 : f32 = u_xlat88;
          let x_3965 : vec4<f32> = u_xlat12;
          let x_3967 : vec3<f32> = (vec3<f32>(x_3963, x_3963, x_3963) * vec3<f32>(x_3965.x, x_3965.y, x_3965.z));
          let x_3968 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3967.x, x_3967.y, x_3967.z, x_3968.w);
          let x_3970 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3970.x, x_3970.y, x_3970.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3975 : f32 = u_xlat88;
          u_xlat88 = max(x_3975, 0.00000099999999747524f);
          let x_3978 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3978);
          let x_3980 : f32 = u_xlat88;
          let x_3982 : vec4<f32> = u_xlat12;
          let x_3984 : vec3<f32> = (vec3<f32>(x_3980, x_3980, x_3980) * vec3<f32>(x_3982.z, x_3982.x, x_3982.y));
          let x_3985 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3984.x, x_3984.y, x_3984.z, x_3985.w);
          let x_3988 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3988);
          let x_3992 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3992, 0.0f, 1.0f);
          let x_3997 : vec4<f32> = u_xlat13;
          let x_3999 : vec4<bool> = (vec4<f32>(x_3997.y, x_3997.y, x_3997.z, x_3997.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4000 : vec2<bool> = vec2<bool>(x_3999.x, x_3999.z);
          let x_4001 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_4000.x, x_4001.y, x_4000.y);
          let x_4004 : bool = u_xlatb37.x;
          if (x_4004) {
            let x_4009 : f32 = u_xlat13.x;
            x_4005 = x_4009;
          } else {
            let x_4012 : f32 = u_xlat13.x;
            x_4005 = -(x_4012);
          }
          let x_4014 : f32 = x_4005;
          u_xlat37.x = x_4014;
          let x_4017 : bool = u_xlatb37.z;
          if (x_4017) {
            let x_4022 : f32 = u_xlat13.x;
            x_4018 = x_4022;
          } else {
            let x_4025 : f32 = u_xlat13.x;
            x_4018 = -(x_4025);
          }
          let x_4027 : f32 = x_4018;
          u_xlat37.z = x_4027;
          let x_4029 : vec4<f32> = u_xlat12;
          let x_4031 : f32 = u_xlat88;
          let x_4034 : vec3<f32> = u_xlat37;
          let x_4036 : vec2<f32> = ((vec2<f32>(x_4029.x, x_4029.y) * vec2<f32>(x_4031, x_4031)) + vec2<f32>(x_4034.x, x_4034.z));
          let x_4037 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4036.x, x_4037.y, x_4036.y);
          let x_4039 : vec3<f32> = u_xlat37;
          let x_4042 : vec2<f32> = ((vec2<f32>(x_4039.x, x_4039.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4043 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4042.x, x_4043.y, x_4042.y);
          let x_4045 : vec3<f32> = u_xlat37;
          let x_4049 : vec2<f32> = clamp(vec2<f32>(x_4045.x, x_4045.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4050 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4049.x, x_4050.y, x_4049.y);
          let x_4052 : i32 = u_xlati84;
          let x_4054 : vec4<f32> = x_1784.x_AdditionalLightsCookieAtlasUVRects[x_4052];
          let x_4056 : vec3<f32> = u_xlat37;
          let x_4059 : i32 = u_xlati84;
          let x_4061 : vec4<f32> = x_1784.x_AdditionalLightsCookieAtlasUVRects[x_4059];
          let x_4063 : vec2<f32> = ((vec2<f32>(x_4054.x, x_4054.y) * vec2<f32>(x_4056.x, x_4056.z)) + vec2<f32>(x_4061.z, x_4061.w));
          let x_4064 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4063.x, x_4064.y, x_4063.y, x_4064.w);
        }
      }
      let x_4071 : vec4<f32> = u_xlat11;
      let x_4073 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4071.x, x_4071.z), 0.0f);
      u_xlat11 = x_4073;
      let x_4075 : bool = u_xlatb7.y;
      if (x_4075) {
        let x_4080 : f32 = u_xlat11.w;
        x_4076 = x_4080;
      } else {
        let x_4083 : f32 = u_xlat11.x;
        x_4076 = x_4083;
      }
      let x_4084 : f32 = x_4076;
      u_xlat88 = x_4084;
      let x_4086 : bool = u_xlatb7.x;
      if (x_4086) {
        let x_4090 : vec4<f32> = u_xlat11;
        x_4087 = vec3<f32>(x_4090.x, x_4090.y, x_4090.z);
      } else {
        let x_4093 : f32 = u_xlat88;
        x_4087 = vec3<f32>(x_4093, x_4093, x_4093);
      }
      let x_4095 : vec3<f32> = x_4087;
      let x_4096 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4095.x, x_4095.y, x_4095.z, x_4096.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4102 : vec4<f32> = u_xlat11;
    let x_4104 : i32 = u_xlati84;
    let x_4106 : vec4<f32> = x_2218.x_AdditionalLightsColor[x_4104];
    let x_4108 : vec3<f32> = (vec3<f32>(x_4102.x, x_4102.y, x_4102.z) * vec3<f32>(x_4106.x, x_4106.y, x_4106.z));
    let x_4109 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4108.x, x_4108.y, x_4108.z, x_4109.w);
    let x_4112 : f32 = u_xlat59.x;
    let x_4113 : f32 = u_xlat87;
    u_xlat84 = (x_4112 * x_4113);
    let x_4115 : vec3<f32> = u_xlat2;
    let x_4116 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(x_4115, vec3<f32>(x_4116.x, x_4116.y, x_4116.z));
    let x_4121 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4121, 0.0f, 1.0f);
    let x_4124 : f32 = u_xlat84;
    let x_4126 : f32 = u_xlat59.x;
    u_xlat84 = (x_4124 * x_4126);
    let x_4128 : f32 = u_xlat84;
    let x_4130 : vec4<f32> = u_xlat11;
    let x_4132 : vec3<f32> = (vec3<f32>(x_4128, x_4128, x_4128) * vec3<f32>(x_4130.x, x_4130.y, x_4130.z));
    let x_4133 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4132.x, x_4132.y, x_4132.z, x_4133.w);
    let x_4135 : vec4<f32> = u_xlat9;
    let x_4137 : f32 = u_xlat85;
    let x_4140 : vec3<f32> = u_xlat27;
    let x_4141 : vec3<f32> = ((vec3<f32>(x_4135.x, x_4135.y, x_4135.z) * vec3<f32>(x_4137, x_4137, x_4137)) + x_4140);
    let x_4142 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4141.x, x_4141.y, x_4141.z, x_4142.w);
    let x_4144 : vec4<f32> = u_xlat9;
    let x_4146 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4144.x, x_4144.y, x_4144.z), vec3<f32>(x_4146.x, x_4146.y, x_4146.z));
    let x_4149 : f32 = u_xlat84;
    u_xlat84 = max(x_4149, 1.17549435e-38f);
    let x_4151 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4151);
    let x_4153 : f32 = u_xlat84;
    let x_4155 : vec4<f32> = u_xlat9;
    let x_4157 : vec3<f32> = (vec3<f32>(x_4153, x_4153, x_4153) * vec3<f32>(x_4155.x, x_4155.y, x_4155.z));
    let x_4158 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4157.x, x_4157.y, x_4157.z, x_4158.w);
    let x_4160 : vec3<f32> = u_xlat2;
    let x_4161 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4160, vec3<f32>(x_4161.x, x_4161.y, x_4161.z));
    let x_4164 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4164, 0.0f, 1.0f);
    let x_4166 : vec4<f32> = u_xlat10;
    let x_4168 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4166.x, x_4166.y, x_4166.z), vec3<f32>(x_4168.x, x_4168.y, x_4168.z));
    let x_4173 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4173, 0.0f, 1.0f);
    let x_4176 : f32 = u_xlat84;
    let x_4177 : f32 = u_xlat84;
    u_xlat84 = (x_4176 * x_4177);
    let x_4179 : f32 = u_xlat84;
    let x_4181 : f32 = u_xlat8.x;
    u_xlat84 = ((x_4179 * x_4181) + 1.00001001358032226562f);
    let x_4185 : f32 = u_xlat59.x;
    let x_4187 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4185 * x_4187);
    let x_4190 : f32 = u_xlat84;
    let x_4191 : f32 = u_xlat84;
    u_xlat84 = (x_4190 * x_4191);
    let x_4194 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_4194, 0.10000000149011611938f);
    let x_4197 : f32 = u_xlat84;
    let x_4199 : f32 = u_xlat59.x;
    u_xlat84 = (x_4197 * x_4199);
    let x_4201 : f32 = u_xlat82;
    let x_4202 : f32 = u_xlat84;
    u_xlat84 = (x_4201 * x_4202);
    let x_4204 : f32 = u_xlat83;
    let x_4205 : f32 = u_xlat84;
    u_xlat84 = (x_4204 / x_4205);
    let x_4207 : vec4<f32> = u_xlat0;
    let x_4209 : f32 = u_xlat84;
    let x_4212 : vec3<f32> = u_xlat5;
    let x_4213 : vec3<f32> = ((vec3<f32>(x_4207.x, x_4207.y, x_4207.z) * vec3<f32>(x_4209, x_4209, x_4209)) + x_4212);
    let x_4214 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4213.x, x_4213.y, x_4213.z, x_4214.w);
    let x_4216 : vec4<f32> = u_xlat9;
    let x_4218 : vec4<f32> = u_xlat11;
    let x_4221 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4216.x, x_4216.y, x_4216.z) * vec3<f32>(x_4218.x, x_4218.y, x_4218.z)) + x_4221);

    continuing {
      let x_4223 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4223 + bitcast<u32>(1i));
    }
  }
  let x_4225 : vec4<f32> = u_xlat6;
  let x_4227 : vec4<f32> = u_xlat3;
  let x_4230 : vec4<f32> = u_xlat4;
  let x_4232 : vec3<f32> = ((vec3<f32>(x_4225.x, x_4225.y, x_4225.z) * vec3<f32>(x_4227.x, x_4227.z, x_4227.w)) + vec3<f32>(x_4230.x, x_4230.y, x_4230.z));
  let x_4233 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4232.x, x_4232.y, x_4232.z, x_4233.w);
  let x_4235 : vec3<f32> = u_xlat34;
  let x_4236 : vec4<f32> = u_xlat0;
  let x_4238 : vec3<f32> = (x_4235 + vec3<f32>(x_4236.x, x_4236.y, x_4236.z));
  let x_4239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4238.x, x_4238.y, x_4238.z, x_4239.w);
  let x_4241 : f32 = u_xlat80;
  let x_4242 : f32 = u_xlat80;
  u_xlat78 = (x_4241 * -(x_4242));
  let x_4245 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4245);
  let x_4247 : vec4<f32> = u_xlat0;
  let x_4250 : vec4<f32> = x_29.unity_FogColor;
  let x_4253 : vec3<f32> = (vec3<f32>(x_4247.x, x_4247.y, x_4247.z) + -(vec3<f32>(x_4250.x, x_4250.y, x_4250.z)));
  let x_4254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4253.x, x_4253.y, x_4253.z, x_4254.w);
  let x_4258 : f32 = u_xlat78;
  let x_4260 : vec4<f32> = u_xlat0;
  let x_4264 : vec4<f32> = x_29.unity_FogColor;
  let x_4266 : vec3<f32> = ((vec3<f32>(x_4258, x_4258, x_4258) * vec3<f32>(x_4260.x, x_4260.y, x_4260.z)) + vec3<f32>(x_4264.x, x_4264.y, x_4264.z));
  let x_4267 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4266.x, x_4266.y, x_4266.z, x_4267.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


