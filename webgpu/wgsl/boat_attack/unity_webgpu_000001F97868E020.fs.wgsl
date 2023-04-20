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

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_152 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat80 : f32;

var<private> u_xlatu80 : u32;

var<private> u_xlati80 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_1808 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1986 : UnityPerDraw;

var<private> u_xlatu78 : u32;

var<private> u_xlatu84 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2242 : AdditionalLights;

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

var<private> u_xlatu29 : u32;

var<private> u_xlatb84 : bool;

fn main_1() {
  var x_123 : vec3<f32>;
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
  var x_1759 : f32;
  var x_1891 : f32;
  var x_1902 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2399 : f32;
  var x_2410 : f32;
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
  var x_4029 : f32;
  var x_4042 : f32;
  var x_4100 : f32;
  var x_4111 : vec3<f32>;
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
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_83 == 0.0f);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_89) + x_94);
  let x_97 : vec3<f32> = u_xlat2;
  let x_98 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(x_97, x_98);
  let x_100 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_100);
  let x_102 : f32 = u_xlat53;
  let x_104 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_102, x_102, x_102) * x_104);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_110;
  let x_113 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_113;
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_118;
  let x_121 : bool = u_xlatb27;
  if (x_121) {
    let x_126 : vec3<f32> = u_xlat2;
    x_123 = x_126;
  } else {
    let x_128 : vec4<f32> = u_xlat3;
    x_123 = vec3<f32>(x_128.x, x_128.y, x_128.z);
  }
  let x_130 : vec3<f32> = x_123;
  u_xlat27 = x_130;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  let x_133 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_132, x_133);
  let x_137 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_137);
  let x_140 : vec3<f32> = u_xlat2;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_140.x, x_140.x, x_140.x) * x_142);
  let x_144 : vec3<f32> = vs_TEXCOORD7;
  let x_155 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres0;
  let x_158 : vec3<f32> = (x_144 + -(vec3<f32>(x_155.x, x_155.y, x_155.z)));
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec3<f32> = vs_TEXCOORD7;
  let x_164 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres1;
  let x_167 : vec3<f32> = (x_162 + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec3<f32> = vs_TEXCOORD7;
  let x_174 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_171 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_179 : vec3<f32> = vs_TEXCOORD7;
  let x_181 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres3;
  let x_184 : vec3<f32> = (x_179 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : vec3<f32> = u_xlat5;
  let x_200 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_199, x_200);
  let x_203 : vec4<f32> = u_xlat6;
  let x_205 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_212 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_152.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_212 < x_215);
  let x_218 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_218);
  let x_223 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_235);
  let x_241 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_241);
  let x_245 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_245);
  let x_248 : vec4<f32> = u_xlat3;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + vec3<f32>(x_250.y, x_250.z, x_250.w));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat3;
  let x_258 : vec3<f32> = max(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_259.x, x_258.x, x_258.y, x_258.z);
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_262, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_268 : f32 = u_xlat80;
  u_xlat80 = (-(x_268) + 4.0f);
  let x_273 : f32 = u_xlat80;
  u_xlatu80 = u32(x_273);
  let x_277 : u32 = u_xlatu80;
  u_xlati80 = (bitcast<i32>(x_277) << bitcast<u32>(2i));
  let x_280 : vec3<f32> = vs_TEXCOORD7;
  let x_282 : i32 = u_xlati80;
  let x_285 : i32 = u_xlati80;
  let x_289 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_282 + 1i) / 4i)][((x_285 + 1i) % 4i)];
  let x_291 : vec3<f32> = (vec3<f32>(x_280.y, x_280.y, x_280.y) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : i32 = u_xlati80;
  let x_296 : i32 = u_xlati80;
  let x_299 : vec4<f32> = x_152.x_MainLightWorldToShadow[(x_294 / 4i)][(x_296 % 4i)];
  let x_301 : vec3<f32> = vs_TEXCOORD7;
  let x_304 : vec4<f32> = u_xlat3;
  let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.x, x_301.x)) + vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : i32 = u_xlati80;
  let x_312 : i32 = u_xlati80;
  let x_316 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_309 + 2i) / 4i)][((x_312 + 2i) % 4i)];
  let x_318 : vec3<f32> = vs_TEXCOORD7;
  let x_321 : vec4<f32> = u_xlat3;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_318.z, x_318.z, x_318.z)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat3;
  let x_328 : i32 = u_xlati80;
  let x_331 : i32 = u_xlati80;
  let x_335 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_328 + 3i) / 4i)][((x_331 + 3i) % 4i)];
  let x_337 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_342 : f32 = vs_TEXCOORD7.y;
  let x_344 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat80 = (x_342 * x_344);
  let x_347 : f32 = x_29.unity_MatrixV[0i].z;
  let x_349 : f32 = vs_TEXCOORD7.x;
  let x_351 : f32 = u_xlat80;
  u_xlat80 = ((x_347 * x_349) + x_351);
  let x_354 : f32 = x_29.unity_MatrixV[2i].z;
  let x_356 : f32 = vs_TEXCOORD7.z;
  let x_358 : f32 = u_xlat80;
  u_xlat80 = ((x_354 * x_356) + x_358);
  let x_360 : f32 = u_xlat80;
  let x_362 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat80 = (x_360 + x_362);
  let x_364 : f32 = u_xlat80;
  let x_367 : f32 = x_29.x_ProjectionParams.y;
  u_xlat80 = (-(x_364) + -(x_367));
  let x_370 : f32 = u_xlat80;
  u_xlat80 = max(x_370, 0.0f);
  let x_372 : f32 = u_xlat80;
  let x_375 : f32 = x_29.unity_FogParams.x;
  u_xlat80 = (x_372 * x_375);
  let x_382 : vec4<f32> = vs_TEXCOORD0;
  let x_385 : f32 = x_29.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_382.z, x_382.w), x_385);
  u_xlat4 = x_386;
  let x_391 : vec4<f32> = vs_TEXCOORD0;
  let x_394 : f32 = x_29.x_GlobalMipBias.x;
  let x_395 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_391.z, x_391.w), x_394);
  u_xlat5 = vec3<f32>(x_395.x, x_395.y, x_395.z);
  let x_397 : vec4<f32> = u_xlat4;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : vec3<f32> = u_xlat2;
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat81 = dot(x_405, vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : f32 = u_xlat81;
  u_xlat81 = (x_409 + 0.5f);
  let x_412 : f32 = u_xlat81;
  let x_414 : vec3<f32> = u_xlat5;
  let x_415 : vec3<f32> = (vec3<f32>(x_412, x_412, x_412) * x_414);
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat4.w;
  u_xlat81 = max(x_419, 0.00009999999747378752f);
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : f32 = u_xlat81;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) / vec3<f32>(x_424, x_424, x_424));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : f32 = u_xlat1;
  u_xlat81 = ((-(x_429) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_435 : f32 = u_xlat81;
  u_xlat82 = (-(x_435) + 1.0f);
  let x_438 : vec4<f32> = u_xlat0;
  let x_440 : f32 = u_xlat81;
  u_xlat5 = (vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_440, x_440, x_440));
  let x_443 : vec4<f32> = u_xlat0;
  let x_447 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : f32 = u_xlat1;
  let x_452 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = ((vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_452.x, x_452.y, x_452.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_461 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat1;
  let x_465 : f32 = u_xlat1;
  u_xlat81 = (x_464 * x_465);
  let x_467 : f32 = u_xlat81;
  u_xlat81 = max(x_467, 0.0078125f);
  let x_471 : f32 = u_xlat81;
  let x_472 : f32 = u_xlat81;
  u_xlat83 = (x_471 * x_472);
  let x_476 : f32 = u_xlat0.w;
  let x_477 : f32 = u_xlat82;
  u_xlat78 = (x_476 + x_477);
  let x_479 : f32 = u_xlat78;
  u_xlat78 = clamp(x_479, 0.0f, 1.0f);
  let x_481 : f32 = u_xlat81;
  u_xlat82 = ((x_481 * 4.0f) + 2.0f);
  let x_487 : f32 = x_152.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_487);
  let x_489 : bool = u_xlatb6;
  if (x_489) {
    let x_493 : f32 = x_152.x_MainLightShadowParams.y;
    u_xlatb6 = (x_493 == 1.0f);
    let x_495 : bool = u_xlatb6;
    if (x_495) {
      let x_498 : vec4<f32> = u_xlat3;
      let x_501 : vec4<f32> = x_152.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_498.x, x_498.y, x_498.x, x_498.y) + x_501);
      let x_504 : vec4<f32> = u_xlat6;
      let x_505 : vec2<f32> = vec2<f32>(x_504.x, x_504.y);
      let x_507 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_505.x, x_505.y, x_507);
      let x_520 : vec3<f32> = txVec0;
      let x_522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_520.xy, x_520.z);
      u_xlat7.x = x_522;
      let x_525 : vec4<f32> = u_xlat6;
      let x_526 : vec2<f32> = vec2<f32>(x_525.z, x_525.w);
      let x_528 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_526.x, x_526.y, x_528);
      let x_535 : vec3<f32> = txVec1;
      let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_535.xy, x_535.z);
      u_xlat7.y = x_537;
      let x_539 : vec4<f32> = u_xlat3;
      let x_542 : vec4<f32> = x_152.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y) + x_542);
      let x_545 : vec4<f32> = u_xlat6;
      let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
      let x_548 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_555 : vec3<f32> = txVec2;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat7.z = x_557;
      let x_560 : vec4<f32> = u_xlat6;
      let x_561 : vec2<f32> = vec2<f32>(x_560.z, x_560.w);
      let x_563 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_561.x, x_561.y, x_563);
      let x_570 : vec3<f32> = txVec3;
      let x_572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_570.xy, x_570.z);
      u_xlat7.w = x_572;
      let x_574 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_574, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_582 : f32 = x_152.x_MainLightShadowParams.y;
      u_xlatb32 = (x_582 == 2.0f);
      let x_584 : bool = u_xlatb32;
      if (x_584) {
        let x_589 : vec4<f32> = u_xlat3;
        let x_592 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_592.z, x_592.w)) + vec2<f32>(0.5f, 0.5f));
        let x_597 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_597);
        let x_599 : vec4<f32> = u_xlat3;
        let x_602 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_605 : vec2<f32> = u_xlat32;
        let x_607 : vec2<f32> = ((vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_602.z, x_602.w)) + -(x_605));
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_611.x, x_611.x, x_611.y, x_611.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_616 : vec4<f32> = u_xlat8;
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_616.x, x_616.x, x_616.z, x_616.z) * vec4<f32>(x_618.x, x_618.x, x_618.z, x_618.z));
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_622.y, x_622.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_627 : vec4<f32> = u_xlat9;
        let x_630 : vec4<f32> = u_xlat7;
        let x_633 : vec2<f32> = ((vec2<f32>(x_627.x, x_627.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_630.x, x_630.y)));
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_633.x, x_634.y, x_633.y, x_634.w);
        let x_636 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = (-(vec2<f32>(x_636.x, x_636.y)) + vec2<f32>(1.0f, 1.0f));
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_644 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_644.x, x_644.y), vec2<f32>(0.0f, 0.0f));
        let x_648 : vec2<f32> = u_xlat61;
        let x_650 : vec2<f32> = u_xlat61;
        let x_652 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_648) * x_650) + vec2<f32>(x_652.x, x_652.y));
        let x_655 : vec4<f32> = u_xlat7;
        let x_657 : vec2<f32> = max(vec2<f32>(x_655.x, x_655.y), vec2<f32>(0.0f, 0.0f));
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_660 : vec4<f32> = u_xlat7;
        let x_663 : vec4<f32> = u_xlat7;
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec2<f32> = ((-(vec2<f32>(x_660.x, x_660.y)) * vec2<f32>(x_663.x, x_663.y)) + vec2<f32>(x_666.y, x_666.w));
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_671 + vec2<f32>(1.0f, 1.0f));
        let x_673 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) + vec2<f32>(1.0f, 1.0f));
        let x_676 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_679 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = (vec2<f32>(x_679.x, x_679.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_690 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec2<f32> = u_xlat61;
        let x_693 : vec2<f32> = (x_692 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_697 : vec4<f32> = u_xlat7;
        let x_699 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_700 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = (vec2<f32>(x_702.y, x_702.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : f32 = u_xlat9.x;
        u_xlat10.z = x_708;
        let x_711 : f32 = u_xlat7.x;
        u_xlat10.w = x_711;
        let x_714 : f32 = u_xlat12.x;
        u_xlat11.z = x_714;
        let x_717 : f32 = u_xlat59.x;
        u_xlat11.w = x_717;
        let x_719 : vec4<f32> = u_xlat10;
        let x_721 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_719.z, x_719.w, x_719.x, x_719.z) + vec4<f32>(x_721.z, x_721.w, x_721.x, x_721.z));
        let x_725 : f32 = u_xlat10.y;
        u_xlat9.z = x_725;
        let x_728 : f32 = u_xlat7.y;
        u_xlat9.w = x_728;
        let x_731 : f32 = u_xlat11.y;
        u_xlat12.z = x_731;
        let x_734 : f32 = u_xlat59.y;
        u_xlat12.w = x_734;
        let x_736 : vec4<f32> = u_xlat9;
        let x_738 : vec4<f32> = u_xlat12;
        let x_740 : vec3<f32> = (vec3<f32>(x_736.z, x_736.y, x_736.w) + vec3<f32>(x_738.z, x_738.y, x_738.w));
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
        let x_743 : vec4<f32> = u_xlat11;
        let x_745 : vec4<f32> = u_xlat8;
        let x_747 : vec3<f32> = (vec3<f32>(x_743.x, x_743.z, x_743.w) / vec3<f32>(x_745.z, x_745.w, x_745.y));
        let x_748 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
        let x_750 : vec4<f32> = u_xlat9;
        let x_755 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_756 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
        let x_758 : vec4<f32> = u_xlat12;
        let x_760 : vec4<f32> = u_xlat7;
        let x_762 : vec3<f32> = (vec3<f32>(x_758.z, x_758.y, x_758.w) / vec3<f32>(x_760.x, x_760.y, x_760.z));
        let x_763 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat10;
        let x_767 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_768 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
        let x_770 : vec4<f32> = u_xlat9;
        let x_773 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_775 : vec3<f32> = (vec3<f32>(x_770.y, x_770.x, x_770.z) * vec3<f32>(x_773.x, x_773.x, x_773.x));
        let x_776 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat10;
        let x_781 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_783 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_781.y, x_781.y, x_781.y));
        let x_784 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_787 : f32 = u_xlat10.x;
        u_xlat9.w = x_787;
        let x_789 : vec2<f32> = u_xlat32;
        let x_792 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_795 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y) * vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y)) + vec4<f32>(x_795.y, x_795.w, x_795.x, x_795.w));
        let x_798 : vec2<f32> = u_xlat32;
        let x_800 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_803 : vec4<f32> = u_xlat9;
        let x_805 : vec2<f32> = ((x_798 * vec2<f32>(x_800.x, x_800.y)) + vec2<f32>(x_803.z, x_803.w));
        let x_806 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
        let x_809 : f32 = u_xlat9.y;
        u_xlat10.w = x_809;
        let x_811 : vec4<f32> = u_xlat10;
        let x_812 : vec2<f32> = vec2<f32>(x_811.y, x_811.z);
        let x_813 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_813.x, x_812.x, x_813.z, x_812.y);
        let x_816 : vec2<f32> = u_xlat32;
        let x_819 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y) * vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.y)) + vec4<f32>(x_822.x, x_822.y, x_822.z, x_822.y));
        let x_825 : vec2<f32> = u_xlat32;
        let x_828 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_831 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.y) * vec4<f32>(x_828.x, x_828.y, x_828.x, x_828.y)) + vec4<f32>(x_831.w, x_831.y, x_831.w, x_831.z));
        let x_834 : vec2<f32> = u_xlat32;
        let x_837 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_840 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_834.x, x_834.y, x_834.x, x_834.y) * vec4<f32>(x_837.x, x_837.y, x_837.x, x_837.y)) + vec4<f32>(x_840.x, x_840.w, x_840.z, x_840.w));
        let x_844 : vec4<f32> = u_xlat7;
        let x_846 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_844.x, x_844.x, x_844.x, x_844.y) * vec4<f32>(x_846.z, x_846.w, x_846.y, x_846.z));
        let x_850 : vec4<f32> = u_xlat7;
        let x_852 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_850.y, x_850.y, x_850.z, x_850.z) * x_852);
        let x_855 : f32 = u_xlat7.z;
        let x_857 : f32 = u_xlat8.y;
        u_xlat32.x = (x_855 * x_857);
        let x_861 : vec4<f32> = u_xlat11;
        let x_862 : vec2<f32> = vec2<f32>(x_861.x, x_861.y);
        let x_864 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_872 : vec3<f32> = txVec4;
        let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_872.xy, x_872.z);
        u_xlat58 = x_874;
        let x_876 : vec4<f32> = u_xlat11;
        let x_877 : vec2<f32> = vec2<f32>(x_876.z, x_876.w);
        let x_879 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_887 : vec3<f32> = txVec5;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_887.xy, x_887.z);
        u_xlat84 = x_889;
        let x_890 : f32 = u_xlat84;
        let x_892 : f32 = u_xlat14.y;
        u_xlat84 = (x_890 * x_892);
        let x_895 : f32 = u_xlat14.x;
        let x_896 : f32 = u_xlat58;
        let x_898 : f32 = u_xlat84;
        u_xlat58 = ((x_895 * x_896) + x_898);
        let x_901 : vec4<f32> = u_xlat12;
        let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
        let x_904 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_902.x, x_902.y, x_904);
        let x_911 : vec3<f32> = txVec6;
        let x_913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_911.xy, x_911.z);
        u_xlat84 = x_913;
        let x_915 : f32 = u_xlat14.z;
        let x_916 : f32 = u_xlat84;
        let x_918 : f32 = u_xlat58;
        u_xlat58 = ((x_915 * x_916) + x_918);
        let x_921 : vec4<f32> = u_xlat10;
        let x_922 : vec2<f32> = vec2<f32>(x_921.x, x_921.y);
        let x_924 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_922.x, x_922.y, x_924);
        let x_931 : vec3<f32> = txVec7;
        let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_931.xy, x_931.z);
        u_xlat84 = x_933;
        let x_935 : f32 = u_xlat14.w;
        let x_936 : f32 = u_xlat84;
        let x_938 : f32 = u_xlat58;
        u_xlat58 = ((x_935 * x_936) + x_938);
        let x_941 : vec4<f32> = u_xlat13;
        let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
        let x_944 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec8;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat84 = x_953;
        let x_955 : f32 = u_xlat15.x;
        let x_956 : f32 = u_xlat84;
        let x_958 : f32 = u_xlat58;
        u_xlat58 = ((x_955 * x_956) + x_958);
        let x_961 : vec4<f32> = u_xlat13;
        let x_962 : vec2<f32> = vec2<f32>(x_961.z, x_961.w);
        let x_964 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_971 : vec3<f32> = txVec9;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_971.xy, x_971.z);
        u_xlat84 = x_973;
        let x_975 : f32 = u_xlat15.y;
        let x_976 : f32 = u_xlat84;
        let x_978 : f32 = u_xlat58;
        u_xlat58 = ((x_975 * x_976) + x_978);
        let x_981 : vec4<f32> = u_xlat10;
        let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
        let x_984 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_982.x, x_982.y, x_984);
        let x_991 : vec3<f32> = txVec10;
        let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
        u_xlat84 = x_993;
        let x_995 : f32 = u_xlat15.z;
        let x_996 : f32 = u_xlat84;
        let x_998 : f32 = u_xlat58;
        u_xlat58 = ((x_995 * x_996) + x_998);
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
        let x_1004 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
        let x_1011 : vec3<f32> = txVec11;
        let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1011.xy, x_1011.z);
        u_xlat84 = x_1013;
        let x_1015 : f32 = u_xlat15.w;
        let x_1016 : f32 = u_xlat84;
        let x_1018 : f32 = u_xlat58;
        u_xlat58 = ((x_1015 * x_1016) + x_1018);
        let x_1021 : vec4<f32> = u_xlat9;
        let x_1022 : vec2<f32> = vec2<f32>(x_1021.z, x_1021.w);
        let x_1024 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
        let x_1031 : vec3<f32> = txVec12;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1031.xy, x_1031.z);
        u_xlat84 = x_1033;
        let x_1035 : f32 = u_xlat32.x;
        let x_1036 : f32 = u_xlat84;
        let x_1038 : f32 = u_xlat58;
        u_xlat6.x = ((x_1035 * x_1036) + x_1038);
      } else {
        let x_1042 : vec4<f32> = u_xlat3;
        let x_1045 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1045.z, x_1045.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1049 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_1049);
        let x_1051 : vec4<f32> = u_xlat3;
        let x_1054 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1057 : vec2<f32> = u_xlat32;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.z, x_1054.w)) + -(x_1057));
        let x_1060 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1062.x, x_1062.x, x_1062.y, x_1062.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1065 : vec4<f32> = u_xlat8;
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1065.x, x_1065.x, x_1065.z, x_1065.z) * vec4<f32>(x_1067.x, x_1067.x, x_1067.z, x_1067.z));
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1074 : vec2<f32> = (vec2<f32>(x_1070.y, x_1070.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1074.x, x_1075.z, x_1074.y);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1080 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1077.x, x_1077.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1080.x, x_1080.y)));
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1087 : vec2<f32> = (-(vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1092 : vec2<f32> = min(vec2<f32>(x_1090.x, x_1090.y), vec2<f32>(0.0f, 0.0f));
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat9;
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec2<f32> = ((-(vec2<f32>(x_1095.x, x_1095.y)) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.x, x_1101.z));
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat7;
        let x_1108 : vec2<f32> = max(vec2<f32>(x_1106.x, x_1106.y), vec2<f32>(0.0f, 0.0f));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat9;
        let x_1114 : vec4<f32> = u_xlat9;
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1119 : vec2<f32> = ((-(vec2<f32>(x_1111.x, x_1111.y)) * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1117.y, x_1117.w));
        let x_1120 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1119.x, x_1120.z, x_1119.y);
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1122 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1126 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1126 * 0.08163200318813323975f);
        let x_1130 : vec2<f32> = u_xlat59;
        let x_1133 : vec2<f32> = (vec2<f32>(x_1130.y, x_1130.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1134 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1136.x, x_1136.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1140 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1140 * 0.08163200318813323975f);
        let x_1144 : f32 = u_xlat11.y;
        u_xlat9.x = x_1144;
        let x_1146 : vec4<f32> = u_xlat7;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1153.x, x_1154.z, x_1153.y);
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1156.x, x_1156.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1164 : f32 = u_xlat59.x;
        u_xlat8.y = x_1164;
        let x_1167 : f32 = u_xlat10.y;
        u_xlat8.w = x_1167;
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1169 + x_1170);
        let x_1172 : vec4<f32> = u_xlat7;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1172.y, x_1172.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1176.x, x_1175.x, x_1176.z, x_1175.y);
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1178.y, x_1178.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1182 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1181.x, x_1182.y, x_1181.y, x_1182.w);
        let x_1185 : f32 = u_xlat59.y;
        u_xlat10.y = x_1185;
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1187 + x_1188);
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1190 / x_1191);
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1193 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1199 : vec4<f32> = u_xlat10;
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1199 / x_1200);
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1202 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1204 : vec4<f32> = u_xlat8;
        let x_1207 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1204.w, x_1204.x, x_1204.y, x_1204.z) * vec4<f32>(x_1207.x, x_1207.x, x_1207.x, x_1207.x));
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1213 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1210.x, x_1210.w, x_1210.y, x_1210.z) * vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y));
        let x_1216 : vec4<f32> = u_xlat8;
        let x_1217 : vec3<f32> = vec3<f32>(x_1216.y, x_1216.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1217.x, x_1218.y, x_1217.y, x_1217.z);
        let x_1221 : f32 = u_xlat10.x;
        u_xlat11.y = x_1221;
        let x_1223 : vec2<f32> = u_xlat32;
        let x_1226 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.y) * vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y)) + vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1229.y));
        let x_1232 : vec2<f32> = u_xlat32;
        let x_1234 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1239 : vec2<f32> = ((x_1232 * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1237.w, x_1237.y));
        let x_1240 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1239.x, x_1239.y, x_1240.z, x_1240.w);
        let x_1243 : f32 = u_xlat11.y;
        u_xlat8.y = x_1243;
        let x_1246 : f32 = u_xlat10.z;
        u_xlat11.y = x_1246;
        let x_1248 : vec2<f32> = u_xlat32;
        let x_1251 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y) * vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y)) + vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1254.y));
        let x_1258 : vec2<f32> = u_xlat32;
        let x_1260 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1258 * vec2<f32>(x_1260.x, x_1260.y)) + vec2<f32>(x_1263.w, x_1263.y));
        let x_1267 : f32 = u_xlat11.y;
        u_xlat8.z = x_1267;
        let x_1269 : vec2<f32> = u_xlat32;
        let x_1272 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.z));
        let x_1279 : f32 = u_xlat10.w;
        u_xlat11.y = x_1279;
        let x_1282 : vec2<f32> = u_xlat32;
        let x_1285 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y) * vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y)) + vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1288.y));
        let x_1292 : vec2<f32> = u_xlat32;
        let x_1294 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat11;
        let x_1299 : vec2<f32> = ((x_1292 * vec2<f32>(x_1294.x, x_1294.y)) + vec2<f32>(x_1297.w, x_1297.y));
        let x_1300 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1299.x, x_1299.y, x_1300.z);
        let x_1303 : f32 = u_xlat11.y;
        u_xlat8.w = x_1303;
        let x_1306 : vec2<f32> = u_xlat32;
        let x_1308 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat8;
        let x_1313 : vec2<f32> = ((x_1306 * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.x, x_1311.w));
        let x_1314 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat11;
        let x_1317 : vec3<f32> = vec3<f32>(x_1316.x, x_1316.z, x_1316.w);
        let x_1318 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1317.z);
        let x_1320 : vec2<f32> = u_xlat32;
        let x_1323 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y) * vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y)) + vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1326.y));
        let x_1330 : vec2<f32> = u_xlat32;
        let x_1332 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1330 * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.w, x_1335.y));
        let x_1339 : f32 = u_xlat8.x;
        u_xlat10.x = x_1339;
        let x_1341 : vec2<f32> = u_xlat32;
        let x_1343 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat10;
        u_xlat32 = ((x_1341 * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1346.x, x_1346.y));
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.x, x_1350.x) * x_1352);
        let x_1355 : vec4<f32> = u_xlat7;
        let x_1357 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1355.y, x_1355.y, x_1355.y, x_1355.y) * x_1357);
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1362 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1360.z, x_1360.z, x_1360.z, x_1360.z) * x_1362);
        let x_1364 : vec4<f32> = u_xlat7;
        let x_1366 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1364.w, x_1364.w, x_1364.w, x_1364.w) * x_1366);
        let x_1369 : vec4<f32> = u_xlat12;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec13;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat84 = x_1381;
        let x_1383 : vec4<f32> = u_xlat12;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.z, x_1383.w);
        let x_1386 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec14;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat8.x = x_1395;
        let x_1398 : f32 = u_xlat8.x;
        let x_1400 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1398 * x_1400);
        let x_1404 : f32 = u_xlat18.x;
        let x_1405 : f32 = u_xlat84;
        let x_1408 : f32 = u_xlat8.x;
        u_xlat84 = ((x_1404 * x_1405) + x_1408);
        let x_1411 : vec4<f32> = u_xlat13;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec15;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat8.x = x_1423;
        let x_1426 : f32 = u_xlat18.z;
        let x_1428 : f32 = u_xlat8.x;
        let x_1430 : f32 = u_xlat84;
        u_xlat84 = ((x_1426 * x_1428) + x_1430);
        let x_1433 : vec4<f32> = u_xlat15;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec16;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat8.x = x_1445;
        let x_1448 : f32 = u_xlat18.w;
        let x_1450 : f32 = u_xlat8.x;
        let x_1452 : f32 = u_xlat84;
        u_xlat84 = ((x_1448 * x_1450) + x_1452);
        let x_1455 : vec4<f32> = u_xlat14;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec17;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat8.x = x_1467;
        let x_1470 : f32 = u_xlat19.x;
        let x_1472 : f32 = u_xlat8.x;
        let x_1474 : f32 = u_xlat84;
        u_xlat84 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat14;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec18;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat8.x = x_1489;
        let x_1492 : f32 = u_xlat19.y;
        let x_1494 : f32 = u_xlat8.x;
        let x_1496 : f32 = u_xlat84;
        u_xlat84 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec2<f32> = u_xlat65;
        let x_1501 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec19;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1508.xy, x_1508.z);
        u_xlat8.x = x_1510;
        let x_1513 : f32 = u_xlat19.z;
        let x_1515 : f32 = u_xlat8.x;
        let x_1517 : f32 = u_xlat84;
        u_xlat84 = ((x_1513 * x_1515) + x_1517);
        let x_1520 : vec4<f32> = u_xlat15;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.z, x_1520.w);
        let x_1523 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec20;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1530.xy, x_1530.z);
        u_xlat8.x = x_1532;
        let x_1535 : f32 = u_xlat19.w;
        let x_1537 : f32 = u_xlat8.x;
        let x_1539 : f32 = u_xlat84;
        u_xlat84 = ((x_1535 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat16;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
        let x_1545 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec21;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat8.x = x_1554;
        let x_1557 : f32 = u_xlat20.x;
        let x_1559 : f32 = u_xlat8.x;
        let x_1561 : f32 = u_xlat84;
        u_xlat84 = ((x_1557 * x_1559) + x_1561);
        let x_1564 : vec4<f32> = u_xlat16;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.z, x_1564.w);
        let x_1567 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec22;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat8.x = x_1576;
        let x_1579 : f32 = u_xlat20.y;
        let x_1581 : f32 = u_xlat8.x;
        let x_1583 : f32 = u_xlat84;
        u_xlat84 = ((x_1579 * x_1581) + x_1583);
        let x_1586 : vec3<f32> = u_xlat34;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec23;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat8.x = x_1598;
        let x_1601 : f32 = u_xlat20.z;
        let x_1603 : f32 = u_xlat8.x;
        let x_1605 : f32 = u_xlat84;
        u_xlat84 = ((x_1601 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat17;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.x, x_1608.y);
        let x_1611 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec24;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat8.x = x_1620;
        let x_1623 : f32 = u_xlat20.w;
        let x_1625 : f32 = u_xlat8.x;
        let x_1627 : f32 = u_xlat84;
        u_xlat84 = ((x_1623 * x_1625) + x_1627);
        let x_1630 : vec4<f32> = u_xlat11;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.x, x_1630.y);
        let x_1633 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec25;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1640.xy, x_1640.z);
        u_xlat8.x = x_1642;
        let x_1645 : f32 = u_xlat7.x;
        let x_1647 : f32 = u_xlat8.x;
        let x_1649 : f32 = u_xlat84;
        u_xlat84 = ((x_1645 * x_1647) + x_1649);
        let x_1652 : vec4<f32> = u_xlat11;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.z, x_1652.w);
        let x_1655 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec26;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat7.x = x_1664;
        let x_1667 : f32 = u_xlat7.y;
        let x_1669 : f32 = u_xlat7.x;
        let x_1671 : f32 = u_xlat84;
        u_xlat84 = ((x_1667 * x_1669) + x_1671);
        let x_1674 : vec2<f32> = u_xlat62;
        let x_1676 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec27;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat7.x = x_1685;
        let x_1688 : f32 = u_xlat7.z;
        let x_1690 : f32 = u_xlat7.x;
        let x_1692 : f32 = u_xlat84;
        u_xlat84 = ((x_1688 * x_1690) + x_1692);
        let x_1695 : vec2<f32> = u_xlat32;
        let x_1697 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec28;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1704.xy, x_1704.z);
        u_xlat32.x = x_1706;
        let x_1709 : f32 = u_xlat7.w;
        let x_1711 : f32 = u_xlat32.x;
        let x_1713 : f32 = u_xlat84;
        u_xlat6.x = ((x_1709 * x_1711) + x_1713);
      }
    }
  } else {
    let x_1718 : vec4<f32> = u_xlat3;
    let x_1719 : vec2<f32> = vec2<f32>(x_1718.x, x_1718.y);
    let x_1721 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
    let x_1728 : vec3<f32> = txVec29;
    let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
    u_xlat6.x = x_1730;
  }
  let x_1733 : f32 = x_152.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1733) + 1.0f);
  let x_1738 : f32 = u_xlat6.x;
  let x_1740 : f32 = x_152.x_MainLightShadowParams.x;
  let x_1743 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1738 * x_1740) + x_1743);
  let x_1748 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_1748);
  let x_1752 : f32 = u_xlat3.z;
  u_xlatb55 = (x_1752 >= 1.0f);
  let x_1754 : bool = u_xlatb55;
  let x_1755 : bool = u_xlatb29;
  u_xlatb29 = (x_1754 | x_1755);
  let x_1757 : bool = u_xlatb29;
  if (x_1757) {
    x_1759 = 1.0f;
  } else {
    let x_1764 : f32 = u_xlat3.x;
    x_1759 = x_1764;
  }
  let x_1765 : f32 = x_1759;
  u_xlat3.x = x_1765;
  let x_1767 : vec3<f32> = vs_TEXCOORD7;
  let x_1769 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1771 : vec3<f32> = (x_1767 + -(x_1769));
  let x_1772 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1775 : vec4<f32> = u_xlat6;
  let x_1777 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_1775.x, x_1775.y, x_1775.z), vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
  let x_1781 : f32 = u_xlat29;
  let x_1783 : f32 = x_152.x_MainLightShadowParams.z;
  let x_1786 : f32 = x_152.x_MainLightShadowParams.w;
  u_xlat55 = ((x_1781 * x_1783) + x_1786);
  let x_1788 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1788, 0.0f, 1.0f);
  let x_1791 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_1791) + 1.0f);
  let x_1795 : f32 = u_xlat55;
  let x_1797 : f32 = u_xlat6.x;
  let x_1800 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1795 * x_1797) + x_1800);
  let x_1810 : f32 = x_1808.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_1810 == -1.0f));
  let x_1812 : bool = u_xlatb55;
  if (x_1812) {
    let x_1815 : vec3<f32> = vs_TEXCOORD7;
    let x_1818 : vec4<f32> = x_1808.x_MainLightWorldToLight[1i];
    let x_1820 : vec2<f32> = (vec2<f32>(x_1815.y, x_1815.y) * vec2<f32>(x_1818.x, x_1818.y));
    let x_1821 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1820.x, x_1820.y, x_1821.z, x_1821.w);
    let x_1824 : vec4<f32> = x_1808.x_MainLightWorldToLight[0i];
    let x_1826 : vec3<f32> = vs_TEXCOORD7;
    let x_1829 : vec4<f32> = u_xlat6;
    let x_1831 : vec2<f32> = ((vec2<f32>(x_1824.x, x_1824.y) * vec2<f32>(x_1826.x, x_1826.x)) + vec2<f32>(x_1829.x, x_1829.y));
    let x_1832 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1831.x, x_1831.y, x_1832.z, x_1832.w);
    let x_1835 : vec4<f32> = x_1808.x_MainLightWorldToLight[2i];
    let x_1837 : vec3<f32> = vs_TEXCOORD7;
    let x_1840 : vec4<f32> = u_xlat6;
    let x_1842 : vec2<f32> = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1837.z, x_1837.z)) + vec2<f32>(x_1840.x, x_1840.y));
    let x_1843 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1842.x, x_1842.y, x_1843.z, x_1843.w);
    let x_1845 : vec4<f32> = u_xlat6;
    let x_1848 : vec4<f32> = x_1808.x_MainLightWorldToLight[3i];
    let x_1850 : vec2<f32> = (vec2<f32>(x_1845.x, x_1845.y) + vec2<f32>(x_1848.x, x_1848.y));
    let x_1851 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1850.x, x_1850.y, x_1851.z, x_1851.w);
    let x_1853 : vec4<f32> = u_xlat6;
    let x_1856 : vec2<f32> = ((vec2<f32>(x_1853.x, x_1853.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1857 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1856.x, x_1856.y, x_1857.z, x_1857.w);
    let x_1864 : vec4<f32> = u_xlat6;
    let x_1867 : f32 = x_29.x_GlobalMipBias.x;
    let x_1868 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1864.x, x_1864.y), x_1867);
    u_xlat6 = x_1868;
    let x_1873 : f32 = x_1808.x_MainLightCookieTextureFormat;
    let x_1875 : f32 = x_1808.x_MainLightCookieTextureFormat;
    let x_1877 : f32 = x_1808.x_MainLightCookieTextureFormat;
    let x_1879 : f32 = x_1808.x_MainLightCookieTextureFormat;
    let x_1880 : vec4<f32> = vec4<f32>(x_1873, x_1875, x_1877, x_1879);
    let x_1887 : vec4<bool> = (vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1880.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1887.x, x_1887.y);
    let x_1890 : bool = u_xlatb7.y;
    if (x_1890) {
      let x_1895 : f32 = u_xlat6.w;
      x_1891 = x_1895;
    } else {
      let x_1898 : f32 = u_xlat6.x;
      x_1891 = x_1898;
    }
    let x_1899 : f32 = x_1891;
    u_xlat55 = x_1899;
    let x_1901 : bool = u_xlatb7.x;
    if (x_1901) {
      let x_1905 : vec4<f32> = u_xlat6;
      x_1902 = vec3<f32>(x_1905.x, x_1905.y, x_1905.z);
    } else {
      let x_1908 : f32 = u_xlat55;
      x_1902 = vec3<f32>(x_1908, x_1908, x_1908);
    }
    let x_1910 : vec3<f32> = x_1902;
    let x_1911 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1917 : vec4<f32> = u_xlat6;
  let x_1920 : vec4<f32> = x_29.x_MainLightColor;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1917.x, x_1917.y, x_1917.z) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : vec3<f32> = u_xlat27;
  let x_1927 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(-(x_1925), x_1927);
  let x_1929 : f32 = u_xlat55;
  let x_1930 : f32 = u_xlat55;
  u_xlat55 = (x_1929 + x_1930);
  let x_1932 : vec3<f32> = u_xlat2;
  let x_1933 : f32 = u_xlat55;
  let x_1937 : vec3<f32> = u_xlat27;
  let x_1939 : vec3<f32> = ((x_1932 * -(vec3<f32>(x_1933, x_1933, x_1933))) + -(x_1937));
  let x_1940 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
  let x_1942 : vec3<f32> = u_xlat2;
  let x_1943 : vec3<f32> = u_xlat27;
  u_xlat55 = dot(x_1942, x_1943);
  let x_1945 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1945, 0.0f, 1.0f);
  let x_1947 : f32 = u_xlat55;
  u_xlat55 = (-(x_1947) + 1.0f);
  let x_1950 : f32 = u_xlat55;
  let x_1951 : f32 = u_xlat55;
  u_xlat55 = (x_1950 * x_1951);
  let x_1953 : f32 = u_xlat55;
  let x_1954 : f32 = u_xlat55;
  u_xlat55 = (x_1953 * x_1954);
  let x_1956 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1956) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1962 : f32 = u_xlat1;
  let x_1963 : f32 = u_xlat84;
  u_xlat1 = (x_1962 * x_1963);
  let x_1965 : f32 = u_xlat1;
  u_xlat1 = (x_1965 * 6.0f);
  let x_1976 : vec4<f32> = u_xlat7;
  let x_1978 : f32 = u_xlat1;
  let x_1979 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1976.x, x_1976.y, x_1976.z), x_1978);
  u_xlat7 = x_1979;
  let x_1981 : f32 = u_xlat7.w;
  u_xlat1 = (x_1981 + -1.0f);
  let x_1988 : f32 = x_1986.unity_SpecCube0_HDR.w;
  let x_1989 : f32 = u_xlat1;
  u_xlat1 = ((x_1988 * x_1989) + 1.0f);
  let x_1992 : f32 = u_xlat1;
  u_xlat1 = max(x_1992, 0.0f);
  let x_1994 : f32 = u_xlat1;
  u_xlat1 = log2(x_1994);
  let x_1996 : f32 = u_xlat1;
  let x_1998 : f32 = x_1986.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1996 * x_1998);
  let x_2000 : f32 = u_xlat1;
  u_xlat1 = exp2(x_2000);
  let x_2002 : f32 = u_xlat1;
  let x_2004 : f32 = x_1986.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_2002 * x_2004);
  let x_2006 : vec4<f32> = u_xlat7;
  let x_2008 : f32 = u_xlat1;
  let x_2010 : vec3<f32> = (vec3<f32>(x_2006.x, x_2006.y, x_2006.z) * vec3<f32>(x_2008, x_2008, x_2008));
  let x_2011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
  let x_2013 : f32 = u_xlat81;
  let x_2015 : f32 = u_xlat81;
  let x_2019 : vec2<f32> = ((vec2<f32>(x_2013, x_2013) * vec2<f32>(x_2015, x_2015)) + vec2<f32>(-1.0f, 1.0f));
  let x_2020 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2019.x, x_2019.y, x_2020.z, x_2020.w);
  let x_2023 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_2023);
  let x_2025 : vec4<f32> = u_xlat0;
  let x_2028 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2025.x, x_2025.y, x_2025.z)) + vec3<f32>(x_2028, x_2028, x_2028));
  let x_2031 : f32 = u_xlat55;
  let x_2033 : vec3<f32> = u_xlat34;
  let x_2035 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2031, x_2031, x_2031) * x_2033) + vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
  let x_2038 : f32 = u_xlat1;
  let x_2040 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2038, x_2038, x_2038) * x_2040);
  let x_2042 : vec4<f32> = u_xlat7;
  let x_2044 : vec3<f32> = u_xlat34;
  let x_2045 : vec3<f32> = (vec3<f32>(x_2042.x, x_2042.y, x_2042.z) * x_2044);
  let x_2046 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
  let x_2048 : vec4<f32> = u_xlat4;
  let x_2050 : vec3<f32> = u_xlat5;
  let x_2052 : vec4<f32> = u_xlat7;
  let x_2054 : vec3<f32> = ((vec3<f32>(x_2048.x, x_2048.y, x_2048.z) * x_2050) + vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2055 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  let x_2058 : f32 = u_xlat3.x;
  let x_2060 : f32 = x_1986.unity_LightData.z;
  u_xlat78 = (x_2058 * x_2060);
  let x_2062 : vec3<f32> = u_xlat2;
  let x_2064 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_2062, vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2067 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2067, 0.0f, 1.0f);
  let x_2069 : f32 = u_xlat78;
  let x_2070 : f32 = u_xlat1;
  u_xlat78 = (x_2069 * x_2070);
  let x_2072 : f32 = u_xlat78;
  let x_2074 : vec4<f32> = u_xlat6;
  let x_2076 : vec3<f32> = (vec3<f32>(x_2072, x_2072, x_2072) * vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2076.x, x_2077.y, x_2076.y, x_2076.z);
  let x_2079 : vec3<f32> = u_xlat27;
  let x_2081 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2083 : vec3<f32> = (x_2079 + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
  let x_2086 : vec4<f32> = u_xlat6;
  let x_2088 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2086.x, x_2086.y, x_2086.z), vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
  let x_2091 : f32 = u_xlat78;
  u_xlat78 = max(x_2091, 1.17549435e-38f);
  let x_2094 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2094);
  let x_2096 : f32 = u_xlat78;
  let x_2098 : vec4<f32> = u_xlat6;
  let x_2100 : vec3<f32> = (vec3<f32>(x_2096, x_2096, x_2096) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
  let x_2101 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
  let x_2103 : vec3<f32> = u_xlat2;
  let x_2104 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_2103, vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
  let x_2107 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2107, 0.0f, 1.0f);
  let x_2110 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2112 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_2110.x, x_2110.y, x_2110.z), vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2115, 0.0f, 1.0f);
  let x_2117 : f32 = u_xlat78;
  let x_2118 : f32 = u_xlat78;
  u_xlat78 = (x_2117 * x_2118);
  let x_2120 : f32 = u_xlat78;
  let x_2122 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2120 * x_2122) + 1.00001001358032226562f);
  let x_2126 : f32 = u_xlat1;
  let x_2127 : f32 = u_xlat1;
  u_xlat1 = (x_2126 * x_2127);
  let x_2129 : f32 = u_xlat78;
  let x_2130 : f32 = u_xlat78;
  u_xlat78 = (x_2129 * x_2130);
  let x_2132 : f32 = u_xlat1;
  u_xlat1 = max(x_2132, 0.10000000149011611938f);
  let x_2135 : f32 = u_xlat78;
  let x_2136 : f32 = u_xlat1;
  u_xlat78 = (x_2135 * x_2136);
  let x_2138 : f32 = u_xlat82;
  let x_2139 : f32 = u_xlat78;
  u_xlat78 = (x_2138 * x_2139);
  let x_2141 : f32 = u_xlat83;
  let x_2142 : f32 = u_xlat78;
  u_xlat78 = (x_2141 / x_2142);
  let x_2144 : vec4<f32> = u_xlat0;
  let x_2146 : f32 = u_xlat78;
  let x_2149 : vec3<f32> = u_xlat5;
  let x_2150 : vec3<f32> = ((vec3<f32>(x_2144.x, x_2144.y, x_2144.z) * vec3<f32>(x_2146, x_2146, x_2146)) + x_2149);
  let x_2151 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);
  let x_2154 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2156 : f32 = x_1986.unity_LightData.y;
  u_xlat78 = min(x_2154, x_2156);
  let x_2159 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2159));
  let x_2162 : f32 = u_xlat29;
  let x_2165 : f32 = x_152.x_AdditionalShadowFadeParams.x;
  let x_2168 : f32 = x_152.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2162 * x_2165) + x_2168);
  let x_2170 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2170, 0.0f, 1.0f);
  let x_2173 : f32 = x_1808.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2175 : f32 = x_1808.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2177 : f32 = x_1808.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2179 : f32 = x_1808.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2180 : vec4<f32> = vec4<f32>(x_2173, x_2175, x_2177, x_2179);
  let x_2186 : vec4<bool> = (vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2180.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2186.x, x_2186.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2198 : u32 = u_xlatu_loop_1;
    let x_2199 : u32 = u_xlatu78;
    if ((x_2198 < x_2199)) {
    } else {
      break;
    }
    let x_2202 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2202 >> 2u);
    let x_2205 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2205 & 3u));
    let x_2208 : u32 = u_xlatu84;
    let x_2211 : vec4<f32> = x_1986.unity_LightIndices[bitcast<i32>(x_2208)];
    let x_2221 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2226 : vec4<u32> = indexable[x_2221];
    u_xlat84 = dot(x_2211, bitcast<vec4<f32>>(x_2226));
    let x_2230 : f32 = u_xlat84;
    u_xlati84 = i32(x_2230);
    let x_2232 : vec3<f32> = vs_TEXCOORD7;
    let x_2243 : i32 = u_xlati84;
    let x_2245 : vec4<f32> = x_2242.x_AdditionalLightsPosition[x_2243];
    let x_2248 : i32 = u_xlati84;
    let x_2250 : vec4<f32> = x_2242.x_AdditionalLightsPosition[x_2248];
    let x_2252 : vec3<f32> = ((-(x_2232) * vec3<f32>(x_2245.w, x_2245.w, x_2245.w)) + vec3<f32>(x_2250.x, x_2250.y, x_2250.z));
    let x_2253 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2253.w);
    let x_2255 : vec4<f32> = u_xlat9;
    let x_2257 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_2255.x, x_2255.y, x_2255.z), vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
    let x_2262 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2262, 0.00006103515625f);
    let x_2268 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_2268);
    let x_2270 : f32 = u_xlat85;
    let x_2272 : vec4<f32> = u_xlat9;
    let x_2274 : vec3<f32> = (vec3<f32>(x_2270, x_2270, x_2270) * vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
    let x_2275 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
    let x_2279 : f32 = u_xlat59.x;
    u_xlat87 = (1.0f / x_2279);
    let x_2282 : f32 = u_xlat59.x;
    let x_2283 : i32 = u_xlati84;
    let x_2285 : f32 = x_2242.x_AdditionalLightsAttenuation[x_2283].x;
    u_xlat59.x = (x_2282 * x_2285);
    let x_2289 : f32 = u_xlat59.x;
    let x_2292 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_2289) * x_2292) + 1.0f);
    let x_2297 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2297, 0.0f);
    let x_2301 : f32 = u_xlat59.x;
    let x_2303 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2301 * x_2303);
    let x_2307 : f32 = u_xlat59.x;
    let x_2308 : f32 = u_xlat87;
    u_xlat59.x = (x_2307 * x_2308);
    let x_2311 : i32 = u_xlati84;
    let x_2313 : vec4<f32> = x_2242.x_AdditionalLightsSpotDir[x_2311];
    let x_2315 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2313.x, x_2313.y, x_2313.z), vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
    let x_2318 : f32 = u_xlat87;
    let x_2319 : i32 = u_xlati84;
    let x_2321 : f32 = x_2242.x_AdditionalLightsAttenuation[x_2319].z;
    let x_2323 : i32 = u_xlati84;
    let x_2325 : f32 = x_2242.x_AdditionalLightsAttenuation[x_2323].w;
    u_xlat87 = ((x_2318 * x_2321) + x_2325);
    let x_2327 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2327, 0.0f, 1.0f);
    let x_2329 : f32 = u_xlat87;
    let x_2330 : f32 = u_xlat87;
    u_xlat87 = (x_2329 * x_2330);
    let x_2333 : f32 = u_xlat59.x;
    let x_2334 : f32 = u_xlat87;
    u_xlat59.x = (x_2333 * x_2334);
    let x_2339 : i32 = u_xlati84;
    let x_2341 : f32 = x_152.x_AdditionalShadowParams[x_2339].w;
    u_xlati87 = i32(x_2341);
    let x_2344 : i32 = u_xlati87;
    u_xlatb88 = (x_2344 >= 0i);
    let x_2346 : bool = u_xlatb88;
    if (x_2346) {
      let x_2350 : i32 = u_xlati84;
      let x_2352 : f32 = x_152.x_AdditionalShadowParams[x_2350].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2352, x_2352, x_2352, x_2352))));
      let x_2356 : bool = u_xlatb88;
      if (x_2356) {
        let x_2360 : vec4<f32> = u_xlat10;
        let x_2363 : vec4<f32> = u_xlat10;
        let x_2366 : vec4<bool> = (abs(vec4<f32>(x_2360.z, x_2360.z, x_2360.y, x_2360.z)) >= abs(vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.x)));
        let x_2368 : vec3<bool> = vec3<bool>(x_2366.x, x_2366.y, x_2366.z);
        let x_2369 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
        let x_2372 : bool = u_xlatb11.y;
        let x_2374 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2372 & x_2374);
        let x_2376 : vec4<f32> = u_xlat10;
        let x_2379 : vec4<bool> = (-(vec4<f32>(x_2376.z, x_2376.y, x_2376.z, x_2376.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2380 : vec3<bool> = vec3<bool>(x_2379.x, x_2379.y, x_2379.w);
        let x_2381 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2380.x, x_2380.y, x_2381.z, x_2380.z);
        let x_2384 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2384);
        let x_2389 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2389);
        let x_2394 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2394);
        let x_2398 : bool = u_xlatb11.z;
        if (x_2398) {
          let x_2403 : f32 = u_xlat11.y;
          x_2399 = x_2403;
        } else {
          let x_2405 : f32 = u_xlat89;
          x_2399 = x_2405;
        }
        let x_2406 : f32 = x_2399;
        u_xlat37.x = x_2406;
        let x_2409 : bool = u_xlatb88;
        if (x_2409) {
          let x_2414 : f32 = u_xlat11.x;
          x_2410 = x_2414;
        } else {
          let x_2417 : f32 = u_xlat37.x;
          x_2410 = x_2417;
        }
        let x_2418 : f32 = x_2410;
        u_xlat88 = x_2418;
        let x_2419 : i32 = u_xlati84;
        let x_2421 : f32 = x_152.x_AdditionalShadowParams[x_2419].w;
        u_xlat11.x = trunc(x_2421);
        let x_2424 : f32 = u_xlat88;
        let x_2426 : f32 = u_xlat11.x;
        u_xlat88 = (x_2424 + x_2426);
        let x_2428 : f32 = u_xlat88;
        u_xlati87 = i32(x_2428);
      }
      let x_2430 : i32 = u_xlati87;
      u_xlati87 = (x_2430 << bitcast<u32>(2i));
      let x_2432 : vec3<f32> = vs_TEXCOORD7;
      let x_2435 : i32 = u_xlati87;
      let x_2438 : i32 = u_xlati87;
      let x_2442 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2435 + 1i) / 4i)][((x_2438 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2432.y, x_2432.y, x_2432.y, x_2432.y) * x_2442);
      let x_2444 : i32 = u_xlati87;
      let x_2446 : i32 = u_xlati87;
      let x_2449 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[(x_2444 / 4i)][(x_2446 % 4i)];
      let x_2450 : vec3<f32> = vs_TEXCOORD7;
      let x_2453 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2449 * vec4<f32>(x_2450.x, x_2450.x, x_2450.x, x_2450.x)) + x_2453);
      let x_2455 : i32 = u_xlati87;
      let x_2458 : i32 = u_xlati87;
      let x_2462 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2455 + 2i) / 4i)][((x_2458 + 2i) % 4i)];
      let x_2463 : vec3<f32> = vs_TEXCOORD7;
      let x_2466 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2462 * vec4<f32>(x_2463.z, x_2463.z, x_2463.z, x_2463.z)) + x_2466);
      let x_2468 : vec4<f32> = u_xlat11;
      let x_2469 : i32 = u_xlati87;
      let x_2472 : i32 = u_xlati87;
      let x_2476 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2469 + 3i) / 4i)][((x_2472 + 3i) % 4i)];
      u_xlat11 = (x_2468 + x_2476);
      let x_2478 : vec4<f32> = u_xlat11;
      let x_2480 : vec4<f32> = u_xlat11;
      let x_2482 : vec3<f32> = (vec3<f32>(x_2478.x, x_2478.y, x_2478.z) / vec3<f32>(x_2480.w, x_2480.w, x_2480.w));
      let x_2483 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
      let x_2486 : i32 = u_xlati84;
      let x_2488 : f32 = x_152.x_AdditionalShadowParams[x_2486].y;
      u_xlatb87 = (0.0f < x_2488);
      let x_2490 : bool = u_xlatb87;
      if (x_2490) {
        let x_2493 : i32 = u_xlati84;
        let x_2495 : f32 = x_152.x_AdditionalShadowParams[x_2493].y;
        u_xlatb87 = (1.0f == x_2495);
        let x_2497 : bool = u_xlatb87;
        if (x_2497) {
          let x_2500 : vec4<f32> = u_xlat11;
          let x_2504 : vec4<f32> = x_152.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2500.x, x_2500.y, x_2500.x, x_2500.y) + x_2504);
          let x_2507 : vec4<f32> = u_xlat12;
          let x_2508 : vec2<f32> = vec2<f32>(x_2507.x, x_2507.y);
          let x_2510 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2508.x, x_2508.y, x_2510);
          let x_2518 : vec3<f32> = txVec30;
          let x_2520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2518.xy, x_2518.z);
          u_xlat13.x = x_2520;
          let x_2523 : vec4<f32> = u_xlat12;
          let x_2524 : vec2<f32> = vec2<f32>(x_2523.z, x_2523.w);
          let x_2526 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2524.x, x_2524.y, x_2526);
          let x_2533 : vec3<f32> = txVec31;
          let x_2535 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2533.xy, x_2533.z);
          u_xlat13.y = x_2535;
          let x_2537 : vec4<f32> = u_xlat11;
          let x_2541 : vec4<f32> = x_152.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2537.x, x_2537.y, x_2537.x, x_2537.y) + x_2541);
          let x_2544 : vec4<f32> = u_xlat12;
          let x_2545 : vec2<f32> = vec2<f32>(x_2544.x, x_2544.y);
          let x_2547 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2545.x, x_2545.y, x_2547);
          let x_2554 : vec3<f32> = txVec32;
          let x_2556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2554.xy, x_2554.z);
          u_xlat13.z = x_2556;
          let x_2559 : vec4<f32> = u_xlat12;
          let x_2560 : vec2<f32> = vec2<f32>(x_2559.z, x_2559.w);
          let x_2562 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2560.x, x_2560.y, x_2562);
          let x_2569 : vec3<f32> = txVec33;
          let x_2571 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2569.xy, x_2569.z);
          u_xlat13.w = x_2571;
          let x_2573 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2573, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2576 : i32 = u_xlati84;
          let x_2578 : f32 = x_152.x_AdditionalShadowParams[x_2576].y;
          u_xlatb88 = (2.0f == x_2578);
          let x_2580 : bool = u_xlatb88;
          if (x_2580) {
            let x_2583 : vec4<f32> = u_xlat11;
            let x_2587 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2590 : vec2<f32> = ((vec2<f32>(x_2583.x, x_2583.y) * vec2<f32>(x_2587.z, x_2587.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2591 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2590.x, x_2590.y, x_2591.z, x_2591.w);
            let x_2593 : vec4<f32> = u_xlat12;
            let x_2595 : vec2<f32> = floor(vec2<f32>(x_2593.x, x_2593.y));
            let x_2596 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2595.x, x_2595.y, x_2596.z, x_2596.w);
            let x_2599 : vec4<f32> = u_xlat11;
            let x_2602 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2605 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2599.x, x_2599.y) * vec2<f32>(x_2602.z, x_2602.w)) + -(vec2<f32>(x_2605.x, x_2605.y)));
            let x_2609 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2609.x, x_2609.x, x_2609.y, x_2609.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2612 : vec4<f32> = u_xlat13;
            let x_2614 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2612.x, x_2612.x, x_2612.z, x_2612.z) * vec4<f32>(x_2614.x, x_2614.x, x_2614.z, x_2614.z));
            let x_2617 : vec4<f32> = u_xlat14;
            let x_2619 : vec2<f32> = (vec2<f32>(x_2617.y, x_2617.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2620 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2619.x, x_2620.y, x_2619.y, x_2620.w);
            let x_2622 : vec4<f32> = u_xlat14;
            let x_2625 : vec2<f32> = u_xlat64;
            let x_2627 : vec2<f32> = ((vec2<f32>(x_2622.x, x_2622.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2625));
            let x_2628 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
            let x_2631 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2631) + vec2<f32>(1.0f, 1.0f));
            let x_2634 : vec2<f32> = u_xlat64;
            let x_2635 : vec2<f32> = min(x_2634, vec2<f32>(0.0f, 0.0f));
            let x_2636 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat15;
            let x_2641 : vec4<f32> = u_xlat15;
            let x_2644 : vec2<f32> = u_xlat66;
            let x_2645 : vec2<f32> = ((-(vec2<f32>(x_2638.x, x_2638.y)) * vec2<f32>(x_2641.x, x_2641.y)) + x_2644);
            let x_2646 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
            let x_2648 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2648, vec2<f32>(0.0f, 0.0f));
            let x_2650 : vec2<f32> = u_xlat64;
            let x_2652 : vec2<f32> = u_xlat64;
            let x_2654 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2650) * x_2652) + vec2<f32>(x_2654.y, x_2654.w));
            let x_2657 : vec4<f32> = u_xlat15;
            let x_2659 : vec2<f32> = (vec2<f32>(x_2657.x, x_2657.y) + vec2<f32>(1.0f, 1.0f));
            let x_2660 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2659.x, x_2659.y, x_2660.z, x_2660.w);
            let x_2662 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2662 + vec2<f32>(1.0f, 1.0f));
            let x_2664 : vec4<f32> = u_xlat14;
            let x_2666 : vec2<f32> = (vec2<f32>(x_2664.x, x_2664.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2667 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2666.x, x_2666.y, x_2667.z, x_2667.w);
            let x_2669 : vec2<f32> = u_xlat66;
            let x_2670 : vec2<f32> = (x_2669 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2671 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2670.x, x_2670.y, x_2671.z, x_2671.w);
            let x_2673 : vec4<f32> = u_xlat15;
            let x_2675 : vec2<f32> = (vec2<f32>(x_2673.x, x_2673.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2676 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2675.x, x_2675.y, x_2676.z, x_2676.w);
            let x_2678 : vec2<f32> = u_xlat64;
            let x_2679 : vec2<f32> = (x_2678 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2680 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2682.y, x_2682.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2686 : f32 = u_xlat15.x;
            u_xlat16.z = x_2686;
            let x_2689 : f32 = u_xlat64.x;
            u_xlat16.w = x_2689;
            let x_2692 : f32 = u_xlat17.x;
            u_xlat14.z = x_2692;
            let x_2695 : f32 = u_xlat13.x;
            u_xlat14.w = x_2695;
            let x_2697 : vec4<f32> = u_xlat14;
            let x_2699 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2697.z, x_2697.w, x_2697.x, x_2697.z) + vec4<f32>(x_2699.z, x_2699.w, x_2699.x, x_2699.z));
            let x_2703 : f32 = u_xlat16.y;
            u_xlat15.z = x_2703;
            let x_2706 : f32 = u_xlat64.y;
            u_xlat15.w = x_2706;
            let x_2709 : f32 = u_xlat14.y;
            u_xlat17.z = x_2709;
            let x_2712 : f32 = u_xlat13.z;
            u_xlat17.w = x_2712;
            let x_2714 : vec4<f32> = u_xlat15;
            let x_2716 : vec4<f32> = u_xlat17;
            let x_2718 : vec3<f32> = (vec3<f32>(x_2714.z, x_2714.y, x_2714.w) + vec3<f32>(x_2716.z, x_2716.y, x_2716.w));
            let x_2719 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
            let x_2721 : vec4<f32> = u_xlat14;
            let x_2723 : vec4<f32> = u_xlat18;
            let x_2725 : vec3<f32> = (vec3<f32>(x_2721.x, x_2721.z, x_2721.w) / vec3<f32>(x_2723.z, x_2723.w, x_2723.y));
            let x_2726 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);
            let x_2728 : vec4<f32> = u_xlat14;
            let x_2730 : vec3<f32> = (vec3<f32>(x_2728.x, x_2728.y, x_2728.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2731 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2730.x, x_2730.y, x_2730.z, x_2731.w);
            let x_2733 : vec4<f32> = u_xlat17;
            let x_2735 : vec4<f32> = u_xlat13;
            let x_2737 : vec3<f32> = (vec3<f32>(x_2733.z, x_2733.y, x_2733.w) / vec3<f32>(x_2735.x, x_2735.y, x_2735.z));
            let x_2738 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2737.x, x_2737.y, x_2737.z, x_2738.w);
            let x_2740 : vec4<f32> = u_xlat15;
            let x_2742 : vec3<f32> = (vec3<f32>(x_2740.x, x_2740.y, x_2740.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2743 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2742.x, x_2742.y, x_2742.z, x_2743.w);
            let x_2745 : vec4<f32> = u_xlat14;
            let x_2748 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2750 : vec3<f32> = (vec3<f32>(x_2745.y, x_2745.x, x_2745.z) * vec3<f32>(x_2748.x, x_2748.x, x_2748.x));
            let x_2751 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat15;
            let x_2756 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2758 : vec3<f32> = (vec3<f32>(x_2753.x, x_2753.y, x_2753.z) * vec3<f32>(x_2756.y, x_2756.y, x_2756.y));
            let x_2759 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2759.w);
            let x_2762 : f32 = u_xlat15.x;
            u_xlat14.w = x_2762;
            let x_2764 : vec4<f32> = u_xlat12;
            let x_2767 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2770 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2764.x, x_2764.y, x_2764.x, x_2764.y) * vec4<f32>(x_2767.x, x_2767.y, x_2767.x, x_2767.y)) + vec4<f32>(x_2770.y, x_2770.w, x_2770.x, x_2770.w));
            let x_2773 : vec4<f32> = u_xlat12;
            let x_2776 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2779 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2773.x, x_2773.y) * vec2<f32>(x_2776.x, x_2776.y)) + vec2<f32>(x_2779.z, x_2779.w));
            let x_2783 : f32 = u_xlat14.y;
            u_xlat15.w = x_2783;
            let x_2785 : vec4<f32> = u_xlat15;
            let x_2786 : vec2<f32> = vec2<f32>(x_2785.y, x_2785.z);
            let x_2787 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2787.x, x_2786.x, x_2787.z, x_2786.y);
            let x_2789 : vec4<f32> = u_xlat12;
            let x_2792 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2795 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2789.x, x_2789.y, x_2789.x, x_2789.y) * vec4<f32>(x_2792.x, x_2792.y, x_2792.x, x_2792.y)) + vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2795.y));
            let x_2798 : vec4<f32> = u_xlat12;
            let x_2801 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2804 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2798.x, x_2798.y, x_2798.x, x_2798.y) * vec4<f32>(x_2801.x, x_2801.y, x_2801.x, x_2801.y)) + vec4<f32>(x_2804.w, x_2804.y, x_2804.w, x_2804.z));
            let x_2807 : vec4<f32> = u_xlat12;
            let x_2810 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2813 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2807.x, x_2807.y, x_2807.x, x_2807.y) * vec4<f32>(x_2810.x, x_2810.y, x_2810.x, x_2810.y)) + vec4<f32>(x_2813.x, x_2813.w, x_2813.z, x_2813.w));
            let x_2816 : vec4<f32> = u_xlat13;
            let x_2818 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2816.x, x_2816.x, x_2816.x, x_2816.y) * vec4<f32>(x_2818.z, x_2818.w, x_2818.y, x_2818.z));
            let x_2821 : vec4<f32> = u_xlat13;
            let x_2823 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2821.y, x_2821.y, x_2821.z, x_2821.z) * x_2823);
            let x_2826 : f32 = u_xlat13.z;
            let x_2828 : f32 = u_xlat18.y;
            u_xlat88 = (x_2826 * x_2828);
            let x_2831 : vec4<f32> = u_xlat16;
            let x_2832 : vec2<f32> = vec2<f32>(x_2831.x, x_2831.y);
            let x_2834 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2832.x, x_2832.y, x_2834);
            let x_2841 : vec3<f32> = txVec34;
            let x_2843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2841.xy, x_2841.z);
            u_xlat89 = x_2843;
            let x_2845 : vec4<f32> = u_xlat16;
            let x_2846 : vec2<f32> = vec2<f32>(x_2845.z, x_2845.w);
            let x_2848 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2846.x, x_2846.y, x_2848);
            let x_2855 : vec3<f32> = txVec35;
            let x_2857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2855.xy, x_2855.z);
            u_xlat12.x = x_2857;
            let x_2860 : f32 = u_xlat12.x;
            let x_2862 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2860 * x_2862);
            let x_2866 : f32 = u_xlat19.x;
            let x_2867 : f32 = u_xlat89;
            let x_2870 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2866 * x_2867) + x_2870);
            let x_2873 : vec2<f32> = u_xlat64;
            let x_2875 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2882 : vec3<f32> = txVec36;
            let x_2884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
            u_xlat12.x = x_2884;
            let x_2887 : f32 = u_xlat19.z;
            let x_2889 : f32 = u_xlat12.x;
            let x_2891 : f32 = u_xlat89;
            u_xlat89 = ((x_2887 * x_2889) + x_2891);
            let x_2894 : vec4<f32> = u_xlat15;
            let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
            let x_2897 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
            let x_2904 : vec3<f32> = txVec37;
            let x_2906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
            u_xlat12.x = x_2906;
            let x_2909 : f32 = u_xlat19.w;
            let x_2911 : f32 = u_xlat12.x;
            let x_2913 : f32 = u_xlat89;
            u_xlat89 = ((x_2909 * x_2911) + x_2913);
            let x_2916 : vec4<f32> = u_xlat17;
            let x_2917 : vec2<f32> = vec2<f32>(x_2916.x, x_2916.y);
            let x_2919 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2917.x, x_2917.y, x_2919);
            let x_2926 : vec3<f32> = txVec38;
            let x_2928 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2926.xy, x_2926.z);
            u_xlat12.x = x_2928;
            let x_2931 : f32 = u_xlat20.x;
            let x_2933 : f32 = u_xlat12.x;
            let x_2935 : f32 = u_xlat89;
            u_xlat89 = ((x_2931 * x_2933) + x_2935);
            let x_2938 : vec4<f32> = u_xlat17;
            let x_2939 : vec2<f32> = vec2<f32>(x_2938.z, x_2938.w);
            let x_2941 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
            let x_2948 : vec3<f32> = txVec39;
            let x_2950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
            u_xlat12.x = x_2950;
            let x_2953 : f32 = u_xlat20.y;
            let x_2955 : f32 = u_xlat12.x;
            let x_2957 : f32 = u_xlat89;
            u_xlat89 = ((x_2953 * x_2955) + x_2957);
            let x_2960 : vec4<f32> = u_xlat15;
            let x_2961 : vec2<f32> = vec2<f32>(x_2960.z, x_2960.w);
            let x_2963 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2961.x, x_2961.y, x_2963);
            let x_2970 : vec3<f32> = txVec40;
            let x_2972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2970.xy, x_2970.z);
            u_xlat12.x = x_2972;
            let x_2975 : f32 = u_xlat20.z;
            let x_2977 : f32 = u_xlat12.x;
            let x_2979 : f32 = u_xlat89;
            u_xlat89 = ((x_2975 * x_2977) + x_2979);
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2983 : vec2<f32> = vec2<f32>(x_2982.x, x_2982.y);
            let x_2985 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2983.x, x_2983.y, x_2985);
            let x_2992 : vec3<f32> = txVec41;
            let x_2994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2992.xy, x_2992.z);
            u_xlat12.x = x_2994;
            let x_2997 : f32 = u_xlat20.w;
            let x_2999 : f32 = u_xlat12.x;
            let x_3001 : f32 = u_xlat89;
            u_xlat89 = ((x_2997 * x_2999) + x_3001);
            let x_3004 : vec4<f32> = u_xlat14;
            let x_3005 : vec2<f32> = vec2<f32>(x_3004.z, x_3004.w);
            let x_3007 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
            let x_3014 : vec3<f32> = txVec42;
            let x_3016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
            u_xlat12.x = x_3016;
            let x_3018 : f32 = u_xlat88;
            let x_3020 : f32 = u_xlat12.x;
            let x_3022 : f32 = u_xlat89;
            u_xlat87 = ((x_3018 * x_3020) + x_3022);
          } else {
            let x_3025 : vec4<f32> = u_xlat11;
            let x_3028 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3031 : vec2<f32> = ((vec2<f32>(x_3025.x, x_3025.y) * vec2<f32>(x_3028.z, x_3028.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3032 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3031.x, x_3031.y, x_3032.z, x_3032.w);
            let x_3034 : vec4<f32> = u_xlat12;
            let x_3036 : vec2<f32> = floor(vec2<f32>(x_3034.x, x_3034.y));
            let x_3037 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3036.x, x_3036.y, x_3037.z, x_3037.w);
            let x_3039 : vec4<f32> = u_xlat11;
            let x_3042 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3039.x, x_3039.y) * vec2<f32>(x_3042.z, x_3042.w)) + -(vec2<f32>(x_3045.x, x_3045.y)));
            let x_3049 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3049.x, x_3049.x, x_3049.y, x_3049.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3052 : vec4<f32> = u_xlat13;
            let x_3054 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3052.x, x_3052.x, x_3052.z, x_3052.z) * vec4<f32>(x_3054.x, x_3054.x, x_3054.z, x_3054.z));
            let x_3057 : vec4<f32> = u_xlat14;
            let x_3059 : vec2<f32> = (vec2<f32>(x_3057.y, x_3057.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3060 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3060.x, x_3059.x, x_3060.z, x_3059.y);
            let x_3062 : vec4<f32> = u_xlat14;
            let x_3065 : vec2<f32> = u_xlat64;
            let x_3067 : vec2<f32> = ((vec2<f32>(x_3062.x, x_3062.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3065));
            let x_3068 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3067.x, x_3068.y, x_3067.y, x_3068.w);
            let x_3070 : vec2<f32> = u_xlat64;
            let x_3072 : vec2<f32> = (-(x_3070) + vec2<f32>(1.0f, 1.0f));
            let x_3073 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3072.x, x_3072.y, x_3073.z, x_3073.w);
            let x_3075 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3075, vec2<f32>(0.0f, 0.0f));
            let x_3077 : vec2<f32> = u_xlat66;
            let x_3079 : vec2<f32> = u_xlat66;
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3083 : vec2<f32> = ((-(x_3077) * x_3079) + vec2<f32>(x_3081.x, x_3081.y));
            let x_3084 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3083.x, x_3083.y, x_3084.z, x_3084.w);
            let x_3086 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3086, vec2<f32>(0.0f, 0.0f));
            let x_3089 : vec2<f32> = u_xlat66;
            let x_3091 : vec2<f32> = u_xlat66;
            let x_3093 : vec4<f32> = u_xlat13;
            let x_3095 : vec2<f32> = ((-(x_3089) * x_3091) + vec2<f32>(x_3093.y, x_3093.w));
            let x_3096 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3095.x, x_3096.y, x_3095.y);
            let x_3098 : vec4<f32> = u_xlat14;
            let x_3101 : vec2<f32> = (vec2<f32>(x_3098.x, x_3098.y) + vec2<f32>(2.0f, 2.0f));
            let x_3102 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3101.x, x_3101.y, x_3102.z, x_3102.w);
            let x_3104 : vec3<f32> = u_xlat39;
            let x_3106 : vec2<f32> = (vec2<f32>(x_3104.x, x_3104.z) + vec2<f32>(2.0f, 2.0f));
            let x_3107 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3107.x, x_3106.x, x_3107.z, x_3106.y);
            let x_3110 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3110 * 0.08163200318813323975f);
            let x_3113 : vec4<f32> = u_xlat13;
            let x_3116 : vec3<f32> = (vec3<f32>(x_3113.z, x_3113.x, x_3113.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3117 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3116.x, x_3116.y, x_3116.z, x_3117.w);
            let x_3119 : vec4<f32> = u_xlat14;
            let x_3121 : vec2<f32> = (vec2<f32>(x_3119.x, x_3119.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3122 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3121.x, x_3121.y, x_3122.z, x_3122.w);
            let x_3125 : f32 = u_xlat17.y;
            u_xlat16.x = x_3125;
            let x_3127 : vec2<f32> = u_xlat64;
            let x_3130 : vec2<f32> = ((vec2<f32>(x_3127.x, x_3127.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3131 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3131.x, x_3130.x, x_3131.z, x_3130.y);
            let x_3133 : vec2<f32> = u_xlat64;
            let x_3136 : vec2<f32> = ((vec2<f32>(x_3133.x, x_3133.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3137 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3136.x, x_3137.y, x_3136.y, x_3137.w);
            let x_3140 : f32 = u_xlat13.x;
            u_xlat14.y = x_3140;
            let x_3143 : f32 = u_xlat15.y;
            u_xlat14.w = x_3143;
            let x_3145 : vec4<f32> = u_xlat14;
            let x_3146 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3145 + x_3146);
            let x_3148 : vec2<f32> = u_xlat64;
            let x_3151 : vec2<f32> = ((vec2<f32>(x_3148.y, x_3148.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3152 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3152.x, x_3151.x, x_3152.z, x_3151.y);
            let x_3154 : vec2<f32> = u_xlat64;
            let x_3157 : vec2<f32> = ((vec2<f32>(x_3154.y, x_3154.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3158 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3157.x, x_3158.y, x_3157.y, x_3158.w);
            let x_3161 : f32 = u_xlat13.y;
            u_xlat15.y = x_3161;
            let x_3163 : vec4<f32> = u_xlat15;
            let x_3164 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3163 + x_3164);
            let x_3166 : vec4<f32> = u_xlat14;
            let x_3167 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3166 / x_3167);
            let x_3169 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3169 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3171 : vec4<f32> = u_xlat15;
            let x_3172 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3171 / x_3172);
            let x_3174 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3174 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3176 : vec4<f32> = u_xlat14;
            let x_3179 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3176.w, x_3176.x, x_3176.y, x_3176.z) * vec4<f32>(x_3179.x, x_3179.x, x_3179.x, x_3179.x));
            let x_3182 : vec4<f32> = u_xlat15;
            let x_3185 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3182.x, x_3182.w, x_3182.y, x_3182.z) * vec4<f32>(x_3185.y, x_3185.y, x_3185.y, x_3185.y));
            let x_3188 : vec4<f32> = u_xlat14;
            let x_3189 : vec3<f32> = vec3<f32>(x_3188.y, x_3188.z, x_3188.w);
            let x_3190 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3189.x, x_3190.y, x_3189.y, x_3189.z);
            let x_3193 : f32 = u_xlat15.x;
            u_xlat17.y = x_3193;
            let x_3195 : vec4<f32> = u_xlat12;
            let x_3198 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3201 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3195.x, x_3195.y, x_3195.x, x_3195.y) * vec4<f32>(x_3198.x, x_3198.y, x_3198.x, x_3198.y)) + vec4<f32>(x_3201.x, x_3201.y, x_3201.z, x_3201.y));
            let x_3204 : vec4<f32> = u_xlat12;
            let x_3207 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3210 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3204.x, x_3204.y) * vec2<f32>(x_3207.x, x_3207.y)) + vec2<f32>(x_3210.w, x_3210.y));
            let x_3214 : f32 = u_xlat17.y;
            u_xlat14.y = x_3214;
            let x_3217 : f32 = u_xlat15.z;
            u_xlat17.y = x_3217;
            let x_3219 : vec4<f32> = u_xlat12;
            let x_3222 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3225 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3219.x, x_3219.y, x_3219.x, x_3219.y) * vec4<f32>(x_3222.x, x_3222.y, x_3222.x, x_3222.y)) + vec4<f32>(x_3225.x, x_3225.y, x_3225.z, x_3225.y));
            let x_3228 : vec4<f32> = u_xlat12;
            let x_3231 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3234 : vec4<f32> = u_xlat17;
            let x_3236 : vec2<f32> = ((vec2<f32>(x_3228.x, x_3228.y) * vec2<f32>(x_3231.x, x_3231.y)) + vec2<f32>(x_3234.w, x_3234.y));
            let x_3237 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3236.x, x_3236.y, x_3237.z, x_3237.w);
            let x_3240 : f32 = u_xlat17.y;
            u_xlat14.z = x_3240;
            let x_3243 : vec4<f32> = u_xlat12;
            let x_3246 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3249 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3243.x, x_3243.y, x_3243.x, x_3243.y) * vec4<f32>(x_3246.x, x_3246.y, x_3246.x, x_3246.y)) + vec4<f32>(x_3249.x, x_3249.y, x_3249.x, x_3249.z));
            let x_3253 : f32 = u_xlat15.w;
            u_xlat17.y = x_3253;
            let x_3256 : vec4<f32> = u_xlat12;
            let x_3259 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3262 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3256.x, x_3256.y, x_3256.x, x_3256.y) * vec4<f32>(x_3259.x, x_3259.y, x_3259.x, x_3259.y)) + vec4<f32>(x_3262.x, x_3262.y, x_3262.z, x_3262.y));
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3269 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3272 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3266.x, x_3266.y) * vec2<f32>(x_3269.x, x_3269.y)) + vec2<f32>(x_3272.w, x_3272.y));
            let x_3276 : f32 = u_xlat17.y;
            u_xlat14.w = x_3276;
            let x_3279 : vec4<f32> = u_xlat12;
            let x_3282 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3285 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3279.x, x_3279.y) * vec2<f32>(x_3282.x, x_3282.y)) + vec2<f32>(x_3285.x, x_3285.w));
            let x_3288 : vec4<f32> = u_xlat17;
            let x_3289 : vec3<f32> = vec3<f32>(x_3288.x, x_3288.z, x_3288.w);
            let x_3290 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3289.x, x_3290.y, x_3289.y, x_3289.z);
            let x_3292 : vec4<f32> = u_xlat12;
            let x_3295 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3298 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3292.x, x_3292.y, x_3292.x, x_3292.y) * vec4<f32>(x_3295.x, x_3295.y, x_3295.x, x_3295.y)) + vec4<f32>(x_3298.x, x_3298.y, x_3298.z, x_3298.y));
            let x_3302 : vec4<f32> = u_xlat12;
            let x_3305 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3308 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3302.x, x_3302.y) * vec2<f32>(x_3305.x, x_3305.y)) + vec2<f32>(x_3308.w, x_3308.y));
            let x_3312 : f32 = u_xlat14.x;
            u_xlat15.x = x_3312;
            let x_3314 : vec4<f32> = u_xlat12;
            let x_3317 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3320 : vec4<f32> = u_xlat15;
            let x_3322 : vec2<f32> = ((vec2<f32>(x_3314.x, x_3314.y) * vec2<f32>(x_3317.x, x_3317.y)) + vec2<f32>(x_3320.x, x_3320.y));
            let x_3323 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3322.x, x_3322.y, x_3323.z, x_3323.w);
            let x_3326 : vec4<f32> = u_xlat13;
            let x_3328 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3326.x, x_3326.x, x_3326.x, x_3326.x) * x_3328);
            let x_3331 : vec4<f32> = u_xlat13;
            let x_3333 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3331.y, x_3331.y, x_3331.y, x_3331.y) * x_3333);
            let x_3336 : vec4<f32> = u_xlat13;
            let x_3338 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3336.z, x_3336.z, x_3336.z, x_3336.z) * x_3338);
            let x_3340 : vec4<f32> = u_xlat13;
            let x_3342 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3340.w, x_3340.w, x_3340.w, x_3340.w) * x_3342);
            let x_3345 : vec4<f32> = u_xlat18;
            let x_3346 : vec2<f32> = vec2<f32>(x_3345.x, x_3345.y);
            let x_3348 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3346.x, x_3346.y, x_3348);
            let x_3355 : vec3<f32> = txVec43;
            let x_3357 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3355.xy, x_3355.z);
            u_xlat88 = x_3357;
            let x_3359 : vec4<f32> = u_xlat18;
            let x_3360 : vec2<f32> = vec2<f32>(x_3359.z, x_3359.w);
            let x_3362 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3360.x, x_3360.y, x_3362);
            let x_3369 : vec3<f32> = txVec44;
            let x_3371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3369.xy, x_3369.z);
            u_xlat89 = x_3371;
            let x_3372 : f32 = u_xlat89;
            let x_3374 : f32 = u_xlat23.y;
            u_xlat89 = (x_3372 * x_3374);
            let x_3377 : f32 = u_xlat23.x;
            let x_3378 : f32 = u_xlat88;
            let x_3380 : f32 = u_xlat89;
            u_xlat88 = ((x_3377 * x_3378) + x_3380);
            let x_3383 : vec2<f32> = u_xlat64;
            let x_3385 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3383.x, x_3383.y, x_3385);
            let x_3392 : vec3<f32> = txVec45;
            let x_3394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3392.xy, x_3392.z);
            u_xlat89 = x_3394;
            let x_3396 : f32 = u_xlat23.z;
            let x_3397 : f32 = u_xlat89;
            let x_3399 : f32 = u_xlat88;
            u_xlat88 = ((x_3396 * x_3397) + x_3399);
            let x_3402 : vec4<f32> = u_xlat21;
            let x_3403 : vec2<f32> = vec2<f32>(x_3402.x, x_3402.y);
            let x_3405 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3403.x, x_3403.y, x_3405);
            let x_3412 : vec3<f32> = txVec46;
            let x_3414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3412.xy, x_3412.z);
            u_xlat89 = x_3414;
            let x_3416 : f32 = u_xlat23.w;
            let x_3417 : f32 = u_xlat89;
            let x_3419 : f32 = u_xlat88;
            u_xlat88 = ((x_3416 * x_3417) + x_3419);
            let x_3422 : vec4<f32> = u_xlat19;
            let x_3423 : vec2<f32> = vec2<f32>(x_3422.x, x_3422.y);
            let x_3425 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec47;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat89 = x_3434;
            let x_3436 : f32 = u_xlat24.x;
            let x_3437 : f32 = u_xlat89;
            let x_3439 : f32 = u_xlat88;
            u_xlat88 = ((x_3436 * x_3437) + x_3439);
            let x_3442 : vec4<f32> = u_xlat19;
            let x_3443 : vec2<f32> = vec2<f32>(x_3442.z, x_3442.w);
            let x_3445 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3443.x, x_3443.y, x_3445);
            let x_3452 : vec3<f32> = txVec48;
            let x_3454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3452.xy, x_3452.z);
            u_xlat89 = x_3454;
            let x_3456 : f32 = u_xlat24.y;
            let x_3457 : f32 = u_xlat89;
            let x_3459 : f32 = u_xlat88;
            u_xlat88 = ((x_3456 * x_3457) + x_3459);
            let x_3462 : vec4<f32> = u_xlat20;
            let x_3463 : vec2<f32> = vec2<f32>(x_3462.x, x_3462.y);
            let x_3465 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3463.x, x_3463.y, x_3465);
            let x_3472 : vec3<f32> = txVec49;
            let x_3474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3472.xy, x_3472.z);
            u_xlat89 = x_3474;
            let x_3476 : f32 = u_xlat24.z;
            let x_3477 : f32 = u_xlat89;
            let x_3479 : f32 = u_xlat88;
            u_xlat88 = ((x_3476 * x_3477) + x_3479);
            let x_3482 : vec4<f32> = u_xlat21;
            let x_3483 : vec2<f32> = vec2<f32>(x_3482.z, x_3482.w);
            let x_3485 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3483.x, x_3483.y, x_3485);
            let x_3492 : vec3<f32> = txVec50;
            let x_3494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3492.xy, x_3492.z);
            u_xlat89 = x_3494;
            let x_3496 : f32 = u_xlat24.w;
            let x_3497 : f32 = u_xlat89;
            let x_3499 : f32 = u_xlat88;
            u_xlat88 = ((x_3496 * x_3497) + x_3499);
            let x_3502 : vec4<f32> = u_xlat22;
            let x_3503 : vec2<f32> = vec2<f32>(x_3502.x, x_3502.y);
            let x_3505 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3503.x, x_3503.y, x_3505);
            let x_3512 : vec3<f32> = txVec51;
            let x_3514 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3512.xy, x_3512.z);
            u_xlat89 = x_3514;
            let x_3516 : f32 = u_xlat25.x;
            let x_3517 : f32 = u_xlat89;
            let x_3519 : f32 = u_xlat88;
            u_xlat88 = ((x_3516 * x_3517) + x_3519);
            let x_3522 : vec4<f32> = u_xlat22;
            let x_3523 : vec2<f32> = vec2<f32>(x_3522.z, x_3522.w);
            let x_3525 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3523.x, x_3523.y, x_3525);
            let x_3532 : vec3<f32> = txVec52;
            let x_3534 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3532.xy, x_3532.z);
            u_xlat89 = x_3534;
            let x_3536 : f32 = u_xlat25.y;
            let x_3537 : f32 = u_xlat89;
            let x_3539 : f32 = u_xlat88;
            u_xlat88 = ((x_3536 * x_3537) + x_3539);
            let x_3542 : vec2<f32> = u_xlat40;
            let x_3544 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3542.x, x_3542.y, x_3544);
            let x_3551 : vec3<f32> = txVec53;
            let x_3553 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3551.xy, x_3551.z);
            u_xlat89 = x_3553;
            let x_3555 : f32 = u_xlat25.z;
            let x_3556 : f32 = u_xlat89;
            let x_3558 : f32 = u_xlat88;
            u_xlat88 = ((x_3555 * x_3556) + x_3558);
            let x_3561 : vec2<f32> = u_xlat72;
            let x_3563 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3561.x, x_3561.y, x_3563);
            let x_3570 : vec3<f32> = txVec54;
            let x_3572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3570.xy, x_3570.z);
            u_xlat89 = x_3572;
            let x_3574 : f32 = u_xlat25.w;
            let x_3575 : f32 = u_xlat89;
            let x_3577 : f32 = u_xlat88;
            u_xlat88 = ((x_3574 * x_3575) + x_3577);
            let x_3580 : vec4<f32> = u_xlat17;
            let x_3581 : vec2<f32> = vec2<f32>(x_3580.x, x_3580.y);
            let x_3583 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3581.x, x_3581.y, x_3583);
            let x_3590 : vec3<f32> = txVec55;
            let x_3592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3590.xy, x_3590.z);
            u_xlat89 = x_3592;
            let x_3594 : f32 = u_xlat13.x;
            let x_3595 : f32 = u_xlat89;
            let x_3597 : f32 = u_xlat88;
            u_xlat88 = ((x_3594 * x_3595) + x_3597);
            let x_3600 : vec4<f32> = u_xlat17;
            let x_3601 : vec2<f32> = vec2<f32>(x_3600.z, x_3600.w);
            let x_3603 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3601.x, x_3601.y, x_3603);
            let x_3610 : vec3<f32> = txVec56;
            let x_3612 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3610.xy, x_3610.z);
            u_xlat89 = x_3612;
            let x_3614 : f32 = u_xlat13.y;
            let x_3615 : f32 = u_xlat89;
            let x_3617 : f32 = u_xlat88;
            u_xlat88 = ((x_3614 * x_3615) + x_3617);
            let x_3620 : vec2<f32> = u_xlat67;
            let x_3622 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3620.x, x_3620.y, x_3622);
            let x_3629 : vec3<f32> = txVec57;
            let x_3631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3629.xy, x_3629.z);
            u_xlat89 = x_3631;
            let x_3633 : f32 = u_xlat13.z;
            let x_3634 : f32 = u_xlat89;
            let x_3636 : f32 = u_xlat88;
            u_xlat88 = ((x_3633 * x_3634) + x_3636);
            let x_3639 : vec4<f32> = u_xlat12;
            let x_3640 : vec2<f32> = vec2<f32>(x_3639.x, x_3639.y);
            let x_3642 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3640.x, x_3640.y, x_3642);
            let x_3649 : vec3<f32> = txVec58;
            let x_3651 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3649.xy, x_3649.z);
            u_xlat89 = x_3651;
            let x_3653 : f32 = u_xlat13.w;
            let x_3654 : f32 = u_xlat89;
            let x_3656 : f32 = u_xlat88;
            u_xlat87 = ((x_3653 * x_3654) + x_3656);
          }
        }
      } else {
        let x_3660 : vec4<f32> = u_xlat11;
        let x_3661 : vec2<f32> = vec2<f32>(x_3660.x, x_3660.y);
        let x_3663 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3661.x, x_3661.y, x_3663);
        let x_3670 : vec3<f32> = txVec59;
        let x_3672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3670.xy, x_3670.z);
        u_xlat87 = x_3672;
      }
      let x_3673 : i32 = u_xlati84;
      let x_3675 : f32 = x_152.x_AdditionalShadowParams[x_3673].x;
      u_xlat88 = (1.0f + -(x_3675));
      let x_3678 : f32 = u_xlat87;
      let x_3679 : i32 = u_xlati84;
      let x_3681 : f32 = x_152.x_AdditionalShadowParams[x_3679].x;
      let x_3683 : f32 = u_xlat88;
      u_xlat87 = ((x_3678 * x_3681) + x_3683);
      let x_3686 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3686);
      let x_3689 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3689 >= 1.0f);
      let x_3692 : bool = u_xlatb88;
      let x_3694 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3692 | x_3694);
      let x_3696 : bool = u_xlatb88;
      let x_3697 : f32 = u_xlat87;
      u_xlat87 = select(x_3697, 1.0f, x_3696);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3700 : f32 = u_xlat87;
    u_xlat88 = (-(x_3700) + 1.0f);
    let x_3703 : f32 = u_xlat1;
    let x_3704 : f32 = u_xlat88;
    let x_3706 : f32 = u_xlat87;
    u_xlat87 = ((x_3703 * x_3704) + x_3706);
    let x_3709 : i32 = u_xlati84;
    u_xlati88 = (1i << bitcast<u32>((x_3709 & 31i)));
    let x_3713 : i32 = u_xlati88;
    let x_3716 : f32 = x_1808.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3713) & bitcast<u32>(x_3716)));
    let x_3720 : i32 = u_xlati88;
    if ((x_3720 != 0i)) {
      let x_3724 : i32 = u_xlati84;
      let x_3726 : f32 = x_1808.x_AdditionalLightsLightTypes[x_3724].el;
      u_xlati88 = i32(x_3726);
      let x_3729 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3729 != 0i));
      let x_3733 : i32 = u_xlati84;
      u_xlati37 = (x_3733 << bitcast<u32>(2i));
      let x_3735 : i32 = u_xlati11;
      if ((x_3735 != 0i)) {
        let x_3739 : vec3<f32> = vs_TEXCOORD7;
        let x_3741 : i32 = u_xlati37;
        let x_3744 : i32 = u_xlati37;
        let x_3748 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3741 + 1i) / 4i)][((x_3744 + 1i) % 4i)];
        let x_3750 : vec3<f32> = (vec3<f32>(x_3739.y, x_3739.y, x_3739.y) * vec3<f32>(x_3748.x, x_3748.y, x_3748.w));
        let x_3751 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3750.x, x_3751.y, x_3750.y, x_3750.z);
        let x_3753 : i32 = u_xlati37;
        let x_3755 : i32 = u_xlati37;
        let x_3758 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[(x_3753 / 4i)][(x_3755 % 4i)];
        let x_3760 : vec3<f32> = vs_TEXCOORD7;
        let x_3763 : vec4<f32> = u_xlat11;
        let x_3765 : vec3<f32> = ((vec3<f32>(x_3758.x, x_3758.y, x_3758.w) * vec3<f32>(x_3760.x, x_3760.x, x_3760.x)) + vec3<f32>(x_3763.x, x_3763.z, x_3763.w));
        let x_3766 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3765.x, x_3766.y, x_3765.y, x_3765.z);
        let x_3768 : i32 = u_xlati37;
        let x_3771 : i32 = u_xlati37;
        let x_3775 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3768 + 2i) / 4i)][((x_3771 + 2i) % 4i)];
        let x_3777 : vec3<f32> = vs_TEXCOORD7;
        let x_3780 : vec4<f32> = u_xlat11;
        let x_3782 : vec3<f32> = ((vec3<f32>(x_3775.x, x_3775.y, x_3775.w) * vec3<f32>(x_3777.z, x_3777.z, x_3777.z)) + vec3<f32>(x_3780.x, x_3780.z, x_3780.w));
        let x_3783 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3782.x, x_3783.y, x_3782.y, x_3782.z);
        let x_3785 : vec4<f32> = u_xlat11;
        let x_3787 : i32 = u_xlati37;
        let x_3790 : i32 = u_xlati37;
        let x_3794 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3787 + 3i) / 4i)][((x_3790 + 3i) % 4i)];
        let x_3796 : vec3<f32> = (vec3<f32>(x_3785.x, x_3785.z, x_3785.w) + vec3<f32>(x_3794.x, x_3794.y, x_3794.w));
        let x_3797 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3796.x, x_3797.y, x_3796.y, x_3796.z);
        let x_3799 : vec4<f32> = u_xlat11;
        let x_3801 : vec4<f32> = u_xlat11;
        let x_3803 : vec2<f32> = (vec2<f32>(x_3799.x, x_3799.z) / vec2<f32>(x_3801.w, x_3801.w));
        let x_3804 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3803.x, x_3804.y, x_3803.y, x_3804.w);
        let x_3806 : vec4<f32> = u_xlat11;
        let x_3809 : vec2<f32> = ((vec2<f32>(x_3806.x, x_3806.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3810 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3809.x, x_3810.y, x_3809.y, x_3810.w);
        let x_3812 : vec4<f32> = u_xlat11;
        let x_3816 : vec2<f32> = clamp(vec2<f32>(x_3812.x, x_3812.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3817 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3816.x, x_3817.y, x_3816.y, x_3817.w);
        let x_3819 : i32 = u_xlati84;
        let x_3821 : vec4<f32> = x_1808.x_AdditionalLightsCookieAtlasUVRects[x_3819];
        let x_3823 : vec4<f32> = u_xlat11;
        let x_3826 : i32 = u_xlati84;
        let x_3828 : vec4<f32> = x_1808.x_AdditionalLightsCookieAtlasUVRects[x_3826];
        let x_3830 : vec2<f32> = ((vec2<f32>(x_3821.x, x_3821.y) * vec2<f32>(x_3823.x, x_3823.z)) + vec2<f32>(x_3828.z, x_3828.w));
        let x_3831 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3830.x, x_3831.y, x_3830.y, x_3831.w);
      } else {
        let x_3834 : i32 = u_xlati88;
        u_xlatb88 = (x_3834 == 1i);
        let x_3836 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3836);
        let x_3838 : i32 = u_xlati88;
        if ((x_3838 != 0i)) {
          let x_3842 : vec3<f32> = vs_TEXCOORD7;
          let x_3844 : i32 = u_xlati37;
          let x_3847 : i32 = u_xlati37;
          let x_3851 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3844 + 1i) / 4i)][((x_3847 + 1i) % 4i)];
          let x_3853 : vec2<f32> = (vec2<f32>(x_3842.y, x_3842.y) * vec2<f32>(x_3851.x, x_3851.y));
          let x_3854 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3853.x, x_3853.y, x_3854.z, x_3854.w);
          let x_3856 : i32 = u_xlati37;
          let x_3858 : i32 = u_xlati37;
          let x_3861 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[(x_3856 / 4i)][(x_3858 % 4i)];
          let x_3863 : vec3<f32> = vs_TEXCOORD7;
          let x_3866 : vec4<f32> = u_xlat12;
          let x_3868 : vec2<f32> = ((vec2<f32>(x_3861.x, x_3861.y) * vec2<f32>(x_3863.x, x_3863.x)) + vec2<f32>(x_3866.x, x_3866.y));
          let x_3869 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3868.x, x_3868.y, x_3869.z, x_3869.w);
          let x_3871 : i32 = u_xlati37;
          let x_3874 : i32 = u_xlati37;
          let x_3878 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3871 + 2i) / 4i)][((x_3874 + 2i) % 4i)];
          let x_3880 : vec3<f32> = vs_TEXCOORD7;
          let x_3883 : vec4<f32> = u_xlat12;
          let x_3885 : vec2<f32> = ((vec2<f32>(x_3878.x, x_3878.y) * vec2<f32>(x_3880.z, x_3880.z)) + vec2<f32>(x_3883.x, x_3883.y));
          let x_3886 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3885.x, x_3885.y, x_3886.z, x_3886.w);
          let x_3888 : vec4<f32> = u_xlat12;
          let x_3890 : i32 = u_xlati37;
          let x_3893 : i32 = u_xlati37;
          let x_3897 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3890 + 3i) / 4i)][((x_3893 + 3i) % 4i)];
          let x_3899 : vec2<f32> = (vec2<f32>(x_3888.x, x_3888.y) + vec2<f32>(x_3897.x, x_3897.y));
          let x_3900 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3899.x, x_3899.y, x_3900.z, x_3900.w);
          let x_3902 : vec4<f32> = u_xlat12;
          let x_3905 : vec2<f32> = ((vec2<f32>(x_3902.x, x_3902.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3906 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3905.x, x_3905.y, x_3906.z, x_3906.w);
          let x_3908 : vec4<f32> = u_xlat12;
          let x_3910 : vec2<f32> = fract(vec2<f32>(x_3908.x, x_3908.y));
          let x_3911 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3910.x, x_3910.y, x_3911.z, x_3911.w);
          let x_3913 : i32 = u_xlati84;
          let x_3915 : vec4<f32> = x_1808.x_AdditionalLightsCookieAtlasUVRects[x_3913];
          let x_3917 : vec4<f32> = u_xlat12;
          let x_3920 : i32 = u_xlati84;
          let x_3922 : vec4<f32> = x_1808.x_AdditionalLightsCookieAtlasUVRects[x_3920];
          let x_3924 : vec2<f32> = ((vec2<f32>(x_3915.x, x_3915.y) * vec2<f32>(x_3917.x, x_3917.y)) + vec2<f32>(x_3922.z, x_3922.w));
          let x_3925 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3924.x, x_3925.y, x_3924.y, x_3925.w);
        } else {
          let x_3928 : vec3<f32> = vs_TEXCOORD7;
          let x_3930 : i32 = u_xlati37;
          let x_3933 : i32 = u_xlati37;
          let x_3937 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3930 + 1i) / 4i)][((x_3933 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3928.y, x_3928.y, x_3928.y, x_3928.y) * x_3937);
          let x_3939 : i32 = u_xlati37;
          let x_3941 : i32 = u_xlati37;
          let x_3944 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[(x_3939 / 4i)][(x_3941 % 4i)];
          let x_3945 : vec3<f32> = vs_TEXCOORD7;
          let x_3948 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3944 * vec4<f32>(x_3945.x, x_3945.x, x_3945.x, x_3945.x)) + x_3948);
          let x_3950 : i32 = u_xlati37;
          let x_3953 : i32 = u_xlati37;
          let x_3957 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3950 + 2i) / 4i)][((x_3953 + 2i) % 4i)];
          let x_3958 : vec3<f32> = vs_TEXCOORD7;
          let x_3961 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3957 * vec4<f32>(x_3958.z, x_3958.z, x_3958.z, x_3958.z)) + x_3961);
          let x_3963 : vec4<f32> = u_xlat12;
          let x_3964 : i32 = u_xlati37;
          let x_3967 : i32 = u_xlati37;
          let x_3971 : vec4<f32> = x_1808.x_AdditionalLightsWorldToLights[((x_3964 + 3i) / 4i)][((x_3967 + 3i) % 4i)];
          u_xlat12 = (x_3963 + x_3971);
          let x_3973 : vec4<f32> = u_xlat12;
          let x_3975 : vec4<f32> = u_xlat12;
          let x_3977 : vec3<f32> = (vec3<f32>(x_3973.x, x_3973.y, x_3973.z) / vec3<f32>(x_3975.w, x_3975.w, x_3975.w));
          let x_3978 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3977.x, x_3977.y, x_3977.z, x_3978.w);
          let x_3980 : vec4<f32> = u_xlat12;
          let x_3982 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3980.x, x_3980.y, x_3980.z), vec3<f32>(x_3982.x, x_3982.y, x_3982.z));
          let x_3985 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3985);
          let x_3987 : f32 = u_xlat88;
          let x_3989 : vec4<f32> = u_xlat12;
          let x_3991 : vec3<f32> = (vec3<f32>(x_3987, x_3987, x_3987) * vec3<f32>(x_3989.x, x_3989.y, x_3989.z));
          let x_3992 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3991.x, x_3991.y, x_3991.z, x_3992.w);
          let x_3994 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3994.x, x_3994.y, x_3994.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3999 : f32 = u_xlat88;
          u_xlat88 = max(x_3999, 0.00000099999999747524f);
          let x_4002 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_4002);
          let x_4004 : f32 = u_xlat88;
          let x_4006 : vec4<f32> = u_xlat12;
          let x_4008 : vec3<f32> = (vec3<f32>(x_4004, x_4004, x_4004) * vec3<f32>(x_4006.z, x_4006.x, x_4006.y));
          let x_4009 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4008.x, x_4008.y, x_4008.z, x_4009.w);
          let x_4012 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4012);
          let x_4016 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4016, 0.0f, 1.0f);
          let x_4021 : vec4<f32> = u_xlat13;
          let x_4023 : vec4<bool> = (vec4<f32>(x_4021.y, x_4021.y, x_4021.z, x_4021.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4024 : vec2<bool> = vec2<bool>(x_4023.x, x_4023.z);
          let x_4025 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_4024.x, x_4025.y, x_4024.y);
          let x_4028 : bool = u_xlatb37.x;
          if (x_4028) {
            let x_4033 : f32 = u_xlat13.x;
            x_4029 = x_4033;
          } else {
            let x_4036 : f32 = u_xlat13.x;
            x_4029 = -(x_4036);
          }
          let x_4038 : f32 = x_4029;
          u_xlat37.x = x_4038;
          let x_4041 : bool = u_xlatb37.z;
          if (x_4041) {
            let x_4046 : f32 = u_xlat13.x;
            x_4042 = x_4046;
          } else {
            let x_4049 : f32 = u_xlat13.x;
            x_4042 = -(x_4049);
          }
          let x_4051 : f32 = x_4042;
          u_xlat37.z = x_4051;
          let x_4053 : vec4<f32> = u_xlat12;
          let x_4055 : f32 = u_xlat88;
          let x_4058 : vec3<f32> = u_xlat37;
          let x_4060 : vec2<f32> = ((vec2<f32>(x_4053.x, x_4053.y) * vec2<f32>(x_4055, x_4055)) + vec2<f32>(x_4058.x, x_4058.z));
          let x_4061 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4060.x, x_4061.y, x_4060.y);
          let x_4063 : vec3<f32> = u_xlat37;
          let x_4066 : vec2<f32> = ((vec2<f32>(x_4063.x, x_4063.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4067 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4066.x, x_4067.y, x_4066.y);
          let x_4069 : vec3<f32> = u_xlat37;
          let x_4073 : vec2<f32> = clamp(vec2<f32>(x_4069.x, x_4069.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4074 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4073.x, x_4074.y, x_4073.y);
          let x_4076 : i32 = u_xlati84;
          let x_4078 : vec4<f32> = x_1808.x_AdditionalLightsCookieAtlasUVRects[x_4076];
          let x_4080 : vec3<f32> = u_xlat37;
          let x_4083 : i32 = u_xlati84;
          let x_4085 : vec4<f32> = x_1808.x_AdditionalLightsCookieAtlasUVRects[x_4083];
          let x_4087 : vec2<f32> = ((vec2<f32>(x_4078.x, x_4078.y) * vec2<f32>(x_4080.x, x_4080.z)) + vec2<f32>(x_4085.z, x_4085.w));
          let x_4088 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4087.x, x_4088.y, x_4087.y, x_4088.w);
        }
      }
      let x_4095 : vec4<f32> = u_xlat11;
      let x_4097 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4095.x, x_4095.z), 0.0f);
      u_xlat11 = x_4097;
      let x_4099 : bool = u_xlatb7.y;
      if (x_4099) {
        let x_4104 : f32 = u_xlat11.w;
        x_4100 = x_4104;
      } else {
        let x_4107 : f32 = u_xlat11.x;
        x_4100 = x_4107;
      }
      let x_4108 : f32 = x_4100;
      u_xlat88 = x_4108;
      let x_4110 : bool = u_xlatb7.x;
      if (x_4110) {
        let x_4114 : vec4<f32> = u_xlat11;
        x_4111 = vec3<f32>(x_4114.x, x_4114.y, x_4114.z);
      } else {
        let x_4117 : f32 = u_xlat88;
        x_4111 = vec3<f32>(x_4117, x_4117, x_4117);
      }
      let x_4119 : vec3<f32> = x_4111;
      let x_4120 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4119.x, x_4119.y, x_4119.z, x_4120.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4126 : vec4<f32> = u_xlat11;
    let x_4128 : i32 = u_xlati84;
    let x_4130 : vec4<f32> = x_2242.x_AdditionalLightsColor[x_4128];
    let x_4132 : vec3<f32> = (vec3<f32>(x_4126.x, x_4126.y, x_4126.z) * vec3<f32>(x_4130.x, x_4130.y, x_4130.z));
    let x_4133 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4132.x, x_4132.y, x_4132.z, x_4133.w);
    let x_4136 : f32 = u_xlat59.x;
    let x_4137 : f32 = u_xlat87;
    u_xlat84 = (x_4136 * x_4137);
    let x_4139 : vec3<f32> = u_xlat2;
    let x_4140 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(x_4139, vec3<f32>(x_4140.x, x_4140.y, x_4140.z));
    let x_4145 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4145, 0.0f, 1.0f);
    let x_4148 : f32 = u_xlat84;
    let x_4150 : f32 = u_xlat59.x;
    u_xlat84 = (x_4148 * x_4150);
    let x_4152 : f32 = u_xlat84;
    let x_4154 : vec4<f32> = u_xlat11;
    let x_4156 : vec3<f32> = (vec3<f32>(x_4152, x_4152, x_4152) * vec3<f32>(x_4154.x, x_4154.y, x_4154.z));
    let x_4157 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4156.x, x_4156.y, x_4156.z, x_4157.w);
    let x_4159 : vec4<f32> = u_xlat9;
    let x_4161 : f32 = u_xlat85;
    let x_4164 : vec3<f32> = u_xlat27;
    let x_4165 : vec3<f32> = ((vec3<f32>(x_4159.x, x_4159.y, x_4159.z) * vec3<f32>(x_4161, x_4161, x_4161)) + x_4164);
    let x_4166 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4165.x, x_4165.y, x_4165.z, x_4166.w);
    let x_4168 : vec4<f32> = u_xlat9;
    let x_4170 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4168.x, x_4168.y, x_4168.z), vec3<f32>(x_4170.x, x_4170.y, x_4170.z));
    let x_4173 : f32 = u_xlat84;
    u_xlat84 = max(x_4173, 1.17549435e-38f);
    let x_4175 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4175);
    let x_4177 : f32 = u_xlat84;
    let x_4179 : vec4<f32> = u_xlat9;
    let x_4181 : vec3<f32> = (vec3<f32>(x_4177, x_4177, x_4177) * vec3<f32>(x_4179.x, x_4179.y, x_4179.z));
    let x_4182 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4181.x, x_4181.y, x_4181.z, x_4182.w);
    let x_4184 : vec3<f32> = u_xlat2;
    let x_4185 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4184, vec3<f32>(x_4185.x, x_4185.y, x_4185.z));
    let x_4188 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4188, 0.0f, 1.0f);
    let x_4190 : vec4<f32> = u_xlat10;
    let x_4192 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4190.x, x_4190.y, x_4190.z), vec3<f32>(x_4192.x, x_4192.y, x_4192.z));
    let x_4197 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4197, 0.0f, 1.0f);
    let x_4200 : f32 = u_xlat84;
    let x_4201 : f32 = u_xlat84;
    u_xlat84 = (x_4200 * x_4201);
    let x_4203 : f32 = u_xlat84;
    let x_4205 : f32 = u_xlat8.x;
    u_xlat84 = ((x_4203 * x_4205) + 1.00001001358032226562f);
    let x_4209 : f32 = u_xlat59.x;
    let x_4211 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4209 * x_4211);
    let x_4214 : f32 = u_xlat84;
    let x_4215 : f32 = u_xlat84;
    u_xlat84 = (x_4214 * x_4215);
    let x_4218 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_4218, 0.10000000149011611938f);
    let x_4221 : f32 = u_xlat84;
    let x_4223 : f32 = u_xlat59.x;
    u_xlat84 = (x_4221 * x_4223);
    let x_4225 : f32 = u_xlat82;
    let x_4226 : f32 = u_xlat84;
    u_xlat84 = (x_4225 * x_4226);
    let x_4228 : f32 = u_xlat83;
    let x_4229 : f32 = u_xlat84;
    u_xlat84 = (x_4228 / x_4229);
    let x_4231 : vec4<f32> = u_xlat0;
    let x_4233 : f32 = u_xlat84;
    let x_4236 : vec3<f32> = u_xlat5;
    let x_4237 : vec3<f32> = ((vec3<f32>(x_4231.x, x_4231.y, x_4231.z) * vec3<f32>(x_4233, x_4233, x_4233)) + x_4236);
    let x_4238 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4237.x, x_4237.y, x_4237.z, x_4238.w);
    let x_4240 : vec4<f32> = u_xlat9;
    let x_4242 : vec4<f32> = u_xlat11;
    let x_4245 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4240.x, x_4240.y, x_4240.z) * vec3<f32>(x_4242.x, x_4242.y, x_4242.z)) + x_4245);

    continuing {
      let x_4247 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4247 + bitcast<u32>(1i));
    }
  }
  let x_4249 : vec4<f32> = u_xlat6;
  let x_4251 : vec4<f32> = u_xlat3;
  let x_4254 : vec4<f32> = u_xlat4;
  let x_4256 : vec3<f32> = ((vec3<f32>(x_4249.x, x_4249.y, x_4249.z) * vec3<f32>(x_4251.x, x_4251.z, x_4251.w)) + vec3<f32>(x_4254.x, x_4254.y, x_4254.z));
  let x_4257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4256.x, x_4256.y, x_4256.z, x_4257.w);
  let x_4259 : vec3<f32> = u_xlat34;
  let x_4260 : vec4<f32> = u_xlat0;
  let x_4262 : vec3<f32> = (x_4259 + vec3<f32>(x_4260.x, x_4260.y, x_4260.z));
  let x_4263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4262.x, x_4262.y, x_4262.z, x_4263.w);
  let x_4265 : f32 = u_xlat80;
  let x_4266 : f32 = u_xlat80;
  u_xlat78 = (x_4265 * -(x_4266));
  let x_4269 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4269);
  let x_4271 : vec4<f32> = u_xlat0;
  let x_4274 : vec4<f32> = x_29.unity_FogColor;
  let x_4277 : vec3<f32> = (vec3<f32>(x_4271.x, x_4271.y, x_4271.z) + -(vec3<f32>(x_4274.x, x_4274.y, x_4274.z)));
  let x_4278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4277.x, x_4277.y, x_4277.z, x_4278.w);
  let x_4282 : f32 = u_xlat78;
  let x_4284 : vec4<f32> = u_xlat0;
  let x_4288 : vec4<f32> = x_29.unity_FogColor;
  let x_4290 : vec3<f32> = ((vec3<f32>(x_4282, x_4282, x_4282) * vec3<f32>(x_4284.x, x_4284.y, x_4284.z)) + vec3<f32>(x_4288.x, x_4288.y, x_4288.z));
  let x_4291 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4290.x, x_4290.y, x_4290.z, x_4291.w);
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


