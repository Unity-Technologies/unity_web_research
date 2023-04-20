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

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(3) var<uniform> x_288 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

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

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1654 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1834 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu31 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_2098 : AdditionalLights;

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

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_116 : f32;
  var x_129 : f32;
  var x_141 : f32;
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
  var x_1607 : f32;
  var x_1724 : f32;
  var x_1735 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2238 : f32;
  var x_2248 : f32;
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
  var x_3834 : f32;
  var x_3847 : f32;
  var x_3905 : f32;
  var x_3916 : vec3<f32>;
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
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat53;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_114 : bool = u_xlatb27;
  if (x_114) {
    let x_120 : f32 = u_xlat2.x;
    x_116 = x_120;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[0i].z;
    x_116 = x_125;
  }
  let x_126 : f32 = x_116;
  u_xlat3.x = x_126;
  let x_128 : bool = u_xlatb27;
  if (x_128) {
    let x_134 : f32 = u_xlat2.y;
    x_129 = x_134;
  } else {
    let x_137 : f32 = x_29.unity_MatrixV[1i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.y = x_138;
  let x_140 : bool = u_xlatb27;
  if (x_140) {
    let x_145 : f32 = u_xlat2.z;
    x_141 = x_145;
  } else {
    let x_149 : f32 = x_29.unity_MatrixV[2i].z;
    x_141 = x_149;
  }
  let x_150 : f32 = x_141;
  u_xlat3.z = x_150;
  let x_154 : vec3<f32> = vs_TEXCOORD3;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(x_154, x_155);
  let x_159 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_159);
  let x_162 : vec3<f32> = u_xlat27;
  let x_164 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27 = (vec3<f32>(x_162.x, x_162.x, x_162.x) * x_164);
  let x_171 : vec4<f32> = vs_TEXCOORD0;
  let x_174 : f32 = x_29.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_171.z, x_171.w), x_174);
  u_xlat2 = x_175;
  let x_181 : vec4<f32> = vs_TEXCOORD0;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_181.z, x_181.w), x_184);
  u_xlat4 = vec3<f32>(x_185.x, x_185.y, x_185.z);
  let x_187 : vec4<f32> = u_xlat2;
  let x_191 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec3<f32> = u_xlat27;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_194, vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : f32 = u_xlat2.x;
  u_xlat2.x = (x_200 + 0.5f);
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec3<f32> = u_xlat4;
  let x_207 : vec3<f32> = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_212 : f32 = u_xlat2.w;
  u_xlat80 = max(x_212, 0.00009999999747378752f);
  let x_215 : vec4<f32> = u_xlat2;
  let x_217 : f32 = u_xlat80;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) / vec3<f32>(x_217, x_217, x_217));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : f32 = u_xlat1;
  u_xlat80 = ((-(x_222) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_228 : f32 = u_xlat80;
  u_xlat81 = (-(x_228) + 1.0f);
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : f32 = u_xlat80;
  u_xlat4 = (vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(x_234, x_234, x_234));
  let x_237 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : f32 = u_xlat1;
  let x_246 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244, x_244, x_244) * vec3<f32>(x_246.x, x_246.y, x_246.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_255) + 1.0f);
  let x_258 : f32 = u_xlat1;
  let x_259 : f32 = u_xlat1;
  u_xlat80 = (x_258 * x_259);
  let x_261 : f32 = u_xlat80;
  u_xlat80 = max(x_261, 0.0078125f);
  let x_265 : f32 = u_xlat80;
  let x_266 : f32 = u_xlat80;
  u_xlat82 = (x_265 * x_266);
  let x_270 : f32 = u_xlat0.w;
  let x_271 : f32 = u_xlat81;
  u_xlat78 = (x_270 + x_271);
  let x_273 : f32 = u_xlat78;
  u_xlat78 = clamp(x_273, 0.0f, 1.0f);
  let x_275 : f32 = u_xlat80;
  u_xlat81 = ((x_275 * 4.0f) + 2.0f);
  let x_291 : f32 = x_288.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_291);
  let x_293 : bool = u_xlatb5;
  if (x_293) {
    let x_297 : f32 = x_288.x_MainLightShadowParams.y;
    u_xlatb5 = (x_297 == 1.0f);
    let x_299 : bool = u_xlatb5;
    if (x_299) {
      let x_304 : vec4<f32> = vs_TEXCOORD8;
      let x_308 : vec4<f32> = x_288.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_304.x, x_304.y, x_304.x, x_304.y) + x_308);
      let x_312 : vec4<f32> = u_xlat5;
      let x_313 : vec2<f32> = vec2<f32>(x_312.x, x_312.y);
      let x_316 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_313.x, x_313.y, x_316);
      let x_329 : vec3<f32> = txVec0;
      let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_329.xy, x_329.z);
      u_xlat6.x = x_331;
      let x_334 : vec4<f32> = u_xlat5;
      let x_335 : vec2<f32> = vec2<f32>(x_334.z, x_334.w);
      let x_337 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_335.x, x_335.y, x_337);
      let x_344 : vec3<f32> = txVec1;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_344.xy, x_344.z);
      u_xlat6.y = x_346;
      let x_348 : vec4<f32> = vs_TEXCOORD8;
      let x_352 : vec4<f32> = x_288.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_348.x, x_348.y, x_348.x, x_348.y) + x_352);
      let x_355 : vec4<f32> = u_xlat5;
      let x_356 : vec2<f32> = vec2<f32>(x_355.x, x_355.y);
      let x_358 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_356.x, x_356.y, x_358);
      let x_365 : vec3<f32> = txVec2;
      let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_365.xy, x_365.z);
      u_xlat6.z = x_367;
      let x_370 : vec4<f32> = u_xlat5;
      let x_371 : vec2<f32> = vec2<f32>(x_370.z, x_370.w);
      let x_373 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_371.x, x_371.y, x_373);
      let x_380 : vec3<f32> = txVec3;
      let x_382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_380.xy, x_380.z);
      u_xlat6.w = x_382;
      let x_384 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_384, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_392 : f32 = x_288.x_MainLightShadowParams.y;
      u_xlatb31 = (x_392 == 2.0f);
      let x_394 : bool = u_xlatb31;
      if (x_394) {
        let x_398 : vec4<f32> = vs_TEXCOORD8;
        let x_402 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_406 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_402.z, x_402.w)) + vec2<f32>(0.5f, 0.5f));
        let x_407 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_406.x, x_406.y, x_407.z);
        let x_409 : vec3<f32> = u_xlat31;
        let x_411 : vec2<f32> = floor(vec2<f32>(x_409.x, x_409.y));
        let x_412 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_411.x, x_411.y, x_412.z);
        let x_414 : vec4<f32> = vs_TEXCOORD8;
        let x_417 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_420 : vec3<f32> = u_xlat31;
        let x_423 : vec2<f32> = ((vec2<f32>(x_414.x, x_414.y) * vec2<f32>(x_417.z, x_417.w)) + -(vec2<f32>(x_420.x, x_420.y)));
        let x_424 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
        let x_427 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_427.x, x_427.x, x_427.y, x_427.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_432 : vec4<f32> = u_xlat7;
        let x_434 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_432.x, x_432.x, x_432.z, x_432.z) * vec4<f32>(x_434.x, x_434.x, x_434.z, x_434.z));
        let x_439 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_439.y, x_439.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_444 : vec4<f32> = u_xlat8;
        let x_447 : vec4<f32> = u_xlat6;
        let x_450 : vec2<f32> = ((vec2<f32>(x_444.x, x_444.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_447.x, x_447.y)));
        let x_451 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_450.x, x_451.y, x_450.y, x_451.w);
        let x_453 : vec4<f32> = u_xlat6;
        let x_457 : vec2<f32> = (-(vec2<f32>(x_453.x, x_453.y)) + vec2<f32>(1.0f, 1.0f));
        let x_458 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_461 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_461.x, x_461.y), vec2<f32>(0.0f, 0.0f));
        let x_465 : vec2<f32> = u_xlat60;
        let x_467 : vec2<f32> = u_xlat60;
        let x_469 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_465) * x_467) + vec2<f32>(x_469.x, x_469.y));
        let x_472 : vec4<f32> = u_xlat6;
        let x_474 : vec2<f32> = max(vec2<f32>(x_472.x, x_472.y), vec2<f32>(0.0f, 0.0f));
        let x_475 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
        let x_477 : vec4<f32> = u_xlat6;
        let x_480 : vec4<f32> = u_xlat6;
        let x_483 : vec4<f32> = u_xlat7;
        let x_485 : vec2<f32> = ((-(vec2<f32>(x_477.x, x_477.y)) * vec2<f32>(x_480.x, x_480.y)) + vec2<f32>(x_483.y, x_483.w));
        let x_486 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_488 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_488 + vec2<f32>(1.0f, 1.0f));
        let x_490 : vec4<f32> = u_xlat6;
        let x_492 : vec2<f32> = (vec2<f32>(x_490.x, x_490.y) + vec2<f32>(1.0f, 1.0f));
        let x_493 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_496 : vec4<f32> = u_xlat7;
        let x_500 : vec2<f32> = (vec2<f32>(x_496.x, x_496.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_501 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_504 : vec4<f32> = u_xlat8;
        let x_506 : vec2<f32> = (vec2<f32>(x_504.x, x_504.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_507 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_509 : vec2<f32> = u_xlat60;
        let x_510 : vec2<f32> = (x_509 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_511 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_514 : vec4<f32> = u_xlat6;
        let x_516 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_517 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_519 : vec4<f32> = u_xlat7;
        let x_521 : vec2<f32> = (vec2<f32>(x_519.y, x_519.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_522 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_525 : f32 = u_xlat8.x;
        u_xlat9.z = x_525;
        let x_528 : f32 = u_xlat6.x;
        u_xlat9.w = x_528;
        let x_531 : f32 = u_xlat11.x;
        u_xlat10.z = x_531;
        let x_534 : f32 = u_xlat58.x;
        u_xlat10.w = x_534;
        let x_536 : vec4<f32> = u_xlat9;
        let x_538 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_536.z, x_536.w, x_536.x, x_536.z) + vec4<f32>(x_538.z, x_538.w, x_538.x, x_538.z));
        let x_542 : f32 = u_xlat9.y;
        u_xlat8.z = x_542;
        let x_545 : f32 = u_xlat6.y;
        u_xlat8.w = x_545;
        let x_548 : f32 = u_xlat10.y;
        u_xlat11.z = x_548;
        let x_551 : f32 = u_xlat58.y;
        u_xlat11.w = x_551;
        let x_553 : vec4<f32> = u_xlat8;
        let x_555 : vec4<f32> = u_xlat11;
        let x_557 : vec3<f32> = (vec3<f32>(x_553.z, x_553.y, x_553.w) + vec3<f32>(x_555.z, x_555.y, x_555.w));
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat10;
        let x_562 : vec4<f32> = u_xlat7;
        let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.z, x_560.w) / vec3<f32>(x_562.z, x_562.w, x_562.y));
        let x_565 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat8;
        let x_572 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_573 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_575 : vec4<f32> = u_xlat11;
        let x_577 : vec4<f32> = u_xlat6;
        let x_579 : vec3<f32> = (vec3<f32>(x_575.z, x_575.y, x_575.w) / vec3<f32>(x_577.x, x_577.y, x_577.z));
        let x_580 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat9;
        let x_584 : vec3<f32> = (vec3<f32>(x_582.x, x_582.y, x_582.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_585 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat8;
        let x_590 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_592 : vec3<f32> = (vec3<f32>(x_587.y, x_587.x, x_587.z) * vec3<f32>(x_590.x, x_590.x, x_590.x));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
        let x_595 : vec4<f32> = u_xlat9;
        let x_598 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_600 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_598.y, x_598.y, x_598.y));
        let x_601 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_604 : f32 = u_xlat9.x;
        u_xlat8.w = x_604;
        let x_606 : vec3<f32> = u_xlat31;
        let x_609 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y) * vec4<f32>(x_609.x, x_609.y, x_609.x, x_609.y)) + vec4<f32>(x_612.y, x_612.w, x_612.x, x_612.w));
        let x_615 : vec3<f32> = u_xlat31;
        let x_618 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_621 : vec4<f32> = u_xlat8;
        let x_623 : vec2<f32> = ((vec2<f32>(x_615.x, x_615.y) * vec2<f32>(x_618.x, x_618.y)) + vec2<f32>(x_621.z, x_621.w));
        let x_624 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_627 : f32 = u_xlat8.y;
        u_xlat9.w = x_627;
        let x_629 : vec4<f32> = u_xlat9;
        let x_630 : vec2<f32> = vec2<f32>(x_629.y, x_629.z);
        let x_631 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_631.x, x_630.x, x_631.z, x_630.y);
        let x_634 : vec3<f32> = u_xlat31;
        let x_637 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) * vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y)) + vec4<f32>(x_640.x, x_640.y, x_640.z, x_640.y));
        let x_643 : vec3<f32> = u_xlat31;
        let x_646 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.w, x_649.y, x_649.w, x_649.z));
        let x_652 : vec3<f32> = u_xlat31;
        let x_655 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_658 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y) * vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y)) + vec4<f32>(x_658.x, x_658.w, x_658.z, x_658.w));
        let x_662 : vec4<f32> = u_xlat6;
        let x_664 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_662.x, x_662.x, x_662.x, x_662.y) * vec4<f32>(x_664.z, x_664.w, x_664.y, x_664.z));
        let x_668 : vec4<f32> = u_xlat6;
        let x_670 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_668.y, x_668.y, x_668.z, x_668.z) * x_670);
        let x_673 : f32 = u_xlat6.z;
        let x_675 : f32 = u_xlat7.y;
        u_xlat31.x = (x_673 * x_675);
        let x_679 : vec4<f32> = u_xlat10;
        let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
        let x_682 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_680.x, x_680.y, x_682);
        let x_690 : vec3<f32> = txVec4;
        let x_692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_690.xy, x_690.z);
        u_xlat57.x = x_692;
        let x_695 : vec4<f32> = u_xlat10;
        let x_696 : vec2<f32> = vec2<f32>(x_695.z, x_695.w);
        let x_698 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_706 : vec3<f32> = txVec5;
        let x_708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_706.xy, x_706.z);
        u_xlat83 = x_708;
        let x_709 : f32 = u_xlat83;
        let x_711 : f32 = u_xlat13.y;
        u_xlat83 = (x_709 * x_711);
        let x_714 : f32 = u_xlat13.x;
        let x_716 : f32 = u_xlat57.x;
        let x_718 : f32 = u_xlat83;
        u_xlat57.x = ((x_714 * x_716) + x_718);
        let x_722 : vec4<f32> = u_xlat11;
        let x_723 : vec2<f32> = vec2<f32>(x_722.x, x_722.y);
        let x_725 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_723.x, x_723.y, x_725);
        let x_732 : vec3<f32> = txVec6;
        let x_734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_732.xy, x_732.z);
        u_xlat83 = x_734;
        let x_736 : f32 = u_xlat13.z;
        let x_737 : f32 = u_xlat83;
        let x_740 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_736 * x_737) + x_740);
        let x_744 : vec4<f32> = u_xlat9;
        let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
        let x_747 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec7;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat83 = x_756;
        let x_758 : f32 = u_xlat13.w;
        let x_759 : f32 = u_xlat83;
        let x_762 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_758 * x_759) + x_762);
        let x_766 : vec4<f32> = u_xlat12;
        let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
        let x_769 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_767.x, x_767.y, x_769);
        let x_776 : vec3<f32> = txVec8;
        let x_778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_776.xy, x_776.z);
        u_xlat83 = x_778;
        let x_780 : f32 = u_xlat14.x;
        let x_781 : f32 = u_xlat83;
        let x_784 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_780 * x_781) + x_784);
        let x_788 : vec4<f32> = u_xlat12;
        let x_789 : vec2<f32> = vec2<f32>(x_788.z, x_788.w);
        let x_791 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec9;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_798.xy, x_798.z);
        u_xlat83 = x_800;
        let x_802 : f32 = u_xlat14.y;
        let x_803 : f32 = u_xlat83;
        let x_806 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_802 * x_803) + x_806);
        let x_810 : vec4<f32> = u_xlat9;
        let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
        let x_813 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec10;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
        u_xlat83 = x_822;
        let x_824 : f32 = u_xlat14.z;
        let x_825 : f32 = u_xlat83;
        let x_828 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_824 * x_825) + x_828);
        let x_832 : vec4<f32> = u_xlat8;
        let x_833 : vec2<f32> = vec2<f32>(x_832.x, x_832.y);
        let x_835 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec11;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
        u_xlat83 = x_844;
        let x_846 : f32 = u_xlat14.w;
        let x_847 : f32 = u_xlat83;
        let x_850 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_846 * x_847) + x_850);
        let x_854 : vec4<f32> = u_xlat8;
        let x_855 : vec2<f32> = vec2<f32>(x_854.z, x_854.w);
        let x_857 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_864 : vec3<f32> = txVec12;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_864.xy, x_864.z);
        u_xlat83 = x_866;
        let x_868 : f32 = u_xlat31.x;
        let x_869 : f32 = u_xlat83;
        let x_872 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_868 * x_869) + x_872);
      } else {
        let x_876 : vec4<f32> = vs_TEXCOORD8;
        let x_879 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_882 : vec2<f32> = ((vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_879.z, x_879.w)) + vec2<f32>(0.5f, 0.5f));
        let x_883 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_882.x, x_882.y, x_883.z);
        let x_885 : vec3<f32> = u_xlat31;
        let x_887 : vec2<f32> = floor(vec2<f32>(x_885.x, x_885.y));
        let x_888 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_887.x, x_887.y, x_888.z);
        let x_890 : vec4<f32> = vs_TEXCOORD8;
        let x_893 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_896 : vec3<f32> = u_xlat31;
        let x_899 : vec2<f32> = ((vec2<f32>(x_890.x, x_890.y) * vec2<f32>(x_893.z, x_893.w)) + -(vec2<f32>(x_896.x, x_896.y)));
        let x_900 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_902.x, x_902.x, x_902.y, x_902.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_905 : vec4<f32> = u_xlat7;
        let x_907 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_905.x, x_905.x, x_905.z, x_905.z) * vec4<f32>(x_907.x, x_907.x, x_907.z, x_907.z));
        let x_910 : vec4<f32> = u_xlat8;
        let x_914 : vec2<f32> = (vec2<f32>(x_910.y, x_910.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_914.x, x_915.z, x_914.y);
        let x_917 : vec4<f32> = u_xlat8;
        let x_920 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_917.x, x_917.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_920.x, x_920.y)));
        let x_924 : vec4<f32> = u_xlat6;
        let x_927 : vec2<f32> = (-(vec2<f32>(x_924.x, x_924.y)) + vec2<f32>(1.0f, 1.0f));
        let x_928 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_927.x, x_928.y, x_927.y, x_928.w);
        let x_930 : vec4<f32> = u_xlat6;
        let x_932 : vec2<f32> = min(vec2<f32>(x_930.x, x_930.y), vec2<f32>(0.0f, 0.0f));
        let x_933 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat8;
        let x_938 : vec4<f32> = u_xlat8;
        let x_941 : vec4<f32> = u_xlat7;
        let x_943 : vec2<f32> = ((-(vec2<f32>(x_935.x, x_935.y)) * vec2<f32>(x_938.x, x_938.y)) + vec2<f32>(x_941.x, x_941.z));
        let x_944 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_943.x, x_944.y, x_943.y, x_944.w);
        let x_946 : vec4<f32> = u_xlat6;
        let x_948 : vec2<f32> = max(vec2<f32>(x_946.x, x_946.y), vec2<f32>(0.0f, 0.0f));
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_949.z, x_949.w);
        let x_951 : vec4<f32> = u_xlat8;
        let x_954 : vec4<f32> = u_xlat8;
        let x_957 : vec4<f32> = u_xlat7;
        let x_959 : vec2<f32> = ((-(vec2<f32>(x_951.x, x_951.y)) * vec2<f32>(x_954.x, x_954.y)) + vec2<f32>(x_957.y, x_957.w));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_960.x, x_959.x, x_960.z, x_959.y);
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_962 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_966 : f32 = u_xlat7.y;
        u_xlat8.z = (x_966 * 0.08163200318813323975f);
        let x_970 : vec2<f32> = u_xlat58;
        let x_973 : vec2<f32> = (vec2<f32>(x_970.y, x_970.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_974 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_976.x, x_976.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_980 : f32 = u_xlat7.w;
        u_xlat10.z = (x_980 * 0.08163200318813323975f);
        let x_984 : f32 = u_xlat10.y;
        u_xlat8.x = x_984;
        let x_986 : vec4<f32> = u_xlat6;
        let x_993 : vec2<f32> = ((vec2<f32>(x_986.x, x_986.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_994.x, x_993.x, x_994.z, x_993.y);
        let x_996 : vec4<f32> = u_xlat6;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_996.x, x_996.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1001 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1000.x, x_1001.y, x_1000.y, x_1001.w);
        let x_1004 : f32 = u_xlat58.x;
        u_xlat7.y = x_1004;
        let x_1007 : f32 = u_xlat9.y;
        u_xlat7.w = x_1007;
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1009 + x_1010);
        let x_1012 : vec4<f32> = u_xlat6;
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1012.y, x_1012.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1016 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1016.x, x_1015.x, x_1016.z, x_1015.y);
        let x_1018 : vec4<f32> = u_xlat6;
        let x_1021 : vec2<f32> = ((vec2<f32>(x_1018.y, x_1018.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1021.x, x_1022.y, x_1021.y, x_1022.w);
        let x_1025 : f32 = u_xlat58.y;
        u_xlat9.y = x_1025;
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1028 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1027 + x_1028);
        let x_1030 : vec4<f32> = u_xlat7;
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1030 / x_1031);
        let x_1033 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1033 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1040 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1039 / x_1040);
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1042 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1044 : vec4<f32> = u_xlat7;
        let x_1047 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1044.w, x_1044.x, x_1044.y, x_1044.z) * vec4<f32>(x_1047.x, x_1047.x, x_1047.x, x_1047.x));
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1053 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1050.x, x_1050.w, x_1050.y, x_1050.z) * vec4<f32>(x_1053.y, x_1053.y, x_1053.y, x_1053.y));
        let x_1056 : vec4<f32> = u_xlat7;
        let x_1057 : vec3<f32> = vec3<f32>(x_1056.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1057.x, x_1058.y, x_1057.y, x_1057.z);
        let x_1061 : f32 = u_xlat9.x;
        u_xlat10.y = x_1061;
        let x_1063 : vec3<f32> = u_xlat31;
        let x_1066 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) * vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y)) + vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1069.y));
        let x_1072 : vec3<f32> = u_xlat31;
        let x_1075 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat10;
        let x_1080 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.x, x_1075.y)) + vec2<f32>(x_1078.w, x_1078.y));
        let x_1081 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
        let x_1084 : f32 = u_xlat10.y;
        u_xlat7.y = x_1084;
        let x_1087 : f32 = u_xlat9.z;
        u_xlat10.y = x_1087;
        let x_1089 : vec3<f32> = u_xlat31;
        let x_1092 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1099 : vec3<f32> = u_xlat31;
        let x_1102 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.w, x_1105.y));
        let x_1109 : f32 = u_xlat10.y;
        u_xlat7.z = x_1109;
        let x_1111 : vec3<f32> = u_xlat31;
        let x_1114 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.z));
        let x_1121 : f32 = u_xlat9.w;
        u_xlat10.y = x_1121;
        let x_1124 : vec3<f32> = u_xlat31;
        let x_1127 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y) * vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y)) + vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.y));
        let x_1134 : vec3<f32> = u_xlat31;
        let x_1137 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.w, x_1140.y));
        let x_1144 : f32 = u_xlat10.y;
        u_xlat7.w = x_1144;
        let x_1147 : vec3<f32> = u_xlat31;
        let x_1150 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1155 : vec2<f32> = ((vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(x_1150.x, x_1150.y)) + vec2<f32>(x_1153.x, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat10;
        let x_1159 : vec3<f32> = vec3<f32>(x_1158.x, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1159.x, x_1160.y, x_1159.y, x_1159.z);
        let x_1162 : vec3<f32> = u_xlat31;
        let x_1165 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.y) * vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y)) + vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1168.y));
        let x_1172 : vec3<f32> = u_xlat31;
        let x_1175 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1172.x, x_1172.y) * vec2<f32>(x_1175.x, x_1175.y)) + vec2<f32>(x_1178.w, x_1178.y));
        let x_1182 : f32 = u_xlat7.x;
        u_xlat9.x = x_1182;
        let x_1184 : vec3<f32> = u_xlat31;
        let x_1187 : vec4<f32> = x_288.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat9;
        let x_1192 : vec2<f32> = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.x, x_1190.y));
        let x_1193 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1192.x, x_1192.y, x_1193.z);
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1198 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1196.x, x_1196.x, x_1196.x, x_1196.x) * x_1198);
        let x_1201 : vec4<f32> = u_xlat6;
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1201.y, x_1201.y, x_1201.y, x_1201.y) * x_1203);
        let x_1206 : vec4<f32> = u_xlat6;
        let x_1208 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1206.z, x_1206.z, x_1206.z, x_1206.z) * x_1208);
        let x_1210 : vec4<f32> = u_xlat6;
        let x_1212 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1210.w, x_1210.w, x_1210.w, x_1210.w) * x_1212);
        let x_1215 : vec4<f32> = u_xlat11;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.x, x_1215.y);
        let x_1218 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec13;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat83 = x_1227;
        let x_1229 : vec4<f32> = u_xlat11;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.z, x_1229.w);
        let x_1232 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec14;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1239.xy, x_1239.z);
        u_xlat7.x = x_1241;
        let x_1244 : f32 = u_xlat7.x;
        let x_1246 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1244 * x_1246);
        let x_1250 : f32 = u_xlat17.x;
        let x_1251 : f32 = u_xlat83;
        let x_1254 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1250 * x_1251) + x_1254);
        let x_1257 : vec4<f32> = u_xlat12;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.x, x_1257.y);
        let x_1260 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec15;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1267.xy, x_1267.z);
        u_xlat7.x = x_1269;
        let x_1272 : f32 = u_xlat17.z;
        let x_1274 : f32 = u_xlat7.x;
        let x_1276 : f32 = u_xlat83;
        u_xlat83 = ((x_1272 * x_1274) + x_1276);
        let x_1279 : vec4<f32> = u_xlat14;
        let x_1280 : vec2<f32> = vec2<f32>(x_1279.x, x_1279.y);
        let x_1282 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1289 : vec3<f32> = txVec16;
        let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1289.xy, x_1289.z);
        u_xlat7.x = x_1291;
        let x_1294 : f32 = u_xlat17.w;
        let x_1296 : f32 = u_xlat7.x;
        let x_1298 : f32 = u_xlat83;
        u_xlat83 = ((x_1294 * x_1296) + x_1298);
        let x_1301 : vec4<f32> = u_xlat13;
        let x_1302 : vec2<f32> = vec2<f32>(x_1301.x, x_1301.y);
        let x_1304 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec17;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat7.x = x_1313;
        let x_1316 : f32 = u_xlat18.x;
        let x_1318 : f32 = u_xlat7.x;
        let x_1320 : f32 = u_xlat83;
        u_xlat83 = ((x_1316 * x_1318) + x_1320);
        let x_1323 : vec4<f32> = u_xlat13;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec18;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat7.x = x_1335;
        let x_1338 : f32 = u_xlat18.y;
        let x_1340 : f32 = u_xlat7.x;
        let x_1342 : f32 = u_xlat83;
        u_xlat83 = ((x_1338 * x_1340) + x_1342);
        let x_1345 : vec2<f32> = u_xlat64;
        let x_1347 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec19;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat7.x = x_1356;
        let x_1359 : f32 = u_xlat18.z;
        let x_1361 : f32 = u_xlat7.x;
        let x_1363 : f32 = u_xlat83;
        u_xlat83 = ((x_1359 * x_1361) + x_1363);
        let x_1366 : vec4<f32> = u_xlat14;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.z, x_1366.w);
        let x_1369 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec20;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1376.xy, x_1376.z);
        u_xlat7.x = x_1378;
        let x_1381 : f32 = u_xlat18.w;
        let x_1383 : f32 = u_xlat7.x;
        let x_1385 : f32 = u_xlat83;
        u_xlat83 = ((x_1381 * x_1383) + x_1385);
        let x_1388 : vec4<f32> = u_xlat15;
        let x_1389 : vec2<f32> = vec2<f32>(x_1388.x, x_1388.y);
        let x_1391 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec21;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1398.xy, x_1398.z);
        u_xlat7.x = x_1400;
        let x_1403 : f32 = u_xlat19.x;
        let x_1405 : f32 = u_xlat7.x;
        let x_1407 : f32 = u_xlat83;
        u_xlat83 = ((x_1403 * x_1405) + x_1407);
        let x_1410 : vec4<f32> = u_xlat15;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.z, x_1410.w);
        let x_1413 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec22;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1420.xy, x_1420.z);
        u_xlat7.x = x_1422;
        let x_1425 : f32 = u_xlat19.y;
        let x_1427 : f32 = u_xlat7.x;
        let x_1429 : f32 = u_xlat83;
        u_xlat83 = ((x_1425 * x_1427) + x_1429);
        let x_1432 : vec2<f32> = u_xlat33;
        let x_1434 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec23;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat7.x = x_1443;
        let x_1446 : f32 = u_xlat19.z;
        let x_1448 : f32 = u_xlat7.x;
        let x_1450 : f32 = u_xlat83;
        u_xlat83 = ((x_1446 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat16;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec24;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat7.x = x_1465;
        let x_1468 : f32 = u_xlat19.w;
        let x_1470 : f32 = u_xlat7.x;
        let x_1472 : f32 = u_xlat83;
        u_xlat83 = ((x_1468 * x_1470) + x_1472);
        let x_1475 : vec4<f32> = u_xlat10;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.x, x_1475.y);
        let x_1478 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec25;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat7.x = x_1487;
        let x_1490 : f32 = u_xlat6.x;
        let x_1492 : f32 = u_xlat7.x;
        let x_1494 : f32 = u_xlat83;
        u_xlat83 = ((x_1490 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat10;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.z, x_1497.w);
        let x_1500 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec26;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat6.x = x_1509;
        let x_1512 : f32 = u_xlat6.y;
        let x_1514 : f32 = u_xlat6.x;
        let x_1516 : f32 = u_xlat83;
        u_xlat83 = ((x_1512 * x_1514) + x_1516);
        let x_1519 : vec2<f32> = u_xlat61;
        let x_1521 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec27;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
        u_xlat6.x = x_1530;
        let x_1533 : f32 = u_xlat6.z;
        let x_1535 : f32 = u_xlat6.x;
        let x_1537 : f32 = u_xlat83;
        u_xlat83 = ((x_1533 * x_1535) + x_1537);
        let x_1540 : vec3<f32> = u_xlat31;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.x, x_1540.y);
        let x_1543 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec28;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat31.x = x_1552;
        let x_1555 : f32 = u_xlat6.w;
        let x_1557 : f32 = u_xlat31.x;
        let x_1559 : f32 = u_xlat83;
        u_xlat5.x = ((x_1555 * x_1557) + x_1559);
      }
    }
  } else {
    let x_1564 : vec4<f32> = vs_TEXCOORD8;
    let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
    let x_1567 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
    let x_1574 : vec3<f32> = txVec29;
    let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
    u_xlat5.x = x_1576;
  }
  let x_1579 : f32 = x_288.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_1579) + 1.0f);
  let x_1584 : f32 = u_xlat5.x;
  let x_1586 : f32 = x_288.x_MainLightShadowParams.x;
  let x_1589 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_1584 * x_1586) + x_1589);
  let x_1593 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_1593);
  let x_1599 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_1599 >= 1.0f);
  let x_1603 : bool = u_xlatb57.x;
  let x_1604 : bool = u_xlatb31;
  u_xlatb31 = (x_1603 | x_1604);
  let x_1606 : bool = u_xlatb31;
  if (x_1606) {
    x_1607 = 1.0f;
  } else {
    let x_1612 : f32 = u_xlat5.x;
    x_1607 = x_1612;
  }
  let x_1613 : f32 = x_1607;
  u_xlat5.x = x_1613;
  let x_1615 : vec3<f32> = vs_TEXCOORD7;
  let x_1617 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1615 + -(x_1617));
  let x_1620 : vec3<f32> = u_xlat31;
  let x_1621 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_1620, x_1621);
  let x_1625 : f32 = u_xlat31.x;
  let x_1627 : f32 = x_288.x_MainLightShadowParams.z;
  let x_1630 : f32 = x_288.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_1625 * x_1627) + x_1630);
  let x_1634 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1634, 0.0f, 1.0f);
  let x_1638 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_1638) + 1.0f);
  let x_1642 : f32 = u_xlat57.x;
  let x_1643 : f32 = u_xlat83;
  let x_1646 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1642 * x_1643) + x_1646);
  let x_1656 : f32 = x_1654.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_1656 == -1.0f));
  let x_1661 : bool = u_xlatb57.x;
  if (x_1661) {
    let x_1664 : vec3<f32> = vs_TEXCOORD7;
    let x_1667 : vec4<f32> = x_1654.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_1664.y, x_1664.y) * vec2<f32>(x_1667.x, x_1667.y));
    let x_1671 : vec4<f32> = x_1654.x_MainLightWorldToLight[0i];
    let x_1673 : vec3<f32> = vs_TEXCOORD7;
    let x_1676 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(x_1673.x, x_1673.x)) + x_1676);
    let x_1679 : vec4<f32> = x_1654.x_MainLightWorldToLight[2i];
    let x_1681 : vec3<f32> = vs_TEXCOORD7;
    let x_1684 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_1679.x, x_1679.y) * vec2<f32>(x_1681.z, x_1681.z)) + x_1684);
    let x_1686 : vec2<f32> = u_xlat57;
    let x_1689 : vec4<f32> = x_1654.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_1686 + vec2<f32>(x_1689.x, x_1689.y));
    let x_1692 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_1692 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1700 : vec2<f32> = u_xlat57;
    let x_1702 : f32 = x_29.x_GlobalMipBias.x;
    let x_1703 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1700, x_1702);
    u_xlat6 = x_1703;
    let x_1705 : f32 = x_1654.x_MainLightCookieTextureFormat;
    let x_1707 : f32 = x_1654.x_MainLightCookieTextureFormat;
    let x_1709 : f32 = x_1654.x_MainLightCookieTextureFormat;
    let x_1711 : f32 = x_1654.x_MainLightCookieTextureFormat;
    let x_1712 : vec4<f32> = vec4<f32>(x_1705, x_1707, x_1709, x_1711);
    let x_1720 : vec4<bool> = (vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1712.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_1720.x, x_1720.y);
    let x_1723 : bool = u_xlatb57.y;
    if (x_1723) {
      let x_1728 : f32 = u_xlat6.w;
      x_1724 = x_1728;
    } else {
      let x_1731 : f32 = u_xlat6.x;
      x_1724 = x_1731;
    }
    let x_1732 : f32 = x_1724;
    u_xlat83 = x_1732;
    let x_1734 : bool = u_xlatb57.x;
    if (x_1734) {
      let x_1738 : vec4<f32> = u_xlat6;
      x_1735 = vec3<f32>(x_1738.x, x_1738.y, x_1738.z);
    } else {
      let x_1741 : f32 = u_xlat83;
      x_1735 = vec3<f32>(x_1741, x_1741, x_1741);
    }
    let x_1743 : vec3<f32> = x_1735;
    let x_1744 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1750 : vec4<f32> = u_xlat6;
  let x_1753 : vec4<f32> = x_29.x_MainLightColor;
  let x_1755 : vec3<f32> = (vec3<f32>(x_1750.x, x_1750.y, x_1750.z) * vec3<f32>(x_1753.x, x_1753.y, x_1753.z));
  let x_1756 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1756.w);
  let x_1758 : vec3<f32> = u_xlat3;
  let x_1760 : vec3<f32> = u_xlat27;
  u_xlat57.x = dot(-(x_1758), x_1760);
  let x_1764 : f32 = u_xlat57.x;
  let x_1766 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1764 + x_1766);
  let x_1769 : vec3<f32> = u_xlat27;
  let x_1770 : vec2<f32> = u_xlat57;
  let x_1774 : vec3<f32> = u_xlat3;
  let x_1776 : vec3<f32> = ((x_1769 * -(vec3<f32>(x_1770.x, x_1770.x, x_1770.x))) + -(x_1774));
  let x_1777 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
  let x_1779 : vec3<f32> = u_xlat27;
  let x_1780 : vec3<f32> = u_xlat3;
  u_xlat57.x = dot(x_1779, x_1780);
  let x_1784 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1784, 0.0f, 1.0f);
  let x_1788 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_1788) + 1.0f);
  let x_1793 : f32 = u_xlat57.x;
  let x_1795 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1793 * x_1795);
  let x_1799 : f32 = u_xlat57.x;
  let x_1801 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1799 * x_1801);
  let x_1804 : f32 = u_xlat1;
  u_xlat83 = ((-(x_1804) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1810 : f32 = u_xlat1;
  let x_1811 : f32 = u_xlat83;
  u_xlat1 = (x_1810 * x_1811);
  let x_1813 : f32 = u_xlat1;
  u_xlat1 = (x_1813 * 6.0f);
  let x_1824 : vec4<f32> = u_xlat7;
  let x_1826 : f32 = u_xlat1;
  let x_1827 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1824.x, x_1824.y, x_1824.z), x_1826);
  u_xlat7 = x_1827;
  let x_1829 : f32 = u_xlat7.w;
  u_xlat1 = (x_1829 + -1.0f);
  let x_1836 : f32 = x_1834.unity_SpecCube0_HDR.w;
  let x_1837 : f32 = u_xlat1;
  u_xlat1 = ((x_1836 * x_1837) + 1.0f);
  let x_1840 : f32 = u_xlat1;
  u_xlat1 = max(x_1840, 0.0f);
  let x_1842 : f32 = u_xlat1;
  u_xlat1 = log2(x_1842);
  let x_1844 : f32 = u_xlat1;
  let x_1846 : f32 = x_1834.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1844 * x_1846);
  let x_1848 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1848);
  let x_1850 : f32 = u_xlat1;
  let x_1852 : f32 = x_1834.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1850 * x_1852);
  let x_1854 : vec4<f32> = u_xlat7;
  let x_1856 : f32 = u_xlat1;
  let x_1858 : vec3<f32> = (vec3<f32>(x_1854.x, x_1854.y, x_1854.z) * vec3<f32>(x_1856, x_1856, x_1856));
  let x_1859 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
  let x_1861 : f32 = u_xlat80;
  let x_1863 : f32 = u_xlat80;
  let x_1867 : vec2<f32> = ((vec2<f32>(x_1861, x_1861) * vec2<f32>(x_1863, x_1863)) + vec2<f32>(-1.0f, 1.0f));
  let x_1868 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1867.x, x_1867.y, x_1868.z, x_1868.w);
  let x_1871 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1871);
  let x_1874 : vec4<f32> = u_xlat0;
  let x_1877 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1874.x, x_1874.y, x_1874.z)) + vec3<f32>(x_1877, x_1877, x_1877));
  let x_1880 : vec2<f32> = u_xlat57;
  let x_1882 : vec3<f32> = u_xlat34;
  let x_1884 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1880.x, x_1880.x, x_1880.x) * x_1882) + vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : f32 = u_xlat1;
  let x_1889 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1887, x_1887, x_1887) * x_1889);
  let x_1891 : vec4<f32> = u_xlat7;
  let x_1893 : vec3<f32> = u_xlat34;
  let x_1894 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.y, x_1891.z) * x_1893);
  let x_1895 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
  let x_1897 : vec4<f32> = u_xlat2;
  let x_1899 : vec3<f32> = u_xlat4;
  let x_1901 : vec4<f32> = u_xlat7;
  let x_1903 : vec3<f32> = ((vec3<f32>(x_1897.x, x_1897.y, x_1897.z) * x_1899) + vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1907 : f32 = u_xlat5.x;
  let x_1909 : f32 = x_1834.unity_LightData.z;
  u_xlat78 = (x_1907 * x_1909);
  let x_1911 : vec3<f32> = u_xlat27;
  let x_1913 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1911, vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1916, 0.0f, 1.0f);
  let x_1918 : f32 = u_xlat78;
  let x_1919 : f32 = u_xlat1;
  u_xlat78 = (x_1918 * x_1919);
  let x_1921 : f32 = u_xlat78;
  let x_1923 : vec4<f32> = u_xlat6;
  let x_1925 : vec3<f32> = (vec3<f32>(x_1921, x_1921, x_1921) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1925.x, x_1926.y, x_1925.y, x_1925.z);
  let x_1928 : vec3<f32> = u_xlat3;
  let x_1930 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1932 : vec3<f32> = (x_1928 + vec3<f32>(x_1930.x, x_1930.y, x_1930.z));
  let x_1933 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
  let x_1935 : vec4<f32> = u_xlat6;
  let x_1937 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : f32 = u_xlat78;
  u_xlat78 = max(x_1940, 1.17549435e-38f);
  let x_1943 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1943);
  let x_1945 : f32 = u_xlat78;
  let x_1947 : vec4<f32> = u_xlat6;
  let x_1949 : vec3<f32> = (vec3<f32>(x_1945, x_1945, x_1945) * vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
  let x_1950 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
  let x_1952 : vec3<f32> = u_xlat27;
  let x_1953 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_1952, vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
  let x_1956 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1956, 0.0f, 1.0f);
  let x_1959 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1961 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1959.x, x_1959.y, x_1959.z), vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1964, 0.0f, 1.0f);
  let x_1966 : f32 = u_xlat78;
  let x_1967 : f32 = u_xlat78;
  u_xlat78 = (x_1966 * x_1967);
  let x_1969 : f32 = u_xlat78;
  let x_1971 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1969 * x_1971) + 1.00001001358032226562f);
  let x_1975 : f32 = u_xlat1;
  let x_1976 : f32 = u_xlat1;
  u_xlat1 = (x_1975 * x_1976);
  let x_1978 : f32 = u_xlat78;
  let x_1979 : f32 = u_xlat78;
  u_xlat78 = (x_1978 * x_1979);
  let x_1981 : f32 = u_xlat1;
  u_xlat1 = max(x_1981, 0.10000000149011611938f);
  let x_1984 : f32 = u_xlat78;
  let x_1985 : f32 = u_xlat1;
  u_xlat78 = (x_1984 * x_1985);
  let x_1987 : f32 = u_xlat81;
  let x_1988 : f32 = u_xlat78;
  u_xlat78 = (x_1987 * x_1988);
  let x_1990 : f32 = u_xlat82;
  let x_1991 : f32 = u_xlat78;
  u_xlat78 = (x_1990 / x_1991);
  let x_1993 : vec4<f32> = u_xlat0;
  let x_1995 : f32 = u_xlat78;
  let x_1998 : vec3<f32> = u_xlat4;
  let x_1999 : vec3<f32> = ((vec3<f32>(x_1993.x, x_1993.y, x_1993.z) * vec3<f32>(x_1995, x_1995, x_1995)) + x_1998);
  let x_2000 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  let x_2003 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2005 : f32 = x_1834.unity_LightData.y;
  u_xlat78 = min(x_2003, x_2005);
  let x_2009 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2009));
  let x_2013 : f32 = u_xlat31.x;
  let x_2016 : f32 = x_288.x_AdditionalShadowFadeParams.x;
  let x_2019 : f32 = x_288.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2013 * x_2016) + x_2019);
  let x_2021 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2021, 0.0f, 1.0f);
  let x_2025 : f32 = x_1654.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2027 : f32 = x_1654.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2029 : f32 = x_1654.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2031 : f32 = x_1654.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2032 : vec4<f32> = vec4<f32>(x_2025, x_2027, x_2029, x_2031);
  let x_2039 : vec4<bool> = (vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2032.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2039.x, x_2039.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2051 : u32 = u_xlatu_loop_1;
    let x_2052 : u32 = u_xlatu78;
    if ((x_2051 < x_2052)) {
    } else {
      break;
    }
    let x_2055 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_2055 >> 2u);
    let x_2059 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2059 & 3u));
    let x_2062 : u32 = u_xlatu31;
    let x_2065 : vec4<f32> = x_1834.unity_LightIndices[bitcast<i32>(x_2062)];
    let x_2075 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2080 : vec4<u32> = indexable[x_2075];
    u_xlat31.x = dot(x_2065, bitcast<vec4<f32>>(x_2080));
    let x_2086 : f32 = u_xlat31.x;
    u_xlati31 = i32(x_2086);
    let x_2088 : vec3<f32> = vs_TEXCOORD7;
    let x_2099 : i32 = u_xlati31;
    let x_2101 : vec4<f32> = x_2098.x_AdditionalLightsPosition[x_2099];
    let x_2104 : i32 = u_xlati31;
    let x_2106 : vec4<f32> = x_2098.x_AdditionalLightsPosition[x_2104];
    let x_2108 : vec3<f32> = ((-(x_2088) * vec3<f32>(x_2101.w, x_2101.w, x_2101.w)) + vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
    let x_2109 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2108.x, x_2108.y, x_2108.z, x_2109.w);
    let x_2112 : vec4<f32> = u_xlat9;
    let x_2114 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2112.x, x_2112.y, x_2112.z), vec3<f32>(x_2114.x, x_2114.y, x_2114.z));
    let x_2117 : f32 = u_xlat84;
    u_xlat84 = max(x_2117, 0.00006103515625f);
    let x_2121 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2121);
    let x_2123 : f32 = u_xlat59;
    let x_2125 : vec4<f32> = u_xlat9;
    let x_2127 : vec3<f32> = (vec3<f32>(x_2123, x_2123, x_2123) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
    let x_2128 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
    let x_2131 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2131);
    let x_2133 : f32 = u_xlat84;
    let x_2134 : i32 = u_xlati31;
    let x_2136 : f32 = x_2098.x_AdditionalLightsAttenuation[x_2134].x;
    u_xlat84 = (x_2133 * x_2136);
    let x_2138 : f32 = u_xlat84;
    let x_2140 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2138) * x_2140) + 1.0f);
    let x_2143 : f32 = u_xlat84;
    u_xlat84 = max(x_2143, 0.0f);
    let x_2145 : f32 = u_xlat84;
    let x_2146 : f32 = u_xlat84;
    u_xlat84 = (x_2145 * x_2146);
    let x_2148 : f32 = u_xlat84;
    let x_2149 : f32 = u_xlat85;
    u_xlat84 = (x_2148 * x_2149);
    let x_2151 : i32 = u_xlati31;
    let x_2153 : vec4<f32> = x_2098.x_AdditionalLightsSpotDir[x_2151];
    let x_2155 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2153.x, x_2153.y, x_2153.z), vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
    let x_2158 : f32 = u_xlat85;
    let x_2159 : i32 = u_xlati31;
    let x_2161 : f32 = x_2098.x_AdditionalLightsAttenuation[x_2159].z;
    let x_2163 : i32 = u_xlati31;
    let x_2165 : f32 = x_2098.x_AdditionalLightsAttenuation[x_2163].w;
    u_xlat85 = ((x_2158 * x_2161) + x_2165);
    let x_2167 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2167, 0.0f, 1.0f);
    let x_2169 : f32 = u_xlat85;
    let x_2170 : f32 = u_xlat85;
    u_xlat85 = (x_2169 * x_2170);
    let x_2172 : f32 = u_xlat84;
    let x_2173 : f32 = u_xlat85;
    u_xlat84 = (x_2172 * x_2173);
    let x_2177 : i32 = u_xlati31;
    let x_2179 : f32 = x_288.x_AdditionalShadowParams[x_2177].w;
    u_xlati85 = i32(x_2179);
    let x_2182 : i32 = u_xlati85;
    u_xlatb87 = (x_2182 >= 0i);
    let x_2184 : bool = u_xlatb87;
    if (x_2184) {
      let x_2188 : i32 = u_xlati31;
      let x_2190 : f32 = x_288.x_AdditionalShadowParams[x_2188].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2190, x_2190, x_2190, x_2190))));
      let x_2194 : bool = u_xlatb87;
      if (x_2194) {
        let x_2199 : vec4<f32> = u_xlat10;
        let x_2202 : vec4<f32> = u_xlat10;
        let x_2205 : vec4<bool> = (abs(vec4<f32>(x_2199.z, x_2199.z, x_2199.y, x_2199.z)) >= abs(vec4<f32>(x_2202.x, x_2202.y, x_2202.x, x_2202.x)));
        let x_2207 : vec3<bool> = vec3<bool>(x_2205.x, x_2205.y, x_2205.z);
        let x_2208 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
        let x_2211 : bool = u_xlatb11.y;
        let x_2213 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2211 & x_2213);
        let x_2215 : vec4<f32> = u_xlat10;
        let x_2218 : vec4<bool> = (-(vec4<f32>(x_2215.z, x_2215.y, x_2215.z, x_2215.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2219 : vec3<bool> = vec3<bool>(x_2218.x, x_2218.y, x_2218.w);
        let x_2220 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2219.x, x_2219.y, x_2220.z, x_2219.z);
        let x_2223 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2223);
        let x_2228 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2228);
        let x_2234 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2234);
        let x_2237 : bool = u_xlatb11.z;
        if (x_2237) {
          let x_2242 : f32 = u_xlat11.y;
          x_2238 = x_2242;
        } else {
          let x_2244 : f32 = u_xlat88;
          x_2238 = x_2244;
        }
        let x_2245 : f32 = x_2238;
        u_xlat88 = x_2245;
        let x_2247 : bool = u_xlatb87;
        if (x_2247) {
          let x_2252 : f32 = u_xlat11.x;
          x_2248 = x_2252;
        } else {
          let x_2254 : f32 = u_xlat88;
          x_2248 = x_2254;
        }
        let x_2255 : f32 = x_2248;
        u_xlat87 = x_2255;
        let x_2256 : i32 = u_xlati31;
        let x_2258 : f32 = x_288.x_AdditionalShadowParams[x_2256].w;
        u_xlat88 = trunc(x_2258);
        let x_2260 : f32 = u_xlat87;
        let x_2261 : f32 = u_xlat88;
        u_xlat87 = (x_2260 + x_2261);
        let x_2263 : f32 = u_xlat87;
        u_xlati85 = i32(x_2263);
      }
      let x_2265 : i32 = u_xlati85;
      u_xlati85 = (x_2265 << bitcast<u32>(2i));
      let x_2267 : vec3<f32> = vs_TEXCOORD7;
      let x_2270 : i32 = u_xlati85;
      let x_2273 : i32 = u_xlati85;
      let x_2277 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_2270 + 1i) / 4i)][((x_2273 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2267.y, x_2267.y, x_2267.y, x_2267.y) * x_2277);
      let x_2279 : i32 = u_xlati85;
      let x_2281 : i32 = u_xlati85;
      let x_2284 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[(x_2279 / 4i)][(x_2281 % 4i)];
      let x_2285 : vec3<f32> = vs_TEXCOORD7;
      let x_2288 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2284 * vec4<f32>(x_2285.x, x_2285.x, x_2285.x, x_2285.x)) + x_2288);
      let x_2290 : i32 = u_xlati85;
      let x_2293 : i32 = u_xlati85;
      let x_2297 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_2290 + 2i) / 4i)][((x_2293 + 2i) % 4i)];
      let x_2298 : vec3<f32> = vs_TEXCOORD7;
      let x_2301 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2297 * vec4<f32>(x_2298.z, x_2298.z, x_2298.z, x_2298.z)) + x_2301);
      let x_2303 : vec4<f32> = u_xlat11;
      let x_2304 : i32 = u_xlati85;
      let x_2307 : i32 = u_xlati85;
      let x_2311 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_2304 + 3i) / 4i)][((x_2307 + 3i) % 4i)];
      u_xlat11 = (x_2303 + x_2311);
      let x_2313 : vec4<f32> = u_xlat11;
      let x_2315 : vec4<f32> = u_xlat11;
      let x_2317 : vec3<f32> = (vec3<f32>(x_2313.x, x_2313.y, x_2313.z) / vec3<f32>(x_2315.w, x_2315.w, x_2315.w));
      let x_2318 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
      let x_2321 : i32 = u_xlati31;
      let x_2323 : f32 = x_288.x_AdditionalShadowParams[x_2321].y;
      u_xlatb85 = (0.0f < x_2323);
      let x_2325 : bool = u_xlatb85;
      if (x_2325) {
        let x_2328 : i32 = u_xlati31;
        let x_2330 : f32 = x_288.x_AdditionalShadowParams[x_2328].y;
        u_xlatb85 = (1.0f == x_2330);
        let x_2332 : bool = u_xlatb85;
        if (x_2332) {
          let x_2335 : vec4<f32> = u_xlat11;
          let x_2339 : vec4<f32> = x_288.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2335.x, x_2335.y, x_2335.x, x_2335.y) + x_2339);
          let x_2342 : vec4<f32> = u_xlat12;
          let x_2343 : vec2<f32> = vec2<f32>(x_2342.x, x_2342.y);
          let x_2345 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2343.x, x_2343.y, x_2345);
          let x_2353 : vec3<f32> = txVec30;
          let x_2355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2353.xy, x_2353.z);
          u_xlat13.x = x_2355;
          let x_2358 : vec4<f32> = u_xlat12;
          let x_2359 : vec2<f32> = vec2<f32>(x_2358.z, x_2358.w);
          let x_2361 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2359.x, x_2359.y, x_2361);
          let x_2368 : vec3<f32> = txVec31;
          let x_2370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2368.xy, x_2368.z);
          u_xlat13.y = x_2370;
          let x_2372 : vec4<f32> = u_xlat11;
          let x_2376 : vec4<f32> = x_288.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2372.x, x_2372.y, x_2372.x, x_2372.y) + x_2376);
          let x_2379 : vec4<f32> = u_xlat12;
          let x_2380 : vec2<f32> = vec2<f32>(x_2379.x, x_2379.y);
          let x_2382 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
          let x_2389 : vec3<f32> = txVec32;
          let x_2391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
          u_xlat13.z = x_2391;
          let x_2394 : vec4<f32> = u_xlat12;
          let x_2395 : vec2<f32> = vec2<f32>(x_2394.z, x_2394.w);
          let x_2397 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2395.x, x_2395.y, x_2397);
          let x_2404 : vec3<f32> = txVec33;
          let x_2406 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2404.xy, x_2404.z);
          u_xlat13.w = x_2406;
          let x_2408 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2408, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2411 : i32 = u_xlati31;
          let x_2413 : f32 = x_288.x_AdditionalShadowParams[x_2411].y;
          u_xlatb87 = (2.0f == x_2413);
          let x_2415 : bool = u_xlatb87;
          if (x_2415) {
            let x_2418 : vec4<f32> = u_xlat11;
            let x_2422 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2425 : vec2<f32> = ((vec2<f32>(x_2418.x, x_2418.y) * vec2<f32>(x_2422.z, x_2422.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2426 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2425.x, x_2425.y, x_2426.z, x_2426.w);
            let x_2428 : vec4<f32> = u_xlat12;
            let x_2430 : vec2<f32> = floor(vec2<f32>(x_2428.x, x_2428.y));
            let x_2431 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2430.x, x_2430.y, x_2431.z, x_2431.w);
            let x_2433 : vec4<f32> = u_xlat11;
            let x_2436 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2439 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2433.x, x_2433.y) * vec2<f32>(x_2436.z, x_2436.w)) + -(vec2<f32>(x_2439.x, x_2439.y)));
            let x_2443 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2443.x, x_2443.x, x_2443.y, x_2443.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2446 : vec4<f32> = u_xlat13;
            let x_2448 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2446.x, x_2446.x, x_2446.z, x_2446.z) * vec4<f32>(x_2448.x, x_2448.x, x_2448.z, x_2448.z));
            let x_2451 : vec4<f32> = u_xlat14;
            let x_2453 : vec2<f32> = (vec2<f32>(x_2451.y, x_2451.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2454 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2453.x, x_2454.y, x_2453.y, x_2454.w);
            let x_2456 : vec4<f32> = u_xlat14;
            let x_2459 : vec2<f32> = u_xlat64;
            let x_2461 : vec2<f32> = ((vec2<f32>(x_2456.x, x_2456.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2459));
            let x_2462 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2461.x, x_2461.y, x_2462.z, x_2462.w);
            let x_2465 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2465) + vec2<f32>(1.0f, 1.0f));
            let x_2468 : vec2<f32> = u_xlat64;
            let x_2469 : vec2<f32> = min(x_2468, vec2<f32>(0.0f, 0.0f));
            let x_2470 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2472 : vec4<f32> = u_xlat15;
            let x_2475 : vec4<f32> = u_xlat15;
            let x_2478 : vec2<f32> = u_xlat66;
            let x_2479 : vec2<f32> = ((-(vec2<f32>(x_2472.x, x_2472.y)) * vec2<f32>(x_2475.x, x_2475.y)) + x_2478);
            let x_2480 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2479.x, x_2479.y, x_2480.z, x_2480.w);
            let x_2482 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2482, vec2<f32>(0.0f, 0.0f));
            let x_2484 : vec2<f32> = u_xlat64;
            let x_2486 : vec2<f32> = u_xlat64;
            let x_2488 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2484) * x_2486) + vec2<f32>(x_2488.y, x_2488.w));
            let x_2491 : vec4<f32> = u_xlat15;
            let x_2493 : vec2<f32> = (vec2<f32>(x_2491.x, x_2491.y) + vec2<f32>(1.0f, 1.0f));
            let x_2494 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2493.x, x_2493.y, x_2494.z, x_2494.w);
            let x_2496 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2496 + vec2<f32>(1.0f, 1.0f));
            let x_2498 : vec4<f32> = u_xlat14;
            let x_2500 : vec2<f32> = (vec2<f32>(x_2498.x, x_2498.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2501 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2500.x, x_2500.y, x_2501.z, x_2501.w);
            let x_2503 : vec2<f32> = u_xlat66;
            let x_2504 : vec2<f32> = (x_2503 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2505 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2504.x, x_2504.y, x_2505.z, x_2505.w);
            let x_2507 : vec4<f32> = u_xlat15;
            let x_2509 : vec2<f32> = (vec2<f32>(x_2507.x, x_2507.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2510 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2509.x, x_2509.y, x_2510.z, x_2510.w);
            let x_2512 : vec2<f32> = u_xlat64;
            let x_2513 : vec2<f32> = (x_2512 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2514 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2516 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2516.y, x_2516.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2520 : f32 = u_xlat15.x;
            u_xlat16.z = x_2520;
            let x_2523 : f32 = u_xlat64.x;
            u_xlat16.w = x_2523;
            let x_2526 : f32 = u_xlat17.x;
            u_xlat14.z = x_2526;
            let x_2529 : f32 = u_xlat13.x;
            u_xlat14.w = x_2529;
            let x_2531 : vec4<f32> = u_xlat14;
            let x_2533 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2531.z, x_2531.w, x_2531.x, x_2531.z) + vec4<f32>(x_2533.z, x_2533.w, x_2533.x, x_2533.z));
            let x_2537 : f32 = u_xlat16.y;
            u_xlat15.z = x_2537;
            let x_2540 : f32 = u_xlat64.y;
            u_xlat15.w = x_2540;
            let x_2543 : f32 = u_xlat14.y;
            u_xlat17.z = x_2543;
            let x_2546 : f32 = u_xlat13.z;
            u_xlat17.w = x_2546;
            let x_2548 : vec4<f32> = u_xlat15;
            let x_2550 : vec4<f32> = u_xlat17;
            let x_2552 : vec3<f32> = (vec3<f32>(x_2548.z, x_2548.y, x_2548.w) + vec3<f32>(x_2550.z, x_2550.y, x_2550.w));
            let x_2553 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat14;
            let x_2557 : vec4<f32> = u_xlat18;
            let x_2559 : vec3<f32> = (vec3<f32>(x_2555.x, x_2555.z, x_2555.w) / vec3<f32>(x_2557.z, x_2557.w, x_2557.y));
            let x_2560 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
            let x_2562 : vec4<f32> = u_xlat14;
            let x_2564 : vec3<f32> = (vec3<f32>(x_2562.x, x_2562.y, x_2562.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2565 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
            let x_2567 : vec4<f32> = u_xlat17;
            let x_2569 : vec4<f32> = u_xlat13;
            let x_2571 : vec3<f32> = (vec3<f32>(x_2567.z, x_2567.y, x_2567.w) / vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
            let x_2572 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
            let x_2574 : vec4<f32> = u_xlat15;
            let x_2576 : vec3<f32> = (vec3<f32>(x_2574.x, x_2574.y, x_2574.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2577 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
            let x_2579 : vec4<f32> = u_xlat14;
            let x_2582 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2584 : vec3<f32> = (vec3<f32>(x_2579.y, x_2579.x, x_2579.z) * vec3<f32>(x_2582.x, x_2582.x, x_2582.x));
            let x_2585 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2584.x, x_2584.y, x_2584.z, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat15;
            let x_2590 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2592 : vec3<f32> = (vec3<f32>(x_2587.x, x_2587.y, x_2587.z) * vec3<f32>(x_2590.y, x_2590.y, x_2590.y));
            let x_2593 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
            let x_2596 : f32 = u_xlat15.x;
            u_xlat14.w = x_2596;
            let x_2598 : vec4<f32> = u_xlat12;
            let x_2601 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2604 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2598.x, x_2598.y, x_2598.x, x_2598.y) * vec4<f32>(x_2601.x, x_2601.y, x_2601.x, x_2601.y)) + vec4<f32>(x_2604.y, x_2604.w, x_2604.x, x_2604.w));
            let x_2607 : vec4<f32> = u_xlat12;
            let x_2610 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2613 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2607.x, x_2607.y) * vec2<f32>(x_2610.x, x_2610.y)) + vec2<f32>(x_2613.z, x_2613.w));
            let x_2617 : f32 = u_xlat14.y;
            u_xlat15.w = x_2617;
            let x_2619 : vec4<f32> = u_xlat15;
            let x_2620 : vec2<f32> = vec2<f32>(x_2619.y, x_2619.z);
            let x_2621 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2621.x, x_2620.x, x_2621.z, x_2620.y);
            let x_2623 : vec4<f32> = u_xlat12;
            let x_2626 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2629 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2623.x, x_2623.y, x_2623.x, x_2623.y) * vec4<f32>(x_2626.x, x_2626.y, x_2626.x, x_2626.y)) + vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2629.y));
            let x_2632 : vec4<f32> = u_xlat12;
            let x_2635 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2638 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2632.x, x_2632.y, x_2632.x, x_2632.y) * vec4<f32>(x_2635.x, x_2635.y, x_2635.x, x_2635.y)) + vec4<f32>(x_2638.w, x_2638.y, x_2638.w, x_2638.z));
            let x_2641 : vec4<f32> = u_xlat12;
            let x_2644 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2647 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2641.x, x_2641.y, x_2641.x, x_2641.y) * vec4<f32>(x_2644.x, x_2644.y, x_2644.x, x_2644.y)) + vec4<f32>(x_2647.x, x_2647.w, x_2647.z, x_2647.w));
            let x_2650 : vec4<f32> = u_xlat13;
            let x_2652 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2650.x, x_2650.x, x_2650.x, x_2650.y) * vec4<f32>(x_2652.z, x_2652.w, x_2652.y, x_2652.z));
            let x_2656 : vec4<f32> = u_xlat13;
            let x_2658 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2656.y, x_2656.y, x_2656.z, x_2656.z) * x_2658);
            let x_2661 : f32 = u_xlat13.z;
            let x_2663 : f32 = u_xlat18.y;
            u_xlat87 = (x_2661 * x_2663);
            let x_2666 : vec4<f32> = u_xlat16;
            let x_2667 : vec2<f32> = vec2<f32>(x_2666.x, x_2666.y);
            let x_2669 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2667.x, x_2667.y, x_2669);
            let x_2676 : vec3<f32> = txVec34;
            let x_2678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
            u_xlat88 = x_2678;
            let x_2680 : vec4<f32> = u_xlat16;
            let x_2681 : vec2<f32> = vec2<f32>(x_2680.z, x_2680.w);
            let x_2683 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2681.x, x_2681.y, x_2683);
            let x_2691 : vec3<f32> = txVec35;
            let x_2693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2691.xy, x_2691.z);
            u_xlat89 = x_2693;
            let x_2694 : f32 = u_xlat89;
            let x_2696 : f32 = u_xlat19.y;
            u_xlat89 = (x_2694 * x_2696);
            let x_2699 : f32 = u_xlat19.x;
            let x_2700 : f32 = u_xlat88;
            let x_2702 : f32 = u_xlat89;
            u_xlat88 = ((x_2699 * x_2700) + x_2702);
            let x_2705 : vec2<f32> = u_xlat64;
            let x_2707 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2705.x, x_2705.y, x_2707);
            let x_2714 : vec3<f32> = txVec36;
            let x_2716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2714.xy, x_2714.z);
            u_xlat89 = x_2716;
            let x_2718 : f32 = u_xlat19.z;
            let x_2719 : f32 = u_xlat89;
            let x_2721 : f32 = u_xlat88;
            u_xlat88 = ((x_2718 * x_2719) + x_2721);
            let x_2724 : vec4<f32> = u_xlat15;
            let x_2725 : vec2<f32> = vec2<f32>(x_2724.x, x_2724.y);
            let x_2727 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2725.x, x_2725.y, x_2727);
            let x_2734 : vec3<f32> = txVec37;
            let x_2736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2734.xy, x_2734.z);
            u_xlat89 = x_2736;
            let x_2738 : f32 = u_xlat19.w;
            let x_2739 : f32 = u_xlat89;
            let x_2741 : f32 = u_xlat88;
            u_xlat88 = ((x_2738 * x_2739) + x_2741);
            let x_2744 : vec4<f32> = u_xlat17;
            let x_2745 : vec2<f32> = vec2<f32>(x_2744.x, x_2744.y);
            let x_2747 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2745.x, x_2745.y, x_2747);
            let x_2754 : vec3<f32> = txVec38;
            let x_2756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2754.xy, x_2754.z);
            u_xlat89 = x_2756;
            let x_2758 : f32 = u_xlat20.x;
            let x_2759 : f32 = u_xlat89;
            let x_2761 : f32 = u_xlat88;
            u_xlat88 = ((x_2758 * x_2759) + x_2761);
            let x_2764 : vec4<f32> = u_xlat17;
            let x_2765 : vec2<f32> = vec2<f32>(x_2764.z, x_2764.w);
            let x_2767 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2765.x, x_2765.y, x_2767);
            let x_2774 : vec3<f32> = txVec39;
            let x_2776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2774.xy, x_2774.z);
            u_xlat89 = x_2776;
            let x_2778 : f32 = u_xlat20.y;
            let x_2779 : f32 = u_xlat89;
            let x_2781 : f32 = u_xlat88;
            u_xlat88 = ((x_2778 * x_2779) + x_2781);
            let x_2784 : vec4<f32> = u_xlat15;
            let x_2785 : vec2<f32> = vec2<f32>(x_2784.z, x_2784.w);
            let x_2787 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2785.x, x_2785.y, x_2787);
            let x_2794 : vec3<f32> = txVec40;
            let x_2796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2794.xy, x_2794.z);
            u_xlat89 = x_2796;
            let x_2798 : f32 = u_xlat20.z;
            let x_2799 : f32 = u_xlat89;
            let x_2801 : f32 = u_xlat88;
            u_xlat88 = ((x_2798 * x_2799) + x_2801);
            let x_2804 : vec4<f32> = u_xlat14;
            let x_2805 : vec2<f32> = vec2<f32>(x_2804.x, x_2804.y);
            let x_2807 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2805.x, x_2805.y, x_2807);
            let x_2814 : vec3<f32> = txVec41;
            let x_2816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2814.xy, x_2814.z);
            u_xlat89 = x_2816;
            let x_2818 : f32 = u_xlat20.w;
            let x_2819 : f32 = u_xlat89;
            let x_2821 : f32 = u_xlat88;
            u_xlat88 = ((x_2818 * x_2819) + x_2821);
            let x_2824 : vec4<f32> = u_xlat14;
            let x_2825 : vec2<f32> = vec2<f32>(x_2824.z, x_2824.w);
            let x_2827 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2825.x, x_2825.y, x_2827);
            let x_2834 : vec3<f32> = txVec42;
            let x_2836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2834.xy, x_2834.z);
            u_xlat89 = x_2836;
            let x_2837 : f32 = u_xlat87;
            let x_2838 : f32 = u_xlat89;
            let x_2840 : f32 = u_xlat88;
            u_xlat85 = ((x_2837 * x_2838) + x_2840);
          } else {
            let x_2843 : vec4<f32> = u_xlat11;
            let x_2846 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2849 : vec2<f32> = ((vec2<f32>(x_2843.x, x_2843.y) * vec2<f32>(x_2846.z, x_2846.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2850 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2849.x, x_2849.y, x_2850.z, x_2850.w);
            let x_2852 : vec4<f32> = u_xlat12;
            let x_2854 : vec2<f32> = floor(vec2<f32>(x_2852.x, x_2852.y));
            let x_2855 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2854.x, x_2854.y, x_2855.z, x_2855.w);
            let x_2857 : vec4<f32> = u_xlat11;
            let x_2860 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_2863 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.z, x_2860.w)) + -(vec2<f32>(x_2863.x, x_2863.y)));
            let x_2867 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2867.x, x_2867.x, x_2867.y, x_2867.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2870 : vec4<f32> = u_xlat13;
            let x_2872 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2870.x, x_2870.x, x_2870.z, x_2870.z) * vec4<f32>(x_2872.x, x_2872.x, x_2872.z, x_2872.z));
            let x_2875 : vec4<f32> = u_xlat14;
            let x_2877 : vec2<f32> = (vec2<f32>(x_2875.y, x_2875.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2878 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2878.x, x_2877.x, x_2878.z, x_2877.y);
            let x_2880 : vec4<f32> = u_xlat14;
            let x_2883 : vec2<f32> = u_xlat64;
            let x_2885 : vec2<f32> = ((vec2<f32>(x_2880.x, x_2880.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2883));
            let x_2886 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2885.x, x_2886.y, x_2885.y, x_2886.w);
            let x_2888 : vec2<f32> = u_xlat64;
            let x_2890 : vec2<f32> = (-(x_2888) + vec2<f32>(1.0f, 1.0f));
            let x_2891 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2890.x, x_2890.y, x_2891.z, x_2891.w);
            let x_2893 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2893, vec2<f32>(0.0f, 0.0f));
            let x_2895 : vec2<f32> = u_xlat66;
            let x_2897 : vec2<f32> = u_xlat66;
            let x_2899 : vec4<f32> = u_xlat14;
            let x_2901 : vec2<f32> = ((-(x_2895) * x_2897) + vec2<f32>(x_2899.x, x_2899.y));
            let x_2902 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2901.x, x_2901.y, x_2902.z, x_2902.w);
            let x_2904 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2904, vec2<f32>(0.0f, 0.0f));
            let x_2907 : vec2<f32> = u_xlat66;
            let x_2909 : vec2<f32> = u_xlat66;
            let x_2911 : vec4<f32> = u_xlat13;
            let x_2913 : vec2<f32> = ((-(x_2907) * x_2909) + vec2<f32>(x_2911.y, x_2911.w));
            let x_2914 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2913.x, x_2914.y, x_2913.y);
            let x_2916 : vec4<f32> = u_xlat14;
            let x_2919 : vec2<f32> = (vec2<f32>(x_2916.x, x_2916.y) + vec2<f32>(2.0f, 2.0f));
            let x_2920 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2919.x, x_2919.y, x_2920.z, x_2920.w);
            let x_2922 : vec3<f32> = u_xlat39;
            let x_2924 : vec2<f32> = (vec2<f32>(x_2922.x, x_2922.z) + vec2<f32>(2.0f, 2.0f));
            let x_2925 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2925.x, x_2924.x, x_2925.z, x_2924.y);
            let x_2928 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2928 * 0.08163200318813323975f);
            let x_2931 : vec4<f32> = u_xlat13;
            let x_2934 : vec3<f32> = (vec3<f32>(x_2931.z, x_2931.x, x_2931.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2935 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2935.w);
            let x_2937 : vec4<f32> = u_xlat14;
            let x_2939 : vec2<f32> = (vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2940 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2939.x, x_2939.y, x_2940.z, x_2940.w);
            let x_2943 : f32 = u_xlat17.y;
            u_xlat16.x = x_2943;
            let x_2945 : vec2<f32> = u_xlat64;
            let x_2948 : vec2<f32> = ((vec2<f32>(x_2945.x, x_2945.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2949 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2949.x, x_2948.x, x_2949.z, x_2948.y);
            let x_2951 : vec2<f32> = u_xlat64;
            let x_2954 : vec2<f32> = ((vec2<f32>(x_2951.x, x_2951.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2955 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2954.x, x_2955.y, x_2954.y, x_2955.w);
            let x_2958 : f32 = u_xlat13.x;
            u_xlat14.y = x_2958;
            let x_2961 : f32 = u_xlat15.y;
            u_xlat14.w = x_2961;
            let x_2963 : vec4<f32> = u_xlat14;
            let x_2964 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2963 + x_2964);
            let x_2966 : vec2<f32> = u_xlat64;
            let x_2969 : vec2<f32> = ((vec2<f32>(x_2966.y, x_2966.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2970 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2970.x, x_2969.x, x_2970.z, x_2969.y);
            let x_2972 : vec2<f32> = u_xlat64;
            let x_2975 : vec2<f32> = ((vec2<f32>(x_2972.y, x_2972.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2976 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2975.x, x_2976.y, x_2975.y, x_2976.w);
            let x_2979 : f32 = u_xlat13.y;
            u_xlat15.y = x_2979;
            let x_2981 : vec4<f32> = u_xlat15;
            let x_2982 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2981 + x_2982);
            let x_2984 : vec4<f32> = u_xlat14;
            let x_2985 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2984 / x_2985);
            let x_2987 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2987 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2989 : vec4<f32> = u_xlat15;
            let x_2990 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2989 / x_2990);
            let x_2992 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2992 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2994 : vec4<f32> = u_xlat14;
            let x_2997 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2994.w, x_2994.x, x_2994.y, x_2994.z) * vec4<f32>(x_2997.x, x_2997.x, x_2997.x, x_2997.x));
            let x_3000 : vec4<f32> = u_xlat15;
            let x_3003 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3000.x, x_3000.w, x_3000.y, x_3000.z) * vec4<f32>(x_3003.y, x_3003.y, x_3003.y, x_3003.y));
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3007 : vec3<f32> = vec3<f32>(x_3006.y, x_3006.z, x_3006.w);
            let x_3008 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3007.x, x_3008.y, x_3007.y, x_3007.z);
            let x_3011 : f32 = u_xlat15.x;
            u_xlat17.y = x_3011;
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3016 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3019.y));
            let x_3022 : vec4<f32> = u_xlat12;
            let x_3025 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3022.x, x_3022.y) * vec2<f32>(x_3025.x, x_3025.y)) + vec2<f32>(x_3028.w, x_3028.y));
            let x_3032 : f32 = u_xlat17.y;
            u_xlat14.y = x_3032;
            let x_3035 : f32 = u_xlat15.z;
            u_xlat17.y = x_3035;
            let x_3037 : vec4<f32> = u_xlat12;
            let x_3040 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.x, x_3043.y, x_3043.z, x_3043.y));
            let x_3046 : vec4<f32> = u_xlat12;
            let x_3049 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat17;
            let x_3054 : vec2<f32> = ((vec2<f32>(x_3046.x, x_3046.y) * vec2<f32>(x_3049.x, x_3049.y)) + vec2<f32>(x_3052.w, x_3052.y));
            let x_3055 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3054.x, x_3054.y, x_3055.z, x_3055.w);
            let x_3058 : f32 = u_xlat17.y;
            u_xlat14.z = x_3058;
            let x_3061 : vec4<f32> = u_xlat12;
            let x_3064 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3067 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3061.x, x_3061.y, x_3061.x, x_3061.y) * vec4<f32>(x_3064.x, x_3064.y, x_3064.x, x_3064.y)) + vec4<f32>(x_3067.x, x_3067.y, x_3067.x, x_3067.z));
            let x_3071 : f32 = u_xlat15.w;
            u_xlat17.y = x_3071;
            let x_3074 : vec4<f32> = u_xlat12;
            let x_3077 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3080 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y) * vec4<f32>(x_3077.x, x_3077.y, x_3077.x, x_3077.y)) + vec4<f32>(x_3080.x, x_3080.y, x_3080.z, x_3080.y));
            let x_3084 : vec4<f32> = u_xlat12;
            let x_3087 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3084.x, x_3084.y) * vec2<f32>(x_3087.x, x_3087.y)) + vec2<f32>(x_3090.w, x_3090.y));
            let x_3094 : f32 = u_xlat17.y;
            u_xlat14.w = x_3094;
            let x_3097 : vec4<f32> = u_xlat12;
            let x_3100 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3097.x, x_3097.y) * vec2<f32>(x_3100.x, x_3100.y)) + vec2<f32>(x_3103.x, x_3103.w));
            let x_3106 : vec4<f32> = u_xlat17;
            let x_3107 : vec3<f32> = vec3<f32>(x_3106.x, x_3106.z, x_3106.w);
            let x_3108 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3107.x, x_3108.y, x_3107.y, x_3107.z);
            let x_3110 : vec4<f32> = u_xlat12;
            let x_3113 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3116 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3110.x, x_3110.y, x_3110.x, x_3110.y) * vec4<f32>(x_3113.x, x_3113.y, x_3113.x, x_3113.y)) + vec4<f32>(x_3116.x, x_3116.y, x_3116.z, x_3116.y));
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3123 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3120.x, x_3120.y) * vec2<f32>(x_3123.x, x_3123.y)) + vec2<f32>(x_3126.w, x_3126.y));
            let x_3130 : f32 = u_xlat14.x;
            u_xlat15.x = x_3130;
            let x_3132 : vec4<f32> = u_xlat12;
            let x_3135 : vec4<f32> = x_288.x_AdditionalShadowmapSize;
            let x_3138 : vec4<f32> = u_xlat15;
            let x_3140 : vec2<f32> = ((vec2<f32>(x_3132.x, x_3132.y) * vec2<f32>(x_3135.x, x_3135.y)) + vec2<f32>(x_3138.x, x_3138.y));
            let x_3141 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3140.x, x_3140.y, x_3141.z, x_3141.w);
            let x_3144 : vec4<f32> = u_xlat13;
            let x_3146 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3144.x, x_3144.x, x_3144.x, x_3144.x) * x_3146);
            let x_3149 : vec4<f32> = u_xlat13;
            let x_3151 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3149.y, x_3149.y, x_3149.y, x_3149.y) * x_3151);
            let x_3154 : vec4<f32> = u_xlat13;
            let x_3156 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3154.z, x_3154.z, x_3154.z, x_3154.z) * x_3156);
            let x_3158 : vec4<f32> = u_xlat13;
            let x_3160 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3158.w, x_3158.w, x_3158.w, x_3158.w) * x_3160);
            let x_3163 : vec4<f32> = u_xlat18;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.x, x_3163.y);
            let x_3166 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec43;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat87 = x_3175;
            let x_3177 : vec4<f32> = u_xlat18;
            let x_3178 : vec2<f32> = vec2<f32>(x_3177.z, x_3177.w);
            let x_3180 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
            let x_3187 : vec3<f32> = txVec44;
            let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
            u_xlat88 = x_3189;
            let x_3190 : f32 = u_xlat88;
            let x_3192 : f32 = u_xlat23.y;
            u_xlat88 = (x_3190 * x_3192);
            let x_3195 : f32 = u_xlat23.x;
            let x_3196 : f32 = u_xlat87;
            let x_3198 : f32 = u_xlat88;
            u_xlat87 = ((x_3195 * x_3196) + x_3198);
            let x_3201 : vec2<f32> = u_xlat64;
            let x_3203 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec45;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat88 = x_3212;
            let x_3214 : f32 = u_xlat23.z;
            let x_3215 : f32 = u_xlat88;
            let x_3217 : f32 = u_xlat87;
            u_xlat87 = ((x_3214 * x_3215) + x_3217);
            let x_3220 : vec4<f32> = u_xlat21;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.x, x_3220.y);
            let x_3223 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec46;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat88 = x_3232;
            let x_3234 : f32 = u_xlat23.w;
            let x_3235 : f32 = u_xlat88;
            let x_3237 : f32 = u_xlat87;
            u_xlat87 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec4<f32> = u_xlat19;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.x, x_3240.y);
            let x_3243 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec47;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat88 = x_3252;
            let x_3254 : f32 = u_xlat24.x;
            let x_3255 : f32 = u_xlat88;
            let x_3257 : f32 = u_xlat87;
            u_xlat87 = ((x_3254 * x_3255) + x_3257);
            let x_3260 : vec4<f32> = u_xlat19;
            let x_3261 : vec2<f32> = vec2<f32>(x_3260.z, x_3260.w);
            let x_3263 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3261.x, x_3261.y, x_3263);
            let x_3270 : vec3<f32> = txVec48;
            let x_3272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3270.xy, x_3270.z);
            u_xlat88 = x_3272;
            let x_3274 : f32 = u_xlat24.y;
            let x_3275 : f32 = u_xlat88;
            let x_3277 : f32 = u_xlat87;
            u_xlat87 = ((x_3274 * x_3275) + x_3277);
            let x_3280 : vec4<f32> = u_xlat20;
            let x_3281 : vec2<f32> = vec2<f32>(x_3280.x, x_3280.y);
            let x_3283 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
            let x_3290 : vec3<f32> = txVec49;
            let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
            u_xlat88 = x_3292;
            let x_3294 : f32 = u_xlat24.z;
            let x_3295 : f32 = u_xlat88;
            let x_3297 : f32 = u_xlat87;
            u_xlat87 = ((x_3294 * x_3295) + x_3297);
            let x_3300 : vec4<f32> = u_xlat21;
            let x_3301 : vec2<f32> = vec2<f32>(x_3300.z, x_3300.w);
            let x_3303 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3301.x, x_3301.y, x_3303);
            let x_3310 : vec3<f32> = txVec50;
            let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
            u_xlat88 = x_3312;
            let x_3314 : f32 = u_xlat24.w;
            let x_3315 : f32 = u_xlat88;
            let x_3317 : f32 = u_xlat87;
            u_xlat87 = ((x_3314 * x_3315) + x_3317);
            let x_3320 : vec4<f32> = u_xlat22;
            let x_3321 : vec2<f32> = vec2<f32>(x_3320.x, x_3320.y);
            let x_3323 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3321.x, x_3321.y, x_3323);
            let x_3330 : vec3<f32> = txVec51;
            let x_3332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3330.xy, x_3330.z);
            u_xlat88 = x_3332;
            let x_3334 : f32 = u_xlat25.x;
            let x_3335 : f32 = u_xlat88;
            let x_3337 : f32 = u_xlat87;
            u_xlat87 = ((x_3334 * x_3335) + x_3337);
            let x_3340 : vec4<f32> = u_xlat22;
            let x_3341 : vec2<f32> = vec2<f32>(x_3340.z, x_3340.w);
            let x_3343 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
            let x_3350 : vec3<f32> = txVec52;
            let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
            u_xlat88 = x_3352;
            let x_3354 : f32 = u_xlat25.y;
            let x_3355 : f32 = u_xlat88;
            let x_3357 : f32 = u_xlat87;
            u_xlat87 = ((x_3354 * x_3355) + x_3357);
            let x_3360 : vec2<f32> = u_xlat40;
            let x_3362 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3360.x, x_3360.y, x_3362);
            let x_3369 : vec3<f32> = txVec53;
            let x_3371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3369.xy, x_3369.z);
            u_xlat88 = x_3371;
            let x_3373 : f32 = u_xlat25.z;
            let x_3374 : f32 = u_xlat88;
            let x_3376 : f32 = u_xlat87;
            u_xlat87 = ((x_3373 * x_3374) + x_3376);
            let x_3379 : vec2<f32> = u_xlat72;
            let x_3381 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3379.x, x_3379.y, x_3381);
            let x_3388 : vec3<f32> = txVec54;
            let x_3390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3388.xy, x_3388.z);
            u_xlat88 = x_3390;
            let x_3392 : f32 = u_xlat25.w;
            let x_3393 : f32 = u_xlat88;
            let x_3395 : f32 = u_xlat87;
            u_xlat87 = ((x_3392 * x_3393) + x_3395);
            let x_3398 : vec4<f32> = u_xlat17;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
            let x_3401 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec55;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat88 = x_3410;
            let x_3412 : f32 = u_xlat13.x;
            let x_3413 : f32 = u_xlat88;
            let x_3415 : f32 = u_xlat87;
            u_xlat87 = ((x_3412 * x_3413) + x_3415);
            let x_3418 : vec4<f32> = u_xlat17;
            let x_3419 : vec2<f32> = vec2<f32>(x_3418.z, x_3418.w);
            let x_3421 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3419.x, x_3419.y, x_3421);
            let x_3428 : vec3<f32> = txVec56;
            let x_3430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3428.xy, x_3428.z);
            u_xlat88 = x_3430;
            let x_3432 : f32 = u_xlat13.y;
            let x_3433 : f32 = u_xlat88;
            let x_3435 : f32 = u_xlat87;
            u_xlat87 = ((x_3432 * x_3433) + x_3435);
            let x_3438 : vec2<f32> = u_xlat67;
            let x_3440 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3438.x, x_3438.y, x_3440);
            let x_3447 : vec3<f32> = txVec57;
            let x_3449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3447.xy, x_3447.z);
            u_xlat88 = x_3449;
            let x_3451 : f32 = u_xlat13.z;
            let x_3452 : f32 = u_xlat88;
            let x_3454 : f32 = u_xlat87;
            u_xlat87 = ((x_3451 * x_3452) + x_3454);
            let x_3457 : vec4<f32> = u_xlat12;
            let x_3458 : vec2<f32> = vec2<f32>(x_3457.x, x_3457.y);
            let x_3460 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3458.x, x_3458.y, x_3460);
            let x_3467 : vec3<f32> = txVec58;
            let x_3469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3467.xy, x_3467.z);
            u_xlat88 = x_3469;
            let x_3471 : f32 = u_xlat13.w;
            let x_3472 : f32 = u_xlat88;
            let x_3474 : f32 = u_xlat87;
            u_xlat85 = ((x_3471 * x_3472) + x_3474);
          }
        }
      } else {
        let x_3478 : vec4<f32> = u_xlat11;
        let x_3479 : vec2<f32> = vec2<f32>(x_3478.x, x_3478.y);
        let x_3481 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3479.x, x_3479.y, x_3481);
        let x_3488 : vec3<f32> = txVec59;
        let x_3490 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3488.xy, x_3488.z);
        u_xlat85 = x_3490;
      }
      let x_3491 : i32 = u_xlati31;
      let x_3493 : f32 = x_288.x_AdditionalShadowParams[x_3491].x;
      u_xlat87 = (1.0f + -(x_3493));
      let x_3496 : f32 = u_xlat85;
      let x_3497 : i32 = u_xlati31;
      let x_3499 : f32 = x_288.x_AdditionalShadowParams[x_3497].x;
      let x_3501 : f32 = u_xlat87;
      u_xlat85 = ((x_3496 * x_3499) + x_3501);
      let x_3504 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3504);
      let x_3508 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3508 >= 1.0f);
      let x_3510 : bool = u_xlatb87;
      let x_3511 : bool = u_xlatb88;
      u_xlatb87 = (x_3510 | x_3511);
      let x_3513 : bool = u_xlatb87;
      let x_3514 : f32 = u_xlat85;
      u_xlat85 = select(x_3514, 1.0f, x_3513);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3517 : f32 = u_xlat85;
    u_xlat87 = (-(x_3517) + 1.0f);
    let x_3520 : f32 = u_xlat1;
    let x_3521 : f32 = u_xlat87;
    let x_3523 : f32 = u_xlat85;
    u_xlat85 = ((x_3520 * x_3521) + x_3523);
    let x_3526 : i32 = u_xlati31;
    u_xlati87 = (1i << bitcast<u32>((x_3526 & 31i)));
    let x_3530 : i32 = u_xlati87;
    let x_3533 : f32 = x_1654.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3530) & bitcast<u32>(x_3533)));
    let x_3537 : i32 = u_xlati87;
    if ((x_3537 != 0i)) {
      let x_3541 : i32 = u_xlati31;
      let x_3543 : f32 = x_1654.x_AdditionalLightsLightTypes[x_3541].el;
      u_xlati87 = i32(x_3543);
      let x_3546 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3546 != 0i));
      let x_3550 : i32 = u_xlati31;
      u_xlati11 = (x_3550 << bitcast<u32>(2i));
      let x_3552 : i32 = u_xlati88;
      if ((x_3552 != 0i)) {
        let x_3557 : vec3<f32> = vs_TEXCOORD7;
        let x_3559 : i32 = u_xlati11;
        let x_3562 : i32 = u_xlati11;
        let x_3566 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3559 + 1i) / 4i)][((x_3562 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3557.y, x_3557.y, x_3557.y) * vec3<f32>(x_3566.x, x_3566.y, x_3566.w));
        let x_3569 : i32 = u_xlati11;
        let x_3571 : i32 = u_xlati11;
        let x_3574 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[(x_3569 / 4i)][(x_3571 % 4i)];
        let x_3576 : vec3<f32> = vs_TEXCOORD7;
        let x_3579 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3574.x, x_3574.y, x_3574.w) * vec3<f32>(x_3576.x, x_3576.x, x_3576.x)) + x_3579);
        let x_3581 : i32 = u_xlati11;
        let x_3584 : i32 = u_xlati11;
        let x_3588 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3581 + 2i) / 4i)][((x_3584 + 2i) % 4i)];
        let x_3590 : vec3<f32> = vs_TEXCOORD7;
        let x_3593 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3588.x, x_3588.y, x_3588.w) * vec3<f32>(x_3590.z, x_3590.z, x_3590.z)) + x_3593);
        let x_3595 : vec3<f32> = u_xlat37;
        let x_3596 : i32 = u_xlati11;
        let x_3599 : i32 = u_xlati11;
        let x_3603 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3596 + 3i) / 4i)][((x_3599 + 3i) % 4i)];
        u_xlat37 = (x_3595 + vec3<f32>(x_3603.x, x_3603.y, x_3603.w));
        let x_3606 : vec3<f32> = u_xlat37;
        let x_3608 : vec3<f32> = u_xlat37;
        let x_3610 : vec2<f32> = (vec2<f32>(x_3606.x, x_3606.y) / vec2<f32>(x_3608.z, x_3608.z));
        let x_3611 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3610.x, x_3610.y, x_3611.z);
        let x_3613 : vec3<f32> = u_xlat37;
        let x_3616 : vec2<f32> = ((vec2<f32>(x_3613.x, x_3613.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3617 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3616.x, x_3616.y, x_3617.z);
        let x_3619 : vec3<f32> = u_xlat37;
        let x_3623 : vec2<f32> = clamp(vec2<f32>(x_3619.x, x_3619.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3624 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3623.x, x_3623.y, x_3624.z);
        let x_3626 : i32 = u_xlati31;
        let x_3628 : vec4<f32> = x_1654.x_AdditionalLightsCookieAtlasUVRects[x_3626];
        let x_3630 : vec3<f32> = u_xlat37;
        let x_3633 : i32 = u_xlati31;
        let x_3635 : vec4<f32> = x_1654.x_AdditionalLightsCookieAtlasUVRects[x_3633];
        let x_3637 : vec2<f32> = ((vec2<f32>(x_3628.x, x_3628.y) * vec2<f32>(x_3630.x, x_3630.y)) + vec2<f32>(x_3635.z, x_3635.w));
        let x_3638 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3637.x, x_3637.y, x_3638.z);
      } else {
        let x_3641 : i32 = u_xlati87;
        u_xlatb87 = (x_3641 == 1i);
        let x_3643 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3643);
        let x_3645 : i32 = u_xlati87;
        if ((x_3645 != 0i)) {
          let x_3649 : vec3<f32> = vs_TEXCOORD7;
          let x_3651 : i32 = u_xlati11;
          let x_3654 : i32 = u_xlati11;
          let x_3658 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3651 + 1i) / 4i)][((x_3654 + 1i) % 4i)];
          let x_3660 : vec2<f32> = (vec2<f32>(x_3649.y, x_3649.y) * vec2<f32>(x_3658.x, x_3658.y));
          let x_3661 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3660.x, x_3660.y, x_3661.z, x_3661.w);
          let x_3663 : i32 = u_xlati11;
          let x_3665 : i32 = u_xlati11;
          let x_3668 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[(x_3663 / 4i)][(x_3665 % 4i)];
          let x_3670 : vec3<f32> = vs_TEXCOORD7;
          let x_3673 : vec4<f32> = u_xlat12;
          let x_3675 : vec2<f32> = ((vec2<f32>(x_3668.x, x_3668.y) * vec2<f32>(x_3670.x, x_3670.x)) + vec2<f32>(x_3673.x, x_3673.y));
          let x_3676 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3675.x, x_3675.y, x_3676.z, x_3676.w);
          let x_3678 : i32 = u_xlati11;
          let x_3681 : i32 = u_xlati11;
          let x_3685 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3678 + 2i) / 4i)][((x_3681 + 2i) % 4i)];
          let x_3687 : vec3<f32> = vs_TEXCOORD7;
          let x_3690 : vec4<f32> = u_xlat12;
          let x_3692 : vec2<f32> = ((vec2<f32>(x_3685.x, x_3685.y) * vec2<f32>(x_3687.z, x_3687.z)) + vec2<f32>(x_3690.x, x_3690.y));
          let x_3693 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3692.x, x_3692.y, x_3693.z, x_3693.w);
          let x_3695 : vec4<f32> = u_xlat12;
          let x_3697 : i32 = u_xlati11;
          let x_3700 : i32 = u_xlati11;
          let x_3704 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3697 + 3i) / 4i)][((x_3700 + 3i) % 4i)];
          let x_3706 : vec2<f32> = (vec2<f32>(x_3695.x, x_3695.y) + vec2<f32>(x_3704.x, x_3704.y));
          let x_3707 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3706.x, x_3706.y, x_3707.z, x_3707.w);
          let x_3709 : vec4<f32> = u_xlat12;
          let x_3712 : vec2<f32> = ((vec2<f32>(x_3709.x, x_3709.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3713 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3712.x, x_3712.y, x_3713.z, x_3713.w);
          let x_3715 : vec4<f32> = u_xlat12;
          let x_3717 : vec2<f32> = fract(vec2<f32>(x_3715.x, x_3715.y));
          let x_3718 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3717.x, x_3717.y, x_3718.z, x_3718.w);
          let x_3720 : i32 = u_xlati31;
          let x_3722 : vec4<f32> = x_1654.x_AdditionalLightsCookieAtlasUVRects[x_3720];
          let x_3724 : vec4<f32> = u_xlat12;
          let x_3727 : i32 = u_xlati31;
          let x_3729 : vec4<f32> = x_1654.x_AdditionalLightsCookieAtlasUVRects[x_3727];
          let x_3731 : vec2<f32> = ((vec2<f32>(x_3722.x, x_3722.y) * vec2<f32>(x_3724.x, x_3724.y)) + vec2<f32>(x_3729.z, x_3729.w));
          let x_3732 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3731.x, x_3731.y, x_3732.z);
        } else {
          let x_3735 : vec3<f32> = vs_TEXCOORD7;
          let x_3737 : i32 = u_xlati11;
          let x_3740 : i32 = u_xlati11;
          let x_3744 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3737 + 1i) / 4i)][((x_3740 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3735.y, x_3735.y, x_3735.y, x_3735.y) * x_3744);
          let x_3746 : i32 = u_xlati11;
          let x_3748 : i32 = u_xlati11;
          let x_3751 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[(x_3746 / 4i)][(x_3748 % 4i)];
          let x_3752 : vec3<f32> = vs_TEXCOORD7;
          let x_3755 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3751 * vec4<f32>(x_3752.x, x_3752.x, x_3752.x, x_3752.x)) + x_3755);
          let x_3757 : i32 = u_xlati11;
          let x_3760 : i32 = u_xlati11;
          let x_3764 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3757 + 2i) / 4i)][((x_3760 + 2i) % 4i)];
          let x_3765 : vec3<f32> = vs_TEXCOORD7;
          let x_3768 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3764 * vec4<f32>(x_3765.z, x_3765.z, x_3765.z, x_3765.z)) + x_3768);
          let x_3770 : vec4<f32> = u_xlat12;
          let x_3771 : i32 = u_xlati11;
          let x_3774 : i32 = u_xlati11;
          let x_3778 : vec4<f32> = x_1654.x_AdditionalLightsWorldToLights[((x_3771 + 3i) / 4i)][((x_3774 + 3i) % 4i)];
          u_xlat12 = (x_3770 + x_3778);
          let x_3780 : vec4<f32> = u_xlat12;
          let x_3782 : vec4<f32> = u_xlat12;
          let x_3784 : vec3<f32> = (vec3<f32>(x_3780.x, x_3780.y, x_3780.z) / vec3<f32>(x_3782.w, x_3782.w, x_3782.w));
          let x_3785 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3784.x, x_3784.y, x_3784.z, x_3785.w);
          let x_3787 : vec4<f32> = u_xlat12;
          let x_3789 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3787.x, x_3787.y, x_3787.z), vec3<f32>(x_3789.x, x_3789.y, x_3789.z));
          let x_3792 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3792);
          let x_3794 : f32 = u_xlat87;
          let x_3796 : vec4<f32> = u_xlat12;
          let x_3798 : vec3<f32> = (vec3<f32>(x_3794, x_3794, x_3794) * vec3<f32>(x_3796.x, x_3796.y, x_3796.z));
          let x_3799 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3798.x, x_3798.y, x_3798.z, x_3799.w);
          let x_3801 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3801.x, x_3801.y, x_3801.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3806 : f32 = u_xlat87;
          u_xlat87 = max(x_3806, 0.00000099999999747524f);
          let x_3809 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3809);
          let x_3811 : f32 = u_xlat87;
          let x_3813 : vec4<f32> = u_xlat12;
          let x_3815 : vec3<f32> = (vec3<f32>(x_3811, x_3811, x_3811) * vec3<f32>(x_3813.z, x_3813.x, x_3813.y));
          let x_3816 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3815.x, x_3815.y, x_3815.z, x_3816.w);
          let x_3819 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3819);
          let x_3823 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3823, 0.0f, 1.0f);
          let x_3826 : vec4<f32> = u_xlat13;
          let x_3828 : vec4<bool> = (vec4<f32>(x_3826.y, x_3826.y, x_3826.y, x_3826.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3829 : vec2<bool> = vec2<bool>(x_3828.x, x_3828.w);
          let x_3830 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3829.x, x_3830.y, x_3830.z, x_3829.y);
          let x_3833 : bool = u_xlatb11.x;
          if (x_3833) {
            let x_3838 : f32 = u_xlat13.x;
            x_3834 = x_3838;
          } else {
            let x_3841 : f32 = u_xlat13.x;
            x_3834 = -(x_3841);
          }
          let x_3843 : f32 = x_3834;
          u_xlat11.x = x_3843;
          let x_3846 : bool = u_xlatb11.w;
          if (x_3846) {
            let x_3851 : f32 = u_xlat13.x;
            x_3847 = x_3851;
          } else {
            let x_3854 : f32 = u_xlat13.x;
            x_3847 = -(x_3854);
          }
          let x_3856 : f32 = x_3847;
          u_xlat11.w = x_3856;
          let x_3858 : vec4<f32> = u_xlat12;
          let x_3860 : f32 = u_xlat87;
          let x_3863 : vec4<f32> = u_xlat11;
          let x_3865 : vec2<f32> = ((vec2<f32>(x_3858.x, x_3858.y) * vec2<f32>(x_3860, x_3860)) + vec2<f32>(x_3863.x, x_3863.w));
          let x_3866 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3865.x, x_3866.y, x_3866.z, x_3865.y);
          let x_3868 : vec4<f32> = u_xlat11;
          let x_3871 : vec2<f32> = ((vec2<f32>(x_3868.x, x_3868.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3872 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3871.x, x_3872.y, x_3872.z, x_3871.y);
          let x_3874 : vec4<f32> = u_xlat11;
          let x_3878 : vec2<f32> = clamp(vec2<f32>(x_3874.x, x_3874.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3879 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3878.x, x_3879.y, x_3879.z, x_3878.y);
          let x_3881 : i32 = u_xlati31;
          let x_3883 : vec4<f32> = x_1654.x_AdditionalLightsCookieAtlasUVRects[x_3881];
          let x_3885 : vec4<f32> = u_xlat11;
          let x_3888 : i32 = u_xlati31;
          let x_3890 : vec4<f32> = x_1654.x_AdditionalLightsCookieAtlasUVRects[x_3888];
          let x_3892 : vec2<f32> = ((vec2<f32>(x_3883.x, x_3883.y) * vec2<f32>(x_3885.x, x_3885.w)) + vec2<f32>(x_3890.z, x_3890.w));
          let x_3893 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3892.x, x_3892.y, x_3893.z);
        }
      }
      let x_3900 : vec3<f32> = u_xlat37;
      let x_3902 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3900.x, x_3900.y), 0.0f);
      u_xlat11 = x_3902;
      let x_3904 : bool = u_xlatb7.y;
      if (x_3904) {
        let x_3909 : f32 = u_xlat11.w;
        x_3905 = x_3909;
      } else {
        let x_3912 : f32 = u_xlat11.x;
        x_3905 = x_3912;
      }
      let x_3913 : f32 = x_3905;
      u_xlat87 = x_3913;
      let x_3915 : bool = u_xlatb7.x;
      if (x_3915) {
        let x_3919 : vec4<f32> = u_xlat11;
        x_3916 = vec3<f32>(x_3919.x, x_3919.y, x_3919.z);
      } else {
        let x_3922 : f32 = u_xlat87;
        x_3916 = vec3<f32>(x_3922, x_3922, x_3922);
      }
      let x_3924 : vec3<f32> = x_3916;
      let x_3925 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3924.x, x_3924.y, x_3924.z, x_3925.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3931 : vec4<f32> = u_xlat11;
    let x_3933 : i32 = u_xlati31;
    let x_3935 : vec4<f32> = x_2098.x_AdditionalLightsColor[x_3933];
    let x_3937 : vec3<f32> = (vec3<f32>(x_3931.x, x_3931.y, x_3931.z) * vec3<f32>(x_3935.x, x_3935.y, x_3935.z));
    let x_3938 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3937.x, x_3937.y, x_3937.z, x_3938.w);
    let x_3940 : f32 = u_xlat84;
    let x_3941 : f32 = u_xlat85;
    u_xlat31.x = (x_3940 * x_3941);
    let x_3944 : vec3<f32> = u_xlat27;
    let x_3945 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_3944, vec3<f32>(x_3945.x, x_3945.y, x_3945.z));
    let x_3948 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3948, 0.0f, 1.0f);
    let x_3951 : f32 = u_xlat31.x;
    let x_3952 : f32 = u_xlat84;
    u_xlat31.x = (x_3951 * x_3952);
    let x_3955 : vec3<f32> = u_xlat31;
    let x_3957 : vec4<f32> = u_xlat11;
    let x_3959 : vec3<f32> = (vec3<f32>(x_3955.x, x_3955.x, x_3955.x) * vec3<f32>(x_3957.x, x_3957.y, x_3957.z));
    let x_3960 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3959.x, x_3959.y, x_3959.z, x_3960.w);
    let x_3962 : vec4<f32> = u_xlat9;
    let x_3964 : f32 = u_xlat59;
    let x_3967 : vec3<f32> = u_xlat3;
    let x_3968 : vec3<f32> = ((vec3<f32>(x_3962.x, x_3962.y, x_3962.z) * vec3<f32>(x_3964, x_3964, x_3964)) + x_3967);
    let x_3969 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3968.x, x_3968.y, x_3968.z, x_3969.w);
    let x_3971 : vec4<f32> = u_xlat9;
    let x_3973 : vec4<f32> = u_xlat9;
    u_xlat31.x = dot(vec3<f32>(x_3971.x, x_3971.y, x_3971.z), vec3<f32>(x_3973.x, x_3973.y, x_3973.z));
    let x_3978 : f32 = u_xlat31.x;
    u_xlat31.x = max(x_3978, 1.17549435e-38f);
    let x_3982 : f32 = u_xlat31.x;
    u_xlat31.x = inverseSqrt(x_3982);
    let x_3985 : vec3<f32> = u_xlat31;
    let x_3987 : vec4<f32> = u_xlat9;
    let x_3989 : vec3<f32> = (vec3<f32>(x_3985.x, x_3985.x, x_3985.x) * vec3<f32>(x_3987.x, x_3987.y, x_3987.z));
    let x_3990 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3989.x, x_3989.y, x_3989.z, x_3990.w);
    let x_3992 : vec3<f32> = u_xlat27;
    let x_3993 : vec4<f32> = u_xlat9;
    u_xlat31.x = dot(x_3992, vec3<f32>(x_3993.x, x_3993.y, x_3993.z));
    let x_3998 : f32 = u_xlat31.x;
    u_xlat31.x = clamp(x_3998, 0.0f, 1.0f);
    let x_4001 : vec4<f32> = u_xlat10;
    let x_4003 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4001.x, x_4001.y, x_4001.z), vec3<f32>(x_4003.x, x_4003.y, x_4003.z));
    let x_4006 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4006, 0.0f, 1.0f);
    let x_4009 : f32 = u_xlat31.x;
    let x_4011 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4009 * x_4011);
    let x_4015 : f32 = u_xlat31.x;
    let x_4017 : f32 = u_xlat8.x;
    u_xlat31.x = ((x_4015 * x_4017) + 1.00001001358032226562f);
    let x_4021 : f32 = u_xlat84;
    let x_4022 : f32 = u_xlat84;
    u_xlat84 = (x_4021 * x_4022);
    let x_4025 : f32 = u_xlat31.x;
    let x_4027 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4025 * x_4027);
    let x_4030 : f32 = u_xlat84;
    u_xlat84 = max(x_4030, 0.10000000149011611938f);
    let x_4033 : f32 = u_xlat31.x;
    let x_4034 : f32 = u_xlat84;
    u_xlat31.x = (x_4033 * x_4034);
    let x_4037 : f32 = u_xlat81;
    let x_4039 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4037 * x_4039);
    let x_4042 : f32 = u_xlat82;
    let x_4044 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4042 / x_4044);
    let x_4047 : vec4<f32> = u_xlat0;
    let x_4049 : vec3<f32> = u_xlat31;
    let x_4052 : vec3<f32> = u_xlat4;
    let x_4053 : vec3<f32> = ((vec3<f32>(x_4047.x, x_4047.y, x_4047.z) * vec3<f32>(x_4049.x, x_4049.x, x_4049.x)) + x_4052);
    let x_4054 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4053.x, x_4053.y, x_4053.z, x_4054.w);
    let x_4056 : vec4<f32> = u_xlat9;
    let x_4058 : vec4<f32> = u_xlat11;
    let x_4061 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4056.x, x_4056.y, x_4056.z) * vec3<f32>(x_4058.x, x_4058.y, x_4058.z)) + x_4061);

    continuing {
      let x_4063 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4063 + bitcast<u32>(1i));
    }
  }
  let x_4065 : vec4<f32> = u_xlat6;
  let x_4067 : vec4<f32> = u_xlat5;
  let x_4070 : vec4<f32> = u_xlat2;
  let x_4072 : vec3<f32> = ((vec3<f32>(x_4065.x, x_4065.y, x_4065.z) * vec3<f32>(x_4067.x, x_4067.z, x_4067.w)) + vec3<f32>(x_4070.x, x_4070.y, x_4070.z));
  let x_4073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4072.x, x_4072.y, x_4072.z, x_4073.w);
  let x_4077 : vec3<f32> = u_xlat34;
  let x_4078 : vec4<f32> = u_xlat0;
  let x_4080 : vec3<f32> = (x_4077 + vec3<f32>(x_4078.x, x_4078.y, x_4078.z));
  let x_4081 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4080.x, x_4080.y, x_4080.z, x_4081.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


