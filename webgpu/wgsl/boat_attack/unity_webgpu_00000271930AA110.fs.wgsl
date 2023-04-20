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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_108 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb5 : bool;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat57 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(1) @binding(4) var<uniform> x_1730 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1923 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2183 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

var<private> u_xlatb83 : bool;

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
  var x_1679 : f32;
  var x_1813 : f32;
  var x_1824 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2321 : f32;
  var x_2331 : f32;
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
  var x_3917 : f32;
  var x_3930 : f32;
  var x_3988 : f32;
  var x_3999 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_75 : f32 = x_28.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_72.x, x_72.y), x_75);
  u_xlat1 = x_76.x;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_88 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat27;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_99 : vec3<f32> = vs_TEXCOORD7;
  let x_111 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres0;
  let x_114 : vec3<f32> = (x_99 + -(vec3<f32>(x_111.x, x_111.y, x_111.z)));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec3<f32> = vs_TEXCOORD7;
  let x_121 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres1;
  let x_124 : vec3<f32> = (x_118 + -(vec3<f32>(x_121.x, x_121.y, x_121.z)));
  let x_125 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_128 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_128 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_136 : vec3<f32> = vs_TEXCOORD7;
  let x_139 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres3;
  let x_142 : vec3<f32> = (x_136 + -(vec3<f32>(x_139.x, x_139.y, x_139.z)));
  let x_143 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_151 : vec4<f32> = u_xlat3;
  let x_153 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_151.x, x_151.y, x_151.z), vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec3<f32> = u_xlat4;
  let x_159 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_158, x_159);
  let x_163 : vec4<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_173 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = x_108.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_173 < x_176);
  let x_179 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_179);
  let x_184 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_192);
  let x_196 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_196);
  let x_202 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_202);
  let x_206 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_206);
  let x_209 : vec4<f32> = u_xlat2;
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) + vec3<f32>(x_211.y, x_211.z, x_211.w));
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat2;
  let x_219 : vec3<f32> = max(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_220.x, x_219.x, x_219.y, x_219.z);
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_222, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_230 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_230) + 4.0f);
  let x_237 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_237);
  let x_241 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_241) << bitcast<u32>(2i));
  let x_245 : vec3<f32> = vs_TEXCOORD7;
  let x_247 : i32 = u_xlati2;
  let x_250 : i32 = u_xlati2;
  let x_254 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_247 + 1i) / 4i)][((x_250 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_245.y, x_245.y, x_245.y) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : i32 = u_xlati2;
  let x_259 : i32 = u_xlati2;
  let x_262 : vec4<f32> = x_108.x_MainLightWorldToShadow[(x_257 / 4i)][(x_259 % 4i)];
  let x_264 : vec3<f32> = vs_TEXCOORD7;
  let x_267 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264.x, x_264.x, x_264.x)) + x_267);
  let x_269 : i32 = u_xlati2;
  let x_272 : i32 = u_xlati2;
  let x_276 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_269 + 2i) / 4i)][((x_272 + 2i) % 4i)];
  let x_278 : vec3<f32> = vs_TEXCOORD7;
  let x_281 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_278.z, x_278.z, x_278.z)) + x_281);
  let x_283 : vec3<f32> = u_xlat28;
  let x_284 : i32 = u_xlati2;
  let x_287 : i32 = u_xlati2;
  let x_291 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_284 + 3i) / 4i)][((x_287 + 3i) % 4i)];
  let x_293 : vec3<f32> = (x_283 + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_301 : vec4<f32> = vs_TEXCOORD0;
  let x_304 : f32 = x_28.x_GlobalMipBias.x;
  let x_305 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_301.z, x_301.w), x_304);
  u_xlat3 = x_305;
  let x_310 : vec4<f32> = vs_TEXCOORD0;
  let x_313 : f32 = x_28.x_GlobalMipBias.x;
  let x_314 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_310.z, x_310.w), x_313);
  u_xlat4 = vec3<f32>(x_314.x, x_314.y, x_314.z);
  let x_316 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : vec3<f32> = u_xlat27;
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(x_324, vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : f32 = u_xlat80;
  u_xlat80 = (x_328 + 0.5f);
  let x_331 : f32 = u_xlat80;
  let x_333 : vec3<f32> = u_xlat4;
  let x_334 : vec3<f32> = (vec3<f32>(x_331, x_331, x_331) * x_333);
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = u_xlat3.w;
  u_xlat80 = max(x_338, 0.00009999999747378752f);
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : f32 = u_xlat80;
  let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) / vec3<f32>(x_343, x_343, x_343));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : f32 = u_xlat1;
  u_xlat80 = ((-(x_348) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_354 : f32 = u_xlat80;
  u_xlat81 = (-(x_354) + 1.0f);
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : f32 = u_xlat80;
  u_xlat4 = (vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359, x_359, x_359));
  let x_362 : vec4<f32> = u_xlat0;
  let x_366 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : f32 = u_xlat1;
  let x_371 : vec4<f32> = u_xlat0;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369, x_369, x_369) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_380) + 1.0f);
  let x_383 : f32 = u_xlat1;
  let x_384 : f32 = u_xlat1;
  u_xlat80 = (x_383 * x_384);
  let x_386 : f32 = u_xlat80;
  u_xlat80 = max(x_386, 0.0078125f);
  let x_390 : f32 = u_xlat80;
  let x_391 : f32 = u_xlat80;
  u_xlat82 = (x_390 * x_391);
  let x_395 : f32 = u_xlat0.w;
  let x_396 : f32 = u_xlat81;
  u_xlat78 = (x_395 + x_396);
  let x_398 : f32 = u_xlat78;
  u_xlat78 = clamp(x_398, 0.0f, 1.0f);
  let x_400 : f32 = u_xlat80;
  u_xlat81 = ((x_400 * 4.0f) + 2.0f);
  let x_406 : f32 = x_108.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_406);
  let x_408 : bool = u_xlatb5;
  if (x_408) {
    let x_412 : f32 = x_108.x_MainLightShadowParams.y;
    u_xlatb5 = (x_412 == 1.0f);
    let x_414 : bool = u_xlatb5;
    if (x_414) {
      let x_417 : vec4<f32> = u_xlat2;
      let x_421 : vec4<f32> = x_108.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_417.x, x_417.y, x_417.x, x_417.y) + x_421);
      let x_425 : vec4<f32> = u_xlat5;
      let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
      let x_428 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_426.x, x_426.y, x_428);
      let x_441 : vec3<f32> = txVec0;
      let x_443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_441.xy, x_441.z);
      u_xlat6.x = x_443;
      let x_446 : vec4<f32> = u_xlat5;
      let x_447 : vec2<f32> = vec2<f32>(x_446.z, x_446.w);
      let x_449 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_447.x, x_447.y, x_449);
      let x_456 : vec3<f32> = txVec1;
      let x_458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_456.xy, x_456.z);
      u_xlat6.y = x_458;
      let x_460 : vec4<f32> = u_xlat2;
      let x_464 : vec4<f32> = x_108.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_460.x, x_460.y, x_460.x, x_460.y) + x_464);
      let x_467 : vec4<f32> = u_xlat5;
      let x_468 : vec2<f32> = vec2<f32>(x_467.x, x_467.y);
      let x_470 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_468.x, x_468.y, x_470);
      let x_477 : vec3<f32> = txVec2;
      let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_477.xy, x_477.z);
      u_xlat6.z = x_479;
      let x_482 : vec4<f32> = u_xlat5;
      let x_483 : vec2<f32> = vec2<f32>(x_482.z, x_482.w);
      let x_485 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_483.x, x_483.y, x_485);
      let x_492 : vec3<f32> = txVec3;
      let x_494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_492.xy, x_492.z);
      u_xlat6.w = x_494;
      let x_496 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_496, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_504 : f32 = x_108.x_MainLightShadowParams.y;
      u_xlatb31 = (x_504 == 2.0f);
      let x_506 : bool = u_xlatb31;
      if (x_506) {
        let x_511 : vec4<f32> = u_xlat2;
        let x_515 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_515.z, x_515.w)) + vec2<f32>(0.5f, 0.5f));
        let x_520 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_520);
        let x_522 : vec4<f32> = u_xlat2;
        let x_525 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_528 : vec2<f32> = u_xlat31;
        let x_530 : vec2<f32> = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_525.z, x_525.w)) + -(x_528));
        let x_531 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_534 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_534.x, x_534.x, x_534.y, x_534.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_539 : vec4<f32> = u_xlat7;
        let x_541 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_539.x, x_539.x, x_539.z, x_539.z) * vec4<f32>(x_541.x, x_541.x, x_541.z, x_541.z));
        let x_545 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_545.y, x_545.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_550 : vec4<f32> = u_xlat8;
        let x_553 : vec4<f32> = u_xlat6;
        let x_556 : vec2<f32> = ((vec2<f32>(x_550.x, x_550.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_553.x, x_553.y)));
        let x_557 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_556.x, x_557.y, x_556.y, x_557.w);
        let x_559 : vec4<f32> = u_xlat6;
        let x_563 : vec2<f32> = (-(vec2<f32>(x_559.x, x_559.y)) + vec2<f32>(1.0f, 1.0f));
        let x_564 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
        let x_567 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_567.x, x_567.y), vec2<f32>(0.0f, 0.0f));
        let x_571 : vec2<f32> = u_xlat60;
        let x_573 : vec2<f32> = u_xlat60;
        let x_575 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_571) * x_573) + vec2<f32>(x_575.x, x_575.y));
        let x_578 : vec4<f32> = u_xlat6;
        let x_580 : vec2<f32> = max(vec2<f32>(x_578.x, x_578.y), vec2<f32>(0.0f, 0.0f));
        let x_581 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat6;
        let x_586 : vec4<f32> = u_xlat6;
        let x_589 : vec4<f32> = u_xlat7;
        let x_591 : vec2<f32> = ((-(vec2<f32>(x_583.x, x_583.y)) * vec2<f32>(x_586.x, x_586.y)) + vec2<f32>(x_589.y, x_589.w));
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_594 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_594 + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec4<f32> = u_xlat6;
        let x_598 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) + vec2<f32>(1.0f, 1.0f));
        let x_599 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_602 : vec4<f32> = u_xlat7;
        let x_606 : vec2<f32> = (vec2<f32>(x_602.x, x_602.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_607 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_610 : vec4<f32> = u_xlat8;
        let x_612 : vec2<f32> = (vec2<f32>(x_610.x, x_610.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_613 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_615 : vec2<f32> = u_xlat60;
        let x_616 : vec2<f32> = (x_615 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_617 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec4<f32> = u_xlat6;
        let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_623 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec4<f32> = u_xlat7;
        let x_627 : vec2<f32> = (vec2<f32>(x_625.y, x_625.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_628 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
        let x_631 : f32 = u_xlat8.x;
        u_xlat9.z = x_631;
        let x_634 : f32 = u_xlat6.x;
        u_xlat9.w = x_634;
        let x_637 : f32 = u_xlat11.x;
        u_xlat10.z = x_637;
        let x_640 : f32 = u_xlat58.x;
        u_xlat10.w = x_640;
        let x_642 : vec4<f32> = u_xlat9;
        let x_644 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_642.z, x_642.w, x_642.x, x_642.z) + vec4<f32>(x_644.z, x_644.w, x_644.x, x_644.z));
        let x_648 : f32 = u_xlat9.y;
        u_xlat8.z = x_648;
        let x_651 : f32 = u_xlat6.y;
        u_xlat8.w = x_651;
        let x_654 : f32 = u_xlat10.y;
        u_xlat11.z = x_654;
        let x_657 : f32 = u_xlat58.y;
        u_xlat11.w = x_657;
        let x_659 : vec4<f32> = u_xlat8;
        let x_661 : vec4<f32> = u_xlat11;
        let x_663 : vec3<f32> = (vec3<f32>(x_659.z, x_659.y, x_659.w) + vec3<f32>(x_661.z, x_661.y, x_661.w));
        let x_664 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat10;
        let x_668 : vec4<f32> = u_xlat7;
        let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.z, x_666.w) / vec3<f32>(x_668.z, x_668.w, x_668.y));
        let x_671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat8;
        let x_678 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat11;
        let x_683 : vec4<f32> = u_xlat6;
        let x_685 : vec3<f32> = (vec3<f32>(x_681.z, x_681.y, x_681.w) / vec3<f32>(x_683.x, x_683.y, x_683.z));
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat9;
        let x_690 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_691 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_693 : vec4<f32> = u_xlat8;
        let x_696 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_698 : vec3<f32> = (vec3<f32>(x_693.y, x_693.x, x_693.z) * vec3<f32>(x_696.x, x_696.x, x_696.x));
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
        let x_701 : vec4<f32> = u_xlat9;
        let x_704 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_706 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(x_704.y, x_704.y, x_704.y));
        let x_707 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
        let x_710 : f32 = u_xlat9.x;
        u_xlat8.w = x_710;
        let x_712 : vec2<f32> = u_xlat31;
        let x_715 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_718 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y) * vec4<f32>(x_715.x, x_715.y, x_715.x, x_715.y)) + vec4<f32>(x_718.y, x_718.w, x_718.x, x_718.w));
        let x_721 : vec2<f32> = u_xlat31;
        let x_723 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_726 : vec4<f32> = u_xlat8;
        let x_728 : vec2<f32> = ((x_721 * vec2<f32>(x_723.x, x_723.y)) + vec2<f32>(x_726.z, x_726.w));
        let x_729 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_729.w);
        let x_732 : f32 = u_xlat8.y;
        u_xlat9.w = x_732;
        let x_734 : vec4<f32> = u_xlat9;
        let x_735 : vec2<f32> = vec2<f32>(x_734.y, x_734.z);
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_735.x, x_736.z, x_735.y);
        let x_739 : vec2<f32> = u_xlat31;
        let x_742 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.y));
        let x_748 : vec2<f32> = u_xlat31;
        let x_751 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_754 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_748.x, x_748.y, x_748.x, x_748.y) * vec4<f32>(x_751.x, x_751.y, x_751.x, x_751.y)) + vec4<f32>(x_754.w, x_754.y, x_754.w, x_754.z));
        let x_757 : vec2<f32> = u_xlat31;
        let x_760 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_763 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_757.x, x_757.y, x_757.x, x_757.y) * vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y)) + vec4<f32>(x_763.x, x_763.w, x_763.z, x_763.w));
        let x_767 : vec4<f32> = u_xlat6;
        let x_769 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_767.x, x_767.x, x_767.x, x_767.y) * vec4<f32>(x_769.z, x_769.w, x_769.y, x_769.z));
        let x_773 : vec4<f32> = u_xlat6;
        let x_775 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_773.y, x_773.y, x_773.z, x_773.z) * x_775);
        let x_778 : f32 = u_xlat6.z;
        let x_780 : f32 = u_xlat7.y;
        u_xlat31.x = (x_778 * x_780);
        let x_784 : vec4<f32> = u_xlat10;
        let x_785 : vec2<f32> = vec2<f32>(x_784.x, x_784.y);
        let x_787 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_795 : vec3<f32> = txVec4;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat57 = x_797;
        let x_799 : vec4<f32> = u_xlat10;
        let x_800 : vec2<f32> = vec2<f32>(x_799.z, x_799.w);
        let x_802 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_810 : vec3<f32> = txVec5;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat83 = x_812;
        let x_813 : f32 = u_xlat83;
        let x_815 : f32 = u_xlat13.y;
        u_xlat83 = (x_813 * x_815);
        let x_818 : f32 = u_xlat13.x;
        let x_819 : f32 = u_xlat57;
        let x_821 : f32 = u_xlat83;
        u_xlat57 = ((x_818 * x_819) + x_821);
        let x_824 : vec4<f32> = u_xlat11;
        let x_825 : vec2<f32> = vec2<f32>(x_824.x, x_824.y);
        let x_827 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec6;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
        u_xlat83 = x_836;
        let x_838 : f32 = u_xlat13.z;
        let x_839 : f32 = u_xlat83;
        let x_841 : f32 = u_xlat57;
        u_xlat57 = ((x_838 * x_839) + x_841);
        let x_844 : vec4<f32> = u_xlat9;
        let x_845 : vec2<f32> = vec2<f32>(x_844.x, x_844.y);
        let x_847 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_845.x, x_845.y, x_847);
        let x_854 : vec3<f32> = txVec7;
        let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_854.xy, x_854.z);
        u_xlat83 = x_856;
        let x_858 : f32 = u_xlat13.w;
        let x_859 : f32 = u_xlat83;
        let x_861 : f32 = u_xlat57;
        u_xlat57 = ((x_858 * x_859) + x_861);
        let x_864 : vec4<f32> = u_xlat12;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec8;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat83 = x_876;
        let x_878 : f32 = u_xlat14.x;
        let x_879 : f32 = u_xlat83;
        let x_881 : f32 = u_xlat57;
        u_xlat57 = ((x_878 * x_879) + x_881);
        let x_884 : vec4<f32> = u_xlat12;
        let x_885 : vec2<f32> = vec2<f32>(x_884.z, x_884.w);
        let x_887 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_885.x, x_885.y, x_887);
        let x_894 : vec3<f32> = txVec9;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_894.xy, x_894.z);
        u_xlat83 = x_896;
        let x_898 : f32 = u_xlat14.y;
        let x_899 : f32 = u_xlat83;
        let x_901 : f32 = u_xlat57;
        u_xlat57 = ((x_898 * x_899) + x_901);
        let x_904 : vec4<f32> = u_xlat9;
        let x_905 : vec2<f32> = vec2<f32>(x_904.z, x_904.w);
        let x_907 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec10;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat83 = x_916;
        let x_918 : f32 = u_xlat14.z;
        let x_919 : f32 = u_xlat83;
        let x_921 : f32 = u_xlat57;
        u_xlat57 = ((x_918 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat8;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec11;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat83 = x_936;
        let x_938 : f32 = u_xlat14.w;
        let x_939 : f32 = u_xlat83;
        let x_941 : f32 = u_xlat57;
        u_xlat57 = ((x_938 * x_939) + x_941);
        let x_944 : vec4<f32> = u_xlat8;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec12;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat83 = x_956;
        let x_958 : f32 = u_xlat31.x;
        let x_959 : f32 = u_xlat83;
        let x_961 : f32 = u_xlat57;
        u_xlat5.x = ((x_958 * x_959) + x_961);
      } else {
        let x_965 : vec4<f32> = u_xlat2;
        let x_968 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_965.x, x_965.y) * vec2<f32>(x_968.z, x_968.w)) + vec2<f32>(0.5f, 0.5f));
        let x_972 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_972);
        let x_974 : vec4<f32> = u_xlat2;
        let x_977 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_980 : vec2<f32> = u_xlat31;
        let x_982 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_977.z, x_977.w)) + -(x_980));
        let x_983 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_985.x, x_985.x, x_985.y, x_985.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_988 : vec4<f32> = u_xlat7;
        let x_990 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_988.x, x_988.x, x_988.z, x_988.z) * vec4<f32>(x_990.x, x_990.x, x_990.z, x_990.z));
        let x_993 : vec4<f32> = u_xlat8;
        let x_997 : vec2<f32> = (vec2<f32>(x_993.y, x_993.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1000.x, x_1000.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1003.x, x_1003.y)));
        let x_1007 : vec4<f32> = u_xlat6;
        let x_1010 : vec2<f32> = (-(vec2<f32>(x_1007.x, x_1007.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1010.x, x_1011.y, x_1010.y, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1015 : vec2<f32> = min(vec2<f32>(x_1013.x, x_1013.y), vec2<f32>(0.0f, 0.0f));
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1021 : vec4<f32> = u_xlat8;
        let x_1024 : vec4<f32> = u_xlat7;
        let x_1026 : vec2<f32> = ((-(vec2<f32>(x_1018.x, x_1018.y)) * vec2<f32>(x_1021.x, x_1021.y)) + vec2<f32>(x_1024.x, x_1024.z));
        let x_1027 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1026.x, x_1027.y, x_1026.y, x_1027.w);
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1031 : vec2<f32> = max(vec2<f32>(x_1029.x, x_1029.y), vec2<f32>(0.0f, 0.0f));
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1042 : vec2<f32> = ((-(vec2<f32>(x_1034.x, x_1034.y)) * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.y, x_1040.w));
        let x_1043 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1045 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1049 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1049 * 0.08163200318813323975f);
        let x_1053 : vec2<f32> = u_xlat58;
        let x_1056 : vec2<f32> = (vec2<f32>(x_1053.y, x_1053.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1057 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1059.x, x_1059.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1063 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1063 * 0.08163200318813323975f);
        let x_1067 : f32 = u_xlat10.y;
        u_xlat8.x = x_1067;
        let x_1069 : vec4<f32> = u_xlat6;
        let x_1076 : vec2<f32> = ((vec2<f32>(x_1069.x, x_1069.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1077.x, x_1076.x, x_1077.z, x_1076.y);
        let x_1079 : vec4<f32> = u_xlat6;
        let x_1083 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1083.x, x_1084.y, x_1083.y, x_1084.w);
        let x_1087 : f32 = u_xlat58.x;
        u_xlat7.y = x_1087;
        let x_1090 : f32 = u_xlat9.y;
        u_xlat7.w = x_1090;
        let x_1092 : vec4<f32> = u_xlat7;
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1092 + x_1093);
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1095.y, x_1095.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1099.x, x_1098.x, x_1099.z, x_1098.y);
        let x_1101 : vec4<f32> = u_xlat6;
        let x_1104 : vec2<f32> = ((vec2<f32>(x_1101.y, x_1101.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1104.x, x_1105.y, x_1104.y, x_1105.w);
        let x_1108 : f32 = u_xlat58.y;
        u_xlat9.y = x_1108;
        let x_1110 : vec4<f32> = u_xlat9;
        let x_1111 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1110 + x_1111);
        let x_1113 : vec4<f32> = u_xlat7;
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1113 / x_1114);
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1116 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1122 : vec4<f32> = u_xlat9;
        let x_1123 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1122 / x_1123);
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1125 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1127 : vec4<f32> = u_xlat7;
        let x_1130 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1127.w, x_1127.x, x_1127.y, x_1127.z) * vec4<f32>(x_1130.x, x_1130.x, x_1130.x, x_1130.x));
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1136 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1133.x, x_1133.w, x_1133.y, x_1133.z) * vec4<f32>(x_1136.y, x_1136.y, x_1136.y, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat7;
        let x_1140 : vec3<f32> = vec3<f32>(x_1139.y, x_1139.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1140.z);
        let x_1144 : f32 = u_xlat9.x;
        u_xlat10.y = x_1144;
        let x_1146 : vec2<f32> = u_xlat31;
        let x_1149 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1152 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y) * vec4<f32>(x_1149.x, x_1149.y, x_1149.x, x_1149.y)) + vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1152.y));
        let x_1155 : vec2<f32> = u_xlat31;
        let x_1157 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat10;
        let x_1162 : vec2<f32> = ((x_1155 * vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(x_1160.w, x_1160.y));
        let x_1163 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1166 : f32 = u_xlat10.y;
        u_xlat7.y = x_1166;
        let x_1169 : f32 = u_xlat9.z;
        u_xlat10.y = x_1169;
        let x_1171 : vec2<f32> = u_xlat31;
        let x_1174 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) * vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y)) + vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.y));
        let x_1181 : vec2<f32> = u_xlat31;
        let x_1183 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1181 * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1190 : f32 = u_xlat10.y;
        u_xlat7.z = x_1190;
        let x_1192 : vec2<f32> = u_xlat31;
        let x_1195 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y) * vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y)) + vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.z));
        let x_1202 : f32 = u_xlat9.w;
        u_xlat10.y = x_1202;
        let x_1205 : vec2<f32> = u_xlat31;
        let x_1208 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y) * vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y)) + vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1211.y));
        let x_1215 : vec2<f32> = u_xlat31;
        let x_1217 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1215 * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1224 : f32 = u_xlat10.y;
        u_xlat7.w = x_1224;
        let x_1227 : vec2<f32> = u_xlat31;
        let x_1229 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1234 : vec2<f32> = ((x_1227 * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.x, x_1232.w));
        let x_1235 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1237 : vec4<f32> = u_xlat10;
        let x_1238 : vec3<f32> = vec3<f32>(x_1237.x, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1238.x, x_1239.y, x_1238.y, x_1238.z);
        let x_1241 : vec2<f32> = u_xlat31;
        let x_1244 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.y));
        let x_1251 : vec2<f32> = u_xlat31;
        let x_1253 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1251 * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.w, x_1256.y));
        let x_1260 : f32 = u_xlat7.x;
        u_xlat9.x = x_1260;
        let x_1262 : vec2<f32> = u_xlat31;
        let x_1264 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat31 = ((x_1262 * vec2<f32>(x_1264.x, x_1264.y)) + vec2<f32>(x_1267.x, x_1267.y));
        let x_1271 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1271.x, x_1271.x, x_1271.x, x_1271.x) * x_1273);
        let x_1276 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1276.y, x_1276.y, x_1276.y, x_1276.y) * x_1278);
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1283 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1281.z, x_1281.z, x_1281.z, x_1281.z) * x_1283);
        let x_1285 : vec4<f32> = u_xlat6;
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1285.w, x_1285.w, x_1285.w, x_1285.w) * x_1287);
        let x_1290 : vec4<f32> = u_xlat11;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.x, x_1290.y);
        let x_1293 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec13;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat83 = x_1302;
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.z, x_1304.w);
        let x_1307 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec14;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat7.x = x_1316;
        let x_1319 : f32 = u_xlat7.x;
        let x_1321 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1319 * x_1321);
        let x_1325 : f32 = u_xlat17.x;
        let x_1326 : f32 = u_xlat83;
        let x_1329 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1325 * x_1326) + x_1329);
        let x_1332 : vec4<f32> = u_xlat12;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec15;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat7.x = x_1344;
        let x_1347 : f32 = u_xlat17.z;
        let x_1349 : f32 = u_xlat7.x;
        let x_1351 : f32 = u_xlat83;
        u_xlat83 = ((x_1347 * x_1349) + x_1351);
        let x_1354 : vec4<f32> = u_xlat14;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.x, x_1354.y);
        let x_1357 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec16;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat7.x = x_1366;
        let x_1369 : f32 = u_xlat17.w;
        let x_1371 : f32 = u_xlat7.x;
        let x_1373 : f32 = u_xlat83;
        u_xlat83 = ((x_1369 * x_1371) + x_1373);
        let x_1376 : vec4<f32> = u_xlat13;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.x, x_1376.y);
        let x_1379 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec17;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat7.x = x_1388;
        let x_1391 : f32 = u_xlat18.x;
        let x_1393 : f32 = u_xlat7.x;
        let x_1395 : f32 = u_xlat83;
        u_xlat83 = ((x_1391 * x_1393) + x_1395);
        let x_1398 : vec4<f32> = u_xlat13;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.z, x_1398.w);
        let x_1401 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec18;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat7.x = x_1410;
        let x_1413 : f32 = u_xlat18.y;
        let x_1415 : f32 = u_xlat7.x;
        let x_1417 : f32 = u_xlat83;
        u_xlat83 = ((x_1413 * x_1415) + x_1417);
        let x_1420 : vec2<f32> = u_xlat64;
        let x_1422 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec19;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat7.x = x_1431;
        let x_1434 : f32 = u_xlat18.z;
        let x_1436 : f32 = u_xlat7.x;
        let x_1438 : f32 = u_xlat83;
        u_xlat83 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat14;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec20;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat7.x = x_1453;
        let x_1456 : f32 = u_xlat18.w;
        let x_1458 : f32 = u_xlat7.x;
        let x_1460 : f32 = u_xlat83;
        u_xlat83 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat15;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec21;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat7.x = x_1475;
        let x_1478 : f32 = u_xlat19.x;
        let x_1480 : f32 = u_xlat7.x;
        let x_1482 : f32 = u_xlat83;
        u_xlat83 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat15;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.z, x_1485.w);
        let x_1488 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec22;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat7.x = x_1497;
        let x_1500 : f32 = u_xlat19.y;
        let x_1502 : f32 = u_xlat7.x;
        let x_1504 : f32 = u_xlat83;
        u_xlat83 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec2<f32> = u_xlat33;
        let x_1509 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec23;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat7.x = x_1518;
        let x_1521 : f32 = u_xlat19.z;
        let x_1523 : f32 = u_xlat7.x;
        let x_1525 : f32 = u_xlat83;
        u_xlat83 = ((x_1521 * x_1523) + x_1525);
        let x_1528 : vec4<f32> = u_xlat16;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec24;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat7.x = x_1540;
        let x_1543 : f32 = u_xlat19.w;
        let x_1545 : f32 = u_xlat7.x;
        let x_1547 : f32 = u_xlat83;
        u_xlat83 = ((x_1543 * x_1545) + x_1547);
        let x_1550 : vec4<f32> = u_xlat10;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.y);
        let x_1553 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec25;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat7.x = x_1562;
        let x_1565 : f32 = u_xlat6.x;
        let x_1567 : f32 = u_xlat7.x;
        let x_1569 : f32 = u_xlat83;
        u_xlat83 = ((x_1565 * x_1567) + x_1569);
        let x_1572 : vec4<f32> = u_xlat10;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.z, x_1572.w);
        let x_1575 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec26;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat6.x = x_1584;
        let x_1587 : f32 = u_xlat6.y;
        let x_1589 : f32 = u_xlat6.x;
        let x_1591 : f32 = u_xlat83;
        u_xlat83 = ((x_1587 * x_1589) + x_1591);
        let x_1594 : vec2<f32> = u_xlat61;
        let x_1596 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec27;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat6.x = x_1605;
        let x_1608 : f32 = u_xlat6.z;
        let x_1610 : f32 = u_xlat6.x;
        let x_1612 : f32 = u_xlat83;
        u_xlat83 = ((x_1608 * x_1610) + x_1612);
        let x_1615 : vec2<f32> = u_xlat31;
        let x_1617 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec28;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
        u_xlat31.x = x_1626;
        let x_1629 : f32 = u_xlat6.w;
        let x_1631 : f32 = u_xlat31.x;
        let x_1633 : f32 = u_xlat83;
        u_xlat5.x = ((x_1629 * x_1631) + x_1633);
      }
    }
  } else {
    let x_1638 : vec4<f32> = u_xlat2;
    let x_1639 : vec2<f32> = vec2<f32>(x_1638.x, x_1638.y);
    let x_1641 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
    let x_1648 : vec3<f32> = txVec29;
    let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
    u_xlat5.x = x_1650;
  }
  let x_1653 : f32 = x_108.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1653) + 1.0f);
  let x_1658 : f32 = u_xlat5.x;
  let x_1660 : f32 = x_108.x_MainLightShadowParams.x;
  let x_1663 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1658 * x_1660) + x_1663);
  let x_1668 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1668);
  let x_1672 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1672 >= 1.0f);
  let x_1674 : bool = u_xlatb54;
  let x_1675 : bool = u_xlatb28;
  u_xlatb28 = (x_1674 | x_1675);
  let x_1677 : bool = u_xlatb28;
  if (x_1677) {
    x_1679 = 1.0f;
  } else {
    let x_1684 : f32 = u_xlat2.x;
    x_1679 = x_1684;
  }
  let x_1685 : f32 = x_1679;
  u_xlat2.x = x_1685;
  let x_1687 : vec3<f32> = vs_TEXCOORD7;
  let x_1690 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1692 : vec3<f32> = (x_1687 + -(x_1690));
  let x_1693 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1695 : vec4<f32> = u_xlat5;
  let x_1697 : vec4<f32> = u_xlat5;
  u_xlat28.x = dot(vec3<f32>(x_1695.x, x_1695.y, x_1695.z), vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
  let x_1703 : f32 = u_xlat28.x;
  let x_1705 : f32 = x_108.x_MainLightShadowParams.z;
  let x_1708 : f32 = x_108.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1703 * x_1705) + x_1708);
  let x_1710 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1710, 0.0f, 1.0f);
  let x_1713 : f32 = u_xlat2.x;
  u_xlat5.x = (-(x_1713) + 1.0f);
  let x_1717 : f32 = u_xlat54;
  let x_1719 : f32 = u_xlat5.x;
  let x_1722 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1717 * x_1719) + x_1722);
  let x_1732 : f32 = x_1730.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_1732 == -1.0f));
  let x_1734 : bool = u_xlatb54;
  if (x_1734) {
    let x_1737 : vec3<f32> = vs_TEXCOORD7;
    let x_1740 : vec4<f32> = x_1730.x_MainLightWorldToLight[1i];
    let x_1742 : vec2<f32> = (vec2<f32>(x_1737.y, x_1737.y) * vec2<f32>(x_1740.x, x_1740.y));
    let x_1743 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1742.x, x_1742.y, x_1743.z, x_1743.w);
    let x_1746 : vec4<f32> = x_1730.x_MainLightWorldToLight[0i];
    let x_1748 : vec3<f32> = vs_TEXCOORD7;
    let x_1751 : vec4<f32> = u_xlat5;
    let x_1753 : vec2<f32> = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(x_1748.x, x_1748.x)) + vec2<f32>(x_1751.x, x_1751.y));
    let x_1754 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
    let x_1757 : vec4<f32> = x_1730.x_MainLightWorldToLight[2i];
    let x_1759 : vec3<f32> = vs_TEXCOORD7;
    let x_1762 : vec4<f32> = u_xlat5;
    let x_1764 : vec2<f32> = ((vec2<f32>(x_1757.x, x_1757.y) * vec2<f32>(x_1759.z, x_1759.z)) + vec2<f32>(x_1762.x, x_1762.y));
    let x_1765 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1764.x, x_1764.y, x_1765.z, x_1765.w);
    let x_1767 : vec4<f32> = u_xlat5;
    let x_1770 : vec4<f32> = x_1730.x_MainLightWorldToLight[3i];
    let x_1772 : vec2<f32> = (vec2<f32>(x_1767.x, x_1767.y) + vec2<f32>(x_1770.x, x_1770.y));
    let x_1773 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
    let x_1775 : vec4<f32> = u_xlat5;
    let x_1778 : vec2<f32> = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1779 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1778.x, x_1778.y, x_1779.z, x_1779.w);
    let x_1786 : vec4<f32> = u_xlat5;
    let x_1789 : f32 = x_28.x_GlobalMipBias.x;
    let x_1790 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1786.x, x_1786.y), x_1789);
    u_xlat5 = x_1790;
    let x_1795 : f32 = x_1730.x_MainLightCookieTextureFormat;
    let x_1797 : f32 = x_1730.x_MainLightCookieTextureFormat;
    let x_1799 : f32 = x_1730.x_MainLightCookieTextureFormat;
    let x_1801 : f32 = x_1730.x_MainLightCookieTextureFormat;
    let x_1802 : vec4<f32> = vec4<f32>(x_1795, x_1797, x_1799, x_1801);
    let x_1809 : vec4<bool> = (vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1802.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1809.x, x_1809.y);
    let x_1812 : bool = u_xlatb6.y;
    if (x_1812) {
      let x_1817 : f32 = u_xlat5.w;
      x_1813 = x_1817;
    } else {
      let x_1820 : f32 = u_xlat5.x;
      x_1813 = x_1820;
    }
    let x_1821 : f32 = x_1813;
    u_xlat54 = x_1821;
    let x_1823 : bool = u_xlatb6.x;
    if (x_1823) {
      let x_1827 : vec4<f32> = u_xlat5;
      x_1824 = vec3<f32>(x_1827.x, x_1827.y, x_1827.z);
    } else {
      let x_1830 : f32 = u_xlat54;
      x_1824 = vec3<f32>(x_1830, x_1830, x_1830);
    }
    let x_1832 : vec3<f32> = x_1824;
    let x_1833 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1839 : vec4<f32> = u_xlat5;
  let x_1842 : vec4<f32> = x_28.x_MainLightColor;
  let x_1844 : vec3<f32> = (vec3<f32>(x_1839.x, x_1839.y, x_1839.z) * vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1845 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
  let x_1849 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1849;
  let x_1853 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1853;
  let x_1857 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1857;
  let x_1859 : vec4<f32> = u_xlat6;
  let x_1862 : vec3<f32> = u_xlat27;
  u_xlat54 = dot(-(vec3<f32>(x_1859.x, x_1859.y, x_1859.z)), x_1862);
  let x_1864 : f32 = u_xlat54;
  let x_1865 : f32 = u_xlat54;
  u_xlat54 = (x_1864 + x_1865);
  let x_1867 : vec3<f32> = u_xlat27;
  let x_1868 : f32 = u_xlat54;
  let x_1872 : vec4<f32> = u_xlat6;
  let x_1875 : vec3<f32> = ((x_1867 * -(vec3<f32>(x_1868, x_1868, x_1868))) + -(vec3<f32>(x_1872.x, x_1872.y, x_1872.z)));
  let x_1876 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
  let x_1878 : vec3<f32> = u_xlat27;
  let x_1879 : vec4<f32> = u_xlat6;
  u_xlat54 = dot(x_1878, vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1882, 0.0f, 1.0f);
  let x_1884 : f32 = u_xlat54;
  u_xlat54 = (-(x_1884) + 1.0f);
  let x_1887 : f32 = u_xlat54;
  let x_1888 : f32 = u_xlat54;
  u_xlat54 = (x_1887 * x_1888);
  let x_1890 : f32 = u_xlat54;
  let x_1891 : f32 = u_xlat54;
  u_xlat54 = (x_1890 * x_1891);
  let x_1893 : f32 = u_xlat1;
  u_xlat83 = ((-(x_1893) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1899 : f32 = u_xlat1;
  let x_1900 : f32 = u_xlat83;
  u_xlat1 = (x_1899 * x_1900);
  let x_1902 : f32 = u_xlat1;
  u_xlat1 = (x_1902 * 6.0f);
  let x_1913 : vec4<f32> = u_xlat7;
  let x_1915 : f32 = u_xlat1;
  let x_1916 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1913.x, x_1913.y, x_1913.z), x_1915);
  u_xlat7 = x_1916;
  let x_1918 : f32 = u_xlat7.w;
  u_xlat1 = (x_1918 + -1.0f);
  let x_1925 : f32 = x_1923.unity_SpecCube0_HDR.w;
  let x_1926 : f32 = u_xlat1;
  u_xlat1 = ((x_1925 * x_1926) + 1.0f);
  let x_1929 : f32 = u_xlat1;
  u_xlat1 = max(x_1929, 0.0f);
  let x_1931 : f32 = u_xlat1;
  u_xlat1 = log2(x_1931);
  let x_1933 : f32 = u_xlat1;
  let x_1935 : f32 = x_1923.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1933 * x_1935);
  let x_1937 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1937);
  let x_1939 : f32 = u_xlat1;
  let x_1941 : f32 = x_1923.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1939 * x_1941);
  let x_1943 : vec4<f32> = u_xlat7;
  let x_1945 : f32 = u_xlat1;
  let x_1947 : vec3<f32> = (vec3<f32>(x_1943.x, x_1943.y, x_1943.z) * vec3<f32>(x_1945, x_1945, x_1945));
  let x_1948 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
  let x_1950 : f32 = u_xlat80;
  let x_1952 : f32 = u_xlat80;
  let x_1956 : vec2<f32> = ((vec2<f32>(x_1950, x_1950) * vec2<f32>(x_1952, x_1952)) + vec2<f32>(-1.0f, 1.0f));
  let x_1957 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1956.x, x_1956.y, x_1957.z, x_1957.w);
  let x_1960 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1960);
  let x_1963 : vec4<f32> = u_xlat0;
  let x_1966 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1963.x, x_1963.y, x_1963.z)) + vec3<f32>(x_1966, x_1966, x_1966));
  let x_1969 : f32 = u_xlat54;
  let x_1971 : vec3<f32> = u_xlat34;
  let x_1973 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1969, x_1969, x_1969) * x_1971) + vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
  let x_1976 : f32 = u_xlat1;
  let x_1978 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1976, x_1976, x_1976) * x_1978);
  let x_1980 : vec4<f32> = u_xlat7;
  let x_1982 : vec3<f32> = u_xlat34;
  let x_1983 : vec3<f32> = (vec3<f32>(x_1980.x, x_1980.y, x_1980.z) * x_1982);
  let x_1984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1986 : vec4<f32> = u_xlat3;
  let x_1988 : vec3<f32> = u_xlat4;
  let x_1990 : vec4<f32> = u_xlat7;
  let x_1992 : vec3<f32> = ((vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * x_1988) + vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
  let x_1993 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1996 : f32 = u_xlat2.x;
  let x_1998 : f32 = x_1923.unity_LightData.z;
  u_xlat78 = (x_1996 * x_1998);
  let x_2000 : vec3<f32> = u_xlat27;
  let x_2002 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_2000, vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2005, 0.0f, 1.0f);
  let x_2007 : f32 = u_xlat78;
  let x_2008 : f32 = u_xlat1;
  u_xlat78 = (x_2007 * x_2008);
  let x_2010 : f32 = u_xlat78;
  let x_2012 : vec4<f32> = u_xlat5;
  let x_2014 : vec3<f32> = (vec3<f32>(x_2010, x_2010, x_2010) * vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2014.x, x_2015.y, x_2014.y, x_2014.z);
  let x_2017 : vec4<f32> = u_xlat6;
  let x_2020 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2022 : vec3<f32> = (vec3<f32>(x_2017.x, x_2017.y, x_2017.z) + vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
  let x_2023 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
  let x_2025 : vec4<f32> = u_xlat5;
  let x_2027 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(vec3<f32>(x_2025.x, x_2025.y, x_2025.z), vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : f32 = u_xlat78;
  u_xlat78 = max(x_2030, 1.17549435e-38f);
  let x_2033 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2033);
  let x_2035 : f32 = u_xlat78;
  let x_2037 : vec4<f32> = u_xlat5;
  let x_2039 : vec3<f32> = (vec3<f32>(x_2035, x_2035, x_2035) * vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2040 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
  let x_2042 : vec3<f32> = u_xlat27;
  let x_2043 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_2042, vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2046, 0.0f, 1.0f);
  let x_2049 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2051 : vec4<f32> = u_xlat5;
  u_xlat1 = dot(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2054, 0.0f, 1.0f);
  let x_2056 : f32 = u_xlat78;
  let x_2057 : f32 = u_xlat78;
  u_xlat78 = (x_2056 * x_2057);
  let x_2059 : f32 = u_xlat78;
  let x_2061 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2059 * x_2061) + 1.00001001358032226562f);
  let x_2065 : f32 = u_xlat1;
  let x_2066 : f32 = u_xlat1;
  u_xlat1 = (x_2065 * x_2066);
  let x_2068 : f32 = u_xlat78;
  let x_2069 : f32 = u_xlat78;
  u_xlat78 = (x_2068 * x_2069);
  let x_2071 : f32 = u_xlat1;
  u_xlat1 = max(x_2071, 0.10000000149011611938f);
  let x_2074 : f32 = u_xlat78;
  let x_2075 : f32 = u_xlat1;
  u_xlat78 = (x_2074 * x_2075);
  let x_2077 : f32 = u_xlat81;
  let x_2078 : f32 = u_xlat78;
  u_xlat78 = (x_2077 * x_2078);
  let x_2080 : f32 = u_xlat82;
  let x_2081 : f32 = u_xlat78;
  u_xlat78 = (x_2080 / x_2081);
  let x_2083 : vec4<f32> = u_xlat0;
  let x_2085 : f32 = u_xlat78;
  let x_2088 : vec3<f32> = u_xlat4;
  let x_2089 : vec3<f32> = ((vec3<f32>(x_2083.x, x_2083.y, x_2083.z) * vec3<f32>(x_2085, x_2085, x_2085)) + x_2088);
  let x_2090 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
  let x_2093 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2095 : f32 = x_1923.unity_LightData.y;
  u_xlat78 = min(x_2093, x_2095);
  let x_2098 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2098));
  let x_2102 : f32 = u_xlat28.x;
  let x_2105 : f32 = x_108.x_AdditionalShadowFadeParams.x;
  let x_2108 : f32 = x_108.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2102 * x_2105) + x_2108);
  let x_2110 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2110, 0.0f, 1.0f);
  let x_2114 : f32 = x_1730.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2116 : f32 = x_1730.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2118 : f32 = x_1730.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2120 : f32 = x_1730.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2121 : vec4<f32> = vec4<f32>(x_2114, x_2116, x_2118, x_2120);
  let x_2127 : vec4<bool> = (vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2121.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2127.x, x_2127.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2139 : u32 = u_xlatu_loop_1;
    let x_2140 : u32 = u_xlatu78;
    if ((x_2139 < x_2140)) {
    } else {
      break;
    }
    let x_2143 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2143 >> 2u);
    let x_2146 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2146 & 3u));
    let x_2149 : u32 = u_xlatu83;
    let x_2152 : vec4<f32> = x_1923.unity_LightIndices[bitcast<i32>(x_2149)];
    let x_2162 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2167 : vec4<u32> = indexable[x_2162];
    u_xlat83 = dot(x_2152, bitcast<vec4<f32>>(x_2167));
    let x_2171 : f32 = u_xlat83;
    u_xlati83 = i32(x_2171);
    let x_2173 : vec3<f32> = vs_TEXCOORD7;
    let x_2184 : i32 = u_xlati83;
    let x_2186 : vec4<f32> = x_2183.x_AdditionalLightsPosition[x_2184];
    let x_2189 : i32 = u_xlati83;
    let x_2191 : vec4<f32> = x_2183.x_AdditionalLightsPosition[x_2189];
    let x_2193 : vec3<f32> = ((-(x_2173) * vec3<f32>(x_2186.w, x_2186.w, x_2186.w)) + vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
    let x_2194 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
    let x_2197 : vec4<f32> = u_xlat9;
    let x_2199 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2197.x, x_2197.y, x_2197.z), vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
    let x_2202 : f32 = u_xlat84;
    u_xlat84 = max(x_2202, 0.00006103515625f);
    let x_2206 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2206);
    let x_2208 : f32 = u_xlat59;
    let x_2210 : vec4<f32> = u_xlat9;
    let x_2212 : vec3<f32> = (vec3<f32>(x_2208, x_2208, x_2208) * vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
    let x_2213 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);
    let x_2216 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2216);
    let x_2218 : f32 = u_xlat84;
    let x_2219 : i32 = u_xlati83;
    let x_2221 : f32 = x_2183.x_AdditionalLightsAttenuation[x_2219].x;
    u_xlat84 = (x_2218 * x_2221);
    let x_2223 : f32 = u_xlat84;
    let x_2225 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2223) * x_2225) + 1.0f);
    let x_2228 : f32 = u_xlat84;
    u_xlat84 = max(x_2228, 0.0f);
    let x_2230 : f32 = u_xlat84;
    let x_2231 : f32 = u_xlat84;
    u_xlat84 = (x_2230 * x_2231);
    let x_2233 : f32 = u_xlat84;
    let x_2234 : f32 = u_xlat85;
    u_xlat84 = (x_2233 * x_2234);
    let x_2236 : i32 = u_xlati83;
    let x_2238 : vec4<f32> = x_2183.x_AdditionalLightsSpotDir[x_2236];
    let x_2240 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
    let x_2243 : f32 = u_xlat85;
    let x_2244 : i32 = u_xlati83;
    let x_2246 : f32 = x_2183.x_AdditionalLightsAttenuation[x_2244].z;
    let x_2248 : i32 = u_xlati83;
    let x_2250 : f32 = x_2183.x_AdditionalLightsAttenuation[x_2248].w;
    u_xlat85 = ((x_2243 * x_2246) + x_2250);
    let x_2252 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2252, 0.0f, 1.0f);
    let x_2254 : f32 = u_xlat85;
    let x_2255 : f32 = u_xlat85;
    u_xlat85 = (x_2254 * x_2255);
    let x_2257 : f32 = u_xlat84;
    let x_2258 : f32 = u_xlat85;
    u_xlat84 = (x_2257 * x_2258);
    let x_2262 : i32 = u_xlati83;
    let x_2264 : f32 = x_108.x_AdditionalShadowParams[x_2262].w;
    u_xlati85 = i32(x_2264);
    let x_2267 : i32 = u_xlati85;
    u_xlatb87 = (x_2267 >= 0i);
    let x_2269 : bool = u_xlatb87;
    if (x_2269) {
      let x_2273 : i32 = u_xlati83;
      let x_2275 : f32 = x_108.x_AdditionalShadowParams[x_2273].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2275, x_2275, x_2275, x_2275))));
      let x_2279 : bool = u_xlatb87;
      if (x_2279) {
        let x_2283 : vec4<f32> = u_xlat10;
        let x_2286 : vec4<f32> = u_xlat10;
        let x_2289 : vec4<bool> = (abs(vec4<f32>(x_2283.z, x_2283.z, x_2283.y, x_2283.z)) >= abs(vec4<f32>(x_2286.x, x_2286.y, x_2286.x, x_2286.x)));
        let x_2291 : vec3<bool> = vec3<bool>(x_2289.x, x_2289.y, x_2289.z);
        let x_2292 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
        let x_2295 : bool = u_xlatb11.y;
        let x_2297 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2295 & x_2297);
        let x_2299 : vec4<f32> = u_xlat10;
        let x_2302 : vec4<bool> = (-(vec4<f32>(x_2299.z, x_2299.y, x_2299.z, x_2299.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2303 : vec3<bool> = vec3<bool>(x_2302.x, x_2302.y, x_2302.w);
        let x_2304 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2303.x, x_2303.y, x_2304.z, x_2303.z);
        let x_2307 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2307);
        let x_2312 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2312);
        let x_2317 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2317);
        let x_2320 : bool = u_xlatb11.z;
        if (x_2320) {
          let x_2325 : f32 = u_xlat11.y;
          x_2321 = x_2325;
        } else {
          let x_2327 : f32 = u_xlat88;
          x_2321 = x_2327;
        }
        let x_2328 : f32 = x_2321;
        u_xlat88 = x_2328;
        let x_2330 : bool = u_xlatb87;
        if (x_2330) {
          let x_2335 : f32 = u_xlat11.x;
          x_2331 = x_2335;
        } else {
          let x_2337 : f32 = u_xlat88;
          x_2331 = x_2337;
        }
        let x_2338 : f32 = x_2331;
        u_xlat87 = x_2338;
        let x_2339 : i32 = u_xlati83;
        let x_2341 : f32 = x_108.x_AdditionalShadowParams[x_2339].w;
        u_xlat88 = trunc(x_2341);
        let x_2343 : f32 = u_xlat87;
        let x_2344 : f32 = u_xlat88;
        u_xlat87 = (x_2343 + x_2344);
        let x_2346 : f32 = u_xlat87;
        u_xlati85 = i32(x_2346);
      }
      let x_2348 : i32 = u_xlati85;
      u_xlati85 = (x_2348 << bitcast<u32>(2i));
      let x_2350 : vec3<f32> = vs_TEXCOORD7;
      let x_2353 : i32 = u_xlati85;
      let x_2356 : i32 = u_xlati85;
      let x_2360 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_2353 + 1i) / 4i)][((x_2356 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2350.y, x_2350.y, x_2350.y, x_2350.y) * x_2360);
      let x_2362 : i32 = u_xlati85;
      let x_2364 : i32 = u_xlati85;
      let x_2367 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[(x_2362 / 4i)][(x_2364 % 4i)];
      let x_2368 : vec3<f32> = vs_TEXCOORD7;
      let x_2371 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2367 * vec4<f32>(x_2368.x, x_2368.x, x_2368.x, x_2368.x)) + x_2371);
      let x_2373 : i32 = u_xlati85;
      let x_2376 : i32 = u_xlati85;
      let x_2380 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_2373 + 2i) / 4i)][((x_2376 + 2i) % 4i)];
      let x_2381 : vec3<f32> = vs_TEXCOORD7;
      let x_2384 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2380 * vec4<f32>(x_2381.z, x_2381.z, x_2381.z, x_2381.z)) + x_2384);
      let x_2386 : vec4<f32> = u_xlat11;
      let x_2387 : i32 = u_xlati85;
      let x_2390 : i32 = u_xlati85;
      let x_2394 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_2387 + 3i) / 4i)][((x_2390 + 3i) % 4i)];
      u_xlat11 = (x_2386 + x_2394);
      let x_2396 : vec4<f32> = u_xlat11;
      let x_2398 : vec4<f32> = u_xlat11;
      let x_2400 : vec3<f32> = (vec3<f32>(x_2396.x, x_2396.y, x_2396.z) / vec3<f32>(x_2398.w, x_2398.w, x_2398.w));
      let x_2401 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
      let x_2404 : i32 = u_xlati83;
      let x_2406 : f32 = x_108.x_AdditionalShadowParams[x_2404].y;
      u_xlatb85 = (0.0f < x_2406);
      let x_2408 : bool = u_xlatb85;
      if (x_2408) {
        let x_2411 : i32 = u_xlati83;
        let x_2413 : f32 = x_108.x_AdditionalShadowParams[x_2411].y;
        u_xlatb85 = (1.0f == x_2413);
        let x_2415 : bool = u_xlatb85;
        if (x_2415) {
          let x_2418 : vec4<f32> = u_xlat11;
          let x_2422 : vec4<f32> = x_108.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2418.x, x_2418.y, x_2418.x, x_2418.y) + x_2422);
          let x_2425 : vec4<f32> = u_xlat12;
          let x_2426 : vec2<f32> = vec2<f32>(x_2425.x, x_2425.y);
          let x_2428 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2426.x, x_2426.y, x_2428);
          let x_2436 : vec3<f32> = txVec30;
          let x_2438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2436.xy, x_2436.z);
          u_xlat13.x = x_2438;
          let x_2441 : vec4<f32> = u_xlat12;
          let x_2442 : vec2<f32> = vec2<f32>(x_2441.z, x_2441.w);
          let x_2444 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2442.x, x_2442.y, x_2444);
          let x_2451 : vec3<f32> = txVec31;
          let x_2453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2451.xy, x_2451.z);
          u_xlat13.y = x_2453;
          let x_2455 : vec4<f32> = u_xlat11;
          let x_2459 : vec4<f32> = x_108.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2455.x, x_2455.y, x_2455.x, x_2455.y) + x_2459);
          let x_2462 : vec4<f32> = u_xlat12;
          let x_2463 : vec2<f32> = vec2<f32>(x_2462.x, x_2462.y);
          let x_2465 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2463.x, x_2463.y, x_2465);
          let x_2472 : vec3<f32> = txVec32;
          let x_2474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2472.xy, x_2472.z);
          u_xlat13.z = x_2474;
          let x_2477 : vec4<f32> = u_xlat12;
          let x_2478 : vec2<f32> = vec2<f32>(x_2477.z, x_2477.w);
          let x_2480 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2478.x, x_2478.y, x_2480);
          let x_2487 : vec3<f32> = txVec33;
          let x_2489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2487.xy, x_2487.z);
          u_xlat13.w = x_2489;
          let x_2491 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2491, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2494 : i32 = u_xlati83;
          let x_2496 : f32 = x_108.x_AdditionalShadowParams[x_2494].y;
          u_xlatb87 = (2.0f == x_2496);
          let x_2498 : bool = u_xlatb87;
          if (x_2498) {
            let x_2501 : vec4<f32> = u_xlat11;
            let x_2505 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2508 : vec2<f32> = ((vec2<f32>(x_2501.x, x_2501.y) * vec2<f32>(x_2505.z, x_2505.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2509 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2508.x, x_2508.y, x_2509.z, x_2509.w);
            let x_2511 : vec4<f32> = u_xlat12;
            let x_2513 : vec2<f32> = floor(vec2<f32>(x_2511.x, x_2511.y));
            let x_2514 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2516 : vec4<f32> = u_xlat11;
            let x_2519 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2522 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2516.x, x_2516.y) * vec2<f32>(x_2519.z, x_2519.w)) + -(vec2<f32>(x_2522.x, x_2522.y)));
            let x_2526 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2526.x, x_2526.x, x_2526.y, x_2526.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2529 : vec4<f32> = u_xlat13;
            let x_2531 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2529.x, x_2529.x, x_2529.z, x_2529.z) * vec4<f32>(x_2531.x, x_2531.x, x_2531.z, x_2531.z));
            let x_2534 : vec4<f32> = u_xlat14;
            let x_2536 : vec2<f32> = (vec2<f32>(x_2534.y, x_2534.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2537 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2536.x, x_2537.y, x_2536.y, x_2537.w);
            let x_2539 : vec4<f32> = u_xlat14;
            let x_2542 : vec2<f32> = u_xlat64;
            let x_2544 : vec2<f32> = ((vec2<f32>(x_2539.x, x_2539.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2542));
            let x_2545 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2544.x, x_2544.y, x_2545.z, x_2545.w);
            let x_2548 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2548) + vec2<f32>(1.0f, 1.0f));
            let x_2551 : vec2<f32> = u_xlat64;
            let x_2552 : vec2<f32> = min(x_2551, vec2<f32>(0.0f, 0.0f));
            let x_2553 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2552.x, x_2552.y, x_2553.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat15;
            let x_2558 : vec4<f32> = u_xlat15;
            let x_2561 : vec2<f32> = u_xlat66;
            let x_2562 : vec2<f32> = ((-(vec2<f32>(x_2555.x, x_2555.y)) * vec2<f32>(x_2558.x, x_2558.y)) + x_2561);
            let x_2563 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2565 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2565, vec2<f32>(0.0f, 0.0f));
            let x_2567 : vec2<f32> = u_xlat64;
            let x_2569 : vec2<f32> = u_xlat64;
            let x_2571 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2567) * x_2569) + vec2<f32>(x_2571.y, x_2571.w));
            let x_2574 : vec4<f32> = u_xlat15;
            let x_2576 : vec2<f32> = (vec2<f32>(x_2574.x, x_2574.y) + vec2<f32>(1.0f, 1.0f));
            let x_2577 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2576.x, x_2576.y, x_2577.z, x_2577.w);
            let x_2579 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2579 + vec2<f32>(1.0f, 1.0f));
            let x_2581 : vec4<f32> = u_xlat14;
            let x_2583 : vec2<f32> = (vec2<f32>(x_2581.x, x_2581.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2584 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
            let x_2586 : vec2<f32> = u_xlat66;
            let x_2587 : vec2<f32> = (x_2586 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2588 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2587.x, x_2587.y, x_2588.z, x_2588.w);
            let x_2590 : vec4<f32> = u_xlat15;
            let x_2592 : vec2<f32> = (vec2<f32>(x_2590.x, x_2590.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2593 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2592.x, x_2592.y, x_2593.z, x_2593.w);
            let x_2595 : vec2<f32> = u_xlat64;
            let x_2596 : vec2<f32> = (x_2595 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2597 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2596.x, x_2596.y, x_2597.z, x_2597.w);
            let x_2599 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2599.y, x_2599.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2603 : f32 = u_xlat15.x;
            u_xlat16.z = x_2603;
            let x_2606 : f32 = u_xlat64.x;
            u_xlat16.w = x_2606;
            let x_2609 : f32 = u_xlat17.x;
            u_xlat14.z = x_2609;
            let x_2612 : f32 = u_xlat13.x;
            u_xlat14.w = x_2612;
            let x_2614 : vec4<f32> = u_xlat14;
            let x_2616 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2614.z, x_2614.w, x_2614.x, x_2614.z) + vec4<f32>(x_2616.z, x_2616.w, x_2616.x, x_2616.z));
            let x_2620 : f32 = u_xlat16.y;
            u_xlat15.z = x_2620;
            let x_2623 : f32 = u_xlat64.y;
            u_xlat15.w = x_2623;
            let x_2626 : f32 = u_xlat14.y;
            u_xlat17.z = x_2626;
            let x_2629 : f32 = u_xlat13.z;
            u_xlat17.w = x_2629;
            let x_2631 : vec4<f32> = u_xlat15;
            let x_2633 : vec4<f32> = u_xlat17;
            let x_2635 : vec3<f32> = (vec3<f32>(x_2631.z, x_2631.y, x_2631.w) + vec3<f32>(x_2633.z, x_2633.y, x_2633.w));
            let x_2636 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat14;
            let x_2640 : vec4<f32> = u_xlat18;
            let x_2642 : vec3<f32> = (vec3<f32>(x_2638.x, x_2638.z, x_2638.w) / vec3<f32>(x_2640.z, x_2640.w, x_2640.y));
            let x_2643 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
            let x_2645 : vec4<f32> = u_xlat14;
            let x_2647 : vec3<f32> = (vec3<f32>(x_2645.x, x_2645.y, x_2645.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2648 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
            let x_2650 : vec4<f32> = u_xlat17;
            let x_2652 : vec4<f32> = u_xlat13;
            let x_2654 : vec3<f32> = (vec3<f32>(x_2650.z, x_2650.y, x_2650.w) / vec3<f32>(x_2652.x, x_2652.y, x_2652.z));
            let x_2655 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
            let x_2657 : vec4<f32> = u_xlat15;
            let x_2659 : vec3<f32> = (vec3<f32>(x_2657.x, x_2657.y, x_2657.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2660 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
            let x_2662 : vec4<f32> = u_xlat14;
            let x_2665 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2667 : vec3<f32> = (vec3<f32>(x_2662.y, x_2662.x, x_2662.z) * vec3<f32>(x_2665.x, x_2665.x, x_2665.x));
            let x_2668 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2667.x, x_2667.y, x_2667.z, x_2668.w);
            let x_2670 : vec4<f32> = u_xlat15;
            let x_2673 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2675 : vec3<f32> = (vec3<f32>(x_2670.x, x_2670.y, x_2670.z) * vec3<f32>(x_2673.y, x_2673.y, x_2673.y));
            let x_2676 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
            let x_2679 : f32 = u_xlat15.x;
            u_xlat14.w = x_2679;
            let x_2681 : vec4<f32> = u_xlat12;
            let x_2684 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2687 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2681.x, x_2681.y, x_2681.x, x_2681.y) * vec4<f32>(x_2684.x, x_2684.y, x_2684.x, x_2684.y)) + vec4<f32>(x_2687.y, x_2687.w, x_2687.x, x_2687.w));
            let x_2690 : vec4<f32> = u_xlat12;
            let x_2693 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2696 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2690.x, x_2690.y) * vec2<f32>(x_2693.x, x_2693.y)) + vec2<f32>(x_2696.z, x_2696.w));
            let x_2700 : f32 = u_xlat14.y;
            u_xlat15.w = x_2700;
            let x_2702 : vec4<f32> = u_xlat15;
            let x_2703 : vec2<f32> = vec2<f32>(x_2702.y, x_2702.z);
            let x_2704 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2704.x, x_2703.x, x_2704.z, x_2703.y);
            let x_2706 : vec4<f32> = u_xlat12;
            let x_2709 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2712 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2706.x, x_2706.y, x_2706.x, x_2706.y) * vec4<f32>(x_2709.x, x_2709.y, x_2709.x, x_2709.y)) + vec4<f32>(x_2712.x, x_2712.y, x_2712.z, x_2712.y));
            let x_2715 : vec4<f32> = u_xlat12;
            let x_2718 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2721 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2715.x, x_2715.y, x_2715.x, x_2715.y) * vec4<f32>(x_2718.x, x_2718.y, x_2718.x, x_2718.y)) + vec4<f32>(x_2721.w, x_2721.y, x_2721.w, x_2721.z));
            let x_2724 : vec4<f32> = u_xlat12;
            let x_2727 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2730 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y) * vec4<f32>(x_2727.x, x_2727.y, x_2727.x, x_2727.y)) + vec4<f32>(x_2730.x, x_2730.w, x_2730.z, x_2730.w));
            let x_2733 : vec4<f32> = u_xlat13;
            let x_2735 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2733.x, x_2733.x, x_2733.x, x_2733.y) * vec4<f32>(x_2735.z, x_2735.w, x_2735.y, x_2735.z));
            let x_2739 : vec4<f32> = u_xlat13;
            let x_2741 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2739.y, x_2739.y, x_2739.z, x_2739.z) * x_2741);
            let x_2744 : f32 = u_xlat13.z;
            let x_2746 : f32 = u_xlat18.y;
            u_xlat87 = (x_2744 * x_2746);
            let x_2749 : vec4<f32> = u_xlat16;
            let x_2750 : vec2<f32> = vec2<f32>(x_2749.x, x_2749.y);
            let x_2752 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2750.x, x_2750.y, x_2752);
            let x_2759 : vec3<f32> = txVec34;
            let x_2761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2759.xy, x_2759.z);
            u_xlat88 = x_2761;
            let x_2763 : vec4<f32> = u_xlat16;
            let x_2764 : vec2<f32> = vec2<f32>(x_2763.z, x_2763.w);
            let x_2766 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2764.x, x_2764.y, x_2766);
            let x_2774 : vec3<f32> = txVec35;
            let x_2776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2774.xy, x_2774.z);
            u_xlat89 = x_2776;
            let x_2777 : f32 = u_xlat89;
            let x_2779 : f32 = u_xlat19.y;
            u_xlat89 = (x_2777 * x_2779);
            let x_2782 : f32 = u_xlat19.x;
            let x_2783 : f32 = u_xlat88;
            let x_2785 : f32 = u_xlat89;
            u_xlat88 = ((x_2782 * x_2783) + x_2785);
            let x_2788 : vec2<f32> = u_xlat64;
            let x_2790 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
            let x_2797 : vec3<f32> = txVec36;
            let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
            u_xlat89 = x_2799;
            let x_2801 : f32 = u_xlat19.z;
            let x_2802 : f32 = u_xlat89;
            let x_2804 : f32 = u_xlat88;
            u_xlat88 = ((x_2801 * x_2802) + x_2804);
            let x_2807 : vec4<f32> = u_xlat15;
            let x_2808 : vec2<f32> = vec2<f32>(x_2807.x, x_2807.y);
            let x_2810 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2808.x, x_2808.y, x_2810);
            let x_2817 : vec3<f32> = txVec37;
            let x_2819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2817.xy, x_2817.z);
            u_xlat89 = x_2819;
            let x_2821 : f32 = u_xlat19.w;
            let x_2822 : f32 = u_xlat89;
            let x_2824 : f32 = u_xlat88;
            u_xlat88 = ((x_2821 * x_2822) + x_2824);
            let x_2827 : vec4<f32> = u_xlat17;
            let x_2828 : vec2<f32> = vec2<f32>(x_2827.x, x_2827.y);
            let x_2830 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2828.x, x_2828.y, x_2830);
            let x_2837 : vec3<f32> = txVec38;
            let x_2839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2837.xy, x_2837.z);
            u_xlat89 = x_2839;
            let x_2841 : f32 = u_xlat20.x;
            let x_2842 : f32 = u_xlat89;
            let x_2844 : f32 = u_xlat88;
            u_xlat88 = ((x_2841 * x_2842) + x_2844);
            let x_2847 : vec4<f32> = u_xlat17;
            let x_2848 : vec2<f32> = vec2<f32>(x_2847.z, x_2847.w);
            let x_2850 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2848.x, x_2848.y, x_2850);
            let x_2857 : vec3<f32> = txVec39;
            let x_2859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2857.xy, x_2857.z);
            u_xlat89 = x_2859;
            let x_2861 : f32 = u_xlat20.y;
            let x_2862 : f32 = u_xlat89;
            let x_2864 : f32 = u_xlat88;
            u_xlat88 = ((x_2861 * x_2862) + x_2864);
            let x_2867 : vec4<f32> = u_xlat15;
            let x_2868 : vec2<f32> = vec2<f32>(x_2867.z, x_2867.w);
            let x_2870 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2868.x, x_2868.y, x_2870);
            let x_2877 : vec3<f32> = txVec40;
            let x_2879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2877.xy, x_2877.z);
            u_xlat89 = x_2879;
            let x_2881 : f32 = u_xlat20.z;
            let x_2882 : f32 = u_xlat89;
            let x_2884 : f32 = u_xlat88;
            u_xlat88 = ((x_2881 * x_2882) + x_2884);
            let x_2887 : vec4<f32> = u_xlat14;
            let x_2888 : vec2<f32> = vec2<f32>(x_2887.x, x_2887.y);
            let x_2890 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
            let x_2897 : vec3<f32> = txVec41;
            let x_2899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
            u_xlat89 = x_2899;
            let x_2901 : f32 = u_xlat20.w;
            let x_2902 : f32 = u_xlat89;
            let x_2904 : f32 = u_xlat88;
            u_xlat88 = ((x_2901 * x_2902) + x_2904);
            let x_2907 : vec4<f32> = u_xlat14;
            let x_2908 : vec2<f32> = vec2<f32>(x_2907.z, x_2907.w);
            let x_2910 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2908.x, x_2908.y, x_2910);
            let x_2917 : vec3<f32> = txVec42;
            let x_2919 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2917.xy, x_2917.z);
            u_xlat89 = x_2919;
            let x_2920 : f32 = u_xlat87;
            let x_2921 : f32 = u_xlat89;
            let x_2923 : f32 = u_xlat88;
            u_xlat85 = ((x_2920 * x_2921) + x_2923);
          } else {
            let x_2926 : vec4<f32> = u_xlat11;
            let x_2929 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2932 : vec2<f32> = ((vec2<f32>(x_2926.x, x_2926.y) * vec2<f32>(x_2929.z, x_2929.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2933 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2932.x, x_2932.y, x_2933.z, x_2933.w);
            let x_2935 : vec4<f32> = u_xlat12;
            let x_2937 : vec2<f32> = floor(vec2<f32>(x_2935.x, x_2935.y));
            let x_2938 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2937.x, x_2937.y, x_2938.z, x_2938.w);
            let x_2940 : vec4<f32> = u_xlat11;
            let x_2943 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2940.x, x_2940.y) * vec2<f32>(x_2943.z, x_2943.w)) + -(vec2<f32>(x_2946.x, x_2946.y)));
            let x_2950 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2950.x, x_2950.x, x_2950.y, x_2950.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2953 : vec4<f32> = u_xlat13;
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2953.x, x_2953.x, x_2953.z, x_2953.z) * vec4<f32>(x_2955.x, x_2955.x, x_2955.z, x_2955.z));
            let x_2958 : vec4<f32> = u_xlat14;
            let x_2960 : vec2<f32> = (vec2<f32>(x_2958.y, x_2958.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2961 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2961.x, x_2960.x, x_2961.z, x_2960.y);
            let x_2963 : vec4<f32> = u_xlat14;
            let x_2966 : vec2<f32> = u_xlat64;
            let x_2968 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2966));
            let x_2969 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2968.x, x_2969.y, x_2968.y, x_2969.w);
            let x_2971 : vec2<f32> = u_xlat64;
            let x_2973 : vec2<f32> = (-(x_2971) + vec2<f32>(1.0f, 1.0f));
            let x_2974 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2973.x, x_2973.y, x_2974.z, x_2974.w);
            let x_2976 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2976, vec2<f32>(0.0f, 0.0f));
            let x_2978 : vec2<f32> = u_xlat66;
            let x_2980 : vec2<f32> = u_xlat66;
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2984 : vec2<f32> = ((-(x_2978) * x_2980) + vec2<f32>(x_2982.x, x_2982.y));
            let x_2985 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2984.x, x_2984.y, x_2985.z, x_2985.w);
            let x_2987 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2987, vec2<f32>(0.0f, 0.0f));
            let x_2990 : vec2<f32> = u_xlat66;
            let x_2992 : vec2<f32> = u_xlat66;
            let x_2994 : vec4<f32> = u_xlat13;
            let x_2996 : vec2<f32> = ((-(x_2990) * x_2992) + vec2<f32>(x_2994.y, x_2994.w));
            let x_2997 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2996.x, x_2997.y, x_2996.y);
            let x_2999 : vec4<f32> = u_xlat14;
            let x_3002 : vec2<f32> = (vec2<f32>(x_2999.x, x_2999.y) + vec2<f32>(2.0f, 2.0f));
            let x_3003 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3002.x, x_3002.y, x_3003.z, x_3003.w);
            let x_3005 : vec3<f32> = u_xlat39;
            let x_3007 : vec2<f32> = (vec2<f32>(x_3005.x, x_3005.z) + vec2<f32>(2.0f, 2.0f));
            let x_3008 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3008.x, x_3007.x, x_3008.z, x_3007.y);
            let x_3011 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3011 * 0.08163200318813323975f);
            let x_3014 : vec4<f32> = u_xlat13;
            let x_3017 : vec3<f32> = (vec3<f32>(x_3014.z, x_3014.x, x_3014.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3018 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3017.x, x_3017.y, x_3017.z, x_3018.w);
            let x_3020 : vec4<f32> = u_xlat14;
            let x_3022 : vec2<f32> = (vec2<f32>(x_3020.x, x_3020.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3023 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3022.x, x_3022.y, x_3023.z, x_3023.w);
            let x_3026 : f32 = u_xlat17.y;
            u_xlat16.x = x_3026;
            let x_3028 : vec2<f32> = u_xlat64;
            let x_3031 : vec2<f32> = ((vec2<f32>(x_3028.x, x_3028.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3032 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3032.x, x_3031.x, x_3032.z, x_3031.y);
            let x_3034 : vec2<f32> = u_xlat64;
            let x_3037 : vec2<f32> = ((vec2<f32>(x_3034.x, x_3034.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3038 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3037.x, x_3038.y, x_3037.y, x_3038.w);
            let x_3041 : f32 = u_xlat13.x;
            u_xlat14.y = x_3041;
            let x_3044 : f32 = u_xlat15.y;
            u_xlat14.w = x_3044;
            let x_3046 : vec4<f32> = u_xlat14;
            let x_3047 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3046 + x_3047);
            let x_3049 : vec2<f32> = u_xlat64;
            let x_3052 : vec2<f32> = ((vec2<f32>(x_3049.y, x_3049.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3053 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3053.x, x_3052.x, x_3053.z, x_3052.y);
            let x_3055 : vec2<f32> = u_xlat64;
            let x_3058 : vec2<f32> = ((vec2<f32>(x_3055.y, x_3055.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3059 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3058.x, x_3059.y, x_3058.y, x_3059.w);
            let x_3062 : f32 = u_xlat13.y;
            u_xlat15.y = x_3062;
            let x_3064 : vec4<f32> = u_xlat15;
            let x_3065 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3064 + x_3065);
            let x_3067 : vec4<f32> = u_xlat14;
            let x_3068 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3067 / x_3068);
            let x_3070 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3070 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3072 : vec4<f32> = u_xlat15;
            let x_3073 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3072 / x_3073);
            let x_3075 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3075 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3077 : vec4<f32> = u_xlat14;
            let x_3080 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3077.w, x_3077.x, x_3077.y, x_3077.z) * vec4<f32>(x_3080.x, x_3080.x, x_3080.x, x_3080.x));
            let x_3083 : vec4<f32> = u_xlat15;
            let x_3086 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3083.x, x_3083.w, x_3083.y, x_3083.z) * vec4<f32>(x_3086.y, x_3086.y, x_3086.y, x_3086.y));
            let x_3089 : vec4<f32> = u_xlat14;
            let x_3090 : vec3<f32> = vec3<f32>(x_3089.y, x_3089.z, x_3089.w);
            let x_3091 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3090.x, x_3091.y, x_3090.y, x_3090.z);
            let x_3094 : f32 = u_xlat15.x;
            u_xlat17.y = x_3094;
            let x_3096 : vec4<f32> = u_xlat12;
            let x_3099 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3102 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3096.x, x_3096.y, x_3096.x, x_3096.y) * vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.y)) + vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3102.y));
            let x_3105 : vec4<f32> = u_xlat12;
            let x_3108 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3111 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3105.x, x_3105.y) * vec2<f32>(x_3108.x, x_3108.y)) + vec2<f32>(x_3111.w, x_3111.y));
            let x_3115 : f32 = u_xlat17.y;
            u_xlat14.y = x_3115;
            let x_3118 : f32 = u_xlat15.z;
            u_xlat17.y = x_3118;
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3123 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3120.x, x_3120.y, x_3120.x, x_3120.y) * vec4<f32>(x_3123.x, x_3123.y, x_3123.x, x_3123.y)) + vec4<f32>(x_3126.x, x_3126.y, x_3126.z, x_3126.y));
            let x_3129 : vec4<f32> = u_xlat12;
            let x_3132 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3135 : vec4<f32> = u_xlat17;
            let x_3137 : vec2<f32> = ((vec2<f32>(x_3129.x, x_3129.y) * vec2<f32>(x_3132.x, x_3132.y)) + vec2<f32>(x_3135.w, x_3135.y));
            let x_3138 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3137.x, x_3137.y, x_3138.z, x_3138.w);
            let x_3141 : f32 = u_xlat17.y;
            u_xlat14.z = x_3141;
            let x_3144 : vec4<f32> = u_xlat12;
            let x_3147 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y) * vec4<f32>(x_3147.x, x_3147.y, x_3147.x, x_3147.y)) + vec4<f32>(x_3150.x, x_3150.y, x_3150.x, x_3150.z));
            let x_3154 : f32 = u_xlat15.w;
            u_xlat17.y = x_3154;
            let x_3157 : vec4<f32> = u_xlat12;
            let x_3160 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3163 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3157.x, x_3157.y, x_3157.x, x_3157.y) * vec4<f32>(x_3160.x, x_3160.y, x_3160.x, x_3160.y)) + vec4<f32>(x_3163.x, x_3163.y, x_3163.z, x_3163.y));
            let x_3167 : vec4<f32> = u_xlat12;
            let x_3170 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3173 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3167.x, x_3167.y) * vec2<f32>(x_3170.x, x_3170.y)) + vec2<f32>(x_3173.w, x_3173.y));
            let x_3177 : f32 = u_xlat17.y;
            u_xlat14.w = x_3177;
            let x_3180 : vec4<f32> = u_xlat12;
            let x_3183 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3186 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3180.x, x_3180.y) * vec2<f32>(x_3183.x, x_3183.y)) + vec2<f32>(x_3186.x, x_3186.w));
            let x_3189 : vec4<f32> = u_xlat17;
            let x_3190 : vec3<f32> = vec3<f32>(x_3189.x, x_3189.z, x_3189.w);
            let x_3191 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3190.x, x_3191.y, x_3190.y, x_3190.z);
            let x_3193 : vec4<f32> = u_xlat12;
            let x_3196 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3199 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3193.x, x_3193.y, x_3193.x, x_3193.y) * vec4<f32>(x_3196.x, x_3196.y, x_3196.x, x_3196.y)) + vec4<f32>(x_3199.x, x_3199.y, x_3199.z, x_3199.y));
            let x_3203 : vec4<f32> = u_xlat12;
            let x_3206 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3209 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3203.x, x_3203.y) * vec2<f32>(x_3206.x, x_3206.y)) + vec2<f32>(x_3209.w, x_3209.y));
            let x_3213 : f32 = u_xlat14.x;
            u_xlat15.x = x_3213;
            let x_3215 : vec4<f32> = u_xlat12;
            let x_3218 : vec4<f32> = x_108.x_AdditionalShadowmapSize;
            let x_3221 : vec4<f32> = u_xlat15;
            let x_3223 : vec2<f32> = ((vec2<f32>(x_3215.x, x_3215.y) * vec2<f32>(x_3218.x, x_3218.y)) + vec2<f32>(x_3221.x, x_3221.y));
            let x_3224 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3223.x, x_3223.y, x_3224.z, x_3224.w);
            let x_3227 : vec4<f32> = u_xlat13;
            let x_3229 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3227.x, x_3227.x, x_3227.x, x_3227.x) * x_3229);
            let x_3232 : vec4<f32> = u_xlat13;
            let x_3234 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3232.y, x_3232.y, x_3232.y, x_3232.y) * x_3234);
            let x_3237 : vec4<f32> = u_xlat13;
            let x_3239 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3237.z, x_3237.z, x_3237.z, x_3237.z) * x_3239);
            let x_3241 : vec4<f32> = u_xlat13;
            let x_3243 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3241.w, x_3241.w, x_3241.w, x_3241.w) * x_3243);
            let x_3246 : vec4<f32> = u_xlat18;
            let x_3247 : vec2<f32> = vec2<f32>(x_3246.x, x_3246.y);
            let x_3249 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
            let x_3256 : vec3<f32> = txVec43;
            let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
            u_xlat87 = x_3258;
            let x_3260 : vec4<f32> = u_xlat18;
            let x_3261 : vec2<f32> = vec2<f32>(x_3260.z, x_3260.w);
            let x_3263 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3261.x, x_3261.y, x_3263);
            let x_3270 : vec3<f32> = txVec44;
            let x_3272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3270.xy, x_3270.z);
            u_xlat88 = x_3272;
            let x_3273 : f32 = u_xlat88;
            let x_3275 : f32 = u_xlat23.y;
            u_xlat88 = (x_3273 * x_3275);
            let x_3278 : f32 = u_xlat23.x;
            let x_3279 : f32 = u_xlat87;
            let x_3281 : f32 = u_xlat88;
            u_xlat87 = ((x_3278 * x_3279) + x_3281);
            let x_3284 : vec2<f32> = u_xlat64;
            let x_3286 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3284.x, x_3284.y, x_3286);
            let x_3293 : vec3<f32> = txVec45;
            let x_3295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3293.xy, x_3293.z);
            u_xlat88 = x_3295;
            let x_3297 : f32 = u_xlat23.z;
            let x_3298 : f32 = u_xlat88;
            let x_3300 : f32 = u_xlat87;
            u_xlat87 = ((x_3297 * x_3298) + x_3300);
            let x_3303 : vec4<f32> = u_xlat21;
            let x_3304 : vec2<f32> = vec2<f32>(x_3303.x, x_3303.y);
            let x_3306 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3313 : vec3<f32> = txVec46;
            let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
            u_xlat88 = x_3315;
            let x_3317 : f32 = u_xlat23.w;
            let x_3318 : f32 = u_xlat88;
            let x_3320 : f32 = u_xlat87;
            u_xlat87 = ((x_3317 * x_3318) + x_3320);
            let x_3323 : vec4<f32> = u_xlat19;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.x, x_3323.y);
            let x_3326 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec47;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat88 = x_3335;
            let x_3337 : f32 = u_xlat24.x;
            let x_3338 : f32 = u_xlat88;
            let x_3340 : f32 = u_xlat87;
            u_xlat87 = ((x_3337 * x_3338) + x_3340);
            let x_3343 : vec4<f32> = u_xlat19;
            let x_3344 : vec2<f32> = vec2<f32>(x_3343.z, x_3343.w);
            let x_3346 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec48;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat88 = x_3355;
            let x_3357 : f32 = u_xlat24.y;
            let x_3358 : f32 = u_xlat88;
            let x_3360 : f32 = u_xlat87;
            u_xlat87 = ((x_3357 * x_3358) + x_3360);
            let x_3363 : vec4<f32> = u_xlat20;
            let x_3364 : vec2<f32> = vec2<f32>(x_3363.x, x_3363.y);
            let x_3366 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec49;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat88 = x_3375;
            let x_3377 : f32 = u_xlat24.z;
            let x_3378 : f32 = u_xlat88;
            let x_3380 : f32 = u_xlat87;
            u_xlat87 = ((x_3377 * x_3378) + x_3380);
            let x_3383 : vec4<f32> = u_xlat21;
            let x_3384 : vec2<f32> = vec2<f32>(x_3383.z, x_3383.w);
            let x_3386 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec50;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat88 = x_3395;
            let x_3397 : f32 = u_xlat24.w;
            let x_3398 : f32 = u_xlat88;
            let x_3400 : f32 = u_xlat87;
            u_xlat87 = ((x_3397 * x_3398) + x_3400);
            let x_3403 : vec4<f32> = u_xlat22;
            let x_3404 : vec2<f32> = vec2<f32>(x_3403.x, x_3403.y);
            let x_3406 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3404.x, x_3404.y, x_3406);
            let x_3413 : vec3<f32> = txVec51;
            let x_3415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3413.xy, x_3413.z);
            u_xlat88 = x_3415;
            let x_3417 : f32 = u_xlat25.x;
            let x_3418 : f32 = u_xlat88;
            let x_3420 : f32 = u_xlat87;
            u_xlat87 = ((x_3417 * x_3418) + x_3420);
            let x_3423 : vec4<f32> = u_xlat22;
            let x_3424 : vec2<f32> = vec2<f32>(x_3423.z, x_3423.w);
            let x_3426 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3424.x, x_3424.y, x_3426);
            let x_3433 : vec3<f32> = txVec52;
            let x_3435 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3433.xy, x_3433.z);
            u_xlat88 = x_3435;
            let x_3437 : f32 = u_xlat25.y;
            let x_3438 : f32 = u_xlat88;
            let x_3440 : f32 = u_xlat87;
            u_xlat87 = ((x_3437 * x_3438) + x_3440);
            let x_3443 : vec2<f32> = u_xlat40;
            let x_3445 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3443.x, x_3443.y, x_3445);
            let x_3452 : vec3<f32> = txVec53;
            let x_3454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3452.xy, x_3452.z);
            u_xlat88 = x_3454;
            let x_3456 : f32 = u_xlat25.z;
            let x_3457 : f32 = u_xlat88;
            let x_3459 : f32 = u_xlat87;
            u_xlat87 = ((x_3456 * x_3457) + x_3459);
            let x_3462 : vec2<f32> = u_xlat72;
            let x_3464 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3462.x, x_3462.y, x_3464);
            let x_3471 : vec3<f32> = txVec54;
            let x_3473 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3471.xy, x_3471.z);
            u_xlat88 = x_3473;
            let x_3475 : f32 = u_xlat25.w;
            let x_3476 : f32 = u_xlat88;
            let x_3478 : f32 = u_xlat87;
            u_xlat87 = ((x_3475 * x_3476) + x_3478);
            let x_3481 : vec4<f32> = u_xlat17;
            let x_3482 : vec2<f32> = vec2<f32>(x_3481.x, x_3481.y);
            let x_3484 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3482.x, x_3482.y, x_3484);
            let x_3491 : vec3<f32> = txVec55;
            let x_3493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3491.xy, x_3491.z);
            u_xlat88 = x_3493;
            let x_3495 : f32 = u_xlat13.x;
            let x_3496 : f32 = u_xlat88;
            let x_3498 : f32 = u_xlat87;
            u_xlat87 = ((x_3495 * x_3496) + x_3498);
            let x_3501 : vec4<f32> = u_xlat17;
            let x_3502 : vec2<f32> = vec2<f32>(x_3501.z, x_3501.w);
            let x_3504 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3502.x, x_3502.y, x_3504);
            let x_3511 : vec3<f32> = txVec56;
            let x_3513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3511.xy, x_3511.z);
            u_xlat88 = x_3513;
            let x_3515 : f32 = u_xlat13.y;
            let x_3516 : f32 = u_xlat88;
            let x_3518 : f32 = u_xlat87;
            u_xlat87 = ((x_3515 * x_3516) + x_3518);
            let x_3521 : vec2<f32> = u_xlat67;
            let x_3523 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3521.x, x_3521.y, x_3523);
            let x_3530 : vec3<f32> = txVec57;
            let x_3532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3530.xy, x_3530.z);
            u_xlat88 = x_3532;
            let x_3534 : f32 = u_xlat13.z;
            let x_3535 : f32 = u_xlat88;
            let x_3537 : f32 = u_xlat87;
            u_xlat87 = ((x_3534 * x_3535) + x_3537);
            let x_3540 : vec4<f32> = u_xlat12;
            let x_3541 : vec2<f32> = vec2<f32>(x_3540.x, x_3540.y);
            let x_3543 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3541.x, x_3541.y, x_3543);
            let x_3550 : vec3<f32> = txVec58;
            let x_3552 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3550.xy, x_3550.z);
            u_xlat88 = x_3552;
            let x_3554 : f32 = u_xlat13.w;
            let x_3555 : f32 = u_xlat88;
            let x_3557 : f32 = u_xlat87;
            u_xlat85 = ((x_3554 * x_3555) + x_3557);
          }
        }
      } else {
        let x_3561 : vec4<f32> = u_xlat11;
        let x_3562 : vec2<f32> = vec2<f32>(x_3561.x, x_3561.y);
        let x_3564 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3562.x, x_3562.y, x_3564);
        let x_3571 : vec3<f32> = txVec59;
        let x_3573 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3571.xy, x_3571.z);
        u_xlat85 = x_3573;
      }
      let x_3574 : i32 = u_xlati83;
      let x_3576 : f32 = x_108.x_AdditionalShadowParams[x_3574].x;
      u_xlat87 = (1.0f + -(x_3576));
      let x_3579 : f32 = u_xlat85;
      let x_3580 : i32 = u_xlati83;
      let x_3582 : f32 = x_108.x_AdditionalShadowParams[x_3580].x;
      let x_3584 : f32 = u_xlat87;
      u_xlat85 = ((x_3579 * x_3582) + x_3584);
      let x_3587 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3587);
      let x_3591 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3591 >= 1.0f);
      let x_3593 : bool = u_xlatb87;
      let x_3594 : bool = u_xlatb88;
      u_xlatb87 = (x_3593 | x_3594);
      let x_3596 : bool = u_xlatb87;
      let x_3597 : f32 = u_xlat85;
      u_xlat85 = select(x_3597, 1.0f, x_3596);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3600 : f32 = u_xlat85;
    u_xlat87 = (-(x_3600) + 1.0f);
    let x_3603 : f32 = u_xlat1;
    let x_3604 : f32 = u_xlat87;
    let x_3606 : f32 = u_xlat85;
    u_xlat85 = ((x_3603 * x_3604) + x_3606);
    let x_3609 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_3609 & 31i)));
    let x_3613 : i32 = u_xlati87;
    let x_3616 : f32 = x_1730.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3613) & bitcast<u32>(x_3616)));
    let x_3620 : i32 = u_xlati87;
    if ((x_3620 != 0i)) {
      let x_3624 : i32 = u_xlati83;
      let x_3626 : f32 = x_1730.x_AdditionalLightsLightTypes[x_3624].el;
      u_xlati87 = i32(x_3626);
      let x_3629 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3629 != 0i));
      let x_3633 : i32 = u_xlati83;
      u_xlati11 = (x_3633 << bitcast<u32>(2i));
      let x_3635 : i32 = u_xlati88;
      if ((x_3635 != 0i)) {
        let x_3640 : vec3<f32> = vs_TEXCOORD7;
        let x_3642 : i32 = u_xlati11;
        let x_3645 : i32 = u_xlati11;
        let x_3649 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3642 + 1i) / 4i)][((x_3645 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3640.y, x_3640.y, x_3640.y) * vec3<f32>(x_3649.x, x_3649.y, x_3649.w));
        let x_3652 : i32 = u_xlati11;
        let x_3654 : i32 = u_xlati11;
        let x_3657 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[(x_3652 / 4i)][(x_3654 % 4i)];
        let x_3659 : vec3<f32> = vs_TEXCOORD7;
        let x_3662 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3657.x, x_3657.y, x_3657.w) * vec3<f32>(x_3659.x, x_3659.x, x_3659.x)) + x_3662);
        let x_3664 : i32 = u_xlati11;
        let x_3667 : i32 = u_xlati11;
        let x_3671 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3664 + 2i) / 4i)][((x_3667 + 2i) % 4i)];
        let x_3673 : vec3<f32> = vs_TEXCOORD7;
        let x_3676 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3671.x, x_3671.y, x_3671.w) * vec3<f32>(x_3673.z, x_3673.z, x_3673.z)) + x_3676);
        let x_3678 : vec3<f32> = u_xlat37;
        let x_3679 : i32 = u_xlati11;
        let x_3682 : i32 = u_xlati11;
        let x_3686 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3679 + 3i) / 4i)][((x_3682 + 3i) % 4i)];
        u_xlat37 = (x_3678 + vec3<f32>(x_3686.x, x_3686.y, x_3686.w));
        let x_3689 : vec3<f32> = u_xlat37;
        let x_3691 : vec3<f32> = u_xlat37;
        let x_3693 : vec2<f32> = (vec2<f32>(x_3689.x, x_3689.y) / vec2<f32>(x_3691.z, x_3691.z));
        let x_3694 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3693.x, x_3693.y, x_3694.z);
        let x_3696 : vec3<f32> = u_xlat37;
        let x_3699 : vec2<f32> = ((vec2<f32>(x_3696.x, x_3696.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3700 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3699.x, x_3699.y, x_3700.z);
        let x_3702 : vec3<f32> = u_xlat37;
        let x_3706 : vec2<f32> = clamp(vec2<f32>(x_3702.x, x_3702.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3707 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3706.x, x_3706.y, x_3707.z);
        let x_3709 : i32 = u_xlati83;
        let x_3711 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3709];
        let x_3713 : vec3<f32> = u_xlat37;
        let x_3716 : i32 = u_xlati83;
        let x_3718 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3716];
        let x_3720 : vec2<f32> = ((vec2<f32>(x_3711.x, x_3711.y) * vec2<f32>(x_3713.x, x_3713.y)) + vec2<f32>(x_3718.z, x_3718.w));
        let x_3721 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3720.x, x_3720.y, x_3721.z);
      } else {
        let x_3724 : i32 = u_xlati87;
        u_xlatb87 = (x_3724 == 1i);
        let x_3726 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3726);
        let x_3728 : i32 = u_xlati87;
        if ((x_3728 != 0i)) {
          let x_3732 : vec3<f32> = vs_TEXCOORD7;
          let x_3734 : i32 = u_xlati11;
          let x_3737 : i32 = u_xlati11;
          let x_3741 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3734 + 1i) / 4i)][((x_3737 + 1i) % 4i)];
          let x_3743 : vec2<f32> = (vec2<f32>(x_3732.y, x_3732.y) * vec2<f32>(x_3741.x, x_3741.y));
          let x_3744 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3743.x, x_3743.y, x_3744.z, x_3744.w);
          let x_3746 : i32 = u_xlati11;
          let x_3748 : i32 = u_xlati11;
          let x_3751 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[(x_3746 / 4i)][(x_3748 % 4i)];
          let x_3753 : vec3<f32> = vs_TEXCOORD7;
          let x_3756 : vec4<f32> = u_xlat12;
          let x_3758 : vec2<f32> = ((vec2<f32>(x_3751.x, x_3751.y) * vec2<f32>(x_3753.x, x_3753.x)) + vec2<f32>(x_3756.x, x_3756.y));
          let x_3759 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3758.x, x_3758.y, x_3759.z, x_3759.w);
          let x_3761 : i32 = u_xlati11;
          let x_3764 : i32 = u_xlati11;
          let x_3768 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3761 + 2i) / 4i)][((x_3764 + 2i) % 4i)];
          let x_3770 : vec3<f32> = vs_TEXCOORD7;
          let x_3773 : vec4<f32> = u_xlat12;
          let x_3775 : vec2<f32> = ((vec2<f32>(x_3768.x, x_3768.y) * vec2<f32>(x_3770.z, x_3770.z)) + vec2<f32>(x_3773.x, x_3773.y));
          let x_3776 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3775.x, x_3775.y, x_3776.z, x_3776.w);
          let x_3778 : vec4<f32> = u_xlat12;
          let x_3780 : i32 = u_xlati11;
          let x_3783 : i32 = u_xlati11;
          let x_3787 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3780 + 3i) / 4i)][((x_3783 + 3i) % 4i)];
          let x_3789 : vec2<f32> = (vec2<f32>(x_3778.x, x_3778.y) + vec2<f32>(x_3787.x, x_3787.y));
          let x_3790 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3789.x, x_3789.y, x_3790.z, x_3790.w);
          let x_3792 : vec4<f32> = u_xlat12;
          let x_3795 : vec2<f32> = ((vec2<f32>(x_3792.x, x_3792.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3796 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3795.x, x_3795.y, x_3796.z, x_3796.w);
          let x_3798 : vec4<f32> = u_xlat12;
          let x_3800 : vec2<f32> = fract(vec2<f32>(x_3798.x, x_3798.y));
          let x_3801 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3800.x, x_3800.y, x_3801.z, x_3801.w);
          let x_3803 : i32 = u_xlati83;
          let x_3805 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3803];
          let x_3807 : vec4<f32> = u_xlat12;
          let x_3810 : i32 = u_xlati83;
          let x_3812 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3810];
          let x_3814 : vec2<f32> = ((vec2<f32>(x_3805.x, x_3805.y) * vec2<f32>(x_3807.x, x_3807.y)) + vec2<f32>(x_3812.z, x_3812.w));
          let x_3815 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3814.x, x_3814.y, x_3815.z);
        } else {
          let x_3818 : vec3<f32> = vs_TEXCOORD7;
          let x_3820 : i32 = u_xlati11;
          let x_3823 : i32 = u_xlati11;
          let x_3827 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3820 + 1i) / 4i)][((x_3823 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3818.y, x_3818.y, x_3818.y, x_3818.y) * x_3827);
          let x_3829 : i32 = u_xlati11;
          let x_3831 : i32 = u_xlati11;
          let x_3834 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[(x_3829 / 4i)][(x_3831 % 4i)];
          let x_3835 : vec3<f32> = vs_TEXCOORD7;
          let x_3838 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3834 * vec4<f32>(x_3835.x, x_3835.x, x_3835.x, x_3835.x)) + x_3838);
          let x_3840 : i32 = u_xlati11;
          let x_3843 : i32 = u_xlati11;
          let x_3847 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3840 + 2i) / 4i)][((x_3843 + 2i) % 4i)];
          let x_3848 : vec3<f32> = vs_TEXCOORD7;
          let x_3851 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3847 * vec4<f32>(x_3848.z, x_3848.z, x_3848.z, x_3848.z)) + x_3851);
          let x_3853 : vec4<f32> = u_xlat12;
          let x_3854 : i32 = u_xlati11;
          let x_3857 : i32 = u_xlati11;
          let x_3861 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3854 + 3i) / 4i)][((x_3857 + 3i) % 4i)];
          u_xlat12 = (x_3853 + x_3861);
          let x_3863 : vec4<f32> = u_xlat12;
          let x_3865 : vec4<f32> = u_xlat12;
          let x_3867 : vec3<f32> = (vec3<f32>(x_3863.x, x_3863.y, x_3863.z) / vec3<f32>(x_3865.w, x_3865.w, x_3865.w));
          let x_3868 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3868.w);
          let x_3870 : vec4<f32> = u_xlat12;
          let x_3872 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3870.x, x_3870.y, x_3870.z), vec3<f32>(x_3872.x, x_3872.y, x_3872.z));
          let x_3875 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3875);
          let x_3877 : f32 = u_xlat87;
          let x_3879 : vec4<f32> = u_xlat12;
          let x_3881 : vec3<f32> = (vec3<f32>(x_3877, x_3877, x_3877) * vec3<f32>(x_3879.x, x_3879.y, x_3879.z));
          let x_3882 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3881.x, x_3881.y, x_3881.z, x_3882.w);
          let x_3884 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3884.x, x_3884.y, x_3884.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3889 : f32 = u_xlat87;
          u_xlat87 = max(x_3889, 0.00000099999999747524f);
          let x_3892 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3892);
          let x_3894 : f32 = u_xlat87;
          let x_3896 : vec4<f32> = u_xlat12;
          let x_3898 : vec3<f32> = (vec3<f32>(x_3894, x_3894, x_3894) * vec3<f32>(x_3896.z, x_3896.x, x_3896.y));
          let x_3899 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3898.x, x_3898.y, x_3898.z, x_3899.w);
          let x_3902 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3902);
          let x_3906 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3906, 0.0f, 1.0f);
          let x_3909 : vec4<f32> = u_xlat13;
          let x_3911 : vec4<bool> = (vec4<f32>(x_3909.y, x_3909.y, x_3909.y, x_3909.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3912 : vec2<bool> = vec2<bool>(x_3911.x, x_3911.w);
          let x_3913 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3912.x, x_3913.y, x_3913.z, x_3912.y);
          let x_3916 : bool = u_xlatb11.x;
          if (x_3916) {
            let x_3921 : f32 = u_xlat13.x;
            x_3917 = x_3921;
          } else {
            let x_3924 : f32 = u_xlat13.x;
            x_3917 = -(x_3924);
          }
          let x_3926 : f32 = x_3917;
          u_xlat11.x = x_3926;
          let x_3929 : bool = u_xlatb11.w;
          if (x_3929) {
            let x_3934 : f32 = u_xlat13.x;
            x_3930 = x_3934;
          } else {
            let x_3937 : f32 = u_xlat13.x;
            x_3930 = -(x_3937);
          }
          let x_3939 : f32 = x_3930;
          u_xlat11.w = x_3939;
          let x_3941 : vec4<f32> = u_xlat12;
          let x_3943 : f32 = u_xlat87;
          let x_3946 : vec4<f32> = u_xlat11;
          let x_3948 : vec2<f32> = ((vec2<f32>(x_3941.x, x_3941.y) * vec2<f32>(x_3943, x_3943)) + vec2<f32>(x_3946.x, x_3946.w));
          let x_3949 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3948.x, x_3949.y, x_3949.z, x_3948.y);
          let x_3951 : vec4<f32> = u_xlat11;
          let x_3954 : vec2<f32> = ((vec2<f32>(x_3951.x, x_3951.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3955 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3954.x, x_3955.y, x_3955.z, x_3954.y);
          let x_3957 : vec4<f32> = u_xlat11;
          let x_3961 : vec2<f32> = clamp(vec2<f32>(x_3957.x, x_3957.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3962 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3961.x, x_3962.y, x_3962.z, x_3961.y);
          let x_3964 : i32 = u_xlati83;
          let x_3966 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3964];
          let x_3968 : vec4<f32> = u_xlat11;
          let x_3971 : i32 = u_xlati83;
          let x_3973 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3971];
          let x_3975 : vec2<f32> = ((vec2<f32>(x_3966.x, x_3966.y) * vec2<f32>(x_3968.x, x_3968.w)) + vec2<f32>(x_3973.z, x_3973.w));
          let x_3976 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3975.x, x_3975.y, x_3976.z);
        }
      }
      let x_3983 : vec3<f32> = u_xlat37;
      let x_3985 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3983.x, x_3983.y), 0.0f);
      u_xlat11 = x_3985;
      let x_3987 : bool = u_xlatb7.y;
      if (x_3987) {
        let x_3992 : f32 = u_xlat11.w;
        x_3988 = x_3992;
      } else {
        let x_3995 : f32 = u_xlat11.x;
        x_3988 = x_3995;
      }
      let x_3996 : f32 = x_3988;
      u_xlat87 = x_3996;
      let x_3998 : bool = u_xlatb7.x;
      if (x_3998) {
        let x_4002 : vec4<f32> = u_xlat11;
        x_3999 = vec3<f32>(x_4002.x, x_4002.y, x_4002.z);
      } else {
        let x_4005 : f32 = u_xlat87;
        x_3999 = vec3<f32>(x_4005, x_4005, x_4005);
      }
      let x_4007 : vec3<f32> = x_3999;
      let x_4008 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4007.x, x_4007.y, x_4007.z, x_4008.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4014 : vec4<f32> = u_xlat11;
    let x_4016 : i32 = u_xlati83;
    let x_4018 : vec4<f32> = x_2183.x_AdditionalLightsColor[x_4016];
    let x_4020 : vec3<f32> = (vec3<f32>(x_4014.x, x_4014.y, x_4014.z) * vec3<f32>(x_4018.x, x_4018.y, x_4018.z));
    let x_4021 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4020.x, x_4020.y, x_4020.z, x_4021.w);
    let x_4023 : f32 = u_xlat84;
    let x_4024 : f32 = u_xlat85;
    u_xlat83 = (x_4023 * x_4024);
    let x_4026 : vec3<f32> = u_xlat27;
    let x_4027 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_4026, vec3<f32>(x_4027.x, x_4027.y, x_4027.z));
    let x_4030 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4030, 0.0f, 1.0f);
    let x_4032 : f32 = u_xlat83;
    let x_4033 : f32 = u_xlat84;
    u_xlat83 = (x_4032 * x_4033);
    let x_4035 : f32 = u_xlat83;
    let x_4037 : vec4<f32> = u_xlat11;
    let x_4039 : vec3<f32> = (vec3<f32>(x_4035, x_4035, x_4035) * vec3<f32>(x_4037.x, x_4037.y, x_4037.z));
    let x_4040 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4039.x, x_4039.y, x_4039.z, x_4040.w);
    let x_4042 : vec4<f32> = u_xlat9;
    let x_4044 : f32 = u_xlat59;
    let x_4047 : vec4<f32> = u_xlat6;
    let x_4049 : vec3<f32> = ((vec3<f32>(x_4042.x, x_4042.y, x_4042.z) * vec3<f32>(x_4044, x_4044, x_4044)) + vec3<f32>(x_4047.x, x_4047.y, x_4047.z));
    let x_4050 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4049.x, x_4049.y, x_4049.z, x_4050.w);
    let x_4052 : vec4<f32> = u_xlat9;
    let x_4054 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4052.x, x_4052.y, x_4052.z), vec3<f32>(x_4054.x, x_4054.y, x_4054.z));
    let x_4057 : f32 = u_xlat83;
    u_xlat83 = max(x_4057, 1.17549435e-38f);
    let x_4059 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4059);
    let x_4061 : f32 = u_xlat83;
    let x_4063 : vec4<f32> = u_xlat9;
    let x_4065 : vec3<f32> = (vec3<f32>(x_4061, x_4061, x_4061) * vec3<f32>(x_4063.x, x_4063.y, x_4063.z));
    let x_4066 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4065.x, x_4065.y, x_4065.z, x_4066.w);
    let x_4068 : vec3<f32> = u_xlat27;
    let x_4069 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_4068, vec3<f32>(x_4069.x, x_4069.y, x_4069.z));
    let x_4072 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4072, 0.0f, 1.0f);
    let x_4074 : vec4<f32> = u_xlat10;
    let x_4076 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4074.x, x_4074.y, x_4074.z), vec3<f32>(x_4076.x, x_4076.y, x_4076.z));
    let x_4079 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4079, 0.0f, 1.0f);
    let x_4081 : f32 = u_xlat83;
    let x_4082 : f32 = u_xlat83;
    u_xlat83 = (x_4081 * x_4082);
    let x_4084 : f32 = u_xlat83;
    let x_4086 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4084 * x_4086) + 1.00001001358032226562f);
    let x_4089 : f32 = u_xlat84;
    let x_4090 : f32 = u_xlat84;
    u_xlat84 = (x_4089 * x_4090);
    let x_4092 : f32 = u_xlat83;
    let x_4093 : f32 = u_xlat83;
    u_xlat83 = (x_4092 * x_4093);
    let x_4095 : f32 = u_xlat84;
    u_xlat84 = max(x_4095, 0.10000000149011611938f);
    let x_4097 : f32 = u_xlat83;
    let x_4098 : f32 = u_xlat84;
    u_xlat83 = (x_4097 * x_4098);
    let x_4100 : f32 = u_xlat81;
    let x_4101 : f32 = u_xlat83;
    u_xlat83 = (x_4100 * x_4101);
    let x_4103 : f32 = u_xlat82;
    let x_4104 : f32 = u_xlat83;
    u_xlat83 = (x_4103 / x_4104);
    let x_4106 : vec4<f32> = u_xlat0;
    let x_4108 : f32 = u_xlat83;
    let x_4111 : vec3<f32> = u_xlat4;
    let x_4112 : vec3<f32> = ((vec3<f32>(x_4106.x, x_4106.y, x_4106.z) * vec3<f32>(x_4108, x_4108, x_4108)) + x_4111);
    let x_4113 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4112.x, x_4112.y, x_4112.z, x_4113.w);
    let x_4115 : vec4<f32> = u_xlat9;
    let x_4117 : vec4<f32> = u_xlat11;
    let x_4120 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4115.x, x_4115.y, x_4115.z) * vec3<f32>(x_4117.x, x_4117.y, x_4117.z)) + x_4120);

    continuing {
      let x_4122 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4122 + bitcast<u32>(1i));
    }
  }
  let x_4124 : vec4<f32> = u_xlat5;
  let x_4126 : vec4<f32> = u_xlat2;
  let x_4129 : vec4<f32> = u_xlat3;
  let x_4131 : vec3<f32> = ((vec3<f32>(x_4124.x, x_4124.y, x_4124.z) * vec3<f32>(x_4126.x, x_4126.z, x_4126.w)) + vec3<f32>(x_4129.x, x_4129.y, x_4129.z));
  let x_4132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4131.x, x_4131.y, x_4131.z, x_4132.w);
  let x_4136 : vec3<f32> = u_xlat34;
  let x_4137 : vec4<f32> = u_xlat0;
  let x_4139 : vec3<f32> = (x_4136 + vec3<f32>(x_4137.x, x_4137.y, x_4137.z));
  let x_4140 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4139.x, x_4139.y, x_4139.z, x_4140.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


