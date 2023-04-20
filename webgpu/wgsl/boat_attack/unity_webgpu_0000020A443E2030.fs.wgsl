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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_111 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu27 : u32;

var<private> u_xlati27 : i32;

@group(1) @binding(2) var<uniform> x_293 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb5 : bool;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb53 : bool;

var<private> u_xlatb79 : bool;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

@group(1) @binding(4) var<uniform> x_1755 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2231 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

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
  var x_1705 : f32;
  var x_1838 : f32;
  var x_1849 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2369 : f32;
  var x_2379 : f32;
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
  var x_3965 : f32;
  var x_3978 : f32;
  var x_4036 : f32;
  var x_4047 : vec3<f32>;
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
  u_xlat1.x = x_76.x;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_89);
  let x_93 : vec3<f32> = u_xlat27;
  let x_95 : vec4<f32> = vs_TEXCOORD3;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.x, x_93.x) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres0;
  u_xlat27 = (x_102 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
  let x_119 : vec3<f32> = vs_TEXCOORD7;
  let x_122 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_119 + -(vec3<f32>(x_122.x, x_122.y, x_122.z)));
  let x_127 : vec3<f32> = vs_TEXCOORD7;
  let x_130 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres2;
  let x_133 : vec3<f32> = (x_127 + -(vec3<f32>(x_130.x, x_130.y, x_130.z)));
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres3;
  let x_143 : vec3<f32> = (x_137 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = u_xlat27;
  let x_148 : vec3<f32> = u_xlat27;
  u_xlat6.x = dot(x_147, x_148);
  let x_151 : vec3<f32> = u_xlat3;
  let x_152 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_151, x_152);
  let x_156 : vec4<f32> = u_xlat4;
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : vec4<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_173 : vec4<f32> = u_xlat6;
  let x_176 : vec4<f32> = x_111.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_173 < x_176);
  let x_179 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_179);
  let x_184 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_192);
  let x_196 : bool = u_xlatb3.x;
  u_xlat27.x = select(-0.0f, -1.0f, x_196);
  let x_202 : bool = u_xlatb3.y;
  u_xlat27.y = select(-0.0f, -1.0f, x_202);
  let x_206 : bool = u_xlatb3.z;
  u_xlat27.z = select(-0.0f, -1.0f, x_206);
  let x_209 : vec3<f32> = u_xlat27;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat27 = (x_209 + vec3<f32>(x_210.y, x_210.z, x_210.w));
  let x_213 : vec3<f32> = u_xlat27;
  let x_215 : vec3<f32> = max(x_213, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_216.x, x_215.x, x_215.y, x_215.z);
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat27.x = dot(x_218, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_226 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_226) + 4.0f);
  let x_233 : f32 = u_xlat27.x;
  u_xlatu27 = u32(x_233);
  let x_237 : u32 = u_xlatu27;
  u_xlati27 = (bitcast<i32>(x_237) << bitcast<u32>(2i));
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_242 : i32 = u_xlati27;
  let x_245 : i32 = u_xlati27;
  let x_249 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_242 + 1i) / 4i)][((x_245 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : i32 = u_xlati27;
  let x_254 : i32 = u_xlati27;
  let x_257 : vec4<f32> = x_111.x_MainLightWorldToShadow[(x_252 / 4i)][(x_254 % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD7;
  let x_262 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + x_262);
  let x_264 : i32 = u_xlati27;
  let x_267 : i32 = u_xlati27;
  let x_271 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_264 + 2i) / 4i)][((x_267 + 2i) % 4i)];
  let x_273 : vec3<f32> = vs_TEXCOORD7;
  let x_276 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_273.z, x_273.z, x_273.z)) + x_276);
  let x_278 : vec3<f32> = u_xlat3;
  let x_279 : i32 = u_xlati27;
  let x_282 : i32 = u_xlati27;
  let x_286 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_279 + 3i) / 4i)][((x_282 + 3i) % 4i)];
  u_xlat27 = (x_278 + vec3<f32>(x_286.x, x_286.y, x_286.z));
  u_xlat2.w = 1.0f;
  let x_296 : vec4<f32> = x_293.unity_SHAr;
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_296, x_297);
  let x_302 : vec4<f32> = x_293.unity_SHAg;
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_302, x_303);
  let x_308 : vec4<f32> = x_293.unity_SHAb;
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_308, x_309);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_312.y, x_312.z, x_312.z, x_312.x) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_319 : vec4<f32> = x_293.unity_SHBr;
  let x_320 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_319, x_320);
  let x_325 : vec4<f32> = x_293.unity_SHBg;
  let x_326 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_325, x_326);
  let x_331 : vec4<f32> = x_293.unity_SHBb;
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_331, x_332);
  let x_337 : f32 = u_xlat2.y;
  let x_339 : f32 = u_xlat2.y;
  u_xlat80 = (x_337 * x_339);
  let x_342 : f32 = u_xlat2.x;
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat80;
  u_xlat80 = ((x_342 * x_344) + -(x_346));
  let x_351 : vec4<f32> = x_293.unity_SHC;
  let x_353 : f32 = u_xlat80;
  let x_356 : vec4<f32> = u_xlat5;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353, x_353, x_353)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec3<f32> = u_xlat3;
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_361 + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_365, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_368 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_368) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_374 : f32 = u_xlat80;
  u_xlat81 = (-(x_374) + 1.0f);
  let x_377 : vec4<f32> = u_xlat0;
  let x_379 : f32 = u_xlat80;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379, x_379, x_379));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_393 : vec4<f32> = u_xlat0;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.x, x_391.x) * vec3<f32>(x_393.x, x_393.y, x_393.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_402) + 1.0f);
  let x_407 : f32 = u_xlat1.x;
  let x_409 : f32 = u_xlat1.x;
  u_xlat80 = (x_407 * x_409);
  let x_411 : f32 = u_xlat80;
  u_xlat80 = max(x_411, 0.0078125f);
  let x_415 : f32 = u_xlat80;
  let x_416 : f32 = u_xlat80;
  u_xlat82 = (x_415 * x_416);
  let x_420 : f32 = u_xlat0.w;
  let x_421 : f32 = u_xlat81;
  u_xlat78 = (x_420 + x_421);
  let x_423 : f32 = u_xlat78;
  u_xlat78 = clamp(x_423, 0.0f, 1.0f);
  let x_425 : f32 = u_xlat80;
  u_xlat81 = ((x_425 * 4.0f) + 2.0f);
  let x_431 : f32 = x_111.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_431);
  let x_433 : bool = u_xlatb5;
  if (x_433) {
    let x_437 : f32 = x_111.x_MainLightShadowParams.y;
    u_xlatb5 = (x_437 == 1.0f);
    let x_439 : bool = u_xlatb5;
    if (x_439) {
      let x_442 : vec3<f32> = u_xlat27;
      let x_446 : vec4<f32> = x_111.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_442.x, x_442.y, x_442.x, x_442.y) + x_446);
      let x_450 : vec4<f32> = u_xlat5;
      let x_451 : vec2<f32> = vec2<f32>(x_450.x, x_450.y);
      let x_453 : f32 = u_xlat27.z;
      txVec0 = vec3<f32>(x_451.x, x_451.y, x_453);
      let x_465 : vec3<f32> = txVec0;
      let x_467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_465.xy, x_465.z);
      u_xlat6.x = x_467;
      let x_470 : vec4<f32> = u_xlat5;
      let x_471 : vec2<f32> = vec2<f32>(x_470.z, x_470.w);
      let x_473 : f32 = u_xlat27.z;
      txVec1 = vec3<f32>(x_471.x, x_471.y, x_473);
      let x_480 : vec3<f32> = txVec1;
      let x_482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_480.xy, x_480.z);
      u_xlat6.y = x_482;
      let x_484 : vec3<f32> = u_xlat27;
      let x_488 : vec4<f32> = x_111.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_484.x, x_484.y, x_484.x, x_484.y) + x_488);
      let x_491 : vec4<f32> = u_xlat5;
      let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
      let x_494 : f32 = u_xlat27.z;
      txVec2 = vec3<f32>(x_492.x, x_492.y, x_494);
      let x_501 : vec3<f32> = txVec2;
      let x_503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_501.xy, x_501.z);
      u_xlat6.z = x_503;
      let x_506 : vec4<f32> = u_xlat5;
      let x_507 : vec2<f32> = vec2<f32>(x_506.z, x_506.w);
      let x_509 : f32 = u_xlat27.z;
      txVec3 = vec3<f32>(x_507.x, x_507.y, x_509);
      let x_516 : vec3<f32> = txVec3;
      let x_518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_516.xy, x_516.z);
      u_xlat6.w = x_518;
      let x_520 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_520, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_528 : f32 = x_111.x_MainLightShadowParams.y;
      u_xlatb31 = (x_528 == 2.0f);
      let x_530 : bool = u_xlatb31;
      if (x_530) {
        let x_535 : vec3<f32> = u_xlat27;
        let x_539 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_535.x, x_535.y) * vec2<f32>(x_539.z, x_539.w)) + vec2<f32>(0.5f, 0.5f));
        let x_545 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_545);
        let x_547 : vec3<f32> = u_xlat27;
        let x_550 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_553 : vec2<f32> = u_xlat31;
        let x_555 : vec2<f32> = ((vec2<f32>(x_547.x, x_547.y) * vec2<f32>(x_550.z, x_550.w)) + -(x_553));
        let x_556 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_559.x, x_559.x, x_559.y, x_559.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_564 : vec4<f32> = u_xlat7;
        let x_566 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_564.x, x_564.x, x_564.z, x_564.z) * vec4<f32>(x_566.x, x_566.x, x_566.z, x_566.z));
        let x_570 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_570.y, x_570.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_575 : vec4<f32> = u_xlat8;
        let x_578 : vec4<f32> = u_xlat6;
        let x_581 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_578.x, x_578.y)));
        let x_582 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_581.x, x_582.y, x_581.y, x_582.w);
        let x_584 : vec4<f32> = u_xlat6;
        let x_588 : vec2<f32> = (-(vec2<f32>(x_584.x, x_584.y)) + vec2<f32>(1.0f, 1.0f));
        let x_589 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_592.x, x_592.y), vec2<f32>(0.0f, 0.0f));
        let x_596 : vec2<f32> = u_xlat60;
        let x_598 : vec2<f32> = u_xlat60;
        let x_600 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_596) * x_598) + vec2<f32>(x_600.x, x_600.y));
        let x_603 : vec4<f32> = u_xlat6;
        let x_605 : vec2<f32> = max(vec2<f32>(x_603.x, x_603.y), vec2<f32>(0.0f, 0.0f));
        let x_606 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat6;
        let x_611 : vec4<f32> = u_xlat6;
        let x_614 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = ((-(vec2<f32>(x_608.x, x_608.y)) * vec2<f32>(x_611.x, x_611.y)) + vec2<f32>(x_614.y, x_614.w));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_619 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_619 + vec2<f32>(1.0f, 1.0f));
        let x_621 : vec4<f32> = u_xlat6;
        let x_623 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) + vec2<f32>(1.0f, 1.0f));
        let x_624 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_627 : vec4<f32> = u_xlat7;
        let x_631 : vec2<f32> = (vec2<f32>(x_627.x, x_627.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_632 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
        let x_635 : vec4<f32> = u_xlat8;
        let x_637 : vec2<f32> = (vec2<f32>(x_635.x, x_635.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_638 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec2<f32> = u_xlat60;
        let x_641 : vec2<f32> = (x_640 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_645 : vec4<f32> = u_xlat6;
        let x_647 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_650 : vec4<f32> = u_xlat7;
        let x_652 : vec2<f32> = (vec2<f32>(x_650.y, x_650.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_656 : f32 = u_xlat8.x;
        u_xlat9.z = x_656;
        let x_659 : f32 = u_xlat6.x;
        u_xlat9.w = x_659;
        let x_662 : f32 = u_xlat11.x;
        u_xlat10.z = x_662;
        let x_665 : f32 = u_xlat58.x;
        u_xlat10.w = x_665;
        let x_667 : vec4<f32> = u_xlat9;
        let x_669 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_667.z, x_667.w, x_667.x, x_667.z) + vec4<f32>(x_669.z, x_669.w, x_669.x, x_669.z));
        let x_673 : f32 = u_xlat9.y;
        u_xlat8.z = x_673;
        let x_676 : f32 = u_xlat6.y;
        u_xlat8.w = x_676;
        let x_679 : f32 = u_xlat10.y;
        u_xlat11.z = x_679;
        let x_682 : f32 = u_xlat58.y;
        u_xlat11.w = x_682;
        let x_684 : vec4<f32> = u_xlat8;
        let x_686 : vec4<f32> = u_xlat11;
        let x_688 : vec3<f32> = (vec3<f32>(x_684.z, x_684.y, x_684.w) + vec3<f32>(x_686.z, x_686.y, x_686.w));
        let x_689 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat10;
        let x_693 : vec4<f32> = u_xlat7;
        let x_695 : vec3<f32> = (vec3<f32>(x_691.x, x_691.z, x_691.w) / vec3<f32>(x_693.z, x_693.w, x_693.y));
        let x_696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
        let x_698 : vec4<f32> = u_xlat8;
        let x_704 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_705 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
        let x_707 : vec4<f32> = u_xlat11;
        let x_709 : vec4<f32> = u_xlat6;
        let x_711 : vec3<f32> = (vec3<f32>(x_707.z, x_707.y, x_707.w) / vec3<f32>(x_709.x, x_709.y, x_709.z));
        let x_712 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat9;
        let x_716 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_717 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
        let x_719 : vec4<f32> = u_xlat8;
        let x_722 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_724 : vec3<f32> = (vec3<f32>(x_719.y, x_719.x, x_719.z) * vec3<f32>(x_722.x, x_722.x, x_722.x));
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat9;
        let x_730 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_732 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_730.y, x_730.y, x_730.y));
        let x_733 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_736 : f32 = u_xlat9.x;
        u_xlat8.w = x_736;
        let x_738 : vec2<f32> = u_xlat31;
        let x_741 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y) * vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y)) + vec4<f32>(x_744.y, x_744.w, x_744.x, x_744.w));
        let x_747 : vec2<f32> = u_xlat31;
        let x_749 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_752 : vec4<f32> = u_xlat8;
        let x_754 : vec2<f32> = ((x_747 * vec2<f32>(x_749.x, x_749.y)) + vec2<f32>(x_752.z, x_752.w));
        let x_755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_758 : f32 = u_xlat8.y;
        u_xlat9.w = x_758;
        let x_760 : vec4<f32> = u_xlat9;
        let x_761 : vec2<f32> = vec2<f32>(x_760.y, x_760.z);
        let x_762 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_762.x, x_761.x, x_762.z, x_761.y);
        let x_765 : vec2<f32> = u_xlat31;
        let x_768 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_771 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) * vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y)) + vec4<f32>(x_771.x, x_771.y, x_771.z, x_771.y));
        let x_774 : vec2<f32> = u_xlat31;
        let x_777 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_780 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y) * vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y)) + vec4<f32>(x_780.w, x_780.y, x_780.w, x_780.z));
        let x_783 : vec2<f32> = u_xlat31;
        let x_786 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) * vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y)) + vec4<f32>(x_789.x, x_789.w, x_789.z, x_789.w));
        let x_793 : vec4<f32> = u_xlat6;
        let x_795 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_793.x, x_793.x, x_793.x, x_793.y) * vec4<f32>(x_795.z, x_795.w, x_795.y, x_795.z));
        let x_799 : vec4<f32> = u_xlat6;
        let x_801 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_799.y, x_799.y, x_799.z, x_799.z) * x_801);
        let x_804 : f32 = u_xlat6.z;
        let x_806 : f32 = u_xlat7.y;
        u_xlat31.x = (x_804 * x_806);
        let x_810 : vec4<f32> = u_xlat10;
        let x_811 : vec2<f32> = vec2<f32>(x_810.x, x_810.y);
        let x_813 : f32 = u_xlat27.z;
        txVec4 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_821 : vec3<f32> = txVec4;
        let x_823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_821.xy, x_821.z);
        u_xlat57 = x_823;
        let x_825 : vec4<f32> = u_xlat10;
        let x_826 : vec2<f32> = vec2<f32>(x_825.z, x_825.w);
        let x_828 : f32 = u_xlat27.z;
        txVec5 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_836 : vec3<f32> = txVec5;
        let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_836.xy, x_836.z);
        u_xlat83 = x_838;
        let x_839 : f32 = u_xlat83;
        let x_841 : f32 = u_xlat13.y;
        u_xlat83 = (x_839 * x_841);
        let x_844 : f32 = u_xlat13.x;
        let x_845 : f32 = u_xlat57;
        let x_847 : f32 = u_xlat83;
        u_xlat57 = ((x_844 * x_845) + x_847);
        let x_850 : vec4<f32> = u_xlat11;
        let x_851 : vec2<f32> = vec2<f32>(x_850.x, x_850.y);
        let x_853 : f32 = u_xlat27.z;
        txVec6 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_860 : vec3<f32> = txVec6;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_860.xy, x_860.z);
        u_xlat83 = x_862;
        let x_864 : f32 = u_xlat13.z;
        let x_865 : f32 = u_xlat83;
        let x_867 : f32 = u_xlat57;
        u_xlat57 = ((x_864 * x_865) + x_867);
        let x_870 : vec4<f32> = u_xlat9;
        let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
        let x_873 : f32 = u_xlat27.z;
        txVec7 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec7;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_880.xy, x_880.z);
        u_xlat83 = x_882;
        let x_884 : f32 = u_xlat13.w;
        let x_885 : f32 = u_xlat83;
        let x_887 : f32 = u_xlat57;
        u_xlat57 = ((x_884 * x_885) + x_887);
        let x_890 : vec4<f32> = u_xlat12;
        let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
        let x_893 : f32 = u_xlat27.z;
        txVec8 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec8;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_900.xy, x_900.z);
        u_xlat83 = x_902;
        let x_904 : f32 = u_xlat14.x;
        let x_905 : f32 = u_xlat83;
        let x_907 : f32 = u_xlat57;
        u_xlat57 = ((x_904 * x_905) + x_907);
        let x_910 : vec4<f32> = u_xlat12;
        let x_911 : vec2<f32> = vec2<f32>(x_910.z, x_910.w);
        let x_913 : f32 = u_xlat27.z;
        txVec9 = vec3<f32>(x_911.x, x_911.y, x_913);
        let x_920 : vec3<f32> = txVec9;
        let x_922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_920.xy, x_920.z);
        u_xlat83 = x_922;
        let x_924 : f32 = u_xlat14.y;
        let x_925 : f32 = u_xlat83;
        let x_927 : f32 = u_xlat57;
        u_xlat57 = ((x_924 * x_925) + x_927);
        let x_930 : vec4<f32> = u_xlat9;
        let x_931 : vec2<f32> = vec2<f32>(x_930.z, x_930.w);
        let x_933 : f32 = u_xlat27.z;
        txVec10 = vec3<f32>(x_931.x, x_931.y, x_933);
        let x_940 : vec3<f32> = txVec10;
        let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_940.xy, x_940.z);
        u_xlat83 = x_942;
        let x_944 : f32 = u_xlat14.z;
        let x_945 : f32 = u_xlat83;
        let x_947 : f32 = u_xlat57;
        u_xlat57 = ((x_944 * x_945) + x_947);
        let x_950 : vec4<f32> = u_xlat8;
        let x_951 : vec2<f32> = vec2<f32>(x_950.x, x_950.y);
        let x_953 : f32 = u_xlat27.z;
        txVec11 = vec3<f32>(x_951.x, x_951.y, x_953);
        let x_960 : vec3<f32> = txVec11;
        let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_960.xy, x_960.z);
        u_xlat83 = x_962;
        let x_964 : f32 = u_xlat14.w;
        let x_965 : f32 = u_xlat83;
        let x_967 : f32 = u_xlat57;
        u_xlat57 = ((x_964 * x_965) + x_967);
        let x_970 : vec4<f32> = u_xlat8;
        let x_971 : vec2<f32> = vec2<f32>(x_970.z, x_970.w);
        let x_973 : f32 = u_xlat27.z;
        txVec12 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_980 : vec3<f32> = txVec12;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_980.xy, x_980.z);
        u_xlat83 = x_982;
        let x_984 : f32 = u_xlat31.x;
        let x_985 : f32 = u_xlat83;
        let x_987 : f32 = u_xlat57;
        u_xlat5.x = ((x_984 * x_985) + x_987);
      } else {
        let x_991 : vec3<f32> = u_xlat27;
        let x_994 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_991.x, x_991.y) * vec2<f32>(x_994.z, x_994.w)) + vec2<f32>(0.5f, 0.5f));
        let x_998 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_998);
        let x_1000 : vec3<f32> = u_xlat27;
        let x_1003 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1006 : vec2<f32> = u_xlat31;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + -(x_1006));
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1008.x, x_1008.y, x_1009.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1011.x, x_1011.x, x_1011.y, x_1011.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1014 : vec4<f32> = u_xlat7;
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1014.x, x_1014.x, x_1014.z, x_1014.z) * vec4<f32>(x_1016.x, x_1016.x, x_1016.z, x_1016.z));
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1023 : vec2<f32> = (vec2<f32>(x_1019.y, x_1019.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1023.x, x_1024.z, x_1023.y);
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1029 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1026.x, x_1026.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1029.x, x_1029.y)));
        let x_1033 : vec4<f32> = u_xlat6;
        let x_1036 : vec2<f32> = (-(vec2<f32>(x_1033.x, x_1033.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1036.x, x_1037.y, x_1036.y, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1041 : vec2<f32> = min(vec2<f32>(x_1039.x, x_1039.y), vec2<f32>(0.0f, 0.0f));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1047 : vec4<f32> = u_xlat8;
        let x_1050 : vec4<f32> = u_xlat7;
        let x_1052 : vec2<f32> = ((-(vec2<f32>(x_1044.x, x_1044.y)) * vec2<f32>(x_1047.x, x_1047.y)) + vec2<f32>(x_1050.x, x_1050.z));
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1057 : vec2<f32> = max(vec2<f32>(x_1055.x, x_1055.y), vec2<f32>(0.0f, 0.0f));
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat8;
        let x_1063 : vec4<f32> = u_xlat8;
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = ((-(vec2<f32>(x_1060.x, x_1060.y)) * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.y, x_1066.w));
        let x_1069 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1069.x, x_1068.x, x_1069.z, x_1068.y);
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1071 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1075 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1075 * 0.08163200318813323975f);
        let x_1079 : vec2<f32> = u_xlat58;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1079.y, x_1079.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1085.x, x_1085.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1089 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1089 * 0.08163200318813323975f);
        let x_1093 : f32 = u_xlat10.y;
        u_xlat8.x = x_1093;
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1095.x, x_1095.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1102.x, x_1103.z, x_1102.y);
        let x_1105 : vec4<f32> = u_xlat6;
        let x_1109 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1110 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1109.x, x_1110.y, x_1109.y, x_1110.w);
        let x_1113 : f32 = u_xlat58.x;
        u_xlat7.y = x_1113;
        let x_1116 : f32 = u_xlat9.y;
        u_xlat7.w = x_1116;
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1118 + x_1119);
        let x_1121 : vec4<f32> = u_xlat6;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1121.y, x_1121.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1125.x, x_1124.x, x_1125.z, x_1124.y);
        let x_1127 : vec4<f32> = u_xlat6;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1127.y, x_1127.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1131.y, x_1130.y, x_1131.w);
        let x_1134 : f32 = u_xlat58.y;
        u_xlat9.y = x_1134;
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1136 + x_1137);
        let x_1139 : vec4<f32> = u_xlat7;
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1139 / x_1140);
        let x_1142 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1142 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1149 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1148 / x_1149);
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1151 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1156 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1153.w, x_1153.x, x_1153.y, x_1153.z) * vec4<f32>(x_1156.x, x_1156.x, x_1156.x, x_1156.x));
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1162 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1159.x, x_1159.w, x_1159.y, x_1159.z) * vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y));
        let x_1165 : vec4<f32> = u_xlat7;
        let x_1166 : vec3<f32> = vec3<f32>(x_1165.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1166.z);
        let x_1170 : f32 = u_xlat9.x;
        u_xlat10.y = x_1170;
        let x_1172 : vec2<f32> = u_xlat31;
        let x_1175 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y) * vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y)) + vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1178.y));
        let x_1181 : vec2<f32> = u_xlat31;
        let x_1183 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = ((x_1181 * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1189 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1192 : f32 = u_xlat10.y;
        u_xlat7.y = x_1192;
        let x_1195 : f32 = u_xlat9.z;
        u_xlat10.y = x_1195;
        let x_1197 : vec2<f32> = u_xlat31;
        let x_1200 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1203 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y) * vec4<f32>(x_1200.x, x_1200.y, x_1200.x, x_1200.y)) + vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1203.y));
        let x_1207 : vec2<f32> = u_xlat31;
        let x_1209 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1207 * vec2<f32>(x_1209.x, x_1209.y)) + vec2<f32>(x_1212.w, x_1212.y));
        let x_1216 : f32 = u_xlat10.y;
        u_xlat7.z = x_1216;
        let x_1218 : vec2<f32> = u_xlat31;
        let x_1221 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) * vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y)) + vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.z));
        let x_1228 : f32 = u_xlat9.w;
        u_xlat10.y = x_1228;
        let x_1231 : vec2<f32> = u_xlat31;
        let x_1234 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1237.y));
        let x_1241 : vec2<f32> = u_xlat31;
        let x_1243 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1241 * vec2<f32>(x_1243.x, x_1243.y)) + vec2<f32>(x_1246.w, x_1246.y));
        let x_1250 : f32 = u_xlat10.y;
        u_xlat7.w = x_1250;
        let x_1253 : vec2<f32> = u_xlat31;
        let x_1255 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat7;
        let x_1260 : vec2<f32> = ((x_1253 * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.x, x_1258.w));
        let x_1261 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
        let x_1263 : vec4<f32> = u_xlat10;
        let x_1264 : vec3<f32> = vec3<f32>(x_1263.x, x_1263.z, x_1263.w);
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1264.x, x_1265.y, x_1264.y, x_1264.z);
        let x_1267 : vec2<f32> = u_xlat31;
        let x_1270 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y) * vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y)) + vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1273.y));
        let x_1277 : vec2<f32> = u_xlat31;
        let x_1279 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1277 * vec2<f32>(x_1279.x, x_1279.y)) + vec2<f32>(x_1282.w, x_1282.y));
        let x_1286 : f32 = u_xlat7.x;
        u_xlat9.x = x_1286;
        let x_1288 : vec2<f32> = u_xlat31;
        let x_1290 : vec4<f32> = x_111.x_MainLightShadowmapSize;
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat31 = ((x_1288 * vec2<f32>(x_1290.x, x_1290.y)) + vec2<f32>(x_1293.x, x_1293.y));
        let x_1297 : vec4<f32> = u_xlat6;
        let x_1299 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1297.x, x_1297.x, x_1297.x, x_1297.x) * x_1299);
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1302.y, x_1302.y, x_1302.y, x_1302.y) * x_1304);
        let x_1307 : vec4<f32> = u_xlat6;
        let x_1309 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1307.z, x_1307.z, x_1307.z, x_1307.z) * x_1309);
        let x_1311 : vec4<f32> = u_xlat6;
        let x_1313 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1311.w, x_1311.w, x_1311.w, x_1311.w) * x_1313);
        let x_1316 : vec4<f32> = u_xlat11;
        let x_1317 : vec2<f32> = vec2<f32>(x_1316.x, x_1316.y);
        let x_1319 : f32 = u_xlat27.z;
        txVec13 = vec3<f32>(x_1317.x, x_1317.y, x_1319);
        let x_1326 : vec3<f32> = txVec13;
        let x_1328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1326.xy, x_1326.z);
        u_xlat83 = x_1328;
        let x_1330 : vec4<f32> = u_xlat11;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.z, x_1330.w);
        let x_1333 : f32 = u_xlat27.z;
        txVec14 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec14;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat7.x = x_1342;
        let x_1345 : f32 = u_xlat7.x;
        let x_1347 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1345 * x_1347);
        let x_1351 : f32 = u_xlat17.x;
        let x_1352 : f32 = u_xlat83;
        let x_1355 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1351 * x_1352) + x_1355);
        let x_1358 : vec4<f32> = u_xlat12;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = u_xlat27.z;
        txVec15 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec15;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1368.xy, x_1368.z);
        u_xlat7.x = x_1370;
        let x_1373 : f32 = u_xlat17.z;
        let x_1375 : f32 = u_xlat7.x;
        let x_1377 : f32 = u_xlat83;
        u_xlat83 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec4<f32> = u_xlat14;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.x, x_1380.y);
        let x_1383 : f32 = u_xlat27.z;
        txVec16 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec16;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1390.xy, x_1390.z);
        u_xlat7.x = x_1392;
        let x_1395 : f32 = u_xlat17.w;
        let x_1397 : f32 = u_xlat7.x;
        let x_1399 : f32 = u_xlat83;
        u_xlat83 = ((x_1395 * x_1397) + x_1399);
        let x_1402 : vec4<f32> = u_xlat13;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = u_xlat27.z;
        txVec17 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec17;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat7.x = x_1414;
        let x_1417 : f32 = u_xlat18.x;
        let x_1419 : f32 = u_xlat7.x;
        let x_1421 : f32 = u_xlat83;
        u_xlat83 = ((x_1417 * x_1419) + x_1421);
        let x_1424 : vec4<f32> = u_xlat13;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.z, x_1424.w);
        let x_1427 : f32 = u_xlat27.z;
        txVec18 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec18;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1434.xy, x_1434.z);
        u_xlat7.x = x_1436;
        let x_1439 : f32 = u_xlat18.y;
        let x_1441 : f32 = u_xlat7.x;
        let x_1443 : f32 = u_xlat83;
        u_xlat83 = ((x_1439 * x_1441) + x_1443);
        let x_1446 : vec2<f32> = u_xlat64;
        let x_1448 : f32 = u_xlat27.z;
        txVec19 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec19;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1455.xy, x_1455.z);
        u_xlat7.x = x_1457;
        let x_1460 : f32 = u_xlat18.z;
        let x_1462 : f32 = u_xlat7.x;
        let x_1464 : f32 = u_xlat83;
        u_xlat83 = ((x_1460 * x_1462) + x_1464);
        let x_1467 : vec4<f32> = u_xlat14;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.z, x_1467.w);
        let x_1470 : f32 = u_xlat27.z;
        txVec20 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec20;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat7.x = x_1479;
        let x_1482 : f32 = u_xlat18.w;
        let x_1484 : f32 = u_xlat7.x;
        let x_1486 : f32 = u_xlat83;
        u_xlat83 = ((x_1482 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat15;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = u_xlat27.z;
        txVec21 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec21;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
        u_xlat7.x = x_1501;
        let x_1504 : f32 = u_xlat19.x;
        let x_1506 : f32 = u_xlat7.x;
        let x_1508 : f32 = u_xlat83;
        u_xlat83 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat15;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = u_xlat27.z;
        txVec22 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec22;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1521.xy, x_1521.z);
        u_xlat7.x = x_1523;
        let x_1526 : f32 = u_xlat19.y;
        let x_1528 : f32 = u_xlat7.x;
        let x_1530 : f32 = u_xlat83;
        u_xlat83 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec2<f32> = u_xlat33;
        let x_1535 : f32 = u_xlat27.z;
        txVec23 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec23;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat7.x = x_1544;
        let x_1547 : f32 = u_xlat19.z;
        let x_1549 : f32 = u_xlat7.x;
        let x_1551 : f32 = u_xlat83;
        u_xlat83 = ((x_1547 * x_1549) + x_1551);
        let x_1554 : vec4<f32> = u_xlat16;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
        let x_1557 : f32 = u_xlat27.z;
        txVec24 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec24;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
        u_xlat7.x = x_1566;
        let x_1569 : f32 = u_xlat19.w;
        let x_1571 : f32 = u_xlat7.x;
        let x_1573 : f32 = u_xlat83;
        u_xlat83 = ((x_1569 * x_1571) + x_1573);
        let x_1576 : vec4<f32> = u_xlat10;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = u_xlat27.z;
        txVec25 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec25;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat7.x = x_1588;
        let x_1591 : f32 = u_xlat6.x;
        let x_1593 : f32 = u_xlat7.x;
        let x_1595 : f32 = u_xlat83;
        u_xlat83 = ((x_1591 * x_1593) + x_1595);
        let x_1598 : vec4<f32> = u_xlat10;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.z, x_1598.w);
        let x_1601 : f32 = u_xlat27.z;
        txVec26 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec26;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1608.xy, x_1608.z);
        u_xlat6.x = x_1610;
        let x_1613 : f32 = u_xlat6.y;
        let x_1615 : f32 = u_xlat6.x;
        let x_1617 : f32 = u_xlat83;
        u_xlat83 = ((x_1613 * x_1615) + x_1617);
        let x_1620 : vec2<f32> = u_xlat61;
        let x_1622 : f32 = u_xlat27.z;
        txVec27 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec27;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat6.x = x_1631;
        let x_1634 : f32 = u_xlat6.z;
        let x_1636 : f32 = u_xlat6.x;
        let x_1638 : f32 = u_xlat83;
        u_xlat83 = ((x_1634 * x_1636) + x_1638);
        let x_1641 : vec2<f32> = u_xlat31;
        let x_1643 : f32 = u_xlat27.z;
        txVec28 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec28;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat31.x = x_1652;
        let x_1655 : f32 = u_xlat6.w;
        let x_1657 : f32 = u_xlat31.x;
        let x_1659 : f32 = u_xlat83;
        u_xlat5.x = ((x_1655 * x_1657) + x_1659);
      }
    }
  } else {
    let x_1664 : vec3<f32> = u_xlat27;
    let x_1665 : vec2<f32> = vec2<f32>(x_1664.x, x_1664.y);
    let x_1667 : f32 = u_xlat27.z;
    txVec29 = vec3<f32>(x_1665.x, x_1665.y, x_1667);
    let x_1674 : vec3<f32> = txVec29;
    let x_1676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1674.xy, x_1674.z);
    u_xlat5.x = x_1676;
  }
  let x_1679 : f32 = x_111.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1679) + 1.0f);
  let x_1684 : f32 = u_xlat5.x;
  let x_1686 : f32 = x_111.x_MainLightShadowParams.x;
  let x_1689 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1684 * x_1686) + x_1689);
  let x_1694 : f32 = u_xlat27.z;
  u_xlatb53 = (0.0f >= x_1694);
  let x_1698 : f32 = u_xlat27.z;
  u_xlatb79 = (x_1698 >= 1.0f);
  let x_1700 : bool = u_xlatb79;
  let x_1701 : bool = u_xlatb53;
  u_xlatb53 = (x_1700 | x_1701);
  let x_1703 : bool = u_xlatb53;
  if (x_1703) {
    x_1705 = 1.0f;
  } else {
    let x_1710 : f32 = u_xlat27.x;
    x_1705 = x_1710;
  }
  let x_1711 : f32 = x_1705;
  u_xlat27.x = x_1711;
  let x_1713 : vec3<f32> = vs_TEXCOORD7;
  let x_1716 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1718 : vec3<f32> = (x_1713 + -(x_1716));
  let x_1719 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
  let x_1722 : vec4<f32> = u_xlat5;
  let x_1724 : vec4<f32> = u_xlat5;
  u_xlat53 = dot(vec3<f32>(x_1722.x, x_1722.y, x_1722.z), vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1728 : f32 = u_xlat53;
  let x_1730 : f32 = x_111.x_MainLightShadowParams.z;
  let x_1733 : f32 = x_111.x_MainLightShadowParams.w;
  u_xlat79 = ((x_1728 * x_1730) + x_1733);
  let x_1735 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1735, 0.0f, 1.0f);
  let x_1738 : f32 = u_xlat27.x;
  u_xlat5.x = (-(x_1738) + 1.0f);
  let x_1742 : f32 = u_xlat79;
  let x_1744 : f32 = u_xlat5.x;
  let x_1747 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1742 * x_1744) + x_1747);
  let x_1757 : f32 = x_1755.x_MainLightCookieTextureFormat;
  u_xlatb79 = !((x_1757 == -1.0f));
  let x_1759 : bool = u_xlatb79;
  if (x_1759) {
    let x_1762 : vec3<f32> = vs_TEXCOORD7;
    let x_1765 : vec4<f32> = x_1755.x_MainLightWorldToLight[1i];
    let x_1767 : vec2<f32> = (vec2<f32>(x_1762.y, x_1762.y) * vec2<f32>(x_1765.x, x_1765.y));
    let x_1768 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1767.x, x_1767.y, x_1768.z, x_1768.w);
    let x_1771 : vec4<f32> = x_1755.x_MainLightWorldToLight[0i];
    let x_1773 : vec3<f32> = vs_TEXCOORD7;
    let x_1776 : vec4<f32> = u_xlat5;
    let x_1778 : vec2<f32> = ((vec2<f32>(x_1771.x, x_1771.y) * vec2<f32>(x_1773.x, x_1773.x)) + vec2<f32>(x_1776.x, x_1776.y));
    let x_1779 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1778.x, x_1778.y, x_1779.z, x_1779.w);
    let x_1782 : vec4<f32> = x_1755.x_MainLightWorldToLight[2i];
    let x_1784 : vec3<f32> = vs_TEXCOORD7;
    let x_1787 : vec4<f32> = u_xlat5;
    let x_1789 : vec2<f32> = ((vec2<f32>(x_1782.x, x_1782.y) * vec2<f32>(x_1784.z, x_1784.z)) + vec2<f32>(x_1787.x, x_1787.y));
    let x_1790 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1789.x, x_1789.y, x_1790.z, x_1790.w);
    let x_1792 : vec4<f32> = u_xlat5;
    let x_1795 : vec4<f32> = x_1755.x_MainLightWorldToLight[3i];
    let x_1797 : vec2<f32> = (vec2<f32>(x_1792.x, x_1792.y) + vec2<f32>(x_1795.x, x_1795.y));
    let x_1798 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1797.x, x_1797.y, x_1798.z, x_1798.w);
    let x_1800 : vec4<f32> = u_xlat5;
    let x_1803 : vec2<f32> = ((vec2<f32>(x_1800.x, x_1800.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1804 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1803.x, x_1803.y, x_1804.z, x_1804.w);
    let x_1811 : vec4<f32> = u_xlat5;
    let x_1814 : f32 = x_28.x_GlobalMipBias.x;
    let x_1815 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1811.x, x_1811.y), x_1814);
    u_xlat5 = x_1815;
    let x_1820 : f32 = x_1755.x_MainLightCookieTextureFormat;
    let x_1822 : f32 = x_1755.x_MainLightCookieTextureFormat;
    let x_1824 : f32 = x_1755.x_MainLightCookieTextureFormat;
    let x_1826 : f32 = x_1755.x_MainLightCookieTextureFormat;
    let x_1827 : vec4<f32> = vec4<f32>(x_1820, x_1822, x_1824, x_1826);
    let x_1834 : vec4<bool> = (vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1827.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1834.x, x_1834.y);
    let x_1837 : bool = u_xlatb6.y;
    if (x_1837) {
      let x_1842 : f32 = u_xlat5.w;
      x_1838 = x_1842;
    } else {
      let x_1845 : f32 = u_xlat5.x;
      x_1838 = x_1845;
    }
    let x_1846 : f32 = x_1838;
    u_xlat79 = x_1846;
    let x_1848 : bool = u_xlatb6.x;
    if (x_1848) {
      let x_1852 : vec4<f32> = u_xlat5;
      x_1849 = vec3<f32>(x_1852.x, x_1852.y, x_1852.z);
    } else {
      let x_1855 : f32 = u_xlat79;
      x_1849 = vec3<f32>(x_1855, x_1855, x_1855);
    }
    let x_1857 : vec3<f32> = x_1849;
    let x_1858 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1864 : vec4<f32> = u_xlat5;
  let x_1867 : vec4<f32> = x_28.x_MainLightColor;
  let x_1869 : vec3<f32> = (vec3<f32>(x_1864.x, x_1864.y, x_1864.z) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1870 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
  let x_1874 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1874;
  let x_1878 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1878;
  let x_1882 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1882;
  let x_1884 : vec4<f32> = u_xlat6;
  let x_1887 : vec4<f32> = u_xlat2;
  u_xlat79 = dot(-(vec3<f32>(x_1884.x, x_1884.y, x_1884.z)), vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : f32 = u_xlat79;
  let x_1891 : f32 = u_xlat79;
  u_xlat79 = (x_1890 + x_1891);
  let x_1893 : vec4<f32> = u_xlat2;
  let x_1895 : f32 = u_xlat79;
  let x_1899 : vec4<f32> = u_xlat6;
  let x_1902 : vec3<f32> = ((vec3<f32>(x_1893.x, x_1893.y, x_1893.z) * -(vec3<f32>(x_1895, x_1895, x_1895))) + -(vec3<f32>(x_1899.x, x_1899.y, x_1899.z)));
  let x_1903 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
  let x_1905 : vec4<f32> = u_xlat2;
  let x_1907 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_1905.x, x_1905.y, x_1905.z), vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1910, 0.0f, 1.0f);
  let x_1912 : f32 = u_xlat79;
  u_xlat79 = (-(x_1912) + 1.0f);
  let x_1915 : f32 = u_xlat79;
  let x_1916 : f32 = u_xlat79;
  u_xlat79 = (x_1915 * x_1916);
  let x_1918 : f32 = u_xlat79;
  let x_1919 : f32 = u_xlat79;
  u_xlat79 = (x_1918 * x_1919);
  let x_1922 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_1922) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1929 : f32 = u_xlat1.x;
  let x_1930 : f32 = u_xlat83;
  u_xlat1.x = (x_1929 * x_1930);
  let x_1934 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1934 * 6.0f);
  let x_1946 : vec4<f32> = u_xlat7;
  let x_1949 : f32 = u_xlat1.x;
  let x_1950 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1946.x, x_1946.y, x_1946.z), x_1949);
  u_xlat7 = x_1950;
  let x_1952 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1952 + -1.0f);
  let x_1956 : f32 = x_293.unity_SpecCube0_HDR.w;
  let x_1958 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1956 * x_1958) + 1.0f);
  let x_1963 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1963, 0.0f);
  let x_1967 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1967);
  let x_1971 : f32 = u_xlat1.x;
  let x_1973 : f32 = x_293.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1971 * x_1973);
  let x_1977 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1977);
  let x_1981 : f32 = u_xlat1.x;
  let x_1983 : f32 = x_293.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1981 * x_1983);
  let x_1986 : vec4<f32> = u_xlat7;
  let x_1988 : vec4<f32> = u_xlat1;
  let x_1990 : vec3<f32> = (vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * vec3<f32>(x_1988.x, x_1988.x, x_1988.x));
  let x_1991 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
  let x_1993 : f32 = u_xlat80;
  let x_1995 : f32 = u_xlat80;
  let x_1999 : vec2<f32> = ((vec2<f32>(x_1993, x_1993) * vec2<f32>(x_1995, x_1995)) + vec2<f32>(-1.0f, 1.0f));
  let x_2000 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1999.x, x_1999.y, x_2000.z, x_2000.w);
  let x_2003 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_2003);
  let x_2007 : vec4<f32> = u_xlat0;
  let x_2010 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2007.x, x_2007.y, x_2007.z)) + vec3<f32>(x_2010, x_2010, x_2010));
  let x_2013 : f32 = u_xlat79;
  let x_2015 : vec3<f32> = u_xlat34;
  let x_2017 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2013, x_2013, x_2013) * x_2015) + vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat1;
  let x_2022 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2020.x, x_2020.x, x_2020.x) * x_2022);
  let x_2024 : vec4<f32> = u_xlat7;
  let x_2026 : vec3<f32> = u_xlat34;
  let x_2027 : vec3<f32> = (vec3<f32>(x_2024.x, x_2024.y, x_2024.z) * x_2026);
  let x_2028 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2030 : vec3<f32> = u_xlat3;
  let x_2031 : vec4<f32> = u_xlat4;
  let x_2034 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_2030 * vec3<f32>(x_2031.x, x_2031.y, x_2031.z)) + vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
  let x_2038 : f32 = u_xlat27.x;
  let x_2040 : f32 = x_293.unity_LightData.z;
  u_xlat78 = (x_2038 * x_2040);
  let x_2042 : vec4<f32> = u_xlat2;
  let x_2045 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2042.x, x_2042.y, x_2042.z), vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
  let x_2050 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2050, 0.0f, 1.0f);
  let x_2053 : f32 = u_xlat78;
  let x_2055 : f32 = u_xlat1.x;
  u_xlat78 = (x_2053 * x_2055);
  let x_2057 : f32 = u_xlat78;
  let x_2059 : vec4<f32> = u_xlat5;
  let x_2061 : vec3<f32> = (vec3<f32>(x_2057, x_2057, x_2057) * vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
  let x_2062 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2061.x, x_2061.y, x_2062.z, x_2061.z);
  let x_2064 : vec4<f32> = u_xlat6;
  let x_2067 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2069 : vec3<f32> = (vec3<f32>(x_2064.x, x_2064.y, x_2064.z) + vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2070 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
  let x_2072 : vec4<f32> = u_xlat5;
  let x_2074 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(vec3<f32>(x_2072.x, x_2072.y, x_2072.z), vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : f32 = u_xlat78;
  u_xlat78 = max(x_2077, 1.17549435e-38f);
  let x_2080 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2080);
  let x_2082 : f32 = u_xlat78;
  let x_2084 : vec4<f32> = u_xlat5;
  let x_2086 : vec3<f32> = (vec3<f32>(x_2082, x_2082, x_2082) * vec3<f32>(x_2084.x, x_2084.y, x_2084.z));
  let x_2087 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
  let x_2089 : vec4<f32> = u_xlat2;
  let x_2091 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(vec3<f32>(x_2089.x, x_2089.y, x_2089.z), vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
  let x_2094 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2094, 0.0f, 1.0f);
  let x_2097 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2099 : vec4<f32> = u_xlat5;
  u_xlat80 = dot(vec3<f32>(x_2097.x, x_2097.y, x_2097.z), vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
  let x_2102 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2102, 0.0f, 1.0f);
  let x_2104 : f32 = u_xlat78;
  let x_2105 : f32 = u_xlat78;
  u_xlat78 = (x_2104 * x_2105);
  let x_2107 : f32 = u_xlat78;
  let x_2109 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2107 * x_2109) + 1.00001001358032226562f);
  let x_2113 : f32 = u_xlat80;
  let x_2114 : f32 = u_xlat80;
  u_xlat80 = (x_2113 * x_2114);
  let x_2116 : f32 = u_xlat78;
  let x_2117 : f32 = u_xlat78;
  u_xlat78 = (x_2116 * x_2117);
  let x_2119 : f32 = u_xlat80;
  u_xlat80 = max(x_2119, 0.10000000149011611938f);
  let x_2122 : f32 = u_xlat78;
  let x_2123 : f32 = u_xlat80;
  u_xlat78 = (x_2122 * x_2123);
  let x_2125 : f32 = u_xlat81;
  let x_2126 : f32 = u_xlat78;
  u_xlat78 = (x_2125 * x_2126);
  let x_2128 : f32 = u_xlat82;
  let x_2129 : f32 = u_xlat78;
  u_xlat78 = (x_2128 / x_2129);
  let x_2131 : vec4<f32> = u_xlat0;
  let x_2133 : f32 = u_xlat78;
  let x_2136 : vec4<f32> = u_xlat4;
  let x_2138 : vec3<f32> = ((vec3<f32>(x_2131.x, x_2131.y, x_2131.z) * vec3<f32>(x_2133, x_2133, x_2133)) + vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
  let x_2139 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
  let x_2142 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2144 : f32 = x_293.unity_LightData.y;
  u_xlat78 = min(x_2142, x_2144);
  let x_2147 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2147));
  let x_2150 : f32 = u_xlat53;
  let x_2153 : f32 = x_111.x_AdditionalShadowFadeParams.x;
  let x_2156 : f32 = x_111.x_AdditionalShadowFadeParams.y;
  u_xlat53 = ((x_2150 * x_2153) + x_2156);
  let x_2158 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2158, 0.0f, 1.0f);
  let x_2162 : f32 = x_1755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2164 : f32 = x_1755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2166 : f32 = x_1755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2168 : f32 = x_1755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2169 : vec4<f32> = vec4<f32>(x_2162, x_2164, x_2166, x_2168);
  let x_2175 : vec4<bool> = (vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2169.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2175.x, x_2175.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2187 : u32 = u_xlatu_loop_1;
    let x_2188 : u32 = u_xlatu78;
    if ((x_2187 < x_2188)) {
    } else {
      break;
    }
    let x_2191 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2191 >> 2u);
    let x_2194 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2194 & 3u));
    let x_2197 : u32 = u_xlatu83;
    let x_2200 : vec4<f32> = x_293.unity_LightIndices[bitcast<i32>(x_2197)];
    let x_2210 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2215 : vec4<u32> = indexable[x_2210];
    u_xlat83 = dot(x_2200, bitcast<vec4<f32>>(x_2215));
    let x_2219 : f32 = u_xlat83;
    u_xlati83 = i32(x_2219);
    let x_2221 : vec3<f32> = vs_TEXCOORD7;
    let x_2232 : i32 = u_xlati83;
    let x_2234 : vec4<f32> = x_2231.x_AdditionalLightsPosition[x_2232];
    let x_2237 : i32 = u_xlati83;
    let x_2239 : vec4<f32> = x_2231.x_AdditionalLightsPosition[x_2237];
    let x_2241 : vec3<f32> = ((-(x_2221) * vec3<f32>(x_2234.w, x_2234.w, x_2234.w)) + vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
    let x_2242 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
    let x_2245 : vec4<f32> = u_xlat9;
    let x_2247 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2245.x, x_2245.y, x_2245.z), vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
    let x_2250 : f32 = u_xlat84;
    u_xlat84 = max(x_2250, 0.00006103515625f);
    let x_2254 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2254);
    let x_2256 : f32 = u_xlat59;
    let x_2258 : vec4<f32> = u_xlat9;
    let x_2260 : vec3<f32> = (vec3<f32>(x_2256, x_2256, x_2256) * vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
    let x_2261 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
    let x_2264 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2264);
    let x_2266 : f32 = u_xlat84;
    let x_2267 : i32 = u_xlati83;
    let x_2269 : f32 = x_2231.x_AdditionalLightsAttenuation[x_2267].x;
    u_xlat84 = (x_2266 * x_2269);
    let x_2271 : f32 = u_xlat84;
    let x_2273 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2271) * x_2273) + 1.0f);
    let x_2276 : f32 = u_xlat84;
    u_xlat84 = max(x_2276, 0.0f);
    let x_2278 : f32 = u_xlat84;
    let x_2279 : f32 = u_xlat84;
    u_xlat84 = (x_2278 * x_2279);
    let x_2281 : f32 = u_xlat84;
    let x_2282 : f32 = u_xlat85;
    u_xlat84 = (x_2281 * x_2282);
    let x_2284 : i32 = u_xlati83;
    let x_2286 : vec4<f32> = x_2231.x_AdditionalLightsSpotDir[x_2284];
    let x_2288 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2286.x, x_2286.y, x_2286.z), vec3<f32>(x_2288.x, x_2288.y, x_2288.z));
    let x_2291 : f32 = u_xlat85;
    let x_2292 : i32 = u_xlati83;
    let x_2294 : f32 = x_2231.x_AdditionalLightsAttenuation[x_2292].z;
    let x_2296 : i32 = u_xlati83;
    let x_2298 : f32 = x_2231.x_AdditionalLightsAttenuation[x_2296].w;
    u_xlat85 = ((x_2291 * x_2294) + x_2298);
    let x_2300 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2300, 0.0f, 1.0f);
    let x_2302 : f32 = u_xlat85;
    let x_2303 : f32 = u_xlat85;
    u_xlat85 = (x_2302 * x_2303);
    let x_2305 : f32 = u_xlat84;
    let x_2306 : f32 = u_xlat85;
    u_xlat84 = (x_2305 * x_2306);
    let x_2310 : i32 = u_xlati83;
    let x_2312 : f32 = x_111.x_AdditionalShadowParams[x_2310].w;
    u_xlati85 = i32(x_2312);
    let x_2315 : i32 = u_xlati85;
    u_xlatb87 = (x_2315 >= 0i);
    let x_2317 : bool = u_xlatb87;
    if (x_2317) {
      let x_2321 : i32 = u_xlati83;
      let x_2323 : f32 = x_111.x_AdditionalShadowParams[x_2321].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2323, x_2323, x_2323, x_2323))));
      let x_2327 : bool = u_xlatb87;
      if (x_2327) {
        let x_2331 : vec4<f32> = u_xlat10;
        let x_2334 : vec4<f32> = u_xlat10;
        let x_2337 : vec4<bool> = (abs(vec4<f32>(x_2331.z, x_2331.z, x_2331.y, x_2331.z)) >= abs(vec4<f32>(x_2334.x, x_2334.y, x_2334.x, x_2334.x)));
        let x_2339 : vec3<bool> = vec3<bool>(x_2337.x, x_2337.y, x_2337.z);
        let x_2340 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
        let x_2343 : bool = u_xlatb11.y;
        let x_2345 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2343 & x_2345);
        let x_2347 : vec4<f32> = u_xlat10;
        let x_2350 : vec4<bool> = (-(vec4<f32>(x_2347.z, x_2347.y, x_2347.z, x_2347.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2351 : vec3<bool> = vec3<bool>(x_2350.x, x_2350.y, x_2350.w);
        let x_2352 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2351.x, x_2351.y, x_2352.z, x_2351.z);
        let x_2355 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2355);
        let x_2360 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2360);
        let x_2365 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2365);
        let x_2368 : bool = u_xlatb11.z;
        if (x_2368) {
          let x_2373 : f32 = u_xlat11.y;
          x_2369 = x_2373;
        } else {
          let x_2375 : f32 = u_xlat88;
          x_2369 = x_2375;
        }
        let x_2376 : f32 = x_2369;
        u_xlat88 = x_2376;
        let x_2378 : bool = u_xlatb87;
        if (x_2378) {
          let x_2383 : f32 = u_xlat11.x;
          x_2379 = x_2383;
        } else {
          let x_2385 : f32 = u_xlat88;
          x_2379 = x_2385;
        }
        let x_2386 : f32 = x_2379;
        u_xlat87 = x_2386;
        let x_2387 : i32 = u_xlati83;
        let x_2389 : f32 = x_111.x_AdditionalShadowParams[x_2387].w;
        u_xlat88 = trunc(x_2389);
        let x_2391 : f32 = u_xlat87;
        let x_2392 : f32 = u_xlat88;
        u_xlat87 = (x_2391 + x_2392);
        let x_2394 : f32 = u_xlat87;
        u_xlati85 = i32(x_2394);
      }
      let x_2396 : i32 = u_xlati85;
      u_xlati85 = (x_2396 << bitcast<u32>(2i));
      let x_2398 : vec3<f32> = vs_TEXCOORD7;
      let x_2401 : i32 = u_xlati85;
      let x_2404 : i32 = u_xlati85;
      let x_2408 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2401 + 1i) / 4i)][((x_2404 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2398.y, x_2398.y, x_2398.y, x_2398.y) * x_2408);
      let x_2410 : i32 = u_xlati85;
      let x_2412 : i32 = u_xlati85;
      let x_2415 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[(x_2410 / 4i)][(x_2412 % 4i)];
      let x_2416 : vec3<f32> = vs_TEXCOORD7;
      let x_2419 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2415 * vec4<f32>(x_2416.x, x_2416.x, x_2416.x, x_2416.x)) + x_2419);
      let x_2421 : i32 = u_xlati85;
      let x_2424 : i32 = u_xlati85;
      let x_2428 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2421 + 2i) / 4i)][((x_2424 + 2i) % 4i)];
      let x_2429 : vec3<f32> = vs_TEXCOORD7;
      let x_2432 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2428 * vec4<f32>(x_2429.z, x_2429.z, x_2429.z, x_2429.z)) + x_2432);
      let x_2434 : vec4<f32> = u_xlat11;
      let x_2435 : i32 = u_xlati85;
      let x_2438 : i32 = u_xlati85;
      let x_2442 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_2435 + 3i) / 4i)][((x_2438 + 3i) % 4i)];
      u_xlat11 = (x_2434 + x_2442);
      let x_2444 : vec4<f32> = u_xlat11;
      let x_2446 : vec4<f32> = u_xlat11;
      let x_2448 : vec3<f32> = (vec3<f32>(x_2444.x, x_2444.y, x_2444.z) / vec3<f32>(x_2446.w, x_2446.w, x_2446.w));
      let x_2449 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
      let x_2452 : i32 = u_xlati83;
      let x_2454 : f32 = x_111.x_AdditionalShadowParams[x_2452].y;
      u_xlatb85 = (0.0f < x_2454);
      let x_2456 : bool = u_xlatb85;
      if (x_2456) {
        let x_2459 : i32 = u_xlati83;
        let x_2461 : f32 = x_111.x_AdditionalShadowParams[x_2459].y;
        u_xlatb85 = (1.0f == x_2461);
        let x_2463 : bool = u_xlatb85;
        if (x_2463) {
          let x_2466 : vec4<f32> = u_xlat11;
          let x_2470 : vec4<f32> = x_111.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2466.x, x_2466.y, x_2466.x, x_2466.y) + x_2470);
          let x_2473 : vec4<f32> = u_xlat12;
          let x_2474 : vec2<f32> = vec2<f32>(x_2473.x, x_2473.y);
          let x_2476 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2474.x, x_2474.y, x_2476);
          let x_2484 : vec3<f32> = txVec30;
          let x_2486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2484.xy, x_2484.z);
          u_xlat13.x = x_2486;
          let x_2489 : vec4<f32> = u_xlat12;
          let x_2490 : vec2<f32> = vec2<f32>(x_2489.z, x_2489.w);
          let x_2492 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
          let x_2499 : vec3<f32> = txVec31;
          let x_2501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
          u_xlat13.y = x_2501;
          let x_2503 : vec4<f32> = u_xlat11;
          let x_2507 : vec4<f32> = x_111.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2503.x, x_2503.y, x_2503.x, x_2503.y) + x_2507);
          let x_2510 : vec4<f32> = u_xlat12;
          let x_2511 : vec2<f32> = vec2<f32>(x_2510.x, x_2510.y);
          let x_2513 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2511.x, x_2511.y, x_2513);
          let x_2520 : vec3<f32> = txVec32;
          let x_2522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2520.xy, x_2520.z);
          u_xlat13.z = x_2522;
          let x_2525 : vec4<f32> = u_xlat12;
          let x_2526 : vec2<f32> = vec2<f32>(x_2525.z, x_2525.w);
          let x_2528 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2526.x, x_2526.y, x_2528);
          let x_2535 : vec3<f32> = txVec33;
          let x_2537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2535.xy, x_2535.z);
          u_xlat13.w = x_2537;
          let x_2539 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2539, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2542 : i32 = u_xlati83;
          let x_2544 : f32 = x_111.x_AdditionalShadowParams[x_2542].y;
          u_xlatb87 = (2.0f == x_2544);
          let x_2546 : bool = u_xlatb87;
          if (x_2546) {
            let x_2549 : vec4<f32> = u_xlat11;
            let x_2553 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2556 : vec2<f32> = ((vec2<f32>(x_2549.x, x_2549.y) * vec2<f32>(x_2553.z, x_2553.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2557 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2556.x, x_2556.y, x_2557.z, x_2557.w);
            let x_2559 : vec4<f32> = u_xlat12;
            let x_2561 : vec2<f32> = floor(vec2<f32>(x_2559.x, x_2559.y));
            let x_2562 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2561.x, x_2561.y, x_2562.z, x_2562.w);
            let x_2564 : vec4<f32> = u_xlat11;
            let x_2567 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2570 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2564.x, x_2564.y) * vec2<f32>(x_2567.z, x_2567.w)) + -(vec2<f32>(x_2570.x, x_2570.y)));
            let x_2574 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2574.x, x_2574.x, x_2574.y, x_2574.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2577 : vec4<f32> = u_xlat13;
            let x_2579 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2577.x, x_2577.x, x_2577.z, x_2577.z) * vec4<f32>(x_2579.x, x_2579.x, x_2579.z, x_2579.z));
            let x_2582 : vec4<f32> = u_xlat14;
            let x_2584 : vec2<f32> = (vec2<f32>(x_2582.y, x_2582.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2585 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2584.x, x_2585.y, x_2584.y, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat14;
            let x_2590 : vec2<f32> = u_xlat64;
            let x_2592 : vec2<f32> = ((vec2<f32>(x_2587.x, x_2587.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2590));
            let x_2593 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2592.x, x_2592.y, x_2593.z, x_2593.w);
            let x_2596 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2596) + vec2<f32>(1.0f, 1.0f));
            let x_2599 : vec2<f32> = u_xlat64;
            let x_2600 : vec2<f32> = min(x_2599, vec2<f32>(0.0f, 0.0f));
            let x_2601 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2603 : vec4<f32> = u_xlat15;
            let x_2606 : vec4<f32> = u_xlat15;
            let x_2609 : vec2<f32> = u_xlat66;
            let x_2610 : vec2<f32> = ((-(vec2<f32>(x_2603.x, x_2603.y)) * vec2<f32>(x_2606.x, x_2606.y)) + x_2609);
            let x_2611 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2610.x, x_2610.y, x_2611.z, x_2611.w);
            let x_2613 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2613, vec2<f32>(0.0f, 0.0f));
            let x_2615 : vec2<f32> = u_xlat64;
            let x_2617 : vec2<f32> = u_xlat64;
            let x_2619 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2615) * x_2617) + vec2<f32>(x_2619.y, x_2619.w));
            let x_2622 : vec4<f32> = u_xlat15;
            let x_2624 : vec2<f32> = (vec2<f32>(x_2622.x, x_2622.y) + vec2<f32>(1.0f, 1.0f));
            let x_2625 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2627 + vec2<f32>(1.0f, 1.0f));
            let x_2629 : vec4<f32> = u_xlat14;
            let x_2631 : vec2<f32> = (vec2<f32>(x_2629.x, x_2629.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2632 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
            let x_2634 : vec2<f32> = u_xlat66;
            let x_2635 : vec2<f32> = (x_2634 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2636 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat15;
            let x_2640 : vec2<f32> = (vec2<f32>(x_2638.x, x_2638.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2641 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2640.x, x_2640.y, x_2641.z, x_2641.w);
            let x_2643 : vec2<f32> = u_xlat64;
            let x_2644 : vec2<f32> = (x_2643 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2645 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2644.x, x_2644.y, x_2645.z, x_2645.w);
            let x_2647 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2647.y, x_2647.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2651 : f32 = u_xlat15.x;
            u_xlat16.z = x_2651;
            let x_2654 : f32 = u_xlat64.x;
            u_xlat16.w = x_2654;
            let x_2657 : f32 = u_xlat17.x;
            u_xlat14.z = x_2657;
            let x_2660 : f32 = u_xlat13.x;
            u_xlat14.w = x_2660;
            let x_2662 : vec4<f32> = u_xlat14;
            let x_2664 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2662.z, x_2662.w, x_2662.x, x_2662.z) + vec4<f32>(x_2664.z, x_2664.w, x_2664.x, x_2664.z));
            let x_2668 : f32 = u_xlat16.y;
            u_xlat15.z = x_2668;
            let x_2671 : f32 = u_xlat64.y;
            u_xlat15.w = x_2671;
            let x_2674 : f32 = u_xlat14.y;
            u_xlat17.z = x_2674;
            let x_2677 : f32 = u_xlat13.z;
            u_xlat17.w = x_2677;
            let x_2679 : vec4<f32> = u_xlat15;
            let x_2681 : vec4<f32> = u_xlat17;
            let x_2683 : vec3<f32> = (vec3<f32>(x_2679.z, x_2679.y, x_2679.w) + vec3<f32>(x_2681.z, x_2681.y, x_2681.w));
            let x_2684 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
            let x_2686 : vec4<f32> = u_xlat14;
            let x_2688 : vec4<f32> = u_xlat18;
            let x_2690 : vec3<f32> = (vec3<f32>(x_2686.x, x_2686.z, x_2686.w) / vec3<f32>(x_2688.z, x_2688.w, x_2688.y));
            let x_2691 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2690.x, x_2690.y, x_2690.z, x_2691.w);
            let x_2693 : vec4<f32> = u_xlat14;
            let x_2695 : vec3<f32> = (vec3<f32>(x_2693.x, x_2693.y, x_2693.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2696 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2696.w);
            let x_2698 : vec4<f32> = u_xlat17;
            let x_2700 : vec4<f32> = u_xlat13;
            let x_2702 : vec3<f32> = (vec3<f32>(x_2698.z, x_2698.y, x_2698.w) / vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
            let x_2703 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
            let x_2705 : vec4<f32> = u_xlat15;
            let x_2707 : vec3<f32> = (vec3<f32>(x_2705.x, x_2705.y, x_2705.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2708 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
            let x_2710 : vec4<f32> = u_xlat14;
            let x_2713 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2715 : vec3<f32> = (vec3<f32>(x_2710.y, x_2710.x, x_2710.z) * vec3<f32>(x_2713.x, x_2713.x, x_2713.x));
            let x_2716 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
            let x_2718 : vec4<f32> = u_xlat15;
            let x_2721 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2723 : vec3<f32> = (vec3<f32>(x_2718.x, x_2718.y, x_2718.z) * vec3<f32>(x_2721.y, x_2721.y, x_2721.y));
            let x_2724 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2724.w);
            let x_2727 : f32 = u_xlat15.x;
            u_xlat14.w = x_2727;
            let x_2729 : vec4<f32> = u_xlat12;
            let x_2732 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2735 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2729.x, x_2729.y, x_2729.x, x_2729.y) * vec4<f32>(x_2732.x, x_2732.y, x_2732.x, x_2732.y)) + vec4<f32>(x_2735.y, x_2735.w, x_2735.x, x_2735.w));
            let x_2738 : vec4<f32> = u_xlat12;
            let x_2741 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2744 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2738.x, x_2738.y) * vec2<f32>(x_2741.x, x_2741.y)) + vec2<f32>(x_2744.z, x_2744.w));
            let x_2748 : f32 = u_xlat14.y;
            u_xlat15.w = x_2748;
            let x_2750 : vec4<f32> = u_xlat15;
            let x_2751 : vec2<f32> = vec2<f32>(x_2750.y, x_2750.z);
            let x_2752 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2752.x, x_2751.x, x_2752.z, x_2751.y);
            let x_2754 : vec4<f32> = u_xlat12;
            let x_2757 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2760 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2754.x, x_2754.y, x_2754.x, x_2754.y) * vec4<f32>(x_2757.x, x_2757.y, x_2757.x, x_2757.y)) + vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2760.y));
            let x_2763 : vec4<f32> = u_xlat12;
            let x_2766 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2769 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y) * vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.y)) + vec4<f32>(x_2769.w, x_2769.y, x_2769.w, x_2769.z));
            let x_2772 : vec4<f32> = u_xlat12;
            let x_2775 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2778 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2772.x, x_2772.y, x_2772.x, x_2772.y) * vec4<f32>(x_2775.x, x_2775.y, x_2775.x, x_2775.y)) + vec4<f32>(x_2778.x, x_2778.w, x_2778.z, x_2778.w));
            let x_2781 : vec4<f32> = u_xlat13;
            let x_2783 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2781.x, x_2781.x, x_2781.x, x_2781.y) * vec4<f32>(x_2783.z, x_2783.w, x_2783.y, x_2783.z));
            let x_2787 : vec4<f32> = u_xlat13;
            let x_2789 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2787.y, x_2787.y, x_2787.z, x_2787.z) * x_2789);
            let x_2792 : f32 = u_xlat13.z;
            let x_2794 : f32 = u_xlat18.y;
            u_xlat87 = (x_2792 * x_2794);
            let x_2797 : vec4<f32> = u_xlat16;
            let x_2798 : vec2<f32> = vec2<f32>(x_2797.x, x_2797.y);
            let x_2800 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2798.x, x_2798.y, x_2800);
            let x_2807 : vec3<f32> = txVec34;
            let x_2809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2807.xy, x_2807.z);
            u_xlat88 = x_2809;
            let x_2811 : vec4<f32> = u_xlat16;
            let x_2812 : vec2<f32> = vec2<f32>(x_2811.z, x_2811.w);
            let x_2814 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2812.x, x_2812.y, x_2814);
            let x_2822 : vec3<f32> = txVec35;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat89 = x_2824;
            let x_2825 : f32 = u_xlat89;
            let x_2827 : f32 = u_xlat19.y;
            u_xlat89 = (x_2825 * x_2827);
            let x_2830 : f32 = u_xlat19.x;
            let x_2831 : f32 = u_xlat88;
            let x_2833 : f32 = u_xlat89;
            u_xlat88 = ((x_2830 * x_2831) + x_2833);
            let x_2836 : vec2<f32> = u_xlat64;
            let x_2838 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2836.x, x_2836.y, x_2838);
            let x_2845 : vec3<f32> = txVec36;
            let x_2847 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2845.xy, x_2845.z);
            u_xlat89 = x_2847;
            let x_2849 : f32 = u_xlat19.z;
            let x_2850 : f32 = u_xlat89;
            let x_2852 : f32 = u_xlat88;
            u_xlat88 = ((x_2849 * x_2850) + x_2852);
            let x_2855 : vec4<f32> = u_xlat15;
            let x_2856 : vec2<f32> = vec2<f32>(x_2855.x, x_2855.y);
            let x_2858 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2856.x, x_2856.y, x_2858);
            let x_2865 : vec3<f32> = txVec37;
            let x_2867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2865.xy, x_2865.z);
            u_xlat89 = x_2867;
            let x_2869 : f32 = u_xlat19.w;
            let x_2870 : f32 = u_xlat89;
            let x_2872 : f32 = u_xlat88;
            u_xlat88 = ((x_2869 * x_2870) + x_2872);
            let x_2875 : vec4<f32> = u_xlat17;
            let x_2876 : vec2<f32> = vec2<f32>(x_2875.x, x_2875.y);
            let x_2878 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2876.x, x_2876.y, x_2878);
            let x_2885 : vec3<f32> = txVec38;
            let x_2887 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2885.xy, x_2885.z);
            u_xlat89 = x_2887;
            let x_2889 : f32 = u_xlat20.x;
            let x_2890 : f32 = u_xlat89;
            let x_2892 : f32 = u_xlat88;
            u_xlat88 = ((x_2889 * x_2890) + x_2892);
            let x_2895 : vec4<f32> = u_xlat17;
            let x_2896 : vec2<f32> = vec2<f32>(x_2895.z, x_2895.w);
            let x_2898 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2896.x, x_2896.y, x_2898);
            let x_2905 : vec3<f32> = txVec39;
            let x_2907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2905.xy, x_2905.z);
            u_xlat89 = x_2907;
            let x_2909 : f32 = u_xlat20.y;
            let x_2910 : f32 = u_xlat89;
            let x_2912 : f32 = u_xlat88;
            u_xlat88 = ((x_2909 * x_2910) + x_2912);
            let x_2915 : vec4<f32> = u_xlat15;
            let x_2916 : vec2<f32> = vec2<f32>(x_2915.z, x_2915.w);
            let x_2918 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2916.x, x_2916.y, x_2918);
            let x_2925 : vec3<f32> = txVec40;
            let x_2927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2925.xy, x_2925.z);
            u_xlat89 = x_2927;
            let x_2929 : f32 = u_xlat20.z;
            let x_2930 : f32 = u_xlat89;
            let x_2932 : f32 = u_xlat88;
            u_xlat88 = ((x_2929 * x_2930) + x_2932);
            let x_2935 : vec4<f32> = u_xlat14;
            let x_2936 : vec2<f32> = vec2<f32>(x_2935.x, x_2935.y);
            let x_2938 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
            let x_2945 : vec3<f32> = txVec41;
            let x_2947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
            u_xlat89 = x_2947;
            let x_2949 : f32 = u_xlat20.w;
            let x_2950 : f32 = u_xlat89;
            let x_2952 : f32 = u_xlat88;
            u_xlat88 = ((x_2949 * x_2950) + x_2952);
            let x_2955 : vec4<f32> = u_xlat14;
            let x_2956 : vec2<f32> = vec2<f32>(x_2955.z, x_2955.w);
            let x_2958 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2956.x, x_2956.y, x_2958);
            let x_2965 : vec3<f32> = txVec42;
            let x_2967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2965.xy, x_2965.z);
            u_xlat89 = x_2967;
            let x_2968 : f32 = u_xlat87;
            let x_2969 : f32 = u_xlat89;
            let x_2971 : f32 = u_xlat88;
            u_xlat85 = ((x_2968 * x_2969) + x_2971);
          } else {
            let x_2974 : vec4<f32> = u_xlat11;
            let x_2977 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2980 : vec2<f32> = ((vec2<f32>(x_2974.x, x_2974.y) * vec2<f32>(x_2977.z, x_2977.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2981 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2980.x, x_2980.y, x_2981.z, x_2981.w);
            let x_2983 : vec4<f32> = u_xlat12;
            let x_2985 : vec2<f32> = floor(vec2<f32>(x_2983.x, x_2983.y));
            let x_2986 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2985.x, x_2985.y, x_2986.z, x_2986.w);
            let x_2988 : vec4<f32> = u_xlat11;
            let x_2991 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_2994 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2988.x, x_2988.y) * vec2<f32>(x_2991.z, x_2991.w)) + -(vec2<f32>(x_2994.x, x_2994.y)));
            let x_2998 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2998.x, x_2998.x, x_2998.y, x_2998.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3001 : vec4<f32> = u_xlat13;
            let x_3003 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3001.x, x_3001.x, x_3001.z, x_3001.z) * vec4<f32>(x_3003.x, x_3003.x, x_3003.z, x_3003.z));
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3008 : vec2<f32> = (vec2<f32>(x_3006.y, x_3006.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3009 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3009.x, x_3008.x, x_3009.z, x_3008.y);
            let x_3011 : vec4<f32> = u_xlat14;
            let x_3014 : vec2<f32> = u_xlat64;
            let x_3016 : vec2<f32> = ((vec2<f32>(x_3011.x, x_3011.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3014));
            let x_3017 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3016.x, x_3017.y, x_3016.y, x_3017.w);
            let x_3019 : vec2<f32> = u_xlat64;
            let x_3021 : vec2<f32> = (-(x_3019) + vec2<f32>(1.0f, 1.0f));
            let x_3022 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3021.x, x_3021.y, x_3022.z, x_3022.w);
            let x_3024 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3024, vec2<f32>(0.0f, 0.0f));
            let x_3026 : vec2<f32> = u_xlat66;
            let x_3028 : vec2<f32> = u_xlat66;
            let x_3030 : vec4<f32> = u_xlat14;
            let x_3032 : vec2<f32> = ((-(x_3026) * x_3028) + vec2<f32>(x_3030.x, x_3030.y));
            let x_3033 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3032.x, x_3032.y, x_3033.z, x_3033.w);
            let x_3035 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3035, vec2<f32>(0.0f, 0.0f));
            let x_3038 : vec2<f32> = u_xlat66;
            let x_3040 : vec2<f32> = u_xlat66;
            let x_3042 : vec4<f32> = u_xlat13;
            let x_3044 : vec2<f32> = ((-(x_3038) * x_3040) + vec2<f32>(x_3042.y, x_3042.w));
            let x_3045 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3044.x, x_3045.y, x_3044.y);
            let x_3047 : vec4<f32> = u_xlat14;
            let x_3050 : vec2<f32> = (vec2<f32>(x_3047.x, x_3047.y) + vec2<f32>(2.0f, 2.0f));
            let x_3051 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3050.x, x_3050.y, x_3051.z, x_3051.w);
            let x_3053 : vec3<f32> = u_xlat39;
            let x_3055 : vec2<f32> = (vec2<f32>(x_3053.x, x_3053.z) + vec2<f32>(2.0f, 2.0f));
            let x_3056 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3056.x, x_3055.x, x_3056.z, x_3055.y);
            let x_3059 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3059 * 0.08163200318813323975f);
            let x_3062 : vec4<f32> = u_xlat13;
            let x_3065 : vec3<f32> = (vec3<f32>(x_3062.z, x_3062.x, x_3062.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3066 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3065.x, x_3065.y, x_3065.z, x_3066.w);
            let x_3068 : vec4<f32> = u_xlat14;
            let x_3070 : vec2<f32> = (vec2<f32>(x_3068.x, x_3068.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3071 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3070.x, x_3070.y, x_3071.z, x_3071.w);
            let x_3074 : f32 = u_xlat17.y;
            u_xlat16.x = x_3074;
            let x_3076 : vec2<f32> = u_xlat64;
            let x_3079 : vec2<f32> = ((vec2<f32>(x_3076.x, x_3076.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3080 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3080.x, x_3079.x, x_3080.z, x_3079.y);
            let x_3082 : vec2<f32> = u_xlat64;
            let x_3085 : vec2<f32> = ((vec2<f32>(x_3082.x, x_3082.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3086 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3085.x, x_3086.y, x_3085.y, x_3086.w);
            let x_3089 : f32 = u_xlat13.x;
            u_xlat14.y = x_3089;
            let x_3092 : f32 = u_xlat15.y;
            u_xlat14.w = x_3092;
            let x_3094 : vec4<f32> = u_xlat14;
            let x_3095 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3094 + x_3095);
            let x_3097 : vec2<f32> = u_xlat64;
            let x_3100 : vec2<f32> = ((vec2<f32>(x_3097.y, x_3097.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3101 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3101.x, x_3100.x, x_3101.z, x_3100.y);
            let x_3103 : vec2<f32> = u_xlat64;
            let x_3106 : vec2<f32> = ((vec2<f32>(x_3103.y, x_3103.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3107 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3106.x, x_3107.y, x_3106.y, x_3107.w);
            let x_3110 : f32 = u_xlat13.y;
            u_xlat15.y = x_3110;
            let x_3112 : vec4<f32> = u_xlat15;
            let x_3113 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3112 + x_3113);
            let x_3115 : vec4<f32> = u_xlat14;
            let x_3116 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3115 / x_3116);
            let x_3118 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3118 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3120 : vec4<f32> = u_xlat15;
            let x_3121 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3120 / x_3121);
            let x_3123 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3123 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3125 : vec4<f32> = u_xlat14;
            let x_3128 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3125.w, x_3125.x, x_3125.y, x_3125.z) * vec4<f32>(x_3128.x, x_3128.x, x_3128.x, x_3128.x));
            let x_3131 : vec4<f32> = u_xlat15;
            let x_3134 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3131.x, x_3131.w, x_3131.y, x_3131.z) * vec4<f32>(x_3134.y, x_3134.y, x_3134.y, x_3134.y));
            let x_3137 : vec4<f32> = u_xlat14;
            let x_3138 : vec3<f32> = vec3<f32>(x_3137.y, x_3137.z, x_3137.w);
            let x_3139 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3138.x, x_3139.y, x_3138.y, x_3138.z);
            let x_3142 : f32 = u_xlat15.x;
            u_xlat17.y = x_3142;
            let x_3144 : vec4<f32> = u_xlat12;
            let x_3147 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y) * vec4<f32>(x_3147.x, x_3147.y, x_3147.x, x_3147.y)) + vec4<f32>(x_3150.x, x_3150.y, x_3150.z, x_3150.y));
            let x_3153 : vec4<f32> = u_xlat12;
            let x_3156 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3153.x, x_3153.y) * vec2<f32>(x_3156.x, x_3156.y)) + vec2<f32>(x_3159.w, x_3159.y));
            let x_3163 : f32 = u_xlat17.y;
            u_xlat14.y = x_3163;
            let x_3166 : f32 = u_xlat15.z;
            u_xlat17.y = x_3166;
            let x_3168 : vec4<f32> = u_xlat12;
            let x_3171 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3174 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3168.x, x_3168.y, x_3168.x, x_3168.y) * vec4<f32>(x_3171.x, x_3171.y, x_3171.x, x_3171.y)) + vec4<f32>(x_3174.x, x_3174.y, x_3174.z, x_3174.y));
            let x_3177 : vec4<f32> = u_xlat12;
            let x_3180 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3183 : vec4<f32> = u_xlat17;
            let x_3185 : vec2<f32> = ((vec2<f32>(x_3177.x, x_3177.y) * vec2<f32>(x_3180.x, x_3180.y)) + vec2<f32>(x_3183.w, x_3183.y));
            let x_3186 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3185.x, x_3185.y, x_3186.z, x_3186.w);
            let x_3189 : f32 = u_xlat17.y;
            u_xlat14.z = x_3189;
            let x_3192 : vec4<f32> = u_xlat12;
            let x_3195 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3198 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3192.x, x_3192.y, x_3192.x, x_3192.y) * vec4<f32>(x_3195.x, x_3195.y, x_3195.x, x_3195.y)) + vec4<f32>(x_3198.x, x_3198.y, x_3198.x, x_3198.z));
            let x_3202 : f32 = u_xlat15.w;
            u_xlat17.y = x_3202;
            let x_3205 : vec4<f32> = u_xlat12;
            let x_3208 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3211 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3205.x, x_3205.y, x_3205.x, x_3205.y) * vec4<f32>(x_3208.x, x_3208.y, x_3208.x, x_3208.y)) + vec4<f32>(x_3211.x, x_3211.y, x_3211.z, x_3211.y));
            let x_3215 : vec4<f32> = u_xlat12;
            let x_3218 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3221 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3215.x, x_3215.y) * vec2<f32>(x_3218.x, x_3218.y)) + vec2<f32>(x_3221.w, x_3221.y));
            let x_3225 : f32 = u_xlat17.y;
            u_xlat14.w = x_3225;
            let x_3228 : vec4<f32> = u_xlat12;
            let x_3231 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3234 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3228.x, x_3228.y) * vec2<f32>(x_3231.x, x_3231.y)) + vec2<f32>(x_3234.x, x_3234.w));
            let x_3237 : vec4<f32> = u_xlat17;
            let x_3238 : vec3<f32> = vec3<f32>(x_3237.x, x_3237.z, x_3237.w);
            let x_3239 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3238.x, x_3239.y, x_3238.y, x_3238.z);
            let x_3241 : vec4<f32> = u_xlat12;
            let x_3244 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3247 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3241.x, x_3241.y, x_3241.x, x_3241.y) * vec4<f32>(x_3244.x, x_3244.y, x_3244.x, x_3244.y)) + vec4<f32>(x_3247.x, x_3247.y, x_3247.z, x_3247.y));
            let x_3251 : vec4<f32> = u_xlat12;
            let x_3254 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3257 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3251.x, x_3251.y) * vec2<f32>(x_3254.x, x_3254.y)) + vec2<f32>(x_3257.w, x_3257.y));
            let x_3261 : f32 = u_xlat14.x;
            u_xlat15.x = x_3261;
            let x_3263 : vec4<f32> = u_xlat12;
            let x_3266 : vec4<f32> = x_111.x_AdditionalShadowmapSize;
            let x_3269 : vec4<f32> = u_xlat15;
            let x_3271 : vec2<f32> = ((vec2<f32>(x_3263.x, x_3263.y) * vec2<f32>(x_3266.x, x_3266.y)) + vec2<f32>(x_3269.x, x_3269.y));
            let x_3272 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3271.x, x_3271.y, x_3272.z, x_3272.w);
            let x_3275 : vec4<f32> = u_xlat13;
            let x_3277 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3275.x, x_3275.x, x_3275.x, x_3275.x) * x_3277);
            let x_3280 : vec4<f32> = u_xlat13;
            let x_3282 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3280.y, x_3280.y, x_3280.y, x_3280.y) * x_3282);
            let x_3285 : vec4<f32> = u_xlat13;
            let x_3287 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3285.z, x_3285.z, x_3285.z, x_3285.z) * x_3287);
            let x_3289 : vec4<f32> = u_xlat13;
            let x_3291 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3289.w, x_3289.w, x_3289.w, x_3289.w) * x_3291);
            let x_3294 : vec4<f32> = u_xlat18;
            let x_3295 : vec2<f32> = vec2<f32>(x_3294.x, x_3294.y);
            let x_3297 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec43;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat87 = x_3306;
            let x_3308 : vec4<f32> = u_xlat18;
            let x_3309 : vec2<f32> = vec2<f32>(x_3308.z, x_3308.w);
            let x_3311 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3309.x, x_3309.y, x_3311);
            let x_3318 : vec3<f32> = txVec44;
            let x_3320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3318.xy, x_3318.z);
            u_xlat88 = x_3320;
            let x_3321 : f32 = u_xlat88;
            let x_3323 : f32 = u_xlat23.y;
            u_xlat88 = (x_3321 * x_3323);
            let x_3326 : f32 = u_xlat23.x;
            let x_3327 : f32 = u_xlat87;
            let x_3329 : f32 = u_xlat88;
            u_xlat87 = ((x_3326 * x_3327) + x_3329);
            let x_3332 : vec2<f32> = u_xlat64;
            let x_3334 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec45;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat88 = x_3343;
            let x_3345 : f32 = u_xlat23.z;
            let x_3346 : f32 = u_xlat88;
            let x_3348 : f32 = u_xlat87;
            u_xlat87 = ((x_3345 * x_3346) + x_3348);
            let x_3351 : vec4<f32> = u_xlat21;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.x, x_3351.y);
            let x_3354 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3361 : vec3<f32> = txVec46;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat88 = x_3363;
            let x_3365 : f32 = u_xlat23.w;
            let x_3366 : f32 = u_xlat88;
            let x_3368 : f32 = u_xlat87;
            u_xlat87 = ((x_3365 * x_3366) + x_3368);
            let x_3371 : vec4<f32> = u_xlat19;
            let x_3372 : vec2<f32> = vec2<f32>(x_3371.x, x_3371.y);
            let x_3374 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3372.x, x_3372.y, x_3374);
            let x_3381 : vec3<f32> = txVec47;
            let x_3383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3381.xy, x_3381.z);
            u_xlat88 = x_3383;
            let x_3385 : f32 = u_xlat24.x;
            let x_3386 : f32 = u_xlat88;
            let x_3388 : f32 = u_xlat87;
            u_xlat87 = ((x_3385 * x_3386) + x_3388);
            let x_3391 : vec4<f32> = u_xlat19;
            let x_3392 : vec2<f32> = vec2<f32>(x_3391.z, x_3391.w);
            let x_3394 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3392.x, x_3392.y, x_3394);
            let x_3401 : vec3<f32> = txVec48;
            let x_3403 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3401.xy, x_3401.z);
            u_xlat88 = x_3403;
            let x_3405 : f32 = u_xlat24.y;
            let x_3406 : f32 = u_xlat88;
            let x_3408 : f32 = u_xlat87;
            u_xlat87 = ((x_3405 * x_3406) + x_3408);
            let x_3411 : vec4<f32> = u_xlat20;
            let x_3412 : vec2<f32> = vec2<f32>(x_3411.x, x_3411.y);
            let x_3414 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3412.x, x_3412.y, x_3414);
            let x_3421 : vec3<f32> = txVec49;
            let x_3423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3421.xy, x_3421.z);
            u_xlat88 = x_3423;
            let x_3425 : f32 = u_xlat24.z;
            let x_3426 : f32 = u_xlat88;
            let x_3428 : f32 = u_xlat87;
            u_xlat87 = ((x_3425 * x_3426) + x_3428);
            let x_3431 : vec4<f32> = u_xlat21;
            let x_3432 : vec2<f32> = vec2<f32>(x_3431.z, x_3431.w);
            let x_3434 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3432.x, x_3432.y, x_3434);
            let x_3441 : vec3<f32> = txVec50;
            let x_3443 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3441.xy, x_3441.z);
            u_xlat88 = x_3443;
            let x_3445 : f32 = u_xlat24.w;
            let x_3446 : f32 = u_xlat88;
            let x_3448 : f32 = u_xlat87;
            u_xlat87 = ((x_3445 * x_3446) + x_3448);
            let x_3451 : vec4<f32> = u_xlat22;
            let x_3452 : vec2<f32> = vec2<f32>(x_3451.x, x_3451.y);
            let x_3454 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3452.x, x_3452.y, x_3454);
            let x_3461 : vec3<f32> = txVec51;
            let x_3463 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3461.xy, x_3461.z);
            u_xlat88 = x_3463;
            let x_3465 : f32 = u_xlat25.x;
            let x_3466 : f32 = u_xlat88;
            let x_3468 : f32 = u_xlat87;
            u_xlat87 = ((x_3465 * x_3466) + x_3468);
            let x_3471 : vec4<f32> = u_xlat22;
            let x_3472 : vec2<f32> = vec2<f32>(x_3471.z, x_3471.w);
            let x_3474 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3472.x, x_3472.y, x_3474);
            let x_3481 : vec3<f32> = txVec52;
            let x_3483 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3481.xy, x_3481.z);
            u_xlat88 = x_3483;
            let x_3485 : f32 = u_xlat25.y;
            let x_3486 : f32 = u_xlat88;
            let x_3488 : f32 = u_xlat87;
            u_xlat87 = ((x_3485 * x_3486) + x_3488);
            let x_3491 : vec2<f32> = u_xlat40;
            let x_3493 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3491.x, x_3491.y, x_3493);
            let x_3500 : vec3<f32> = txVec53;
            let x_3502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3500.xy, x_3500.z);
            u_xlat88 = x_3502;
            let x_3504 : f32 = u_xlat25.z;
            let x_3505 : f32 = u_xlat88;
            let x_3507 : f32 = u_xlat87;
            u_xlat87 = ((x_3504 * x_3505) + x_3507);
            let x_3510 : vec2<f32> = u_xlat72;
            let x_3512 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec54;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat88 = x_3521;
            let x_3523 : f32 = u_xlat25.w;
            let x_3524 : f32 = u_xlat88;
            let x_3526 : f32 = u_xlat87;
            u_xlat87 = ((x_3523 * x_3524) + x_3526);
            let x_3529 : vec4<f32> = u_xlat17;
            let x_3530 : vec2<f32> = vec2<f32>(x_3529.x, x_3529.y);
            let x_3532 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3530.x, x_3530.y, x_3532);
            let x_3539 : vec3<f32> = txVec55;
            let x_3541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3539.xy, x_3539.z);
            u_xlat88 = x_3541;
            let x_3543 : f32 = u_xlat13.x;
            let x_3544 : f32 = u_xlat88;
            let x_3546 : f32 = u_xlat87;
            u_xlat87 = ((x_3543 * x_3544) + x_3546);
            let x_3549 : vec4<f32> = u_xlat17;
            let x_3550 : vec2<f32> = vec2<f32>(x_3549.z, x_3549.w);
            let x_3552 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3550.x, x_3550.y, x_3552);
            let x_3559 : vec3<f32> = txVec56;
            let x_3561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3559.xy, x_3559.z);
            u_xlat88 = x_3561;
            let x_3563 : f32 = u_xlat13.y;
            let x_3564 : f32 = u_xlat88;
            let x_3566 : f32 = u_xlat87;
            u_xlat87 = ((x_3563 * x_3564) + x_3566);
            let x_3569 : vec2<f32> = u_xlat67;
            let x_3571 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3569.x, x_3569.y, x_3571);
            let x_3578 : vec3<f32> = txVec57;
            let x_3580 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3578.xy, x_3578.z);
            u_xlat88 = x_3580;
            let x_3582 : f32 = u_xlat13.z;
            let x_3583 : f32 = u_xlat88;
            let x_3585 : f32 = u_xlat87;
            u_xlat87 = ((x_3582 * x_3583) + x_3585);
            let x_3588 : vec4<f32> = u_xlat12;
            let x_3589 : vec2<f32> = vec2<f32>(x_3588.x, x_3588.y);
            let x_3591 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3589.x, x_3589.y, x_3591);
            let x_3598 : vec3<f32> = txVec58;
            let x_3600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3598.xy, x_3598.z);
            u_xlat88 = x_3600;
            let x_3602 : f32 = u_xlat13.w;
            let x_3603 : f32 = u_xlat88;
            let x_3605 : f32 = u_xlat87;
            u_xlat85 = ((x_3602 * x_3603) + x_3605);
          }
        }
      } else {
        let x_3609 : vec4<f32> = u_xlat11;
        let x_3610 : vec2<f32> = vec2<f32>(x_3609.x, x_3609.y);
        let x_3612 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3610.x, x_3610.y, x_3612);
        let x_3619 : vec3<f32> = txVec59;
        let x_3621 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3619.xy, x_3619.z);
        u_xlat85 = x_3621;
      }
      let x_3622 : i32 = u_xlati83;
      let x_3624 : f32 = x_111.x_AdditionalShadowParams[x_3622].x;
      u_xlat87 = (1.0f + -(x_3624));
      let x_3627 : f32 = u_xlat85;
      let x_3628 : i32 = u_xlati83;
      let x_3630 : f32 = x_111.x_AdditionalShadowParams[x_3628].x;
      let x_3632 : f32 = u_xlat87;
      u_xlat85 = ((x_3627 * x_3630) + x_3632);
      let x_3635 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3635);
      let x_3639 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3639 >= 1.0f);
      let x_3641 : bool = u_xlatb87;
      let x_3642 : bool = u_xlatb88;
      u_xlatb87 = (x_3641 | x_3642);
      let x_3644 : bool = u_xlatb87;
      let x_3645 : f32 = u_xlat85;
      u_xlat85 = select(x_3645, 1.0f, x_3644);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3648 : f32 = u_xlat85;
    u_xlat87 = (-(x_3648) + 1.0f);
    let x_3651 : f32 = u_xlat53;
    let x_3652 : f32 = u_xlat87;
    let x_3654 : f32 = u_xlat85;
    u_xlat85 = ((x_3651 * x_3652) + x_3654);
    let x_3657 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_3657 & 31i)));
    let x_3661 : i32 = u_xlati87;
    let x_3664 : f32 = x_1755.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3661) & bitcast<u32>(x_3664)));
    let x_3668 : i32 = u_xlati87;
    if ((x_3668 != 0i)) {
      let x_3672 : i32 = u_xlati83;
      let x_3674 : f32 = x_1755.x_AdditionalLightsLightTypes[x_3672].el;
      u_xlati87 = i32(x_3674);
      let x_3677 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3677 != 0i));
      let x_3681 : i32 = u_xlati83;
      u_xlati11 = (x_3681 << bitcast<u32>(2i));
      let x_3683 : i32 = u_xlati88;
      if ((x_3683 != 0i)) {
        let x_3688 : vec3<f32> = vs_TEXCOORD7;
        let x_3690 : i32 = u_xlati11;
        let x_3693 : i32 = u_xlati11;
        let x_3697 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3690 + 1i) / 4i)][((x_3693 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3688.y, x_3688.y, x_3688.y) * vec3<f32>(x_3697.x, x_3697.y, x_3697.w));
        let x_3700 : i32 = u_xlati11;
        let x_3702 : i32 = u_xlati11;
        let x_3705 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[(x_3700 / 4i)][(x_3702 % 4i)];
        let x_3707 : vec3<f32> = vs_TEXCOORD7;
        let x_3710 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3705.x, x_3705.y, x_3705.w) * vec3<f32>(x_3707.x, x_3707.x, x_3707.x)) + x_3710);
        let x_3712 : i32 = u_xlati11;
        let x_3715 : i32 = u_xlati11;
        let x_3719 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3712 + 2i) / 4i)][((x_3715 + 2i) % 4i)];
        let x_3721 : vec3<f32> = vs_TEXCOORD7;
        let x_3724 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3719.x, x_3719.y, x_3719.w) * vec3<f32>(x_3721.z, x_3721.z, x_3721.z)) + x_3724);
        let x_3726 : vec3<f32> = u_xlat37;
        let x_3727 : i32 = u_xlati11;
        let x_3730 : i32 = u_xlati11;
        let x_3734 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3727 + 3i) / 4i)][((x_3730 + 3i) % 4i)];
        u_xlat37 = (x_3726 + vec3<f32>(x_3734.x, x_3734.y, x_3734.w));
        let x_3737 : vec3<f32> = u_xlat37;
        let x_3739 : vec3<f32> = u_xlat37;
        let x_3741 : vec2<f32> = (vec2<f32>(x_3737.x, x_3737.y) / vec2<f32>(x_3739.z, x_3739.z));
        let x_3742 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3741.x, x_3741.y, x_3742.z);
        let x_3744 : vec3<f32> = u_xlat37;
        let x_3747 : vec2<f32> = ((vec2<f32>(x_3744.x, x_3744.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3748 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3747.x, x_3747.y, x_3748.z);
        let x_3750 : vec3<f32> = u_xlat37;
        let x_3754 : vec2<f32> = clamp(vec2<f32>(x_3750.x, x_3750.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3755 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3754.x, x_3754.y, x_3755.z);
        let x_3757 : i32 = u_xlati83;
        let x_3759 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3757];
        let x_3761 : vec3<f32> = u_xlat37;
        let x_3764 : i32 = u_xlati83;
        let x_3766 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3764];
        let x_3768 : vec2<f32> = ((vec2<f32>(x_3759.x, x_3759.y) * vec2<f32>(x_3761.x, x_3761.y)) + vec2<f32>(x_3766.z, x_3766.w));
        let x_3769 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3768.x, x_3768.y, x_3769.z);
      } else {
        let x_3772 : i32 = u_xlati87;
        u_xlatb87 = (x_3772 == 1i);
        let x_3774 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3774);
        let x_3776 : i32 = u_xlati87;
        if ((x_3776 != 0i)) {
          let x_3780 : vec3<f32> = vs_TEXCOORD7;
          let x_3782 : i32 = u_xlati11;
          let x_3785 : i32 = u_xlati11;
          let x_3789 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3782 + 1i) / 4i)][((x_3785 + 1i) % 4i)];
          let x_3791 : vec2<f32> = (vec2<f32>(x_3780.y, x_3780.y) * vec2<f32>(x_3789.x, x_3789.y));
          let x_3792 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3791.x, x_3791.y, x_3792.z, x_3792.w);
          let x_3794 : i32 = u_xlati11;
          let x_3796 : i32 = u_xlati11;
          let x_3799 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[(x_3794 / 4i)][(x_3796 % 4i)];
          let x_3801 : vec3<f32> = vs_TEXCOORD7;
          let x_3804 : vec4<f32> = u_xlat12;
          let x_3806 : vec2<f32> = ((vec2<f32>(x_3799.x, x_3799.y) * vec2<f32>(x_3801.x, x_3801.x)) + vec2<f32>(x_3804.x, x_3804.y));
          let x_3807 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3806.x, x_3806.y, x_3807.z, x_3807.w);
          let x_3809 : i32 = u_xlati11;
          let x_3812 : i32 = u_xlati11;
          let x_3816 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3809 + 2i) / 4i)][((x_3812 + 2i) % 4i)];
          let x_3818 : vec3<f32> = vs_TEXCOORD7;
          let x_3821 : vec4<f32> = u_xlat12;
          let x_3823 : vec2<f32> = ((vec2<f32>(x_3816.x, x_3816.y) * vec2<f32>(x_3818.z, x_3818.z)) + vec2<f32>(x_3821.x, x_3821.y));
          let x_3824 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3823.x, x_3823.y, x_3824.z, x_3824.w);
          let x_3826 : vec4<f32> = u_xlat12;
          let x_3828 : i32 = u_xlati11;
          let x_3831 : i32 = u_xlati11;
          let x_3835 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3828 + 3i) / 4i)][((x_3831 + 3i) % 4i)];
          let x_3837 : vec2<f32> = (vec2<f32>(x_3826.x, x_3826.y) + vec2<f32>(x_3835.x, x_3835.y));
          let x_3838 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3837.x, x_3837.y, x_3838.z, x_3838.w);
          let x_3840 : vec4<f32> = u_xlat12;
          let x_3843 : vec2<f32> = ((vec2<f32>(x_3840.x, x_3840.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3844 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3843.x, x_3843.y, x_3844.z, x_3844.w);
          let x_3846 : vec4<f32> = u_xlat12;
          let x_3848 : vec2<f32> = fract(vec2<f32>(x_3846.x, x_3846.y));
          let x_3849 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3848.x, x_3848.y, x_3849.z, x_3849.w);
          let x_3851 : i32 = u_xlati83;
          let x_3853 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3851];
          let x_3855 : vec4<f32> = u_xlat12;
          let x_3858 : i32 = u_xlati83;
          let x_3860 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3858];
          let x_3862 : vec2<f32> = ((vec2<f32>(x_3853.x, x_3853.y) * vec2<f32>(x_3855.x, x_3855.y)) + vec2<f32>(x_3860.z, x_3860.w));
          let x_3863 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3862.x, x_3862.y, x_3863.z);
        } else {
          let x_3866 : vec3<f32> = vs_TEXCOORD7;
          let x_3868 : i32 = u_xlati11;
          let x_3871 : i32 = u_xlati11;
          let x_3875 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3868 + 1i) / 4i)][((x_3871 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3866.y, x_3866.y, x_3866.y, x_3866.y) * x_3875);
          let x_3877 : i32 = u_xlati11;
          let x_3879 : i32 = u_xlati11;
          let x_3882 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[(x_3877 / 4i)][(x_3879 % 4i)];
          let x_3883 : vec3<f32> = vs_TEXCOORD7;
          let x_3886 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3882 * vec4<f32>(x_3883.x, x_3883.x, x_3883.x, x_3883.x)) + x_3886);
          let x_3888 : i32 = u_xlati11;
          let x_3891 : i32 = u_xlati11;
          let x_3895 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3888 + 2i) / 4i)][((x_3891 + 2i) % 4i)];
          let x_3896 : vec3<f32> = vs_TEXCOORD7;
          let x_3899 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3895 * vec4<f32>(x_3896.z, x_3896.z, x_3896.z, x_3896.z)) + x_3899);
          let x_3901 : vec4<f32> = u_xlat12;
          let x_3902 : i32 = u_xlati11;
          let x_3905 : i32 = u_xlati11;
          let x_3909 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3902 + 3i) / 4i)][((x_3905 + 3i) % 4i)];
          u_xlat12 = (x_3901 + x_3909);
          let x_3911 : vec4<f32> = u_xlat12;
          let x_3913 : vec4<f32> = u_xlat12;
          let x_3915 : vec3<f32> = (vec3<f32>(x_3911.x, x_3911.y, x_3911.z) / vec3<f32>(x_3913.w, x_3913.w, x_3913.w));
          let x_3916 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3915.x, x_3915.y, x_3915.z, x_3916.w);
          let x_3918 : vec4<f32> = u_xlat12;
          let x_3920 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3918.x, x_3918.y, x_3918.z), vec3<f32>(x_3920.x, x_3920.y, x_3920.z));
          let x_3923 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3923);
          let x_3925 : f32 = u_xlat87;
          let x_3927 : vec4<f32> = u_xlat12;
          let x_3929 : vec3<f32> = (vec3<f32>(x_3925, x_3925, x_3925) * vec3<f32>(x_3927.x, x_3927.y, x_3927.z));
          let x_3930 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3929.x, x_3929.y, x_3929.z, x_3930.w);
          let x_3932 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3932.x, x_3932.y, x_3932.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3937 : f32 = u_xlat87;
          u_xlat87 = max(x_3937, 0.00000099999999747524f);
          let x_3940 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3940);
          let x_3942 : f32 = u_xlat87;
          let x_3944 : vec4<f32> = u_xlat12;
          let x_3946 : vec3<f32> = (vec3<f32>(x_3942, x_3942, x_3942) * vec3<f32>(x_3944.z, x_3944.x, x_3944.y));
          let x_3947 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3946.x, x_3946.y, x_3946.z, x_3947.w);
          let x_3950 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3950);
          let x_3954 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3954, 0.0f, 1.0f);
          let x_3957 : vec4<f32> = u_xlat13;
          let x_3959 : vec4<bool> = (vec4<f32>(x_3957.y, x_3957.y, x_3957.y, x_3957.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3960 : vec2<bool> = vec2<bool>(x_3959.x, x_3959.w);
          let x_3961 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3960.x, x_3961.y, x_3961.z, x_3960.y);
          let x_3964 : bool = u_xlatb11.x;
          if (x_3964) {
            let x_3969 : f32 = u_xlat13.x;
            x_3965 = x_3969;
          } else {
            let x_3972 : f32 = u_xlat13.x;
            x_3965 = -(x_3972);
          }
          let x_3974 : f32 = x_3965;
          u_xlat11.x = x_3974;
          let x_3977 : bool = u_xlatb11.w;
          if (x_3977) {
            let x_3982 : f32 = u_xlat13.x;
            x_3978 = x_3982;
          } else {
            let x_3985 : f32 = u_xlat13.x;
            x_3978 = -(x_3985);
          }
          let x_3987 : f32 = x_3978;
          u_xlat11.w = x_3987;
          let x_3989 : vec4<f32> = u_xlat12;
          let x_3991 : f32 = u_xlat87;
          let x_3994 : vec4<f32> = u_xlat11;
          let x_3996 : vec2<f32> = ((vec2<f32>(x_3989.x, x_3989.y) * vec2<f32>(x_3991, x_3991)) + vec2<f32>(x_3994.x, x_3994.w));
          let x_3997 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3996.x, x_3997.y, x_3997.z, x_3996.y);
          let x_3999 : vec4<f32> = u_xlat11;
          let x_4002 : vec2<f32> = ((vec2<f32>(x_3999.x, x_3999.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4003 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4002.x, x_4003.y, x_4003.z, x_4002.y);
          let x_4005 : vec4<f32> = u_xlat11;
          let x_4009 : vec2<f32> = clamp(vec2<f32>(x_4005.x, x_4005.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4010 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4009.x, x_4010.y, x_4010.z, x_4009.y);
          let x_4012 : i32 = u_xlati83;
          let x_4014 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_4012];
          let x_4016 : vec4<f32> = u_xlat11;
          let x_4019 : i32 = u_xlati83;
          let x_4021 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_4019];
          let x_4023 : vec2<f32> = ((vec2<f32>(x_4014.x, x_4014.y) * vec2<f32>(x_4016.x, x_4016.w)) + vec2<f32>(x_4021.z, x_4021.w));
          let x_4024 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4023.x, x_4023.y, x_4024.z);
        }
      }
      let x_4031 : vec3<f32> = u_xlat37;
      let x_4033 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4031.x, x_4031.y), 0.0f);
      u_xlat11 = x_4033;
      let x_4035 : bool = u_xlatb7.y;
      if (x_4035) {
        let x_4040 : f32 = u_xlat11.w;
        x_4036 = x_4040;
      } else {
        let x_4043 : f32 = u_xlat11.x;
        x_4036 = x_4043;
      }
      let x_4044 : f32 = x_4036;
      u_xlat87 = x_4044;
      let x_4046 : bool = u_xlatb7.x;
      if (x_4046) {
        let x_4050 : vec4<f32> = u_xlat11;
        x_4047 = vec3<f32>(x_4050.x, x_4050.y, x_4050.z);
      } else {
        let x_4053 : f32 = u_xlat87;
        x_4047 = vec3<f32>(x_4053, x_4053, x_4053);
      }
      let x_4055 : vec3<f32> = x_4047;
      let x_4056 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4055.x, x_4055.y, x_4055.z, x_4056.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4062 : vec4<f32> = u_xlat11;
    let x_4064 : i32 = u_xlati83;
    let x_4066 : vec4<f32> = x_2231.x_AdditionalLightsColor[x_4064];
    let x_4068 : vec3<f32> = (vec3<f32>(x_4062.x, x_4062.y, x_4062.z) * vec3<f32>(x_4066.x, x_4066.y, x_4066.z));
    let x_4069 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4068.x, x_4068.y, x_4068.z, x_4069.w);
    let x_4071 : f32 = u_xlat84;
    let x_4072 : f32 = u_xlat85;
    u_xlat83 = (x_4071 * x_4072);
    let x_4074 : vec4<f32> = u_xlat2;
    let x_4076 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4074.x, x_4074.y, x_4074.z), vec3<f32>(x_4076.x, x_4076.y, x_4076.z));
    let x_4079 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4079, 0.0f, 1.0f);
    let x_4081 : f32 = u_xlat83;
    let x_4082 : f32 = u_xlat84;
    u_xlat83 = (x_4081 * x_4082);
    let x_4084 : f32 = u_xlat83;
    let x_4086 : vec4<f32> = u_xlat11;
    let x_4088 : vec3<f32> = (vec3<f32>(x_4084, x_4084, x_4084) * vec3<f32>(x_4086.x, x_4086.y, x_4086.z));
    let x_4089 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4088.x, x_4088.y, x_4088.z, x_4089.w);
    let x_4091 : vec4<f32> = u_xlat9;
    let x_4093 : f32 = u_xlat59;
    let x_4096 : vec4<f32> = u_xlat6;
    let x_4098 : vec3<f32> = ((vec3<f32>(x_4091.x, x_4091.y, x_4091.z) * vec3<f32>(x_4093, x_4093, x_4093)) + vec3<f32>(x_4096.x, x_4096.y, x_4096.z));
    let x_4099 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4098.x, x_4098.y, x_4098.z, x_4099.w);
    let x_4101 : vec4<f32> = u_xlat9;
    let x_4103 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4101.x, x_4101.y, x_4101.z), vec3<f32>(x_4103.x, x_4103.y, x_4103.z));
    let x_4106 : f32 = u_xlat83;
    u_xlat83 = max(x_4106, 1.17549435e-38f);
    let x_4108 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4108);
    let x_4110 : f32 = u_xlat83;
    let x_4112 : vec4<f32> = u_xlat9;
    let x_4114 : vec3<f32> = (vec3<f32>(x_4110, x_4110, x_4110) * vec3<f32>(x_4112.x, x_4112.y, x_4112.z));
    let x_4115 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4114.x, x_4114.y, x_4114.z, x_4115.w);
    let x_4117 : vec4<f32> = u_xlat2;
    let x_4119 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4117.x, x_4117.y, x_4117.z), vec3<f32>(x_4119.x, x_4119.y, x_4119.z));
    let x_4122 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4122, 0.0f, 1.0f);
    let x_4124 : vec4<f32> = u_xlat10;
    let x_4126 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4124.x, x_4124.y, x_4124.z), vec3<f32>(x_4126.x, x_4126.y, x_4126.z));
    let x_4129 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4129, 0.0f, 1.0f);
    let x_4131 : f32 = u_xlat83;
    let x_4132 : f32 = u_xlat83;
    u_xlat83 = (x_4131 * x_4132);
    let x_4134 : f32 = u_xlat83;
    let x_4136 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4134 * x_4136) + 1.00001001358032226562f);
    let x_4139 : f32 = u_xlat84;
    let x_4140 : f32 = u_xlat84;
    u_xlat84 = (x_4139 * x_4140);
    let x_4142 : f32 = u_xlat83;
    let x_4143 : f32 = u_xlat83;
    u_xlat83 = (x_4142 * x_4143);
    let x_4145 : f32 = u_xlat84;
    u_xlat84 = max(x_4145, 0.10000000149011611938f);
    let x_4147 : f32 = u_xlat83;
    let x_4148 : f32 = u_xlat84;
    u_xlat83 = (x_4147 * x_4148);
    let x_4150 : f32 = u_xlat81;
    let x_4151 : f32 = u_xlat83;
    u_xlat83 = (x_4150 * x_4151);
    let x_4153 : f32 = u_xlat82;
    let x_4154 : f32 = u_xlat83;
    u_xlat83 = (x_4153 / x_4154);
    let x_4156 : vec4<f32> = u_xlat0;
    let x_4158 : f32 = u_xlat83;
    let x_4161 : vec4<f32> = u_xlat4;
    let x_4163 : vec3<f32> = ((vec3<f32>(x_4156.x, x_4156.y, x_4156.z) * vec3<f32>(x_4158, x_4158, x_4158)) + vec3<f32>(x_4161.x, x_4161.y, x_4161.z));
    let x_4164 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4163.x, x_4163.y, x_4163.z, x_4164.w);
    let x_4166 : vec4<f32> = u_xlat9;
    let x_4168 : vec4<f32> = u_xlat11;
    let x_4171 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4166.x, x_4166.y, x_4166.z) * vec3<f32>(x_4168.x, x_4168.y, x_4168.z)) + x_4171);

    continuing {
      let x_4173 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4173 + bitcast<u32>(1i));
    }
  }
  let x_4175 : vec4<f32> = u_xlat5;
  let x_4177 : vec4<f32> = u_xlat1;
  let x_4180 : vec3<f32> = u_xlat3;
  let x_4181 : vec3<f32> = ((vec3<f32>(x_4175.x, x_4175.y, x_4175.z) * vec3<f32>(x_4177.x, x_4177.y, x_4177.w)) + x_4180);
  let x_4182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4181.x, x_4181.y, x_4181.z, x_4182.w);
  let x_4186 : vec3<f32> = u_xlat34;
  let x_4187 : vec4<f32> = u_xlat0;
  let x_4189 : vec3<f32> = (x_4186 + vec3<f32>(x_4187.x, x_4187.y, x_4187.z));
  let x_4190 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4189.x, x_4189.y, x_4189.z, x_4190.w);
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


