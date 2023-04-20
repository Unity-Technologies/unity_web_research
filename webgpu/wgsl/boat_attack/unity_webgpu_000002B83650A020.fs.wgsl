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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> u_xlat28 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat4 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb56 : bool;

@group(1) @binding(3) var<uniform> x_267 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat56 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1591 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat83 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1788 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2052 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

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

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

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
  var x_1678 : f32;
  var x_1689 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2191 : f32;
  var x_2202 : f32;
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
  var x_3820 : f32;
  var x_3833 : f32;
  var x_3891 : f32;
  var x_3902 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_89);
  let x_92 : vec3<f32> = u_xlat27;
  let x_94 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27 = (vec3<f32>(x_92.x, x_92.x, x_92.x) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_103 : f32 = vs_TEXCOORD7.y;
  let x_107 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2 = (x_103 * x_107);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  let x_112 : f32 = vs_TEXCOORD7.x;
  let x_114 : f32 = u_xlat2;
  u_xlat2 = ((x_110 * x_112) + x_114);
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  let x_120 : f32 = vs_TEXCOORD7.z;
  let x_122 : f32 = u_xlat2;
  u_xlat2 = ((x_118 * x_120) + x_122);
  let x_124 : f32 = u_xlat2;
  let x_127 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2 = (x_124 + x_127);
  let x_129 : f32 = u_xlat2;
  let x_133 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2 = (-(x_129) + -(x_133));
  let x_136 : f32 = u_xlat2;
  u_xlat2 = max(x_136, 0.0f);
  let x_138 : f32 = u_xlat2;
  let x_141 : f32 = x_29.unity_FogParams.x;
  u_xlat2 = (x_138 * x_141);
  let x_149 : vec4<f32> = vs_TEXCOORD0;
  let x_152 : f32 = x_29.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_149.z, x_149.w), x_152);
  u_xlat3 = x_153;
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_162 : f32 = x_29.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_159.z, x_159.w), x_162);
  u_xlat28 = vec3<f32>(x_163.x, x_163.y, x_163.z);
  let x_165 : vec4<f32> = u_xlat3;
  let x_169 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec3<f32> = u_xlat27;
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_172, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_178 : f32 = u_xlat3.x;
  u_xlat3.x = (x_178 + 0.5f);
  let x_182 : vec3<f32> = u_xlat28;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat28 = (x_182 * vec3<f32>(x_183.x, x_183.x, x_183.x));
  let x_188 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_188, 0.00009999999747378752f);
  let x_192 : vec3<f32> = u_xlat28;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat28 = (x_192 / vec3<f32>(x_193.x, x_193.x, x_193.x));
  let x_196 : f32 = u_xlat1;
  u_xlat3.x = ((-(x_196) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_204 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_204) + 1.0f);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.x, x_210.x, x_210.x));
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_213.y, x_212.y, x_212.z);
  let x_215 : vec4<f32> = u_xlat0;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : f32 = u_xlat1;
  let x_224 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222, x_222, x_222) * vec3<f32>(x_224.x, x_224.y, x_224.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_230 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_233) + 1.0f);
  let x_237 : f32 = u_xlat1;
  let x_238 : f32 = u_xlat1;
  u_xlat4 = (x_237 * x_238);
  let x_240 : f32 = u_xlat4;
  u_xlat4 = max(x_240, 0.0078125f);
  let x_244 : f32 = u_xlat4;
  let x_245 : f32 = u_xlat4;
  u_xlat30 = (x_244 * x_245);
  let x_249 : f32 = u_xlat0.w;
  let x_250 : f32 = u_xlat29;
  u_xlat78 = (x_249 + x_250);
  let x_252 : f32 = u_xlat78;
  u_xlat78 = clamp(x_252, 0.0f, 1.0f);
  let x_254 : f32 = u_xlat4;
  u_xlat29 = ((x_254 * 4.0f) + 2.0f);
  let x_269 : f32 = x_267.x_MainLightShadowParams.y;
  u_xlatb56 = (0.0f < x_269);
  let x_271 : bool = u_xlatb56;
  if (x_271) {
    let x_275 : f32 = x_267.x_MainLightShadowParams.y;
    u_xlatb56 = (x_275 == 1.0f);
    let x_277 : bool = u_xlatb56;
    if (x_277) {
      let x_282 : vec4<f32> = vs_TEXCOORD8;
      let x_286 : vec4<f32> = x_267.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_282.x, x_282.y, x_282.x, x_282.y) + x_286);
      let x_290 : vec4<f32> = u_xlat5;
      let x_291 : vec2<f32> = vec2<f32>(x_290.x, x_290.y);
      let x_293 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_291.x, x_291.y, x_293);
      let x_306 : vec3<f32> = txVec0;
      let x_308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_306.xy, x_306.z);
      u_xlat6.x = x_308;
      let x_311 : vec4<f32> = u_xlat5;
      let x_312 : vec2<f32> = vec2<f32>(x_311.z, x_311.w);
      let x_314 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_312.x, x_312.y, x_314);
      let x_321 : vec3<f32> = txVec1;
      let x_323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_321.xy, x_321.z);
      u_xlat6.y = x_323;
      let x_325 : vec4<f32> = vs_TEXCOORD8;
      let x_329 : vec4<f32> = x_267.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_325.x, x_325.y, x_325.x, x_325.y) + x_329);
      let x_332 : vec4<f32> = u_xlat5;
      let x_333 : vec2<f32> = vec2<f32>(x_332.x, x_332.y);
      let x_335 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_333.x, x_333.y, x_335);
      let x_342 : vec3<f32> = txVec2;
      let x_344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_342.xy, x_342.z);
      u_xlat6.z = x_344;
      let x_347 : vec4<f32> = u_xlat5;
      let x_348 : vec2<f32> = vec2<f32>(x_347.z, x_347.w);
      let x_350 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_348.x, x_348.y, x_350);
      let x_357 : vec3<f32> = txVec3;
      let x_359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_357.xy, x_357.z);
      u_xlat6.w = x_359;
      let x_362 : vec4<f32> = u_xlat6;
      u_xlat56 = dot(x_362, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_369 : f32 = x_267.x_MainLightShadowParams.y;
      u_xlatb82 = (x_369 == 2.0f);
      let x_371 : bool = u_xlatb82;
      if (x_371) {
        let x_374 : vec4<f32> = vs_TEXCOORD8;
        let x_378 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_382 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(x_378.z, x_378.w)) + vec2<f32>(0.5f, 0.5f));
        let x_383 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
        let x_385 : vec4<f32> = u_xlat5;
        let x_387 : vec2<f32> = floor(vec2<f32>(x_385.x, x_385.y));
        let x_388 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
        let x_392 : vec4<f32> = vs_TEXCOORD8;
        let x_395 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_398 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_392.x, x_392.y) * vec2<f32>(x_395.z, x_395.w)) + -(vec2<f32>(x_398.x, x_398.y)));
        let x_402 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_402.x, x_402.x, x_402.y, x_402.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_407 : vec4<f32> = u_xlat6;
        let x_409 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_407.x, x_407.x, x_407.z, x_407.z) * vec4<f32>(x_409.x, x_409.x, x_409.z, x_409.z));
        let x_412 : vec4<f32> = u_xlat7;
        let x_416 : vec2<f32> = (vec2<f32>(x_412.y, x_412.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_417 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_416.x, x_417.y, x_416.y, x_417.w);
        let x_419 : vec4<f32> = u_xlat7;
        let x_422 : vec2<f32> = u_xlat57;
        let x_424 : vec2<f32> = ((vec2<f32>(x_419.x, x_419.z) * vec2<f32>(0.5f, 0.5f)) + -(x_422));
        let x_425 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
        let x_428 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_428) + vec2<f32>(1.0f, 1.0f));
        let x_433 : vec2<f32> = u_xlat57;
        let x_435 : vec2<f32> = min(x_433, vec2<f32>(0.0f, 0.0f));
        let x_436 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
        let x_438 : vec4<f32> = u_xlat8;
        let x_441 : vec4<f32> = u_xlat8;
        let x_444 : vec2<f32> = u_xlat59;
        let x_445 : vec2<f32> = ((-(vec2<f32>(x_438.x, x_438.y)) * vec2<f32>(x_441.x, x_441.y)) + x_444);
        let x_446 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_448, vec2<f32>(0.0f, 0.0f));
        let x_450 : vec2<f32> = u_xlat57;
        let x_452 : vec2<f32> = u_xlat57;
        let x_454 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_450) * x_452) + vec2<f32>(x_454.y, x_454.w));
        let x_457 : vec4<f32> = u_xlat8;
        let x_459 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) + vec2<f32>(1.0f, 1.0f));
        let x_460 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_462 + vec2<f32>(1.0f, 1.0f));
        let x_465 : vec4<f32> = u_xlat7;
        let x_469 : vec2<f32> = (vec2<f32>(x_465.x, x_465.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec2<f32> = u_xlat59;
        let x_473 : vec2<f32> = (x_472 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_474 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_476 : vec4<f32> = u_xlat8;
        let x_478 : vec2<f32> = (vec2<f32>(x_476.x, x_476.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_479 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
        let x_482 : vec2<f32> = u_xlat57;
        let x_483 : vec2<f32> = (x_482 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_484 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
        let x_486 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_486.y, x_486.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_490 : f32 = u_xlat8.x;
        u_xlat9.z = x_490;
        let x_493 : f32 = u_xlat57.x;
        u_xlat9.w = x_493;
        let x_496 : f32 = u_xlat10.x;
        u_xlat7.z = x_496;
        let x_499 : f32 = u_xlat6.x;
        u_xlat7.w = x_499;
        let x_502 : vec4<f32> = u_xlat7;
        let x_504 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_502.z, x_502.w, x_502.x, x_502.z) + vec4<f32>(x_504.z, x_504.w, x_504.x, x_504.z));
        let x_508 : f32 = u_xlat9.y;
        u_xlat8.z = x_508;
        let x_511 : f32 = u_xlat57.y;
        u_xlat8.w = x_511;
        let x_514 : f32 = u_xlat7.y;
        u_xlat10.z = x_514;
        let x_517 : f32 = u_xlat6.z;
        u_xlat10.w = x_517;
        let x_519 : vec4<f32> = u_xlat8;
        let x_521 : vec4<f32> = u_xlat10;
        let x_523 : vec3<f32> = (vec3<f32>(x_519.z, x_519.y, x_519.w) + vec3<f32>(x_521.z, x_521.y, x_521.w));
        let x_524 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat7;
        let x_528 : vec4<f32> = u_xlat11;
        let x_530 : vec3<f32> = (vec3<f32>(x_526.x, x_526.z, x_526.w) / vec3<f32>(x_528.z, x_528.w, x_528.y));
        let x_531 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat7;
        let x_538 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_539 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat10;
        let x_543 : vec4<f32> = u_xlat6;
        let x_545 : vec3<f32> = (vec3<f32>(x_541.z, x_541.y, x_541.w) / vec3<f32>(x_543.x, x_543.y, x_543.z));
        let x_546 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat8;
        let x_550 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_551 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
        let x_553 : vec4<f32> = u_xlat7;
        let x_556 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_558 : vec3<f32> = (vec3<f32>(x_553.y, x_553.x, x_553.z) * vec3<f32>(x_556.x, x_556.x, x_556.x));
        let x_559 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat8;
        let x_564 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_566 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_564.y, x_564.y, x_564.y));
        let x_567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_570 : f32 = u_xlat8.x;
        u_xlat7.w = x_570;
        let x_572 : vec4<f32> = u_xlat5;
        let x_575 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_578 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_572.x, x_572.y, x_572.x, x_572.y) * vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y)) + vec4<f32>(x_578.y, x_578.w, x_578.x, x_578.w));
        let x_581 : vec4<f32> = u_xlat5;
        let x_584 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(x_584.x, x_584.y)) + vec2<f32>(x_587.z, x_587.w));
        let x_591 : f32 = u_xlat7.y;
        u_xlat8.w = x_591;
        let x_593 : vec4<f32> = u_xlat8;
        let x_594 : vec2<f32> = vec2<f32>(x_593.y, x_593.z);
        let x_595 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_595.x, x_594.x, x_595.z, x_594.y);
        let x_597 : vec4<f32> = u_xlat5;
        let x_600 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y) * vec4<f32>(x_600.x, x_600.y, x_600.x, x_600.y)) + vec4<f32>(x_603.x, x_603.y, x_603.z, x_603.y));
        let x_606 : vec4<f32> = u_xlat5;
        let x_609 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y) * vec4<f32>(x_609.x, x_609.y, x_609.x, x_609.y)) + vec4<f32>(x_612.w, x_612.y, x_612.w, x_612.z));
        let x_615 : vec4<f32> = u_xlat5;
        let x_618 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_621 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y) * vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y)) + vec4<f32>(x_621.x, x_621.w, x_621.z, x_621.w));
        let x_625 : vec4<f32> = u_xlat6;
        let x_627 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_625.x, x_625.x, x_625.x, x_625.y) * vec4<f32>(x_627.z, x_627.w, x_627.y, x_627.z));
        let x_631 : vec4<f32> = u_xlat6;
        let x_633 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_631.y, x_631.y, x_631.z, x_631.z) * x_633);
        let x_637 : f32 = u_xlat6.z;
        let x_639 : f32 = u_xlat11.y;
        u_xlat82 = (x_637 * x_639);
        let x_642 : vec4<f32> = u_xlat9;
        let x_643 : vec2<f32> = vec2<f32>(x_642.x, x_642.y);
        let x_645 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_643.x, x_643.y, x_645);
        let x_652 : vec3<f32> = txVec4;
        let x_654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_652.xy, x_652.z);
        u_xlat5.x = x_654;
        let x_657 : vec4<f32> = u_xlat9;
        let x_658 : vec2<f32> = vec2<f32>(x_657.z, x_657.w);
        let x_660 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_658.x, x_658.y, x_660);
        let x_668 : vec3<f32> = txVec5;
        let x_670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_668.xy, x_668.z);
        u_xlat31 = x_670;
        let x_671 : f32 = u_xlat31;
        let x_673 : f32 = u_xlat12.y;
        u_xlat31 = (x_671 * x_673);
        let x_676 : f32 = u_xlat12.x;
        let x_678 : f32 = u_xlat5.x;
        let x_680 : f32 = u_xlat31;
        u_xlat5.x = ((x_676 * x_678) + x_680);
        let x_684 : vec2<f32> = u_xlat57;
        let x_686 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_684.x, x_684.y, x_686);
        let x_693 : vec3<f32> = txVec6;
        let x_695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_693.xy, x_693.z);
        u_xlat31 = x_695;
        let x_697 : f32 = u_xlat12.z;
        let x_698 : f32 = u_xlat31;
        let x_701 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_697 * x_698) + x_701);
        let x_705 : vec4<f32> = u_xlat8;
        let x_706 : vec2<f32> = vec2<f32>(x_705.x, x_705.y);
        let x_708 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_706.x, x_706.y, x_708);
        let x_715 : vec3<f32> = txVec7;
        let x_717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_715.xy, x_715.z);
        u_xlat31 = x_717;
        let x_719 : f32 = u_xlat12.w;
        let x_720 : f32 = u_xlat31;
        let x_723 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_719 * x_720) + x_723);
        let x_727 : vec4<f32> = u_xlat10;
        let x_728 : vec2<f32> = vec2<f32>(x_727.x, x_727.y);
        let x_730 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_728.x, x_728.y, x_730);
        let x_737 : vec3<f32> = txVec8;
        let x_739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_737.xy, x_737.z);
        u_xlat31 = x_739;
        let x_741 : f32 = u_xlat13.x;
        let x_742 : f32 = u_xlat31;
        let x_745 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_741 * x_742) + x_745);
        let x_749 : vec4<f32> = u_xlat10;
        let x_750 : vec2<f32> = vec2<f32>(x_749.z, x_749.w);
        let x_752 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_750.x, x_750.y, x_752);
        let x_759 : vec3<f32> = txVec9;
        let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_759.xy, x_759.z);
        u_xlat31 = x_761;
        let x_763 : f32 = u_xlat13.y;
        let x_764 : f32 = u_xlat31;
        let x_767 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_763 * x_764) + x_767);
        let x_771 : vec4<f32> = u_xlat8;
        let x_772 : vec2<f32> = vec2<f32>(x_771.z, x_771.w);
        let x_774 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec10;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat31 = x_783;
        let x_785 : f32 = u_xlat13.z;
        let x_786 : f32 = u_xlat31;
        let x_789 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_785 * x_786) + x_789);
        let x_793 : vec4<f32> = u_xlat7;
        let x_794 : vec2<f32> = vec2<f32>(x_793.x, x_793.y);
        let x_796 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_794.x, x_794.y, x_796);
        let x_803 : vec3<f32> = txVec11;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_803.xy, x_803.z);
        u_xlat31 = x_805;
        let x_807 : f32 = u_xlat13.w;
        let x_808 : f32 = u_xlat31;
        let x_811 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_807 * x_808) + x_811);
        let x_815 : vec4<f32> = u_xlat7;
        let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
        let x_818 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec12;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_825.xy, x_825.z);
        u_xlat31 = x_827;
        let x_828 : f32 = u_xlat82;
        let x_829 : f32 = u_xlat31;
        let x_832 : f32 = u_xlat5.x;
        u_xlat56 = ((x_828 * x_829) + x_832);
      } else {
        let x_835 : vec4<f32> = vs_TEXCOORD8;
        let x_838 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_841 : vec2<f32> = ((vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_838.z, x_838.w)) + vec2<f32>(0.5f, 0.5f));
        let x_842 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat5;
        let x_846 : vec2<f32> = floor(vec2<f32>(x_844.x, x_844.y));
        let x_847 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_849 : vec4<f32> = vs_TEXCOORD8;
        let x_852 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_855 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_852.z, x_852.w)) + -(vec2<f32>(x_855.x, x_855.y)));
        let x_859 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_859.x, x_859.x, x_859.y, x_859.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_862 : vec4<f32> = u_xlat6;
        let x_864 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_862.x, x_862.x, x_862.z, x_862.z) * vec4<f32>(x_864.x, x_864.x, x_864.z, x_864.z));
        let x_867 : vec4<f32> = u_xlat7;
        let x_871 : vec2<f32> = (vec2<f32>(x_867.y, x_867.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_872 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_872.x, x_871.x, x_872.z, x_871.y);
        let x_874 : vec4<f32> = u_xlat7;
        let x_877 : vec2<f32> = u_xlat57;
        let x_879 : vec2<f32> = ((vec2<f32>(x_874.x, x_874.z) * vec2<f32>(0.5f, 0.5f)) + -(x_877));
        let x_880 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_879.x, x_880.y, x_879.y, x_880.w);
        let x_882 : vec2<f32> = u_xlat57;
        let x_884 : vec2<f32> = (-(x_882) + vec2<f32>(1.0f, 1.0f));
        let x_885 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_884.x, x_884.y, x_885.z, x_885.w);
        let x_887 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_887, vec2<f32>(0.0f, 0.0f));
        let x_889 : vec2<f32> = u_xlat59;
        let x_891 : vec2<f32> = u_xlat59;
        let x_893 : vec4<f32> = u_xlat7;
        let x_895 : vec2<f32> = ((-(x_889) * x_891) + vec2<f32>(x_893.x, x_893.y));
        let x_896 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_898, vec2<f32>(0.0f, 0.0f));
        let x_901 : vec2<f32> = u_xlat59;
        let x_903 : vec2<f32> = u_xlat59;
        let x_905 : vec4<f32> = u_xlat6;
        let x_907 : vec2<f32> = ((-(x_901) * x_903) + vec2<f32>(x_905.y, x_905.w));
        let x_908 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_907.x, x_908.y, x_907.y);
        let x_910 : vec4<f32> = u_xlat7;
        let x_913 : vec2<f32> = (vec2<f32>(x_910.x, x_910.y) + vec2<f32>(2.0f, 2.0f));
        let x_914 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_916 : vec3<f32> = u_xlat32;
        let x_918 : vec2<f32> = (vec2<f32>(x_916.x, x_916.z) + vec2<f32>(2.0f, 2.0f));
        let x_919 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_919.x, x_918.x, x_919.z, x_918.y);
        let x_922 : f32 = u_xlat6.y;
        u_xlat9.z = (x_922 * 0.08163200318813323975f);
        let x_926 : vec4<f32> = u_xlat6;
        let x_929 : vec3<f32> = (vec3<f32>(x_926.z, x_926.x, x_926.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_930 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat7;
        let x_935 : vec2<f32> = (vec2<f32>(x_932.x, x_932.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_936 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_939 : f32 = u_xlat10.y;
        u_xlat9.x = x_939;
        let x_941 : vec2<f32> = u_xlat57;
        let x_948 : vec2<f32> = ((vec2<f32>(x_941.x, x_941.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_949.x, x_948.x, x_949.z, x_948.y);
        let x_951 : vec2<f32> = u_xlat57;
        let x_955 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_956 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_955.x, x_956.y, x_955.y, x_956.w);
        let x_959 : f32 = u_xlat6.x;
        u_xlat7.y = x_959;
        let x_962 : f32 = u_xlat8.y;
        u_xlat7.w = x_962;
        let x_964 : vec4<f32> = u_xlat7;
        let x_965 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_964 + x_965);
        let x_967 : vec2<f32> = u_xlat57;
        let x_970 : vec2<f32> = ((vec2<f32>(x_967.y, x_967.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_971 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_971.x, x_970.x, x_971.z, x_970.y);
        let x_973 : vec2<f32> = u_xlat57;
        let x_976 : vec2<f32> = ((vec2<f32>(x_973.y, x_973.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_976.x, x_977.y, x_976.y, x_977.w);
        let x_980 : f32 = u_xlat6.y;
        u_xlat8.y = x_980;
        let x_982 : vec4<f32> = u_xlat8;
        let x_983 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_982 + x_983);
        let x_985 : vec4<f32> = u_xlat7;
        let x_986 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_985 / x_986);
        let x_988 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_988 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_994 : vec4<f32> = u_xlat8;
        let x_995 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_994 / x_995);
        let x_997 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_997 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_999 : vec4<f32> = u_xlat7;
        let x_1002 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_999.w, x_999.x, x_999.y, x_999.z) * vec4<f32>(x_1002.x, x_1002.x, x_1002.x, x_1002.x));
        let x_1005 : vec4<f32> = u_xlat8;
        let x_1008 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1005.x, x_1005.w, x_1005.y, x_1005.z) * vec4<f32>(x_1008.y, x_1008.y, x_1008.y, x_1008.y));
        let x_1011 : vec4<f32> = u_xlat7;
        let x_1012 : vec3<f32> = vec3<f32>(x_1011.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1012.z);
        let x_1016 : f32 = u_xlat8.x;
        u_xlat10.y = x_1016;
        let x_1018 : vec4<f32> = u_xlat5;
        let x_1021 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y) * vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.y)) + vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1024.y));
        let x_1027 : vec4<f32> = u_xlat5;
        let x_1030 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1033 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.x, x_1030.y)) + vec2<f32>(x_1033.w, x_1033.y));
        let x_1037 : f32 = u_xlat10.y;
        u_xlat7.y = x_1037;
        let x_1040 : f32 = u_xlat8.z;
        u_xlat10.y = x_1040;
        let x_1042 : vec4<f32> = u_xlat5;
        let x_1045 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y) * vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y)) + vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1048.y));
        let x_1051 : vec4<f32> = u_xlat5;
        let x_1054 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat10;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.x, x_1054.y)) + vec2<f32>(x_1057.w, x_1057.y));
        let x_1060 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1063 : f32 = u_xlat10.y;
        u_xlat7.z = x_1063;
        let x_1066 : vec4<f32> = u_xlat5;
        let x_1069 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y) * vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y)) + vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.z));
        let x_1076 : f32 = u_xlat8.w;
        u_xlat10.y = x_1076;
        let x_1079 : vec4<f32> = u_xlat5;
        let x_1082 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y) * vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y)) + vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1085.y));
        let x_1089 : vec4<f32> = u_xlat5;
        let x_1092 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1092.x, x_1092.y)) + vec2<f32>(x_1095.w, x_1095.y));
        let x_1099 : f32 = u_xlat10.y;
        u_xlat7.w = x_1099;
        let x_1102 : vec4<f32> = u_xlat5;
        let x_1105 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.x, x_1108.w));
        let x_1111 : vec4<f32> = u_xlat10;
        let x_1112 : vec3<f32> = vec3<f32>(x_1111.x, x_1111.z, x_1111.w);
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1112.x, x_1113.y, x_1112.y, x_1112.z);
        let x_1115 : vec4<f32> = u_xlat5;
        let x_1118 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1121.y));
        let x_1125 : vec4<f32> = u_xlat5;
        let x_1128 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.x, x_1128.y)) + vec2<f32>(x_1131.w, x_1131.y));
        let x_1135 : f32 = u_xlat7.x;
        u_xlat8.x = x_1135;
        let x_1137 : vec4<f32> = u_xlat5;
        let x_1140 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1143 : vec4<f32> = u_xlat8;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1137.x, x_1137.y) * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1143.x, x_1143.y));
        let x_1146 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
        let x_1149 : vec4<f32> = u_xlat6;
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1149.x, x_1149.x, x_1149.x, x_1149.x) * x_1151);
        let x_1154 : vec4<f32> = u_xlat6;
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1154.y, x_1154.y, x_1154.y, x_1154.y) * x_1156);
        let x_1159 : vec4<f32> = u_xlat6;
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1159.z, x_1159.z, x_1159.z, x_1159.z) * x_1161);
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1163.w, x_1163.w, x_1163.w, x_1163.w) * x_1165);
        let x_1168 : vec4<f32> = u_xlat11;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.x, x_1168.y);
        let x_1171 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1178 : vec3<f32> = txVec13;
        let x_1180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1178.xy, x_1178.z);
        u_xlat82 = x_1180;
        let x_1182 : vec4<f32> = u_xlat11;
        let x_1183 : vec2<f32> = vec2<f32>(x_1182.z, x_1182.w);
        let x_1185 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
        let x_1192 : vec3<f32> = txVec14;
        let x_1194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1192.xy, x_1192.z);
        u_xlat7.x = x_1194;
        let x_1197 : f32 = u_xlat7.x;
        let x_1199 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1197 * x_1199);
        let x_1203 : f32 = u_xlat16.x;
        let x_1204 : f32 = u_xlat82;
        let x_1207 : f32 = u_xlat7.x;
        u_xlat82 = ((x_1203 * x_1204) + x_1207);
        let x_1210 : vec2<f32> = u_xlat57;
        let x_1212 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec15;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1219.xy, x_1219.z);
        u_xlat57.x = x_1221;
        let x_1224 : f32 = u_xlat16.z;
        let x_1226 : f32 = u_xlat57.x;
        let x_1228 : f32 = u_xlat82;
        u_xlat82 = ((x_1224 * x_1226) + x_1228);
        let x_1231 : vec4<f32> = u_xlat14;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.x, x_1231.y);
        let x_1234 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1241 : vec3<f32> = txVec16;
        let x_1243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1241.xy, x_1241.z);
        u_xlat57.x = x_1243;
        let x_1246 : f32 = u_xlat16.w;
        let x_1248 : f32 = u_xlat57.x;
        let x_1250 : f32 = u_xlat82;
        u_xlat82 = ((x_1246 * x_1248) + x_1250);
        let x_1253 : vec4<f32> = u_xlat12;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
        let x_1256 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec17;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1263.xy, x_1263.z);
        u_xlat57.x = x_1265;
        let x_1268 : f32 = u_xlat17.x;
        let x_1270 : f32 = u_xlat57.x;
        let x_1272 : f32 = u_xlat82;
        u_xlat82 = ((x_1268 * x_1270) + x_1272);
        let x_1275 : vec4<f32> = u_xlat12;
        let x_1276 : vec2<f32> = vec2<f32>(x_1275.z, x_1275.w);
        let x_1278 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec18;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1285.xy, x_1285.z);
        u_xlat57.x = x_1287;
        let x_1290 : f32 = u_xlat17.y;
        let x_1292 : f32 = u_xlat57.x;
        let x_1294 : f32 = u_xlat82;
        u_xlat82 = ((x_1290 * x_1292) + x_1294);
        let x_1297 : vec4<f32> = u_xlat13;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec19;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat57.x = x_1309;
        let x_1312 : f32 = u_xlat17.z;
        let x_1314 : f32 = u_xlat57.x;
        let x_1316 : f32 = u_xlat82;
        u_xlat82 = ((x_1312 * x_1314) + x_1316);
        let x_1319 : vec4<f32> = u_xlat14;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.z, x_1319.w);
        let x_1322 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec20;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1329.xy, x_1329.z);
        u_xlat57.x = x_1331;
        let x_1334 : f32 = u_xlat17.w;
        let x_1336 : f32 = u_xlat57.x;
        let x_1338 : f32 = u_xlat82;
        u_xlat82 = ((x_1334 * x_1336) + x_1338);
        let x_1341 : vec4<f32> = u_xlat15;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec21;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat57.x = x_1353;
        let x_1356 : f32 = u_xlat18.x;
        let x_1358 : f32 = u_xlat57.x;
        let x_1360 : f32 = u_xlat82;
        u_xlat82 = ((x_1356 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat15;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.z, x_1363.w);
        let x_1366 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec22;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat57.x = x_1375;
        let x_1378 : f32 = u_xlat18.y;
        let x_1380 : f32 = u_xlat57.x;
        let x_1382 : f32 = u_xlat82;
        u_xlat82 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec2<f32> = u_xlat33;
        let x_1387 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec23;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat57.x = x_1396;
        let x_1399 : f32 = u_xlat18.z;
        let x_1401 : f32 = u_xlat57.x;
        let x_1403 : f32 = u_xlat82;
        u_xlat82 = ((x_1399 * x_1401) + x_1403);
        let x_1406 : vec2<f32> = u_xlat65;
        let x_1408 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec24;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat57.x = x_1417;
        let x_1420 : f32 = u_xlat18.w;
        let x_1422 : f32 = u_xlat57.x;
        let x_1424 : f32 = u_xlat82;
        u_xlat82 = ((x_1420 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat10;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.x, x_1427.y);
        let x_1430 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec25;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat57.x = x_1439;
        let x_1442 : f32 = u_xlat6.x;
        let x_1444 : f32 = u_xlat57.x;
        let x_1446 : f32 = u_xlat82;
        u_xlat82 = ((x_1442 * x_1444) + x_1446);
        let x_1449 : vec4<f32> = u_xlat10;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.z, x_1449.w);
        let x_1452 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec26;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat57.x = x_1461;
        let x_1464 : f32 = u_xlat6.y;
        let x_1466 : f32 = u_xlat57.x;
        let x_1468 : f32 = u_xlat82;
        u_xlat82 = ((x_1464 * x_1466) + x_1468);
        let x_1471 : vec2<f32> = u_xlat60;
        let x_1473 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec27;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
        u_xlat57.x = x_1482;
        let x_1485 : f32 = u_xlat6.z;
        let x_1487 : f32 = u_xlat57.x;
        let x_1489 : f32 = u_xlat82;
        u_xlat82 = ((x_1485 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat5;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.x, x_1492.y);
        let x_1495 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec28;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat5.x = x_1504;
        let x_1507 : f32 = u_xlat6.w;
        let x_1509 : f32 = u_xlat5.x;
        let x_1511 : f32 = u_xlat82;
        u_xlat56 = ((x_1507 * x_1509) + x_1511);
      }
    }
  } else {
    let x_1515 : vec4<f32> = vs_TEXCOORD8;
    let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
    let x_1518 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
    let x_1525 : vec3<f32> = txVec29;
    let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
    u_xlat56 = x_1527;
  }
  let x_1529 : f32 = x_267.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_1529) + 1.0f);
  let x_1532 : f32 = u_xlat56;
  let x_1534 : f32 = x_267.x_MainLightShadowParams.x;
  let x_1536 : f32 = u_xlat82;
  u_xlat56 = ((x_1532 * x_1534) + x_1536);
  let x_1539 : f32 = vs_TEXCOORD8.z;
  u_xlatb82 = (0.0f >= x_1539);
  let x_1543 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_1543 >= 1.0f);
  let x_1545 : bool = u_xlatb82;
  let x_1546 : bool = u_xlatb5;
  u_xlatb82 = (x_1545 | x_1546);
  let x_1548 : bool = u_xlatb82;
  let x_1549 : f32 = u_xlat56;
  u_xlat56 = select(x_1549, 1.0f, x_1548);
  let x_1551 : vec3<f32> = vs_TEXCOORD7;
  let x_1555 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1557 : vec3<f32> = (x_1551 + -(x_1555));
  let x_1558 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1558.w);
  let x_1560 : vec4<f32> = u_xlat5;
  let x_1562 : vec4<f32> = u_xlat5;
  u_xlat82 = dot(vec3<f32>(x_1560.x, x_1560.y, x_1560.z), vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
  let x_1565 : f32 = u_xlat82;
  let x_1567 : f32 = x_267.x_MainLightShadowParams.z;
  let x_1570 : f32 = x_267.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1565 * x_1567) + x_1570);
  let x_1574 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1574, 0.0f, 1.0f);
  let x_1577 : f32 = u_xlat56;
  u_xlat31 = (-(x_1577) + 1.0f);
  let x_1581 : f32 = u_xlat5.x;
  let x_1582 : f32 = u_xlat31;
  let x_1584 : f32 = u_xlat56;
  u_xlat56 = ((x_1581 * x_1582) + x_1584);
  let x_1593 : f32 = x_1591.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1593 == -1.0f));
  let x_1596 : bool = u_xlatb5;
  if (x_1596) {
    let x_1599 : vec3<f32> = vs_TEXCOORD7;
    let x_1602 : vec4<f32> = x_1591.x_MainLightWorldToLight[1i];
    let x_1604 : vec2<f32> = (vec2<f32>(x_1599.y, x_1599.y) * vec2<f32>(x_1602.x, x_1602.y));
    let x_1605 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
    let x_1608 : vec4<f32> = x_1591.x_MainLightWorldToLight[0i];
    let x_1610 : vec3<f32> = vs_TEXCOORD7;
    let x_1613 : vec4<f32> = u_xlat5;
    let x_1615 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.y) * vec2<f32>(x_1610.x, x_1610.x)) + vec2<f32>(x_1613.x, x_1613.y));
    let x_1616 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1615.x, x_1615.y, x_1616.z, x_1616.w);
    let x_1619 : vec4<f32> = x_1591.x_MainLightWorldToLight[2i];
    let x_1621 : vec3<f32> = vs_TEXCOORD7;
    let x_1624 : vec4<f32> = u_xlat5;
    let x_1626 : vec2<f32> = ((vec2<f32>(x_1619.x, x_1619.y) * vec2<f32>(x_1621.z, x_1621.z)) + vec2<f32>(x_1624.x, x_1624.y));
    let x_1627 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1626.x, x_1626.y, x_1627.z, x_1627.w);
    let x_1629 : vec4<f32> = u_xlat5;
    let x_1632 : vec4<f32> = x_1591.x_MainLightWorldToLight[3i];
    let x_1634 : vec2<f32> = (vec2<f32>(x_1629.x, x_1629.y) + vec2<f32>(x_1632.x, x_1632.y));
    let x_1635 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
    let x_1637 : vec4<f32> = u_xlat5;
    let x_1640 : vec2<f32> = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1641 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
    let x_1648 : vec4<f32> = u_xlat5;
    let x_1651 : f32 = x_29.x_GlobalMipBias.x;
    let x_1652 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1648.x, x_1648.y), x_1651);
    u_xlat5 = x_1652;
    let x_1657 : f32 = x_1591.x_MainLightCookieTextureFormat;
    let x_1659 : f32 = x_1591.x_MainLightCookieTextureFormat;
    let x_1661 : f32 = x_1591.x_MainLightCookieTextureFormat;
    let x_1663 : f32 = x_1591.x_MainLightCookieTextureFormat;
    let x_1664 : vec4<f32> = vec4<f32>(x_1657, x_1659, x_1661, x_1663);
    let x_1672 : vec4<bool> = (vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1664.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1672.x, x_1672.y);
    let x_1676 : bool = u_xlatb6.y;
    if (x_1676) {
      let x_1682 : f32 = u_xlat5.w;
      x_1678 = x_1682;
    } else {
      let x_1685 : f32 = u_xlat5.x;
      x_1678 = x_1685;
    }
    let x_1686 : f32 = x_1678;
    u_xlat83 = x_1686;
    let x_1688 : bool = u_xlatb6.x;
    if (x_1688) {
      let x_1692 : vec4<f32> = u_xlat5;
      x_1689 = vec3<f32>(x_1692.x, x_1692.y, x_1692.z);
    } else {
      let x_1695 : f32 = u_xlat83;
      x_1689 = vec3<f32>(x_1695, x_1695, x_1695);
    }
    let x_1697 : vec3<f32> = x_1689;
    let x_1698 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1704 : vec4<f32> = u_xlat5;
  let x_1707 : vec4<f32> = x_29.x_MainLightColor;
  let x_1709 : vec3<f32> = (vec3<f32>(x_1704.x, x_1704.y, x_1704.z) * vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
  let x_1710 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  let x_1713 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1713;
  let x_1717 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1717;
  let x_1721 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1721;
  let x_1723 : vec4<f32> = u_xlat6;
  let x_1726 : vec3<f32> = u_xlat27;
  u_xlat83 = dot(-(vec3<f32>(x_1723.x, x_1723.y, x_1723.z)), x_1726);
  let x_1728 : f32 = u_xlat83;
  let x_1729 : f32 = u_xlat83;
  u_xlat83 = (x_1728 + x_1729);
  let x_1731 : vec3<f32> = u_xlat27;
  let x_1732 : f32 = u_xlat83;
  let x_1736 : vec4<f32> = u_xlat6;
  let x_1739 : vec3<f32> = ((x_1731 * -(vec3<f32>(x_1732, x_1732, x_1732))) + -(vec3<f32>(x_1736.x, x_1736.y, x_1736.z)));
  let x_1740 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
  let x_1742 : vec3<f32> = u_xlat27;
  let x_1743 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(x_1742, vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1746 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1746, 0.0f, 1.0f);
  let x_1748 : f32 = u_xlat83;
  u_xlat83 = (-(x_1748) + 1.0f);
  let x_1751 : f32 = u_xlat83;
  let x_1752 : f32 = u_xlat83;
  u_xlat83 = (x_1751 * x_1752);
  let x_1754 : f32 = u_xlat83;
  let x_1755 : f32 = u_xlat83;
  u_xlat83 = (x_1754 * x_1755);
  let x_1758 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1758) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1764 : f32 = u_xlat1;
  let x_1765 : f32 = u_xlat84;
  u_xlat1 = (x_1764 * x_1765);
  let x_1767 : f32 = u_xlat1;
  u_xlat1 = (x_1767 * 6.0f);
  let x_1778 : vec4<f32> = u_xlat7;
  let x_1780 : f32 = u_xlat1;
  let x_1781 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1778.x, x_1778.y, x_1778.z), x_1780);
  u_xlat7 = x_1781;
  let x_1783 : f32 = u_xlat7.w;
  u_xlat1 = (x_1783 + -1.0f);
  let x_1790 : f32 = x_1788.unity_SpecCube0_HDR.w;
  let x_1791 : f32 = u_xlat1;
  u_xlat1 = ((x_1790 * x_1791) + 1.0f);
  let x_1794 : f32 = u_xlat1;
  u_xlat1 = max(x_1794, 0.0f);
  let x_1796 : f32 = u_xlat1;
  u_xlat1 = log2(x_1796);
  let x_1798 : f32 = u_xlat1;
  let x_1800 : f32 = x_1788.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1798 * x_1800);
  let x_1802 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1802);
  let x_1804 : f32 = u_xlat1;
  let x_1806 : f32 = x_1788.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1804 * x_1806);
  let x_1808 : vec4<f32> = u_xlat7;
  let x_1810 : f32 = u_xlat1;
  let x_1812 : vec3<f32> = (vec3<f32>(x_1808.x, x_1808.y, x_1808.z) * vec3<f32>(x_1810, x_1810, x_1810));
  let x_1813 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
  let x_1815 : f32 = u_xlat4;
  let x_1817 : f32 = u_xlat4;
  let x_1821 : vec2<f32> = ((vec2<f32>(x_1815, x_1815) * vec2<f32>(x_1817, x_1817)) + vec2<f32>(-1.0f, 1.0f));
  let x_1822 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1821.x, x_1821.y, x_1822.z, x_1822.w);
  let x_1825 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1825);
  let x_1828 : vec4<f32> = u_xlat0;
  let x_1831 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1828.x, x_1828.y, x_1828.z)) + vec3<f32>(x_1831, x_1831, x_1831));
  let x_1834 : f32 = u_xlat83;
  let x_1836 : vec3<f32> = u_xlat34;
  let x_1838 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1834, x_1834, x_1834) * x_1836) + vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
  let x_1841 : f32 = u_xlat1;
  let x_1843 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1841, x_1841, x_1841) * x_1843);
  let x_1845 : vec4<f32> = u_xlat7;
  let x_1847 : vec3<f32> = u_xlat34;
  let x_1848 : vec3<f32> = (vec3<f32>(x_1845.x, x_1845.y, x_1845.z) * x_1847);
  let x_1849 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1851 : vec3<f32> = u_xlat28;
  let x_1852 : vec4<f32> = u_xlat3;
  let x_1855 : vec4<f32> = u_xlat7;
  u_xlat28 = ((x_1851 * vec3<f32>(x_1852.x, x_1852.z, x_1852.w)) + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : f32 = u_xlat56;
  let x_1860 : f32 = x_1788.unity_LightData.z;
  u_xlat78 = (x_1858 * x_1860);
  let x_1862 : vec3<f32> = u_xlat27;
  let x_1864 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1862, vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
  let x_1867 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1867, 0.0f, 1.0f);
  let x_1869 : f32 = u_xlat78;
  let x_1870 : f32 = u_xlat1;
  u_xlat78 = (x_1869 * x_1870);
  let x_1872 : f32 = u_xlat78;
  let x_1874 : vec4<f32> = u_xlat5;
  let x_1876 : vec3<f32> = (vec3<f32>(x_1872, x_1872, x_1872) * vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
  let x_1879 : vec4<f32> = u_xlat6;
  let x_1882 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1884 : vec3<f32> = (vec3<f32>(x_1879.x, x_1879.y, x_1879.z) + vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
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
  let x_1904 : vec3<f32> = u_xlat27;
  let x_1905 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_1904, vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
  let x_1908 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1908, 0.0f, 1.0f);
  let x_1911 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1913 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1911.x, x_1911.y, x_1911.z), vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1916, 0.0f, 1.0f);
  let x_1918 : f32 = u_xlat78;
  let x_1919 : f32 = u_xlat78;
  u_xlat78 = (x_1918 * x_1919);
  let x_1921 : f32 = u_xlat78;
  let x_1923 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1921 * x_1923) + 1.00001001358032226562f);
  let x_1927 : f32 = u_xlat1;
  let x_1928 : f32 = u_xlat1;
  u_xlat1 = (x_1927 * x_1928);
  let x_1930 : f32 = u_xlat78;
  let x_1931 : f32 = u_xlat78;
  u_xlat78 = (x_1930 * x_1931);
  let x_1933 : f32 = u_xlat1;
  u_xlat1 = max(x_1933, 0.10000000149011611938f);
  let x_1936 : f32 = u_xlat78;
  let x_1937 : f32 = u_xlat1;
  u_xlat78 = (x_1936 * x_1937);
  let x_1939 : f32 = u_xlat29;
  let x_1940 : f32 = u_xlat78;
  u_xlat78 = (x_1939 * x_1940);
  let x_1942 : f32 = u_xlat30;
  let x_1943 : f32 = u_xlat78;
  u_xlat78 = (x_1942 / x_1943);
  let x_1945 : vec4<f32> = u_xlat0;
  let x_1947 : f32 = u_xlat78;
  let x_1950 : vec4<f32> = u_xlat3;
  let x_1952 : vec3<f32> = ((vec3<f32>(x_1945.x, x_1945.y, x_1945.z) * vec3<f32>(x_1947, x_1947, x_1947)) + vec3<f32>(x_1950.x, x_1950.z, x_1950.w));
  let x_1953 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
  let x_1956 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1958 : f32 = x_1788.unity_LightData.y;
  u_xlat78 = min(x_1956, x_1958);
  let x_1962 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1962));
  let x_1965 : f32 = u_xlat82;
  let x_1968 : f32 = x_267.x_AdditionalShadowFadeParams.x;
  let x_1971 : f32 = x_267.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1965 * x_1968) + x_1971);
  let x_1973 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1973, 0.0f, 1.0f);
  let x_1979 : f32 = x_1591.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1981 : f32 = x_1591.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1983 : f32 = x_1591.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1985 : f32 = x_1591.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1986 : vec4<f32> = vec4<f32>(x_1979, x_1981, x_1983, x_1985);
  let x_1993 : vec4<bool> = (vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1986.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1994 : vec2<bool> = vec2<bool>(x_1993.x, x_1993.z);
  let x_1995 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_1994.x, x_1995.y, x_1994.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2007 : u32 = u_xlatu_loop_1;
    let x_2008 : u32 = u_xlatu78;
    if ((x_2007 < x_2008)) {
    } else {
      break;
    }
    let x_2011 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2011 >> 2u);
    let x_2015 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2015 & 3u));
    let x_2018 : u32 = u_xlatu83;
    let x_2021 : vec4<f32> = x_1788.unity_LightIndices[bitcast<i32>(x_2018)];
    let x_2031 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2036 : vec4<u32> = indexable[x_2031];
    u_xlat83 = dot(x_2021, bitcast<vec4<f32>>(x_2036));
    let x_2040 : f32 = u_xlat83;
    u_xlati83 = i32(x_2040);
    let x_2042 : vec3<f32> = vs_TEXCOORD7;
    let x_2053 : i32 = u_xlati83;
    let x_2055 : vec4<f32> = x_2052.x_AdditionalLightsPosition[x_2053];
    let x_2058 : i32 = u_xlati83;
    let x_2060 : vec4<f32> = x_2052.x_AdditionalLightsPosition[x_2058];
    let x_2062 : vec3<f32> = ((-(x_2042) * vec3<f32>(x_2055.w, x_2055.w, x_2055.w)) + vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
    let x_2063 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
    let x_2065 : vec4<f32> = u_xlat9;
    let x_2067 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
    let x_2070 : f32 = u_xlat84;
    u_xlat84 = max(x_2070, 0.00006103515625f);
    let x_2074 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2074);
    let x_2076 : f32 = u_xlat85;
    let x_2078 : vec4<f32> = u_xlat9;
    let x_2080 : vec3<f32> = (vec3<f32>(x_2076, x_2076, x_2076) * vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
    let x_2081 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
    let x_2084 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2084);
    let x_2086 : f32 = u_xlat84;
    let x_2087 : i32 = u_xlati83;
    let x_2089 : f32 = x_2052.x_AdditionalLightsAttenuation[x_2087].x;
    u_xlat84 = (x_2086 * x_2089);
    let x_2091 : f32 = u_xlat84;
    let x_2093 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2091) * x_2093) + 1.0f);
    let x_2096 : f32 = u_xlat84;
    u_xlat84 = max(x_2096, 0.0f);
    let x_2098 : f32 = u_xlat84;
    let x_2099 : f32 = u_xlat84;
    u_xlat84 = (x_2098 * x_2099);
    let x_2101 : f32 = u_xlat84;
    let x_2102 : f32 = u_xlat87;
    u_xlat84 = (x_2101 * x_2102);
    let x_2104 : i32 = u_xlati83;
    let x_2106 : vec4<f32> = x_2052.x_AdditionalLightsSpotDir[x_2104];
    let x_2108 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : f32 = u_xlat87;
    let x_2112 : i32 = u_xlati83;
    let x_2114 : f32 = x_2052.x_AdditionalLightsAttenuation[x_2112].z;
    let x_2116 : i32 = u_xlati83;
    let x_2118 : f32 = x_2052.x_AdditionalLightsAttenuation[x_2116].w;
    u_xlat87 = ((x_2111 * x_2114) + x_2118);
    let x_2120 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2120, 0.0f, 1.0f);
    let x_2122 : f32 = u_xlat87;
    let x_2123 : f32 = u_xlat87;
    u_xlat87 = (x_2122 * x_2123);
    let x_2125 : f32 = u_xlat84;
    let x_2126 : f32 = u_xlat87;
    u_xlat84 = (x_2125 * x_2126);
    let x_2130 : i32 = u_xlati83;
    let x_2132 : f32 = x_267.x_AdditionalShadowParams[x_2130].w;
    u_xlati87 = i32(x_2132);
    let x_2135 : i32 = u_xlati87;
    u_xlatb88 = (x_2135 >= 0i);
    let x_2137 : bool = u_xlatb88;
    if (x_2137) {
      let x_2141 : i32 = u_xlati83;
      let x_2143 : f32 = x_267.x_AdditionalShadowParams[x_2141].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2143, x_2143, x_2143, x_2143))));
      let x_2147 : bool = u_xlatb88;
      if (x_2147) {
        let x_2152 : vec4<f32> = u_xlat10;
        let x_2155 : vec4<f32> = u_xlat10;
        let x_2158 : vec4<bool> = (abs(vec4<f32>(x_2152.z, x_2152.z, x_2152.y, x_2152.z)) >= abs(vec4<f32>(x_2155.x, x_2155.y, x_2155.x, x_2155.x)));
        let x_2159 : vec3<bool> = vec3<bool>(x_2158.x, x_2158.y, x_2158.z);
        let x_2160 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
        let x_2163 : bool = u_xlatb11.y;
        let x_2165 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2163 & x_2165);
        let x_2167 : vec4<f32> = u_xlat10;
        let x_2170 : vec4<bool> = (-(vec4<f32>(x_2167.z, x_2167.y, x_2167.z, x_2167.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2171 : vec3<bool> = vec3<bool>(x_2170.x, x_2170.y, x_2170.w);
        let x_2172 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2171.x, x_2171.y, x_2172.z, x_2171.z);
        let x_2175 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2175);
        let x_2180 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2180);
        let x_2186 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2186);
        let x_2190 : bool = u_xlatb11.z;
        if (x_2190) {
          let x_2195 : f32 = u_xlat11.y;
          x_2191 = x_2195;
        } else {
          let x_2197 : f32 = u_xlat89;
          x_2191 = x_2197;
        }
        let x_2198 : f32 = x_2191;
        u_xlat37.x = x_2198;
        let x_2201 : bool = u_xlatb88;
        if (x_2201) {
          let x_2206 : f32 = u_xlat11.x;
          x_2202 = x_2206;
        } else {
          let x_2209 : f32 = u_xlat37.x;
          x_2202 = x_2209;
        }
        let x_2210 : f32 = x_2202;
        u_xlat88 = x_2210;
        let x_2211 : i32 = u_xlati83;
        let x_2213 : f32 = x_267.x_AdditionalShadowParams[x_2211].w;
        u_xlat11.x = trunc(x_2213);
        let x_2216 : f32 = u_xlat88;
        let x_2218 : f32 = u_xlat11.x;
        u_xlat88 = (x_2216 + x_2218);
        let x_2220 : f32 = u_xlat88;
        u_xlati87 = i32(x_2220);
      }
      let x_2222 : i32 = u_xlati87;
      u_xlati87 = (x_2222 << bitcast<u32>(2i));
      let x_2224 : vec3<f32> = vs_TEXCOORD7;
      let x_2227 : i32 = u_xlati87;
      let x_2230 : i32 = u_xlati87;
      let x_2234 : vec4<f32> = x_267.x_AdditionalLightsWorldToShadow[((x_2227 + 1i) / 4i)][((x_2230 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2224.y, x_2224.y, x_2224.y, x_2224.y) * x_2234);
      let x_2236 : i32 = u_xlati87;
      let x_2238 : i32 = u_xlati87;
      let x_2241 : vec4<f32> = x_267.x_AdditionalLightsWorldToShadow[(x_2236 / 4i)][(x_2238 % 4i)];
      let x_2242 : vec3<f32> = vs_TEXCOORD7;
      let x_2245 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2241 * vec4<f32>(x_2242.x, x_2242.x, x_2242.x, x_2242.x)) + x_2245);
      let x_2247 : i32 = u_xlati87;
      let x_2250 : i32 = u_xlati87;
      let x_2254 : vec4<f32> = x_267.x_AdditionalLightsWorldToShadow[((x_2247 + 2i) / 4i)][((x_2250 + 2i) % 4i)];
      let x_2255 : vec3<f32> = vs_TEXCOORD7;
      let x_2258 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2254 * vec4<f32>(x_2255.z, x_2255.z, x_2255.z, x_2255.z)) + x_2258);
      let x_2260 : vec4<f32> = u_xlat11;
      let x_2261 : i32 = u_xlati87;
      let x_2264 : i32 = u_xlati87;
      let x_2268 : vec4<f32> = x_267.x_AdditionalLightsWorldToShadow[((x_2261 + 3i) / 4i)][((x_2264 + 3i) % 4i)];
      u_xlat11 = (x_2260 + x_2268);
      let x_2270 : vec4<f32> = u_xlat11;
      let x_2272 : vec4<f32> = u_xlat11;
      let x_2274 : vec3<f32> = (vec3<f32>(x_2270.x, x_2270.y, x_2270.z) / vec3<f32>(x_2272.w, x_2272.w, x_2272.w));
      let x_2275 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
      let x_2278 : i32 = u_xlati83;
      let x_2280 : f32 = x_267.x_AdditionalShadowParams[x_2278].y;
      u_xlatb87 = (0.0f < x_2280);
      let x_2282 : bool = u_xlatb87;
      if (x_2282) {
        let x_2285 : i32 = u_xlati83;
        let x_2287 : f32 = x_267.x_AdditionalShadowParams[x_2285].y;
        u_xlatb87 = (1.0f == x_2287);
        let x_2289 : bool = u_xlatb87;
        if (x_2289) {
          let x_2292 : vec4<f32> = u_xlat11;
          let x_2296 : vec4<f32> = x_267.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2292.x, x_2292.y, x_2292.x, x_2292.y) + x_2296);
          let x_2299 : vec4<f32> = u_xlat12;
          let x_2300 : vec2<f32> = vec2<f32>(x_2299.x, x_2299.y);
          let x_2302 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2300.x, x_2300.y, x_2302);
          let x_2310 : vec3<f32> = txVec30;
          let x_2312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2310.xy, x_2310.z);
          u_xlat13.x = x_2312;
          let x_2315 : vec4<f32> = u_xlat12;
          let x_2316 : vec2<f32> = vec2<f32>(x_2315.z, x_2315.w);
          let x_2318 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2316.x, x_2316.y, x_2318);
          let x_2325 : vec3<f32> = txVec31;
          let x_2327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2325.xy, x_2325.z);
          u_xlat13.y = x_2327;
          let x_2329 : vec4<f32> = u_xlat11;
          let x_2333 : vec4<f32> = x_267.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2329.x, x_2329.y, x_2329.x, x_2329.y) + x_2333);
          let x_2336 : vec4<f32> = u_xlat12;
          let x_2337 : vec2<f32> = vec2<f32>(x_2336.x, x_2336.y);
          let x_2339 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2337.x, x_2337.y, x_2339);
          let x_2346 : vec3<f32> = txVec32;
          let x_2348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2346.xy, x_2346.z);
          u_xlat13.z = x_2348;
          let x_2351 : vec4<f32> = u_xlat12;
          let x_2352 : vec2<f32> = vec2<f32>(x_2351.z, x_2351.w);
          let x_2354 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
          let x_2361 : vec3<f32> = txVec33;
          let x_2363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
          u_xlat13.w = x_2363;
          let x_2365 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2365, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2368 : i32 = u_xlati83;
          let x_2370 : f32 = x_267.x_AdditionalShadowParams[x_2368].y;
          u_xlatb88 = (2.0f == x_2370);
          let x_2372 : bool = u_xlatb88;
          if (x_2372) {
            let x_2375 : vec4<f32> = u_xlat11;
            let x_2379 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2382 : vec2<f32> = ((vec2<f32>(x_2375.x, x_2375.y) * vec2<f32>(x_2379.z, x_2379.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2383 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2382.x, x_2382.y, x_2383.z, x_2383.w);
            let x_2385 : vec4<f32> = u_xlat12;
            let x_2387 : vec2<f32> = floor(vec2<f32>(x_2385.x, x_2385.y));
            let x_2388 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2387.x, x_2387.y, x_2388.z, x_2388.w);
            let x_2391 : vec4<f32> = u_xlat11;
            let x_2394 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2397 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2391.x, x_2391.y) * vec2<f32>(x_2394.z, x_2394.w)) + -(vec2<f32>(x_2397.x, x_2397.y)));
            let x_2401 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2401.x, x_2401.x, x_2401.y, x_2401.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2404 : vec4<f32> = u_xlat13;
            let x_2406 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2404.x, x_2404.x, x_2404.z, x_2404.z) * vec4<f32>(x_2406.x, x_2406.x, x_2406.z, x_2406.z));
            let x_2409 : vec4<f32> = u_xlat14;
            let x_2411 : vec2<f32> = (vec2<f32>(x_2409.y, x_2409.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2412 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2411.x, x_2412.y, x_2411.y, x_2412.w);
            let x_2414 : vec4<f32> = u_xlat14;
            let x_2417 : vec2<f32> = u_xlat64;
            let x_2419 : vec2<f32> = ((vec2<f32>(x_2414.x, x_2414.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2417));
            let x_2420 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2419.x, x_2419.y, x_2420.z, x_2420.w);
            let x_2423 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2423) + vec2<f32>(1.0f, 1.0f));
            let x_2426 : vec2<f32> = u_xlat64;
            let x_2427 : vec2<f32> = min(x_2426, vec2<f32>(0.0f, 0.0f));
            let x_2428 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2427.x, x_2427.y, x_2428.z, x_2428.w);
            let x_2430 : vec4<f32> = u_xlat15;
            let x_2433 : vec4<f32> = u_xlat15;
            let x_2436 : vec2<f32> = u_xlat66;
            let x_2437 : vec2<f32> = ((-(vec2<f32>(x_2430.x, x_2430.y)) * vec2<f32>(x_2433.x, x_2433.y)) + x_2436);
            let x_2438 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
            let x_2440 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2440, vec2<f32>(0.0f, 0.0f));
            let x_2442 : vec2<f32> = u_xlat64;
            let x_2444 : vec2<f32> = u_xlat64;
            let x_2446 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2442) * x_2444) + vec2<f32>(x_2446.y, x_2446.w));
            let x_2449 : vec4<f32> = u_xlat15;
            let x_2451 : vec2<f32> = (vec2<f32>(x_2449.x, x_2449.y) + vec2<f32>(1.0f, 1.0f));
            let x_2452 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2451.x, x_2451.y, x_2452.z, x_2452.w);
            let x_2454 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2454 + vec2<f32>(1.0f, 1.0f));
            let x_2456 : vec4<f32> = u_xlat14;
            let x_2458 : vec2<f32> = (vec2<f32>(x_2456.x, x_2456.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2459 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
            let x_2461 : vec2<f32> = u_xlat66;
            let x_2462 : vec2<f32> = (x_2461 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2463 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2462.x, x_2462.y, x_2463.z, x_2463.w);
            let x_2465 : vec4<f32> = u_xlat15;
            let x_2467 : vec2<f32> = (vec2<f32>(x_2465.x, x_2465.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2468 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2467.x, x_2467.y, x_2468.z, x_2468.w);
            let x_2470 : vec2<f32> = u_xlat64;
            let x_2471 : vec2<f32> = (x_2470 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2472 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
            let x_2474 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2474.y, x_2474.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2478 : f32 = u_xlat15.x;
            u_xlat16.z = x_2478;
            let x_2481 : f32 = u_xlat64.x;
            u_xlat16.w = x_2481;
            let x_2484 : f32 = u_xlat17.x;
            u_xlat14.z = x_2484;
            let x_2487 : f32 = u_xlat13.x;
            u_xlat14.w = x_2487;
            let x_2489 : vec4<f32> = u_xlat14;
            let x_2491 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2489.z, x_2489.w, x_2489.x, x_2489.z) + vec4<f32>(x_2491.z, x_2491.w, x_2491.x, x_2491.z));
            let x_2495 : f32 = u_xlat16.y;
            u_xlat15.z = x_2495;
            let x_2498 : f32 = u_xlat64.y;
            u_xlat15.w = x_2498;
            let x_2501 : f32 = u_xlat14.y;
            u_xlat17.z = x_2501;
            let x_2504 : f32 = u_xlat13.z;
            u_xlat17.w = x_2504;
            let x_2506 : vec4<f32> = u_xlat15;
            let x_2508 : vec4<f32> = u_xlat17;
            let x_2510 : vec3<f32> = (vec3<f32>(x_2506.z, x_2506.y, x_2506.w) + vec3<f32>(x_2508.z, x_2508.y, x_2508.w));
            let x_2511 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
            let x_2513 : vec4<f32> = u_xlat14;
            let x_2515 : vec4<f32> = u_xlat18;
            let x_2517 : vec3<f32> = (vec3<f32>(x_2513.x, x_2513.z, x_2513.w) / vec3<f32>(x_2515.z, x_2515.w, x_2515.y));
            let x_2518 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
            let x_2520 : vec4<f32> = u_xlat14;
            let x_2522 : vec3<f32> = (vec3<f32>(x_2520.x, x_2520.y, x_2520.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2523 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
            let x_2525 : vec4<f32> = u_xlat17;
            let x_2527 : vec4<f32> = u_xlat13;
            let x_2529 : vec3<f32> = (vec3<f32>(x_2525.z, x_2525.y, x_2525.w) / vec3<f32>(x_2527.x, x_2527.y, x_2527.z));
            let x_2530 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
            let x_2532 : vec4<f32> = u_xlat15;
            let x_2534 : vec3<f32> = (vec3<f32>(x_2532.x, x_2532.y, x_2532.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2535 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
            let x_2537 : vec4<f32> = u_xlat14;
            let x_2540 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2542 : vec3<f32> = (vec3<f32>(x_2537.y, x_2537.x, x_2537.z) * vec3<f32>(x_2540.x, x_2540.x, x_2540.x));
            let x_2543 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
            let x_2545 : vec4<f32> = u_xlat15;
            let x_2548 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2550 : vec3<f32> = (vec3<f32>(x_2545.x, x_2545.y, x_2545.z) * vec3<f32>(x_2548.y, x_2548.y, x_2548.y));
            let x_2551 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2550.x, x_2550.y, x_2550.z, x_2551.w);
            let x_2554 : f32 = u_xlat15.x;
            u_xlat14.w = x_2554;
            let x_2556 : vec4<f32> = u_xlat12;
            let x_2559 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2562 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2556.x, x_2556.y, x_2556.x, x_2556.y) * vec4<f32>(x_2559.x, x_2559.y, x_2559.x, x_2559.y)) + vec4<f32>(x_2562.y, x_2562.w, x_2562.x, x_2562.w));
            let x_2565 : vec4<f32> = u_xlat12;
            let x_2568 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2571 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2565.x, x_2565.y) * vec2<f32>(x_2568.x, x_2568.y)) + vec2<f32>(x_2571.z, x_2571.w));
            let x_2575 : f32 = u_xlat14.y;
            u_xlat15.w = x_2575;
            let x_2577 : vec4<f32> = u_xlat15;
            let x_2578 : vec2<f32> = vec2<f32>(x_2577.y, x_2577.z);
            let x_2579 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2579.x, x_2578.x, x_2579.z, x_2578.y);
            let x_2581 : vec4<f32> = u_xlat12;
            let x_2584 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2587 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2581.x, x_2581.y, x_2581.x, x_2581.y) * vec4<f32>(x_2584.x, x_2584.y, x_2584.x, x_2584.y)) + vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2587.y));
            let x_2590 : vec4<f32> = u_xlat12;
            let x_2593 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2596 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2590.x, x_2590.y, x_2590.x, x_2590.y) * vec4<f32>(x_2593.x, x_2593.y, x_2593.x, x_2593.y)) + vec4<f32>(x_2596.w, x_2596.y, x_2596.w, x_2596.z));
            let x_2599 : vec4<f32> = u_xlat12;
            let x_2602 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2605 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.y) * vec4<f32>(x_2602.x, x_2602.y, x_2602.x, x_2602.y)) + vec4<f32>(x_2605.x, x_2605.w, x_2605.z, x_2605.w));
            let x_2609 : vec4<f32> = u_xlat13;
            let x_2611 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2609.x, x_2609.x, x_2609.x, x_2609.y) * vec4<f32>(x_2611.z, x_2611.w, x_2611.y, x_2611.z));
            let x_2615 : vec4<f32> = u_xlat13;
            let x_2617 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2615.y, x_2615.y, x_2615.z, x_2615.z) * x_2617);
            let x_2620 : f32 = u_xlat13.z;
            let x_2622 : f32 = u_xlat18.y;
            u_xlat88 = (x_2620 * x_2622);
            let x_2625 : vec4<f32> = u_xlat16;
            let x_2626 : vec2<f32> = vec2<f32>(x_2625.x, x_2625.y);
            let x_2628 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2626.x, x_2626.y, x_2628);
            let x_2635 : vec3<f32> = txVec34;
            let x_2637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2635.xy, x_2635.z);
            u_xlat89 = x_2637;
            let x_2639 : vec4<f32> = u_xlat16;
            let x_2640 : vec2<f32> = vec2<f32>(x_2639.z, x_2639.w);
            let x_2642 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2640.x, x_2640.y, x_2642);
            let x_2649 : vec3<f32> = txVec35;
            let x_2651 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2649.xy, x_2649.z);
            u_xlat12.x = x_2651;
            let x_2654 : f32 = u_xlat12.x;
            let x_2656 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2654 * x_2656);
            let x_2660 : f32 = u_xlat19.x;
            let x_2661 : f32 = u_xlat89;
            let x_2664 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2660 * x_2661) + x_2664);
            let x_2667 : vec2<f32> = u_xlat64;
            let x_2669 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2667.x, x_2667.y, x_2669);
            let x_2676 : vec3<f32> = txVec36;
            let x_2678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
            u_xlat12.x = x_2678;
            let x_2681 : f32 = u_xlat19.z;
            let x_2683 : f32 = u_xlat12.x;
            let x_2685 : f32 = u_xlat89;
            u_xlat89 = ((x_2681 * x_2683) + x_2685);
            let x_2688 : vec4<f32> = u_xlat15;
            let x_2689 : vec2<f32> = vec2<f32>(x_2688.x, x_2688.y);
            let x_2691 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2689.x, x_2689.y, x_2691);
            let x_2698 : vec3<f32> = txVec37;
            let x_2700 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2698.xy, x_2698.z);
            u_xlat12.x = x_2700;
            let x_2703 : f32 = u_xlat19.w;
            let x_2705 : f32 = u_xlat12.x;
            let x_2707 : f32 = u_xlat89;
            u_xlat89 = ((x_2703 * x_2705) + x_2707);
            let x_2710 : vec4<f32> = u_xlat17;
            let x_2711 : vec2<f32> = vec2<f32>(x_2710.x, x_2710.y);
            let x_2713 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2711.x, x_2711.y, x_2713);
            let x_2720 : vec3<f32> = txVec38;
            let x_2722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2720.xy, x_2720.z);
            u_xlat12.x = x_2722;
            let x_2725 : f32 = u_xlat20.x;
            let x_2727 : f32 = u_xlat12.x;
            let x_2729 : f32 = u_xlat89;
            u_xlat89 = ((x_2725 * x_2727) + x_2729);
            let x_2732 : vec4<f32> = u_xlat17;
            let x_2733 : vec2<f32> = vec2<f32>(x_2732.z, x_2732.w);
            let x_2735 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2733.x, x_2733.y, x_2735);
            let x_2742 : vec3<f32> = txVec39;
            let x_2744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2742.xy, x_2742.z);
            u_xlat12.x = x_2744;
            let x_2747 : f32 = u_xlat20.y;
            let x_2749 : f32 = u_xlat12.x;
            let x_2751 : f32 = u_xlat89;
            u_xlat89 = ((x_2747 * x_2749) + x_2751);
            let x_2754 : vec4<f32> = u_xlat15;
            let x_2755 : vec2<f32> = vec2<f32>(x_2754.z, x_2754.w);
            let x_2757 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2755.x, x_2755.y, x_2757);
            let x_2764 : vec3<f32> = txVec40;
            let x_2766 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2764.xy, x_2764.z);
            u_xlat12.x = x_2766;
            let x_2769 : f32 = u_xlat20.z;
            let x_2771 : f32 = u_xlat12.x;
            let x_2773 : f32 = u_xlat89;
            u_xlat89 = ((x_2769 * x_2771) + x_2773);
            let x_2776 : vec4<f32> = u_xlat14;
            let x_2777 : vec2<f32> = vec2<f32>(x_2776.x, x_2776.y);
            let x_2779 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2777.x, x_2777.y, x_2779);
            let x_2786 : vec3<f32> = txVec41;
            let x_2788 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2786.xy, x_2786.z);
            u_xlat12.x = x_2788;
            let x_2791 : f32 = u_xlat20.w;
            let x_2793 : f32 = u_xlat12.x;
            let x_2795 : f32 = u_xlat89;
            u_xlat89 = ((x_2791 * x_2793) + x_2795);
            let x_2798 : vec4<f32> = u_xlat14;
            let x_2799 : vec2<f32> = vec2<f32>(x_2798.z, x_2798.w);
            let x_2801 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2799.x, x_2799.y, x_2801);
            let x_2808 : vec3<f32> = txVec42;
            let x_2810 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2808.xy, x_2808.z);
            u_xlat12.x = x_2810;
            let x_2812 : f32 = u_xlat88;
            let x_2814 : f32 = u_xlat12.x;
            let x_2816 : f32 = u_xlat89;
            u_xlat87 = ((x_2812 * x_2814) + x_2816);
          } else {
            let x_2819 : vec4<f32> = u_xlat11;
            let x_2822 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2825 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.y) * vec2<f32>(x_2822.z, x_2822.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2826 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2825.x, x_2825.y, x_2826.z, x_2826.w);
            let x_2828 : vec4<f32> = u_xlat12;
            let x_2830 : vec2<f32> = floor(vec2<f32>(x_2828.x, x_2828.y));
            let x_2831 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat11;
            let x_2836 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2839 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.z, x_2836.w)) + -(vec2<f32>(x_2839.x, x_2839.y)));
            let x_2843 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2843.x, x_2843.x, x_2843.y, x_2843.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2846 : vec4<f32> = u_xlat13;
            let x_2848 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2846.x, x_2846.x, x_2846.z, x_2846.z) * vec4<f32>(x_2848.x, x_2848.x, x_2848.z, x_2848.z));
            let x_2851 : vec4<f32> = u_xlat14;
            let x_2853 : vec2<f32> = (vec2<f32>(x_2851.y, x_2851.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2854 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2854.x, x_2853.x, x_2854.z, x_2853.y);
            let x_2856 : vec4<f32> = u_xlat14;
            let x_2859 : vec2<f32> = u_xlat64;
            let x_2861 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2859));
            let x_2862 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2861.x, x_2862.y, x_2861.y, x_2862.w);
            let x_2864 : vec2<f32> = u_xlat64;
            let x_2866 : vec2<f32> = (-(x_2864) + vec2<f32>(1.0f, 1.0f));
            let x_2867 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2866.x, x_2866.y, x_2867.z, x_2867.w);
            let x_2869 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2869, vec2<f32>(0.0f, 0.0f));
            let x_2871 : vec2<f32> = u_xlat66;
            let x_2873 : vec2<f32> = u_xlat66;
            let x_2875 : vec4<f32> = u_xlat14;
            let x_2877 : vec2<f32> = ((-(x_2871) * x_2873) + vec2<f32>(x_2875.x, x_2875.y));
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
            let x_2880 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2880, vec2<f32>(0.0f, 0.0f));
            let x_2883 : vec2<f32> = u_xlat66;
            let x_2885 : vec2<f32> = u_xlat66;
            let x_2887 : vec4<f32> = u_xlat13;
            let x_2889 : vec2<f32> = ((-(x_2883) * x_2885) + vec2<f32>(x_2887.y, x_2887.w));
            let x_2890 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2889.x, x_2890.y, x_2889.y);
            let x_2892 : vec4<f32> = u_xlat14;
            let x_2894 : vec2<f32> = (vec2<f32>(x_2892.x, x_2892.y) + vec2<f32>(2.0f, 2.0f));
            let x_2895 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2894.x, x_2894.y, x_2895.z, x_2895.w);
            let x_2897 : vec3<f32> = u_xlat39;
            let x_2899 : vec2<f32> = (vec2<f32>(x_2897.x, x_2897.z) + vec2<f32>(2.0f, 2.0f));
            let x_2900 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2900.x, x_2899.x, x_2900.z, x_2899.y);
            let x_2903 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2903 * 0.08163200318813323975f);
            let x_2906 : vec4<f32> = u_xlat13;
            let x_2908 : vec3<f32> = (vec3<f32>(x_2906.z, x_2906.x, x_2906.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2909 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2908.x, x_2908.y, x_2908.z, x_2909.w);
            let x_2911 : vec4<f32> = u_xlat14;
            let x_2913 : vec2<f32> = (vec2<f32>(x_2911.x, x_2911.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2914 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2913.x, x_2913.y, x_2914.z, x_2914.w);
            let x_2917 : f32 = u_xlat17.y;
            u_xlat16.x = x_2917;
            let x_2919 : vec2<f32> = u_xlat64;
            let x_2922 : vec2<f32> = ((vec2<f32>(x_2919.x, x_2919.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2923 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2923.x, x_2922.x, x_2923.z, x_2922.y);
            let x_2925 : vec2<f32> = u_xlat64;
            let x_2928 : vec2<f32> = ((vec2<f32>(x_2925.x, x_2925.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2929 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2928.x, x_2929.y, x_2928.y, x_2929.w);
            let x_2932 : f32 = u_xlat13.x;
            u_xlat14.y = x_2932;
            let x_2935 : f32 = u_xlat15.y;
            u_xlat14.w = x_2935;
            let x_2937 : vec4<f32> = u_xlat14;
            let x_2938 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2937 + x_2938);
            let x_2940 : vec2<f32> = u_xlat64;
            let x_2943 : vec2<f32> = ((vec2<f32>(x_2940.y, x_2940.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2944 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2944.x, x_2943.x, x_2944.z, x_2943.y);
            let x_2946 : vec2<f32> = u_xlat64;
            let x_2949 : vec2<f32> = ((vec2<f32>(x_2946.y, x_2946.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2950 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2949.x, x_2950.y, x_2949.y, x_2950.w);
            let x_2953 : f32 = u_xlat13.y;
            u_xlat15.y = x_2953;
            let x_2955 : vec4<f32> = u_xlat15;
            let x_2956 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2955 + x_2956);
            let x_2958 : vec4<f32> = u_xlat14;
            let x_2959 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2958 / x_2959);
            let x_2961 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2961 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2963 : vec4<f32> = u_xlat15;
            let x_2964 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2963 / x_2964);
            let x_2966 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2966 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2968 : vec4<f32> = u_xlat14;
            let x_2971 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2968.w, x_2968.x, x_2968.y, x_2968.z) * vec4<f32>(x_2971.x, x_2971.x, x_2971.x, x_2971.x));
            let x_2974 : vec4<f32> = u_xlat15;
            let x_2977 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2974.x, x_2974.w, x_2974.y, x_2974.z) * vec4<f32>(x_2977.y, x_2977.y, x_2977.y, x_2977.y));
            let x_2980 : vec4<f32> = u_xlat14;
            let x_2981 : vec3<f32> = vec3<f32>(x_2980.y, x_2980.z, x_2980.w);
            let x_2982 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2981.x, x_2982.y, x_2981.y, x_2981.z);
            let x_2985 : f32 = u_xlat15.x;
            u_xlat17.y = x_2985;
            let x_2987 : vec4<f32> = u_xlat12;
            let x_2990 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_2993 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2987.x, x_2987.y, x_2987.x, x_2987.y) * vec4<f32>(x_2990.x, x_2990.y, x_2990.x, x_2990.y)) + vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2993.y));
            let x_2996 : vec4<f32> = u_xlat12;
            let x_2999 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3002 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2996.x, x_2996.y) * vec2<f32>(x_2999.x, x_2999.y)) + vec2<f32>(x_3002.w, x_3002.y));
            let x_3006 : f32 = u_xlat17.y;
            u_xlat14.y = x_3006;
            let x_3009 : f32 = u_xlat15.z;
            u_xlat17.y = x_3009;
            let x_3011 : vec4<f32> = u_xlat12;
            let x_3014 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3017 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3011.x, x_3011.y, x_3011.x, x_3011.y) * vec4<f32>(x_3014.x, x_3014.y, x_3014.x, x_3014.y)) + vec4<f32>(x_3017.x, x_3017.y, x_3017.z, x_3017.y));
            let x_3020 : vec4<f32> = u_xlat12;
            let x_3023 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3026 : vec4<f32> = u_xlat17;
            let x_3028 : vec2<f32> = ((vec2<f32>(x_3020.x, x_3020.y) * vec2<f32>(x_3023.x, x_3023.y)) + vec2<f32>(x_3026.w, x_3026.y));
            let x_3029 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3028.x, x_3028.y, x_3029.z, x_3029.w);
            let x_3032 : f32 = u_xlat17.y;
            u_xlat14.z = x_3032;
            let x_3035 : vec4<f32> = u_xlat12;
            let x_3038 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3041 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3035.x, x_3035.y, x_3035.x, x_3035.y) * vec4<f32>(x_3038.x, x_3038.y, x_3038.x, x_3038.y)) + vec4<f32>(x_3041.x, x_3041.y, x_3041.x, x_3041.z));
            let x_3045 : f32 = u_xlat15.w;
            u_xlat17.y = x_3045;
            let x_3048 : vec4<f32> = u_xlat12;
            let x_3051 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3054 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3048.x, x_3048.y, x_3048.x, x_3048.y) * vec4<f32>(x_3051.x, x_3051.y, x_3051.x, x_3051.y)) + vec4<f32>(x_3054.x, x_3054.y, x_3054.z, x_3054.y));
            let x_3058 : vec4<f32> = u_xlat12;
            let x_3061 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3064 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3058.x, x_3058.y) * vec2<f32>(x_3061.x, x_3061.y)) + vec2<f32>(x_3064.w, x_3064.y));
            let x_3068 : f32 = u_xlat17.y;
            u_xlat14.w = x_3068;
            let x_3071 : vec4<f32> = u_xlat12;
            let x_3074 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3077 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3071.x, x_3071.y) * vec2<f32>(x_3074.x, x_3074.y)) + vec2<f32>(x_3077.x, x_3077.w));
            let x_3080 : vec4<f32> = u_xlat17;
            let x_3081 : vec3<f32> = vec3<f32>(x_3080.x, x_3080.z, x_3080.w);
            let x_3082 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3081.x, x_3082.y, x_3081.y, x_3081.z);
            let x_3084 : vec4<f32> = u_xlat12;
            let x_3087 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3084.x, x_3084.y, x_3084.x, x_3084.y) * vec4<f32>(x_3087.x, x_3087.y, x_3087.x, x_3087.y)) + vec4<f32>(x_3090.x, x_3090.y, x_3090.z, x_3090.y));
            let x_3094 : vec4<f32> = u_xlat12;
            let x_3097 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3094.x, x_3094.y) * vec2<f32>(x_3097.x, x_3097.y)) + vec2<f32>(x_3100.w, x_3100.y));
            let x_3104 : f32 = u_xlat14.x;
            u_xlat15.x = x_3104;
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3109 : vec4<f32> = x_267.x_AdditionalShadowmapSize;
            let x_3112 : vec4<f32> = u_xlat15;
            let x_3114 : vec2<f32> = ((vec2<f32>(x_3106.x, x_3106.y) * vec2<f32>(x_3109.x, x_3109.y)) + vec2<f32>(x_3112.x, x_3112.y));
            let x_3115 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3114.x, x_3114.y, x_3115.z, x_3115.w);
            let x_3118 : vec4<f32> = u_xlat13;
            let x_3120 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3118.x, x_3118.x, x_3118.x, x_3118.x) * x_3120);
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3125 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3123.y, x_3123.y, x_3123.y, x_3123.y) * x_3125);
            let x_3128 : vec4<f32> = u_xlat13;
            let x_3130 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3128.z, x_3128.z, x_3128.z, x_3128.z) * x_3130);
            let x_3132 : vec4<f32> = u_xlat13;
            let x_3134 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3132.w, x_3132.w, x_3132.w, x_3132.w) * x_3134);
            let x_3137 : vec4<f32> = u_xlat18;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.x, x_3137.y);
            let x_3140 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
            let x_3147 : vec3<f32> = txVec43;
            let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
            u_xlat88 = x_3149;
            let x_3151 : vec4<f32> = u_xlat18;
            let x_3152 : vec2<f32> = vec2<f32>(x_3151.z, x_3151.w);
            let x_3154 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
            let x_3161 : vec3<f32> = txVec44;
            let x_3163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3161.xy, x_3161.z);
            u_xlat89 = x_3163;
            let x_3164 : f32 = u_xlat89;
            let x_3166 : f32 = u_xlat23.y;
            u_xlat89 = (x_3164 * x_3166);
            let x_3169 : f32 = u_xlat23.x;
            let x_3170 : f32 = u_xlat88;
            let x_3172 : f32 = u_xlat89;
            u_xlat88 = ((x_3169 * x_3170) + x_3172);
            let x_3175 : vec2<f32> = u_xlat64;
            let x_3177 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec45;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat89 = x_3186;
            let x_3188 : f32 = u_xlat23.z;
            let x_3189 : f32 = u_xlat89;
            let x_3191 : f32 = u_xlat88;
            u_xlat88 = ((x_3188 * x_3189) + x_3191);
            let x_3194 : vec4<f32> = u_xlat21;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.x, x_3194.y);
            let x_3197 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec46;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat89 = x_3206;
            let x_3208 : f32 = u_xlat23.w;
            let x_3209 : f32 = u_xlat89;
            let x_3211 : f32 = u_xlat88;
            u_xlat88 = ((x_3208 * x_3209) + x_3211);
            let x_3214 : vec4<f32> = u_xlat19;
            let x_3215 : vec2<f32> = vec2<f32>(x_3214.x, x_3214.y);
            let x_3217 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3215.x, x_3215.y, x_3217);
            let x_3224 : vec3<f32> = txVec47;
            let x_3226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3224.xy, x_3224.z);
            u_xlat89 = x_3226;
            let x_3228 : f32 = u_xlat24.x;
            let x_3229 : f32 = u_xlat89;
            let x_3231 : f32 = u_xlat88;
            u_xlat88 = ((x_3228 * x_3229) + x_3231);
            let x_3234 : vec4<f32> = u_xlat19;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.z, x_3234.w);
            let x_3237 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3244 : vec3<f32> = txVec48;
            let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
            u_xlat89 = x_3246;
            let x_3248 : f32 = u_xlat24.y;
            let x_3249 : f32 = u_xlat89;
            let x_3251 : f32 = u_xlat88;
            u_xlat88 = ((x_3248 * x_3249) + x_3251);
            let x_3254 : vec4<f32> = u_xlat20;
            let x_3255 : vec2<f32> = vec2<f32>(x_3254.x, x_3254.y);
            let x_3257 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
            let x_3264 : vec3<f32> = txVec49;
            let x_3266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
            u_xlat89 = x_3266;
            let x_3268 : f32 = u_xlat24.z;
            let x_3269 : f32 = u_xlat89;
            let x_3271 : f32 = u_xlat88;
            u_xlat88 = ((x_3268 * x_3269) + x_3271);
            let x_3274 : vec4<f32> = u_xlat21;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.z, x_3274.w);
            let x_3277 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
            let x_3284 : vec3<f32> = txVec50;
            let x_3286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
            u_xlat89 = x_3286;
            let x_3288 : f32 = u_xlat24.w;
            let x_3289 : f32 = u_xlat89;
            let x_3291 : f32 = u_xlat88;
            u_xlat88 = ((x_3288 * x_3289) + x_3291);
            let x_3294 : vec4<f32> = u_xlat22;
            let x_3295 : vec2<f32> = vec2<f32>(x_3294.x, x_3294.y);
            let x_3297 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec51;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat89 = x_3306;
            let x_3308 : f32 = u_xlat25.x;
            let x_3309 : f32 = u_xlat89;
            let x_3311 : f32 = u_xlat88;
            u_xlat88 = ((x_3308 * x_3309) + x_3311);
            let x_3314 : vec4<f32> = u_xlat22;
            let x_3315 : vec2<f32> = vec2<f32>(x_3314.z, x_3314.w);
            let x_3317 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec52;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat89 = x_3326;
            let x_3328 : f32 = u_xlat25.y;
            let x_3329 : f32 = u_xlat89;
            let x_3331 : f32 = u_xlat88;
            u_xlat88 = ((x_3328 * x_3329) + x_3331);
            let x_3334 : vec2<f32> = u_xlat40;
            let x_3336 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec53;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat89 = x_3345;
            let x_3347 : f32 = u_xlat25.z;
            let x_3348 : f32 = u_xlat89;
            let x_3350 : f32 = u_xlat88;
            u_xlat88 = ((x_3347 * x_3348) + x_3350);
            let x_3353 : vec2<f32> = u_xlat72;
            let x_3355 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec54;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat89 = x_3364;
            let x_3366 : f32 = u_xlat25.w;
            let x_3367 : f32 = u_xlat89;
            let x_3369 : f32 = u_xlat88;
            u_xlat88 = ((x_3366 * x_3367) + x_3369);
            let x_3372 : vec4<f32> = u_xlat17;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.x, x_3372.y);
            let x_3375 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec55;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat89 = x_3384;
            let x_3386 : f32 = u_xlat13.x;
            let x_3387 : f32 = u_xlat89;
            let x_3389 : f32 = u_xlat88;
            u_xlat88 = ((x_3386 * x_3387) + x_3389);
            let x_3392 : vec4<f32> = u_xlat17;
            let x_3393 : vec2<f32> = vec2<f32>(x_3392.z, x_3392.w);
            let x_3395 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec56;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat89 = x_3404;
            let x_3406 : f32 = u_xlat13.y;
            let x_3407 : f32 = u_xlat89;
            let x_3409 : f32 = u_xlat88;
            u_xlat88 = ((x_3406 * x_3407) + x_3409);
            let x_3412 : vec2<f32> = u_xlat67;
            let x_3414 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3412.x, x_3412.y, x_3414);
            let x_3421 : vec3<f32> = txVec57;
            let x_3423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3421.xy, x_3421.z);
            u_xlat89 = x_3423;
            let x_3425 : f32 = u_xlat13.z;
            let x_3426 : f32 = u_xlat89;
            let x_3428 : f32 = u_xlat88;
            u_xlat88 = ((x_3425 * x_3426) + x_3428);
            let x_3431 : vec4<f32> = u_xlat12;
            let x_3432 : vec2<f32> = vec2<f32>(x_3431.x, x_3431.y);
            let x_3434 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3432.x, x_3432.y, x_3434);
            let x_3441 : vec3<f32> = txVec58;
            let x_3443 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3441.xy, x_3441.z);
            u_xlat89 = x_3443;
            let x_3445 : f32 = u_xlat13.w;
            let x_3446 : f32 = u_xlat89;
            let x_3448 : f32 = u_xlat88;
            u_xlat87 = ((x_3445 * x_3446) + x_3448);
          }
        }
      } else {
        let x_3452 : vec4<f32> = u_xlat11;
        let x_3453 : vec2<f32> = vec2<f32>(x_3452.x, x_3452.y);
        let x_3455 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3453.x, x_3453.y, x_3455);
        let x_3462 : vec3<f32> = txVec59;
        let x_3464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3462.xy, x_3462.z);
        u_xlat87 = x_3464;
      }
      let x_3465 : i32 = u_xlati83;
      let x_3467 : f32 = x_267.x_AdditionalShadowParams[x_3465].x;
      u_xlat88 = (1.0f + -(x_3467));
      let x_3470 : f32 = u_xlat87;
      let x_3471 : i32 = u_xlati83;
      let x_3473 : f32 = x_267.x_AdditionalShadowParams[x_3471].x;
      let x_3475 : f32 = u_xlat88;
      u_xlat87 = ((x_3470 * x_3473) + x_3475);
      let x_3478 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3478);
      let x_3481 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3481 >= 1.0f);
      let x_3484 : bool = u_xlatb88;
      let x_3486 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3484 | x_3486);
      let x_3488 : bool = u_xlatb88;
      let x_3489 : f32 = u_xlat87;
      u_xlat87 = select(x_3489, 1.0f, x_3488);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3492 : f32 = u_xlat87;
    u_xlat88 = (-(x_3492) + 1.0f);
    let x_3495 : f32 = u_xlat1;
    let x_3496 : f32 = u_xlat88;
    let x_3498 : f32 = u_xlat87;
    u_xlat87 = ((x_3495 * x_3496) + x_3498);
    let x_3501 : i32 = u_xlati83;
    u_xlati88 = (1i << bitcast<u32>((x_3501 & 31i)));
    let x_3505 : i32 = u_xlati88;
    let x_3508 : f32 = x_1591.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3505) & bitcast<u32>(x_3508)));
    let x_3512 : i32 = u_xlati88;
    if ((x_3512 != 0i)) {
      let x_3516 : i32 = u_xlati83;
      let x_3518 : f32 = x_1591.x_AdditionalLightsLightTypes[x_3516].el;
      u_xlati88 = i32(x_3518);
      let x_3521 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3521 != 0i));
      let x_3525 : i32 = u_xlati83;
      u_xlati37 = (x_3525 << bitcast<u32>(2i));
      let x_3527 : i32 = u_xlati11;
      if ((x_3527 != 0i)) {
        let x_3531 : vec3<f32> = vs_TEXCOORD7;
        let x_3533 : i32 = u_xlati37;
        let x_3536 : i32 = u_xlati37;
        let x_3540 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3533 + 1i) / 4i)][((x_3536 + 1i) % 4i)];
        let x_3542 : vec3<f32> = (vec3<f32>(x_3531.y, x_3531.y, x_3531.y) * vec3<f32>(x_3540.x, x_3540.y, x_3540.w));
        let x_3543 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3542.x, x_3543.y, x_3542.y, x_3542.z);
        let x_3545 : i32 = u_xlati37;
        let x_3547 : i32 = u_xlati37;
        let x_3550 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[(x_3545 / 4i)][(x_3547 % 4i)];
        let x_3552 : vec3<f32> = vs_TEXCOORD7;
        let x_3555 : vec4<f32> = u_xlat11;
        let x_3557 : vec3<f32> = ((vec3<f32>(x_3550.x, x_3550.y, x_3550.w) * vec3<f32>(x_3552.x, x_3552.x, x_3552.x)) + vec3<f32>(x_3555.x, x_3555.z, x_3555.w));
        let x_3558 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3557.x, x_3558.y, x_3557.y, x_3557.z);
        let x_3560 : i32 = u_xlati37;
        let x_3563 : i32 = u_xlati37;
        let x_3567 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3560 + 2i) / 4i)][((x_3563 + 2i) % 4i)];
        let x_3569 : vec3<f32> = vs_TEXCOORD7;
        let x_3572 : vec4<f32> = u_xlat11;
        let x_3574 : vec3<f32> = ((vec3<f32>(x_3567.x, x_3567.y, x_3567.w) * vec3<f32>(x_3569.z, x_3569.z, x_3569.z)) + vec3<f32>(x_3572.x, x_3572.z, x_3572.w));
        let x_3575 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3574.x, x_3575.y, x_3574.y, x_3574.z);
        let x_3577 : vec4<f32> = u_xlat11;
        let x_3579 : i32 = u_xlati37;
        let x_3582 : i32 = u_xlati37;
        let x_3586 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3579 + 3i) / 4i)][((x_3582 + 3i) % 4i)];
        let x_3588 : vec3<f32> = (vec3<f32>(x_3577.x, x_3577.z, x_3577.w) + vec3<f32>(x_3586.x, x_3586.y, x_3586.w));
        let x_3589 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3588.x, x_3589.y, x_3588.y, x_3588.z);
        let x_3591 : vec4<f32> = u_xlat11;
        let x_3593 : vec4<f32> = u_xlat11;
        let x_3595 : vec2<f32> = (vec2<f32>(x_3591.x, x_3591.z) / vec2<f32>(x_3593.w, x_3593.w));
        let x_3596 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3595.x, x_3596.y, x_3595.y, x_3596.w);
        let x_3598 : vec4<f32> = u_xlat11;
        let x_3601 : vec2<f32> = ((vec2<f32>(x_3598.x, x_3598.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3602 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3601.x, x_3602.y, x_3601.y, x_3602.w);
        let x_3604 : vec4<f32> = u_xlat11;
        let x_3608 : vec2<f32> = clamp(vec2<f32>(x_3604.x, x_3604.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3609 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3608.x, x_3609.y, x_3608.y, x_3609.w);
        let x_3611 : i32 = u_xlati83;
        let x_3613 : vec4<f32> = x_1591.x_AdditionalLightsCookieAtlasUVRects[x_3611];
        let x_3615 : vec4<f32> = u_xlat11;
        let x_3618 : i32 = u_xlati83;
        let x_3620 : vec4<f32> = x_1591.x_AdditionalLightsCookieAtlasUVRects[x_3618];
        let x_3622 : vec2<f32> = ((vec2<f32>(x_3613.x, x_3613.y) * vec2<f32>(x_3615.x, x_3615.z)) + vec2<f32>(x_3620.z, x_3620.w));
        let x_3623 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3622.x, x_3623.y, x_3622.y, x_3623.w);
      } else {
        let x_3626 : i32 = u_xlati88;
        u_xlatb88 = (x_3626 == 1i);
        let x_3628 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3628);
        let x_3630 : i32 = u_xlati88;
        if ((x_3630 != 0i)) {
          let x_3634 : vec3<f32> = vs_TEXCOORD7;
          let x_3636 : i32 = u_xlati37;
          let x_3639 : i32 = u_xlati37;
          let x_3643 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3636 + 1i) / 4i)][((x_3639 + 1i) % 4i)];
          let x_3645 : vec2<f32> = (vec2<f32>(x_3634.y, x_3634.y) * vec2<f32>(x_3643.x, x_3643.y));
          let x_3646 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3645.x, x_3645.y, x_3646.z, x_3646.w);
          let x_3648 : i32 = u_xlati37;
          let x_3650 : i32 = u_xlati37;
          let x_3653 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[(x_3648 / 4i)][(x_3650 % 4i)];
          let x_3655 : vec3<f32> = vs_TEXCOORD7;
          let x_3658 : vec4<f32> = u_xlat12;
          let x_3660 : vec2<f32> = ((vec2<f32>(x_3653.x, x_3653.y) * vec2<f32>(x_3655.x, x_3655.x)) + vec2<f32>(x_3658.x, x_3658.y));
          let x_3661 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3660.x, x_3660.y, x_3661.z, x_3661.w);
          let x_3663 : i32 = u_xlati37;
          let x_3666 : i32 = u_xlati37;
          let x_3670 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3663 + 2i) / 4i)][((x_3666 + 2i) % 4i)];
          let x_3672 : vec3<f32> = vs_TEXCOORD7;
          let x_3675 : vec4<f32> = u_xlat12;
          let x_3677 : vec2<f32> = ((vec2<f32>(x_3670.x, x_3670.y) * vec2<f32>(x_3672.z, x_3672.z)) + vec2<f32>(x_3675.x, x_3675.y));
          let x_3678 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3677.x, x_3677.y, x_3678.z, x_3678.w);
          let x_3680 : vec4<f32> = u_xlat12;
          let x_3682 : i32 = u_xlati37;
          let x_3685 : i32 = u_xlati37;
          let x_3689 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3682 + 3i) / 4i)][((x_3685 + 3i) % 4i)];
          let x_3691 : vec2<f32> = (vec2<f32>(x_3680.x, x_3680.y) + vec2<f32>(x_3689.x, x_3689.y));
          let x_3692 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3691.x, x_3691.y, x_3692.z, x_3692.w);
          let x_3694 : vec4<f32> = u_xlat12;
          let x_3697 : vec2<f32> = ((vec2<f32>(x_3694.x, x_3694.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3698 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3697.x, x_3697.y, x_3698.z, x_3698.w);
          let x_3700 : vec4<f32> = u_xlat12;
          let x_3702 : vec2<f32> = fract(vec2<f32>(x_3700.x, x_3700.y));
          let x_3703 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3702.x, x_3702.y, x_3703.z, x_3703.w);
          let x_3705 : i32 = u_xlati83;
          let x_3707 : vec4<f32> = x_1591.x_AdditionalLightsCookieAtlasUVRects[x_3705];
          let x_3709 : vec4<f32> = u_xlat12;
          let x_3712 : i32 = u_xlati83;
          let x_3714 : vec4<f32> = x_1591.x_AdditionalLightsCookieAtlasUVRects[x_3712];
          let x_3716 : vec2<f32> = ((vec2<f32>(x_3707.x, x_3707.y) * vec2<f32>(x_3709.x, x_3709.y)) + vec2<f32>(x_3714.z, x_3714.w));
          let x_3717 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3716.x, x_3717.y, x_3716.y, x_3717.w);
        } else {
          let x_3720 : vec3<f32> = vs_TEXCOORD7;
          let x_3722 : i32 = u_xlati37;
          let x_3725 : i32 = u_xlati37;
          let x_3729 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3722 + 1i) / 4i)][((x_3725 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3720.y, x_3720.y, x_3720.y, x_3720.y) * x_3729);
          let x_3731 : i32 = u_xlati37;
          let x_3733 : i32 = u_xlati37;
          let x_3736 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[(x_3731 / 4i)][(x_3733 % 4i)];
          let x_3737 : vec3<f32> = vs_TEXCOORD7;
          let x_3740 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3736 * vec4<f32>(x_3737.x, x_3737.x, x_3737.x, x_3737.x)) + x_3740);
          let x_3742 : i32 = u_xlati37;
          let x_3745 : i32 = u_xlati37;
          let x_3749 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3742 + 2i) / 4i)][((x_3745 + 2i) % 4i)];
          let x_3750 : vec3<f32> = vs_TEXCOORD7;
          let x_3753 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3749 * vec4<f32>(x_3750.z, x_3750.z, x_3750.z, x_3750.z)) + x_3753);
          let x_3755 : vec4<f32> = u_xlat12;
          let x_3756 : i32 = u_xlati37;
          let x_3759 : i32 = u_xlati37;
          let x_3763 : vec4<f32> = x_1591.x_AdditionalLightsWorldToLights[((x_3756 + 3i) / 4i)][((x_3759 + 3i) % 4i)];
          u_xlat12 = (x_3755 + x_3763);
          let x_3765 : vec4<f32> = u_xlat12;
          let x_3767 : vec4<f32> = u_xlat12;
          let x_3769 : vec3<f32> = (vec3<f32>(x_3765.x, x_3765.y, x_3765.z) / vec3<f32>(x_3767.w, x_3767.w, x_3767.w));
          let x_3770 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3769.x, x_3769.y, x_3769.z, x_3770.w);
          let x_3772 : vec4<f32> = u_xlat12;
          let x_3774 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3772.x, x_3772.y, x_3772.z), vec3<f32>(x_3774.x, x_3774.y, x_3774.z));
          let x_3777 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3777);
          let x_3779 : f32 = u_xlat88;
          let x_3781 : vec4<f32> = u_xlat12;
          let x_3783 : vec3<f32> = (vec3<f32>(x_3779, x_3779, x_3779) * vec3<f32>(x_3781.x, x_3781.y, x_3781.z));
          let x_3784 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3783.x, x_3783.y, x_3783.z, x_3784.w);
          let x_3786 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3786.x, x_3786.y, x_3786.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3791 : f32 = u_xlat88;
          u_xlat88 = max(x_3791, 0.00000099999999747524f);
          let x_3794 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3794);
          let x_3796 : f32 = u_xlat88;
          let x_3798 : vec4<f32> = u_xlat12;
          let x_3800 : vec3<f32> = (vec3<f32>(x_3796, x_3796, x_3796) * vec3<f32>(x_3798.z, x_3798.x, x_3798.y));
          let x_3801 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3800.x, x_3800.y, x_3800.z, x_3801.w);
          let x_3804 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3804);
          let x_3808 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3808, 0.0f, 1.0f);
          let x_3812 : vec4<f32> = u_xlat13;
          let x_3814 : vec4<bool> = (vec4<f32>(x_3812.y, x_3812.y, x_3812.z, x_3812.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3815 : vec2<bool> = vec2<bool>(x_3814.x, x_3814.z);
          let x_3816 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3815.x, x_3816.y, x_3815.y);
          let x_3819 : bool = u_xlatb37.x;
          if (x_3819) {
            let x_3824 : f32 = u_xlat13.x;
            x_3820 = x_3824;
          } else {
            let x_3827 : f32 = u_xlat13.x;
            x_3820 = -(x_3827);
          }
          let x_3829 : f32 = x_3820;
          u_xlat37.x = x_3829;
          let x_3832 : bool = u_xlatb37.z;
          if (x_3832) {
            let x_3837 : f32 = u_xlat13.x;
            x_3833 = x_3837;
          } else {
            let x_3840 : f32 = u_xlat13.x;
            x_3833 = -(x_3840);
          }
          let x_3842 : f32 = x_3833;
          u_xlat37.z = x_3842;
          let x_3844 : vec4<f32> = u_xlat12;
          let x_3846 : f32 = u_xlat88;
          let x_3849 : vec3<f32> = u_xlat37;
          let x_3851 : vec2<f32> = ((vec2<f32>(x_3844.x, x_3844.y) * vec2<f32>(x_3846, x_3846)) + vec2<f32>(x_3849.x, x_3849.z));
          let x_3852 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3851.x, x_3852.y, x_3851.y);
          let x_3854 : vec3<f32> = u_xlat37;
          let x_3857 : vec2<f32> = ((vec2<f32>(x_3854.x, x_3854.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3858 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3857.x, x_3858.y, x_3857.y);
          let x_3860 : vec3<f32> = u_xlat37;
          let x_3864 : vec2<f32> = clamp(vec2<f32>(x_3860.x, x_3860.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3865 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3864.x, x_3865.y, x_3864.y);
          let x_3867 : i32 = u_xlati83;
          let x_3869 : vec4<f32> = x_1591.x_AdditionalLightsCookieAtlasUVRects[x_3867];
          let x_3871 : vec3<f32> = u_xlat37;
          let x_3874 : i32 = u_xlati83;
          let x_3876 : vec4<f32> = x_1591.x_AdditionalLightsCookieAtlasUVRects[x_3874];
          let x_3878 : vec2<f32> = ((vec2<f32>(x_3869.x, x_3869.y) * vec2<f32>(x_3871.x, x_3871.z)) + vec2<f32>(x_3876.z, x_3876.w));
          let x_3879 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3878.x, x_3879.y, x_3878.y, x_3879.w);
        }
      }
      let x_3886 : vec4<f32> = u_xlat11;
      let x_3888 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3886.x, x_3886.z), 0.0f);
      u_xlat11 = x_3888;
      let x_3890 : bool = u_xlatb4.z;
      if (x_3890) {
        let x_3895 : f32 = u_xlat11.w;
        x_3891 = x_3895;
      } else {
        let x_3898 : f32 = u_xlat11.x;
        x_3891 = x_3898;
      }
      let x_3899 : f32 = x_3891;
      u_xlat88 = x_3899;
      let x_3901 : bool = u_xlatb4.x;
      if (x_3901) {
        let x_3905 : vec4<f32> = u_xlat11;
        x_3902 = vec3<f32>(x_3905.x, x_3905.y, x_3905.z);
      } else {
        let x_3908 : f32 = u_xlat88;
        x_3902 = vec3<f32>(x_3908, x_3908, x_3908);
      }
      let x_3910 : vec3<f32> = x_3902;
      let x_3911 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3910.x, x_3910.y, x_3910.z, x_3911.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3917 : vec4<f32> = u_xlat11;
    let x_3919 : i32 = u_xlati83;
    let x_3921 : vec4<f32> = x_2052.x_AdditionalLightsColor[x_3919];
    let x_3923 : vec3<f32> = (vec3<f32>(x_3917.x, x_3917.y, x_3917.z) * vec3<f32>(x_3921.x, x_3921.y, x_3921.z));
    let x_3924 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3923.x, x_3923.y, x_3923.z, x_3924.w);
    let x_3926 : f32 = u_xlat84;
    let x_3927 : f32 = u_xlat87;
    u_xlat83 = (x_3926 * x_3927);
    let x_3929 : vec3<f32> = u_xlat27;
    let x_3930 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_3929, vec3<f32>(x_3930.x, x_3930.y, x_3930.z));
    let x_3933 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3933, 0.0f, 1.0f);
    let x_3935 : f32 = u_xlat83;
    let x_3936 : f32 = u_xlat84;
    u_xlat83 = (x_3935 * x_3936);
    let x_3938 : f32 = u_xlat83;
    let x_3940 : vec4<f32> = u_xlat11;
    let x_3942 : vec3<f32> = (vec3<f32>(x_3938, x_3938, x_3938) * vec3<f32>(x_3940.x, x_3940.y, x_3940.z));
    let x_3943 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3942.x, x_3942.y, x_3942.z, x_3943.w);
    let x_3945 : vec4<f32> = u_xlat9;
    let x_3947 : f32 = u_xlat85;
    let x_3950 : vec4<f32> = u_xlat6;
    let x_3952 : vec3<f32> = ((vec3<f32>(x_3945.x, x_3945.y, x_3945.z) * vec3<f32>(x_3947, x_3947, x_3947)) + vec3<f32>(x_3950.x, x_3950.y, x_3950.z));
    let x_3953 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3952.x, x_3952.y, x_3952.z, x_3953.w);
    let x_3955 : vec4<f32> = u_xlat9;
    let x_3957 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3955.x, x_3955.y, x_3955.z), vec3<f32>(x_3957.x, x_3957.y, x_3957.z));
    let x_3960 : f32 = u_xlat83;
    u_xlat83 = max(x_3960, 1.17549435e-38f);
    let x_3962 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_3962);
    let x_3964 : f32 = u_xlat83;
    let x_3966 : vec4<f32> = u_xlat9;
    let x_3968 : vec3<f32> = (vec3<f32>(x_3964, x_3964, x_3964) * vec3<f32>(x_3966.x, x_3966.y, x_3966.z));
    let x_3969 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3968.x, x_3968.y, x_3968.z, x_3969.w);
    let x_3971 : vec3<f32> = u_xlat27;
    let x_3972 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_3971, vec3<f32>(x_3972.x, x_3972.y, x_3972.z));
    let x_3975 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3975, 0.0f, 1.0f);
    let x_3977 : vec4<f32> = u_xlat10;
    let x_3979 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3977.x, x_3977.y, x_3977.z), vec3<f32>(x_3979.x, x_3979.y, x_3979.z));
    let x_3982 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3982, 0.0f, 1.0f);
    let x_3984 : f32 = u_xlat83;
    let x_3985 : f32 = u_xlat83;
    u_xlat83 = (x_3984 * x_3985);
    let x_3987 : f32 = u_xlat83;
    let x_3989 : f32 = u_xlat8.x;
    u_xlat83 = ((x_3987 * x_3989) + 1.00001001358032226562f);
    let x_3992 : f32 = u_xlat84;
    let x_3993 : f32 = u_xlat84;
    u_xlat84 = (x_3992 * x_3993);
    let x_3995 : f32 = u_xlat83;
    let x_3996 : f32 = u_xlat83;
    u_xlat83 = (x_3995 * x_3996);
    let x_3998 : f32 = u_xlat84;
    u_xlat84 = max(x_3998, 0.10000000149011611938f);
    let x_4000 : f32 = u_xlat83;
    let x_4001 : f32 = u_xlat84;
    u_xlat83 = (x_4000 * x_4001);
    let x_4003 : f32 = u_xlat29;
    let x_4004 : f32 = u_xlat83;
    u_xlat83 = (x_4003 * x_4004);
    let x_4006 : f32 = u_xlat30;
    let x_4007 : f32 = u_xlat83;
    u_xlat83 = (x_4006 / x_4007);
    let x_4009 : vec4<f32> = u_xlat0;
    let x_4011 : f32 = u_xlat83;
    let x_4014 : vec4<f32> = u_xlat3;
    let x_4016 : vec3<f32> = ((vec3<f32>(x_4009.x, x_4009.y, x_4009.z) * vec3<f32>(x_4011, x_4011, x_4011)) + vec3<f32>(x_4014.x, x_4014.z, x_4014.w));
    let x_4017 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4016.x, x_4016.y, x_4016.z, x_4017.w);
    let x_4019 : vec4<f32> = u_xlat9;
    let x_4021 : vec4<f32> = u_xlat11;
    let x_4024 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4019.x, x_4019.y, x_4019.z) * vec3<f32>(x_4021.x, x_4021.y, x_4021.z)) + x_4024);

    continuing {
      let x_4026 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4026 + bitcast<u32>(1i));
    }
  }
  let x_4028 : vec4<f32> = u_xlat7;
  let x_4030 : vec4<f32> = u_xlat5;
  let x_4033 : vec3<f32> = u_xlat28;
  let x_4034 : vec3<f32> = ((vec3<f32>(x_4028.x, x_4028.y, x_4028.z) * vec3<f32>(x_4030.x, x_4030.y, x_4030.z)) + x_4033);
  let x_4035 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4034.x, x_4034.y, x_4034.z, x_4035.w);
  let x_4037 : vec3<f32> = u_xlat34;
  let x_4038 : vec4<f32> = u_xlat0;
  let x_4040 : vec3<f32> = (x_4037 + vec3<f32>(x_4038.x, x_4038.y, x_4038.z));
  let x_4041 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4040.x, x_4040.y, x_4040.z, x_4041.w);
  let x_4043 : f32 = u_xlat2;
  let x_4044 : f32 = u_xlat2;
  u_xlat78 = (x_4043 * -(x_4044));
  let x_4047 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4047);
  let x_4049 : vec4<f32> = u_xlat0;
  let x_4052 : vec4<f32> = x_29.unity_FogColor;
  let x_4055 : vec3<f32> = (vec3<f32>(x_4049.x, x_4049.y, x_4049.z) + -(vec3<f32>(x_4052.x, x_4052.y, x_4052.z)));
  let x_4056 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4055.x, x_4055.y, x_4055.z, x_4056.w);
  let x_4060 : f32 = u_xlat78;
  let x_4062 : vec4<f32> = u_xlat0;
  let x_4066 : vec4<f32> = x_29.unity_FogColor;
  let x_4068 : vec3<f32> = ((vec3<f32>(x_4060, x_4060, x_4060) * vec3<f32>(x_4062.x, x_4062.y, x_4062.z)) + vec3<f32>(x_4066.x, x_4066.y, x_4066.z));
  let x_4069 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4068.x, x_4068.y, x_4068.z, x_4069.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


