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

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat67 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlatb68 : bool;

@group(1) @binding(4) var<uniform> x_181 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb3 : bool;

var<private> u_xlat47 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb25 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_1538 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1657 : UnityPerDraw;

var<private> u_xlatu68 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu70 : u32;

var<private> u_xlati71 : i32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

@group(1) @binding(1) var<uniform> x_1777 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlati72 : i32;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlatb72 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb73 : bool;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlati7 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu48 : u32;

var<private> u_xlatb70 : bool;

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
  var x_1623 : f32;
  var x_1635 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1919 : f32;
  var x_1930 : f32;
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
  var x_3597 : f32;
  var x_3610 : f32;
  var x_3667 : f32;
  var x_3678 : vec3<f32>;
  var x_3781 : f32;
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
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  let x_53 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_52, x_53);
  let x_58 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_58);
  let x_61 : vec3<f32> = u_xlat1;
  let x_63 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63);
  let x_70 : f32 = vs_TEXCOORD1.y;
  let x_74 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat67 = (x_70 * x_74);
  let x_77 : f32 = x_28.unity_MatrixV[0i].z;
  let x_79 : f32 = vs_TEXCOORD1.x;
  let x_81 : f32 = u_xlat67;
  u_xlat67 = ((x_77 * x_79) + x_81);
  let x_85 : f32 = x_28.unity_MatrixV[2i].z;
  let x_87 : f32 = vs_TEXCOORD1.z;
  let x_89 : f32 = u_xlat67;
  u_xlat67 = ((x_85 * x_87) + x_89);
  let x_91 : f32 = u_xlat67;
  let x_94 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat67 = (x_91 + x_94);
  let x_96 : f32 = u_xlat67;
  let x_100 : f32 = x_28.x_ProjectionParams.y;
  u_xlat67 = (-(x_96) + -(x_100));
  let x_103 : f32 = u_xlat67;
  u_xlat67 = max(x_103, 0.0f);
  let x_106 : f32 = u_xlat67;
  let x_109 : f32 = x_28.unity_FogParams.x;
  u_xlat67 = (x_106 * x_109);
  let x_118 : vec2<f32> = vs_TEXCOORD7;
  let x_120 : f32 = x_28.x_GlobalMipBias.x;
  let x_121 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_118, x_120);
  u_xlat2 = x_121;
  let x_127 : vec2<f32> = vs_TEXCOORD7;
  let x_129 : f32 = x_28.x_GlobalMipBias.x;
  let x_130 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_127, x_129);
  let x_131 : vec3<f32> = vec3<f32>(x_130.x, x_130.y, x_130.z);
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat2;
  let x_138 : vec3<f32> = (vec3<f32>(x_134.x, x_134.y, x_134.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_141 : vec3<f32> = u_xlat1;
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_141, vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_147 : f32 = u_xlat2.x;
  u_xlat2.x = (x_147 + 0.5f);
  let x_151 : vec4<f32> = u_xlat2;
  let x_153 : vec4<f32> = u_xlat3;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.x, x_151.x) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_161 : f32 = u_xlat2.w;
  u_xlat68 = max(x_161, 0.00009999999747378752f);
  let x_164 : vec4<f32> = u_xlat2;
  let x_166 : f32 = u_xlat68;
  let x_168 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) / vec3<f32>(x_166, x_166, x_166));
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_183 : f32 = x_181.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_183);
  let x_185 : bool = u_xlatb68;
  if (x_185) {
    let x_189 : f32 = x_181.x_MainLightShadowParams.y;
    u_xlatb68 = (x_189 == 1.0f);
    let x_192 : bool = u_xlatb68;
    if (x_192) {
      let x_197 : vec4<f32> = vs_TEXCOORD6;
      let x_200 : vec4<f32> = x_181.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_197.x, x_197.y, x_197.x, x_197.y) + x_200);
      let x_204 : vec4<f32> = u_xlat3;
      let x_205 : vec2<f32> = vec2<f32>(x_204.x, x_204.y);
      let x_207 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_205.x, x_205.y, x_207);
      let x_220 : vec3<f32> = txVec0;
      let x_222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_220.xy, x_220.z);
      u_xlat4.x = x_222;
      let x_225 : vec4<f32> = u_xlat3;
      let x_226 : vec2<f32> = vec2<f32>(x_225.z, x_225.w);
      let x_228 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_226.x, x_226.y, x_228);
      let x_235 : vec3<f32> = txVec1;
      let x_237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_235.xy, x_235.z);
      u_xlat4.y = x_237;
      let x_239 : vec4<f32> = vs_TEXCOORD6;
      let x_243 : vec4<f32> = x_181.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_239.x, x_239.y, x_239.x, x_239.y) + x_243);
      let x_246 : vec4<f32> = u_xlat3;
      let x_247 : vec2<f32> = vec2<f32>(x_246.x, x_246.y);
      let x_249 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_247.x, x_247.y, x_249);
      let x_256 : vec3<f32> = txVec2;
      let x_258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_256.xy, x_256.z);
      u_xlat4.z = x_258;
      let x_261 : vec4<f32> = u_xlat3;
      let x_262 : vec2<f32> = vec2<f32>(x_261.z, x_261.w);
      let x_264 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_262.x, x_262.y, x_264);
      let x_271 : vec3<f32> = txVec3;
      let x_273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_271.xy, x_271.z);
      u_xlat4.w = x_273;
      let x_275 : vec4<f32> = u_xlat4;
      u_xlat68 = dot(x_275, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_282 : f32 = x_181.x_MainLightShadowParams.y;
      u_xlatb3 = (x_282 == 2.0f);
      let x_285 : bool = u_xlatb3;
      if (x_285) {
        let x_288 : vec4<f32> = vs_TEXCOORD6;
        let x_292 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_296 : vec2<f32> = ((vec2<f32>(x_288.x, x_288.y) * vec2<f32>(x_292.z, x_292.w)) + vec2<f32>(0.5f, 0.5f));
        let x_297 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_297.w);
        let x_299 : vec4<f32> = u_xlat3;
        let x_301 : vec2<f32> = floor(vec2<f32>(x_299.x, x_299.y));
        let x_302 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_302.z, x_302.w);
        let x_306 : vec4<f32> = vs_TEXCOORD6;
        let x_309 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_312 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_306.x, x_306.y) * vec2<f32>(x_309.z, x_309.w)) + -(vec2<f32>(x_312.x, x_312.y)));
        let x_316 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_316.x, x_316.x, x_316.y, x_316.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_321 : vec4<f32> = u_xlat4;
        let x_323 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_321.x, x_321.x, x_321.z, x_321.z) * vec4<f32>(x_323.x, x_323.x, x_323.z, x_323.z));
        let x_326 : vec4<f32> = u_xlat5;
        let x_330 : vec2<f32> = (vec2<f32>(x_326.y, x_326.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_331 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_330.x, x_331.y, x_330.y, x_331.w);
        let x_333 : vec4<f32> = u_xlat5;
        let x_336 : vec2<f32> = u_xlat47;
        let x_338 : vec2<f32> = ((vec2<f32>(x_333.x, x_333.z) * vec2<f32>(0.5f, 0.5f)) + -(x_336));
        let x_339 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_338.x, x_338.y, x_339.z, x_339.w);
        let x_342 : vec2<f32> = u_xlat47;
        u_xlat49 = (-(x_342) + vec2<f32>(1.0f, 1.0f));
        let x_347 : vec2<f32> = u_xlat47;
        let x_349 : vec2<f32> = min(x_347, vec2<f32>(0.0f, 0.0f));
        let x_350 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
        let x_352 : vec4<f32> = u_xlat6;
        let x_355 : vec4<f32> = u_xlat6;
        let x_358 : vec2<f32> = u_xlat49;
        let x_359 : vec2<f32> = ((-(vec2<f32>(x_352.x, x_352.y)) * vec2<f32>(x_355.x, x_355.y)) + x_358);
        let x_360 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
        let x_362 : vec2<f32> = u_xlat47;
        u_xlat47 = max(x_362, vec2<f32>(0.0f, 0.0f));
        let x_364 : vec2<f32> = u_xlat47;
        let x_366 : vec2<f32> = u_xlat47;
        let x_368 : vec4<f32> = u_xlat4;
        u_xlat47 = ((-(x_364) * x_366) + vec2<f32>(x_368.y, x_368.w));
        let x_371 : vec4<f32> = u_xlat6;
        let x_373 : vec2<f32> = (vec2<f32>(x_371.x, x_371.y) + vec2<f32>(1.0f, 1.0f));
        let x_374 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
        let x_376 : vec2<f32> = u_xlat47;
        u_xlat47 = (x_376 + vec2<f32>(1.0f, 1.0f));
        let x_379 : vec4<f32> = u_xlat5;
        let x_383 : vec2<f32> = (vec2<f32>(x_379.x, x_379.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_384 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
        let x_386 : vec2<f32> = u_xlat49;
        let x_387 : vec2<f32> = (x_386 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_388 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
        let x_390 : vec4<f32> = u_xlat6;
        let x_392 : vec2<f32> = (vec2<f32>(x_390.x, x_390.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_393 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
        let x_396 : vec2<f32> = u_xlat47;
        let x_397 : vec2<f32> = (x_396 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_398 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
        let x_400 : vec4<f32> = u_xlat4;
        u_xlat47 = (vec2<f32>(x_400.y, x_400.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_404 : f32 = u_xlat6.x;
        u_xlat7.z = x_404;
        let x_407 : f32 = u_xlat47.x;
        u_xlat7.w = x_407;
        let x_410 : f32 = u_xlat8.x;
        u_xlat5.z = x_410;
        let x_413 : f32 = u_xlat4.x;
        u_xlat5.w = x_413;
        let x_416 : vec4<f32> = u_xlat5;
        let x_418 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_416.z, x_416.w, x_416.x, x_416.z) + vec4<f32>(x_418.z, x_418.w, x_418.x, x_418.z));
        let x_422 : f32 = u_xlat7.y;
        u_xlat6.z = x_422;
        let x_425 : f32 = u_xlat47.y;
        u_xlat6.w = x_425;
        let x_428 : f32 = u_xlat5.y;
        u_xlat8.z = x_428;
        let x_431 : f32 = u_xlat4.z;
        u_xlat8.w = x_431;
        let x_433 : vec4<f32> = u_xlat6;
        let x_435 : vec4<f32> = u_xlat8;
        let x_437 : vec3<f32> = (vec3<f32>(x_433.z, x_433.y, x_433.w) + vec3<f32>(x_435.z, x_435.y, x_435.w));
        let x_438 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
        let x_440 : vec4<f32> = u_xlat5;
        let x_442 : vec4<f32> = u_xlat9;
        let x_444 : vec3<f32> = (vec3<f32>(x_440.x, x_440.z, x_440.w) / vec3<f32>(x_442.z, x_442.w, x_442.y));
        let x_445 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
        let x_447 : vec4<f32> = u_xlat5;
        let x_452 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_453 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
        let x_455 : vec4<f32> = u_xlat8;
        let x_457 : vec4<f32> = u_xlat4;
        let x_459 : vec3<f32> = (vec3<f32>(x_455.z, x_455.y, x_455.w) / vec3<f32>(x_457.x, x_457.y, x_457.z));
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
        let x_462 : vec4<f32> = u_xlat6;
        let x_464 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_465 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
        let x_467 : vec4<f32> = u_xlat5;
        let x_470 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_472 : vec3<f32> = (vec3<f32>(x_467.y, x_467.x, x_467.z) * vec3<f32>(x_470.x, x_470.x, x_470.x));
        let x_473 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
        let x_475 : vec4<f32> = u_xlat6;
        let x_478 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_480 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_478.y, x_478.y, x_478.y));
        let x_481 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
        let x_484 : f32 = u_xlat6.x;
        u_xlat5.w = x_484;
        let x_486 : vec4<f32> = u_xlat3;
        let x_489 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_492 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_486.x, x_486.y, x_486.x, x_486.y) * vec4<f32>(x_489.x, x_489.y, x_489.x, x_489.y)) + vec4<f32>(x_492.y, x_492.w, x_492.x, x_492.w));
        let x_495 : vec4<f32> = u_xlat3;
        let x_498 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_501 : vec4<f32> = u_xlat5;
        u_xlat47 = ((vec2<f32>(x_495.x, x_495.y) * vec2<f32>(x_498.x, x_498.y)) + vec2<f32>(x_501.z, x_501.w));
        let x_505 : f32 = u_xlat5.y;
        u_xlat6.w = x_505;
        let x_507 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = vec2<f32>(x_507.y, x_507.z);
        let x_509 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_509.x, x_508.x, x_509.z, x_508.y);
        let x_511 : vec4<f32> = u_xlat3;
        let x_514 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_517 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_511.x, x_511.y, x_511.x, x_511.y) * vec4<f32>(x_514.x, x_514.y, x_514.x, x_514.y)) + vec4<f32>(x_517.x, x_517.y, x_517.z, x_517.y));
        let x_520 : vec4<f32> = u_xlat3;
        let x_523 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_526 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y) * vec4<f32>(x_523.x, x_523.y, x_523.x, x_523.y)) + vec4<f32>(x_526.w, x_526.y, x_526.w, x_526.z));
        let x_529 : vec4<f32> = u_xlat3;
        let x_532 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_535 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_529.x, x_529.y, x_529.x, x_529.y) * vec4<f32>(x_532.x, x_532.y, x_532.x, x_532.y)) + vec4<f32>(x_535.x, x_535.w, x_535.z, x_535.w));
        let x_539 : vec4<f32> = u_xlat4;
        let x_541 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_539.x, x_539.x, x_539.x, x_539.y) * vec4<f32>(x_541.z, x_541.w, x_541.y, x_541.z));
        let x_545 : vec4<f32> = u_xlat4;
        let x_547 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_545.y, x_545.y, x_545.z, x_545.z) * x_547);
        let x_550 : f32 = u_xlat4.z;
        let x_552 : f32 = u_xlat9.y;
        u_xlat3.x = (x_550 * x_552);
        let x_556 : vec4<f32> = u_xlat7;
        let x_557 : vec2<f32> = vec2<f32>(x_556.x, x_556.y);
        let x_559 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_557.x, x_557.y, x_559);
        let x_567 : vec3<f32> = txVec4;
        let x_569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_567.xy, x_567.z);
        u_xlat25.x = x_569;
        let x_572 : vec4<f32> = u_xlat7;
        let x_573 : vec2<f32> = vec2<f32>(x_572.z, x_572.w);
        let x_575 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_573.x, x_573.y, x_575);
        let x_582 : vec3<f32> = txVec5;
        let x_584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_582.xy, x_582.z);
        u_xlat4.x = x_584;
        let x_587 : f32 = u_xlat4.x;
        let x_589 : f32 = u_xlat10.y;
        u_xlat4.x = (x_587 * x_589);
        let x_593 : f32 = u_xlat10.x;
        let x_595 : f32 = u_xlat25.x;
        let x_598 : f32 = u_xlat4.x;
        u_xlat25.x = ((x_593 * x_595) + x_598);
        let x_602 : vec2<f32> = u_xlat47;
        let x_604 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_602.x, x_602.y, x_604);
        let x_611 : vec3<f32> = txVec6;
        let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_611.xy, x_611.z);
        u_xlat47.x = x_613;
        let x_616 : f32 = u_xlat10.z;
        let x_618 : f32 = u_xlat47.x;
        let x_621 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_616 * x_618) + x_621);
        let x_625 : vec4<f32> = u_xlat6;
        let x_626 : vec2<f32> = vec2<f32>(x_625.x, x_625.y);
        let x_628 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_626.x, x_626.y, x_628);
        let x_635 : vec3<f32> = txVec7;
        let x_637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_635.xy, x_635.z);
        u_xlat47.x = x_637;
        let x_640 : f32 = u_xlat10.w;
        let x_642 : f32 = u_xlat47.x;
        let x_645 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_640 * x_642) + x_645);
        let x_649 : vec4<f32> = u_xlat8;
        let x_650 : vec2<f32> = vec2<f32>(x_649.x, x_649.y);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec8;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
        u_xlat47.x = x_661;
        let x_664 : f32 = u_xlat11.x;
        let x_666 : f32 = u_xlat47.x;
        let x_669 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_664 * x_666) + x_669);
        let x_673 : vec4<f32> = u_xlat8;
        let x_674 : vec2<f32> = vec2<f32>(x_673.z, x_673.w);
        let x_676 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_683 : vec3<f32> = txVec9;
        let x_685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_683.xy, x_683.z);
        u_xlat47.x = x_685;
        let x_688 : f32 = u_xlat11.y;
        let x_690 : f32 = u_xlat47.x;
        let x_693 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_688 * x_690) + x_693);
        let x_697 : vec4<f32> = u_xlat6;
        let x_698 : vec2<f32> = vec2<f32>(x_697.z, x_697.w);
        let x_700 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_698.x, x_698.y, x_700);
        let x_707 : vec3<f32> = txVec10;
        let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
        u_xlat47.x = x_709;
        let x_712 : f32 = u_xlat11.z;
        let x_714 : f32 = u_xlat47.x;
        let x_717 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_712 * x_714) + x_717);
        let x_721 : vec4<f32> = u_xlat5;
        let x_722 : vec2<f32> = vec2<f32>(x_721.x, x_721.y);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec11;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_731.xy, x_731.z);
        u_xlat47.x = x_733;
        let x_736 : f32 = u_xlat11.w;
        let x_738 : f32 = u_xlat47.x;
        let x_741 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_736 * x_738) + x_741);
        let x_745 : vec4<f32> = u_xlat5;
        let x_746 : vec2<f32> = vec2<f32>(x_745.z, x_745.w);
        let x_748 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_746.x, x_746.y, x_748);
        let x_755 : vec3<f32> = txVec12;
        let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_755.xy, x_755.z);
        u_xlat47.x = x_757;
        let x_760 : f32 = u_xlat3.x;
        let x_762 : f32 = u_xlat47.x;
        let x_765 : f32 = u_xlat25.x;
        u_xlat68 = ((x_760 * x_762) + x_765);
      } else {
        let x_768 : vec4<f32> = vs_TEXCOORD6;
        let x_771 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_774 : vec2<f32> = ((vec2<f32>(x_768.x, x_768.y) * vec2<f32>(x_771.z, x_771.w)) + vec2<f32>(0.5f, 0.5f));
        let x_775 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat3;
        let x_779 : vec2<f32> = floor(vec2<f32>(x_777.x, x_777.y));
        let x_780 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : vec4<f32> = vs_TEXCOORD6;
        let x_785 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.z, x_785.w)) + -(vec2<f32>(x_788.x, x_788.y)));
        let x_792 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_792.x, x_792.x, x_792.y, x_792.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_795 : vec4<f32> = u_xlat4;
        let x_797 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_795.x, x_795.x, x_795.z, x_795.z) * vec4<f32>(x_797.x, x_797.x, x_797.z, x_797.z));
        let x_800 : vec4<f32> = u_xlat5;
        let x_804 : vec2<f32> = (vec2<f32>(x_800.y, x_800.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_805 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_805.x, x_804.x, x_805.z, x_804.y);
        let x_807 : vec4<f32> = u_xlat5;
        let x_810 : vec2<f32> = u_xlat47;
        let x_812 : vec2<f32> = ((vec2<f32>(x_807.x, x_807.z) * vec2<f32>(0.5f, 0.5f)) + -(x_810));
        let x_813 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_812.x, x_813.y, x_812.y, x_813.w);
        let x_815 : vec2<f32> = u_xlat47;
        let x_817 : vec2<f32> = (-(x_815) + vec2<f32>(1.0f, 1.0f));
        let x_818 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_820 : vec2<f32> = u_xlat47;
        u_xlat49 = min(x_820, vec2<f32>(0.0f, 0.0f));
        let x_822 : vec2<f32> = u_xlat49;
        let x_824 : vec2<f32> = u_xlat49;
        let x_826 : vec4<f32> = u_xlat5;
        let x_828 : vec2<f32> = ((-(x_822) * x_824) + vec2<f32>(x_826.x, x_826.y));
        let x_829 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
        let x_831 : vec2<f32> = u_xlat47;
        u_xlat49 = max(x_831, vec2<f32>(0.0f, 0.0f));
        let x_834 : vec2<f32> = u_xlat49;
        let x_836 : vec2<f32> = u_xlat49;
        let x_838 : vec4<f32> = u_xlat4;
        let x_840 : vec2<f32> = ((-(x_834) * x_836) + vec2<f32>(x_838.y, x_838.w));
        let x_841 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_840.x, x_841.y, x_840.y);
        let x_843 : vec4<f32> = u_xlat5;
        let x_846 : vec2<f32> = (vec2<f32>(x_843.x, x_843.y) + vec2<f32>(2.0f, 2.0f));
        let x_847 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_849 : vec3<f32> = u_xlat26;
        let x_851 : vec2<f32> = (vec2<f32>(x_849.x, x_849.z) + vec2<f32>(2.0f, 2.0f));
        let x_852 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_852.x, x_851.x, x_852.z, x_851.y);
        let x_855 : f32 = u_xlat4.y;
        u_xlat7.z = (x_855 * 0.08163200318813323975f);
        let x_859 : vec4<f32> = u_xlat4;
        let x_862 : vec3<f32> = (vec3<f32>(x_859.z, x_859.x, x_859.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_863 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat5;
        let x_868 : vec2<f32> = (vec2<f32>(x_865.x, x_865.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_869 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_872 : f32 = u_xlat8.y;
        u_xlat7.x = x_872;
        let x_874 : vec2<f32> = u_xlat47;
        let x_881 : vec2<f32> = ((vec2<f32>(x_874.x, x_874.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_882 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_882.x, x_881.x, x_882.z, x_881.y);
        let x_884 : vec2<f32> = u_xlat47;
        let x_888 : vec2<f32> = ((vec2<f32>(x_884.x, x_884.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_889 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_888.x, x_889.y, x_888.y, x_889.w);
        let x_892 : f32 = u_xlat4.x;
        u_xlat5.y = x_892;
        let x_895 : f32 = u_xlat6.y;
        u_xlat5.w = x_895;
        let x_897 : vec4<f32> = u_xlat5;
        let x_898 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_897 + x_898);
        let x_900 : vec2<f32> = u_xlat47;
        let x_903 : vec2<f32> = ((vec2<f32>(x_900.y, x_900.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_904 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_904.x, x_903.x, x_904.z, x_903.y);
        let x_906 : vec2<f32> = u_xlat47;
        let x_909 : vec2<f32> = ((vec2<f32>(x_906.y, x_906.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_910 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_909.x, x_910.y, x_909.y, x_910.w);
        let x_913 : f32 = u_xlat4.y;
        u_xlat6.y = x_913;
        let x_915 : vec4<f32> = u_xlat6;
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_915 + x_916);
        let x_918 : vec4<f32> = u_xlat5;
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_918 / x_919);
        let x_921 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_921 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_927 : vec4<f32> = u_xlat6;
        let x_928 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_927 / x_928);
        let x_930 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_930 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_932 : vec4<f32> = u_xlat5;
        let x_935 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_932.w, x_932.x, x_932.y, x_932.z) * vec4<f32>(x_935.x, x_935.x, x_935.x, x_935.x));
        let x_938 : vec4<f32> = u_xlat6;
        let x_941 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_938.x, x_938.w, x_938.y, x_938.z) * vec4<f32>(x_941.y, x_941.y, x_941.y, x_941.y));
        let x_944 : vec4<f32> = u_xlat5;
        let x_945 : vec3<f32> = vec3<f32>(x_944.y, x_944.z, x_944.w);
        let x_946 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_945.x, x_946.y, x_945.y, x_945.z);
        let x_949 : f32 = u_xlat6.x;
        u_xlat8.y = x_949;
        let x_951 : vec4<f32> = u_xlat3;
        let x_954 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_951.x, x_951.y, x_951.x, x_951.y) * vec4<f32>(x_954.x, x_954.y, x_954.x, x_954.y)) + vec4<f32>(x_957.x, x_957.y, x_957.z, x_957.y));
        let x_960 : vec4<f32> = u_xlat3;
        let x_963 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat47 = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_963.x, x_963.y)) + vec2<f32>(x_966.w, x_966.y));
        let x_970 : f32 = u_xlat8.y;
        u_xlat5.y = x_970;
        let x_973 : f32 = u_xlat6.z;
        u_xlat8.y = x_973;
        let x_975 : vec4<f32> = u_xlat3;
        let x_978 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) * vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y)) + vec4<f32>(x_981.x, x_981.y, x_981.z, x_981.y));
        let x_984 : vec4<f32> = u_xlat3;
        let x_987 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat8;
        let x_992 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.x, x_987.y)) + vec2<f32>(x_990.w, x_990.y));
        let x_993 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_996 : f32 = u_xlat8.y;
        u_xlat5.z = x_996;
        let x_999 : vec4<f32> = u_xlat3;
        let x_1002 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1005 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y) * vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y)) + vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.z));
        let x_1009 : f32 = u_xlat6.w;
        u_xlat8.y = x_1009;
        let x_1012 : vec4<f32> = u_xlat3;
        let x_1015 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1012.x, x_1012.y, x_1012.x, x_1012.y) * vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y)) + vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1018.y));
        let x_1022 : vec4<f32> = u_xlat3;
        let x_1025 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat8;
        u_xlat27 = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.x, x_1025.y)) + vec2<f32>(x_1028.w, x_1028.y));
        let x_1032 : f32 = u_xlat8.y;
        u_xlat5.w = x_1032;
        let x_1035 : vec4<f32> = u_xlat3;
        let x_1038 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1038.x, x_1038.y)) + vec2<f32>(x_1041.x, x_1041.w));
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1045 : vec3<f32> = vec3<f32>(x_1044.x, x_1044.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1045.x, x_1046.y, x_1045.y, x_1045.z);
        let x_1048 : vec4<f32> = u_xlat3;
        let x_1051 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1058 : vec4<f32> = u_xlat3;
        let x_1061 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1064 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(x_1064.w, x_1064.y));
        let x_1068 : f32 = u_xlat5.x;
        u_xlat6.x = x_1068;
        let x_1070 : vec4<f32> = u_xlat3;
        let x_1073 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat6;
        let x_1078 : vec2<f32> = ((vec2<f32>(x_1070.x, x_1070.y) * vec2<f32>(x_1073.x, x_1073.y)) + vec2<f32>(x_1076.x, x_1076.y));
        let x_1079 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1082 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1082.x, x_1082.x, x_1082.x, x_1082.x) * x_1084);
        let x_1087 : vec4<f32> = u_xlat4;
        let x_1089 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1087.y, x_1087.y, x_1087.y, x_1087.y) * x_1089);
        let x_1092 : vec4<f32> = u_xlat4;
        let x_1094 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1092.z, x_1092.z, x_1092.z, x_1092.z) * x_1094);
        let x_1096 : vec4<f32> = u_xlat4;
        let x_1098 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1096.w, x_1096.w, x_1096.w, x_1096.w) * x_1098);
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1102 : vec2<f32> = vec2<f32>(x_1101.x, x_1101.y);
        let x_1104 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1102.x, x_1102.y, x_1104);
        let x_1111 : vec3<f32> = txVec13;
        let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1111.xy, x_1111.z);
        u_xlat5.x = x_1113;
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1117 : vec2<f32> = vec2<f32>(x_1116.z, x_1116.w);
        let x_1119 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1117.x, x_1117.y, x_1119);
        let x_1127 : vec3<f32> = txVec14;
        let x_1129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1127.xy, x_1127.z);
        u_xlat71 = x_1129;
        let x_1130 : f32 = u_xlat71;
        let x_1132 : f32 = u_xlat14.y;
        u_xlat71 = (x_1130 * x_1132);
        let x_1135 : f32 = u_xlat14.x;
        let x_1137 : f32 = u_xlat5.x;
        let x_1139 : f32 = u_xlat71;
        u_xlat5.x = ((x_1135 * x_1137) + x_1139);
        let x_1143 : vec2<f32> = u_xlat47;
        let x_1145 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec15;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat47.x = x_1154;
        let x_1157 : f32 = u_xlat14.z;
        let x_1159 : f32 = u_xlat47.x;
        let x_1162 : f32 = u_xlat5.x;
        u_xlat47.x = ((x_1157 * x_1159) + x_1162);
        let x_1166 : vec4<f32> = u_xlat12;
        let x_1167 : vec2<f32> = vec2<f32>(x_1166.x, x_1166.y);
        let x_1169 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
        let x_1177 : vec3<f32> = txVec16;
        let x_1179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1177.xy, x_1177.z);
        u_xlat69 = x_1179;
        let x_1181 : f32 = u_xlat14.w;
        let x_1182 : f32 = u_xlat69;
        let x_1185 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1181 * x_1182) + x_1185);
        let x_1189 : vec4<f32> = u_xlat10;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.x, x_1189.y);
        let x_1192 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1199 : vec3<f32> = txVec17;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1199.xy, x_1199.z);
        u_xlat69 = x_1201;
        let x_1203 : f32 = u_xlat15.x;
        let x_1204 : f32 = u_xlat69;
        let x_1207 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1203 * x_1204) + x_1207);
        let x_1211 : vec4<f32> = u_xlat10;
        let x_1212 : vec2<f32> = vec2<f32>(x_1211.z, x_1211.w);
        let x_1214 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec18;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1221.xy, x_1221.z);
        u_xlat69 = x_1223;
        let x_1225 : f32 = u_xlat15.y;
        let x_1226 : f32 = u_xlat69;
        let x_1229 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1225 * x_1226) + x_1229);
        let x_1233 : vec4<f32> = u_xlat11;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.x, x_1233.y);
        let x_1236 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec19;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1243.xy, x_1243.z);
        u_xlat69 = x_1245;
        let x_1247 : f32 = u_xlat15.z;
        let x_1248 : f32 = u_xlat69;
        let x_1251 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1247 * x_1248) + x_1251);
        let x_1255 : vec4<f32> = u_xlat12;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.z, x_1255.w);
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec20;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1265.xy, x_1265.z);
        u_xlat69 = x_1267;
        let x_1269 : f32 = u_xlat15.w;
        let x_1270 : f32 = u_xlat69;
        let x_1273 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1269 * x_1270) + x_1273);
        let x_1277 : vec4<f32> = u_xlat13;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec21;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1287.xy, x_1287.z);
        u_xlat69 = x_1289;
        let x_1291 : f32 = u_xlat16.x;
        let x_1292 : f32 = u_xlat69;
        let x_1295 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1291 * x_1292) + x_1295);
        let x_1299 : vec4<f32> = u_xlat13;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.z, x_1299.w);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec22;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1309.xy, x_1309.z);
        u_xlat69 = x_1311;
        let x_1313 : f32 = u_xlat16.y;
        let x_1314 : f32 = u_xlat69;
        let x_1317 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1313 * x_1314) + x_1317);
        let x_1321 : vec2<f32> = u_xlat27;
        let x_1323 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec23;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat69 = x_1332;
        let x_1334 : f32 = u_xlat16.z;
        let x_1335 : f32 = u_xlat69;
        let x_1338 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1334 * x_1335) + x_1338);
        let x_1342 : vec2<f32> = u_xlat55;
        let x_1344 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec24;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat69 = x_1353;
        let x_1355 : f32 = u_xlat16.w;
        let x_1356 : f32 = u_xlat69;
        let x_1359 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1355 * x_1356) + x_1359);
        let x_1363 : vec4<f32> = u_xlat8;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec25;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat69 = x_1375;
        let x_1377 : f32 = u_xlat4.x;
        let x_1378 : f32 = u_xlat69;
        let x_1381 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1377 * x_1378) + x_1381);
        let x_1385 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec26;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat69 = x_1397;
        let x_1399 : f32 = u_xlat4.y;
        let x_1400 : f32 = u_xlat69;
        let x_1403 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1399 * x_1400) + x_1403);
        let x_1407 : vec2<f32> = u_xlat50;
        let x_1409 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec27;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
        u_xlat69 = x_1418;
        let x_1420 : f32 = u_xlat4.z;
        let x_1421 : f32 = u_xlat69;
        let x_1424 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1420 * x_1421) + x_1424);
        let x_1428 : vec4<f32> = u_xlat3;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.x, x_1428.y);
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec28;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1438.xy, x_1438.z);
        u_xlat3.x = x_1440;
        let x_1443 : f32 = u_xlat4.w;
        let x_1445 : f32 = u_xlat3.x;
        let x_1448 : f32 = u_xlat47.x;
        u_xlat68 = ((x_1443 * x_1445) + x_1448);
      }
    }
  } else {
    let x_1452 : vec4<f32> = vs_TEXCOORD6;
    let x_1453 : vec2<f32> = vec2<f32>(x_1452.x, x_1452.y);
    let x_1455 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
    let x_1462 : vec3<f32> = txVec29;
    let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1462.xy, x_1462.z);
    u_xlat68 = x_1464;
  }
  let x_1466 : f32 = x_181.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1466) + 1.0f);
  let x_1470 : f32 = u_xlat68;
  let x_1472 : f32 = x_181.x_MainLightShadowParams.x;
  let x_1475 : f32 = u_xlat3.x;
  u_xlat68 = ((x_1470 * x_1472) + x_1475);
  let x_1478 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_1478);
  let x_1484 : f32 = vs_TEXCOORD6.z;
  u_xlatb25.x = (x_1484 >= 1.0f);
  let x_1488 : bool = u_xlatb25.x;
  let x_1489 : bool = u_xlatb3;
  u_xlatb3 = (x_1488 | x_1489);
  let x_1491 : bool = u_xlatb3;
  let x_1492 : f32 = u_xlat68;
  u_xlat68 = select(x_1492, 1.0f, x_1491);
  let x_1494 : vec3<f32> = vs_TEXCOORD1;
  let x_1498 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1500 : vec3<f32> = (x_1494 + -(x_1498));
  let x_1501 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
  let x_1503 : vec4<f32> = u_xlat3;
  let x_1505 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
  let x_1510 : f32 = u_xlat3.x;
  let x_1512 : f32 = x_181.x_MainLightShadowParams.z;
  let x_1515 : f32 = x_181.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1510 * x_1512) + x_1515);
  let x_1519 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1519, 0.0f, 1.0f);
  let x_1522 : f32 = u_xlat68;
  u_xlat47.x = (-(x_1522) + 1.0f);
  let x_1527 : f32 = u_xlat25.x;
  let x_1529 : f32 = u_xlat47.x;
  let x_1531 : f32 = u_xlat68;
  u_xlat68 = ((x_1527 * x_1529) + x_1531);
  let x_1540 : f32 = x_1538.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_1540 == -1.0f));
  let x_1545 : bool = u_xlatb25.x;
  if (x_1545) {
    let x_1548 : vec3<f32> = vs_TEXCOORD1;
    let x_1551 : vec4<f32> = x_1538.x_MainLightWorldToLight[1i];
    let x_1553 : vec2<f32> = (vec2<f32>(x_1548.y, x_1548.y) * vec2<f32>(x_1551.x, x_1551.y));
    let x_1554 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1553.x, x_1553.y, x_1554.z);
    let x_1557 : vec4<f32> = x_1538.x_MainLightWorldToLight[0i];
    let x_1559 : vec3<f32> = vs_TEXCOORD1;
    let x_1562 : vec3<f32> = u_xlat25;
    let x_1564 : vec2<f32> = ((vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(x_1559.x, x_1559.x)) + vec2<f32>(x_1562.x, x_1562.y));
    let x_1565 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1564.x, x_1564.y, x_1565.z);
    let x_1568 : vec4<f32> = x_1538.x_MainLightWorldToLight[2i];
    let x_1570 : vec3<f32> = vs_TEXCOORD1;
    let x_1573 : vec3<f32> = u_xlat25;
    let x_1575 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1570.z, x_1570.z)) + vec2<f32>(x_1573.x, x_1573.y));
    let x_1576 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1575.x, x_1575.y, x_1576.z);
    let x_1578 : vec3<f32> = u_xlat25;
    let x_1581 : vec4<f32> = x_1538.x_MainLightWorldToLight[3i];
    let x_1583 : vec2<f32> = (vec2<f32>(x_1578.x, x_1578.y) + vec2<f32>(x_1581.x, x_1581.y));
    let x_1584 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1583.x, x_1583.y, x_1584.z);
    let x_1586 : vec3<f32> = u_xlat25;
    let x_1589 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1590 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1589.x, x_1589.y, x_1590.z);
    let x_1597 : vec3<f32> = u_xlat25;
    let x_1600 : f32 = x_28.x_GlobalMipBias.x;
    let x_1601 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1597.x, x_1597.y), x_1600);
    u_xlat4 = x_1601;
    let x_1603 : f32 = x_1538.x_MainLightCookieTextureFormat;
    let x_1605 : f32 = x_1538.x_MainLightCookieTextureFormat;
    let x_1607 : f32 = x_1538.x_MainLightCookieTextureFormat;
    let x_1609 : f32 = x_1538.x_MainLightCookieTextureFormat;
    let x_1610 : vec4<f32> = vec4<f32>(x_1603, x_1605, x_1607, x_1609);
    let x_1618 : vec4<bool> = (vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1610.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_1618.x, x_1618.y);
    let x_1621 : bool = u_xlatb25.y;
    if (x_1621) {
      let x_1627 : f32 = u_xlat4.w;
      x_1623 = x_1627;
    } else {
      let x_1630 : f32 = u_xlat4.x;
      x_1623 = x_1630;
    }
    let x_1631 : f32 = x_1623;
    u_xlat47.x = x_1631;
    let x_1634 : bool = u_xlatb25.x;
    if (x_1634) {
      let x_1638 : vec4<f32> = u_xlat4;
      x_1635 = vec3<f32>(x_1638.x, x_1638.y, x_1638.z);
    } else {
      let x_1641 : vec2<f32> = u_xlat47;
      x_1635 = vec3<f32>(x_1641.x, x_1641.x, x_1641.x);
    }
    let x_1643 : vec3<f32> = x_1635;
    u_xlat25 = x_1643;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_1648 : vec3<f32> = u_xlat25;
  let x_1650 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat25 = (x_1648 * vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
  let x_1653 : f32 = u_xlat68;
  let x_1659 : f32 = x_1657.unity_LightData.z;
  u_xlat68 = (x_1653 * x_1659);
  let x_1661 : f32 = u_xlat68;
  let x_1663 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1661, x_1661, x_1661) * x_1663);
  let x_1665 : vec3<f32> = u_xlat1;
  let x_1667 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat68 = dot(x_1665, vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
  let x_1670 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1670, 0.0f, 1.0f);
  let x_1672 : f32 = u_xlat68;
  let x_1674 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1672, x_1672, x_1672) * x_1674);
  let x_1676 : vec4<f32> = u_xlat0;
  let x_1678 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1676.y, x_1676.z, x_1676.w) * x_1678);
  let x_1681 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1683 : f32 = x_1657.unity_LightData.y;
  u_xlat68 = min(x_1681, x_1683);
  let x_1687 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_1687));
  let x_1691 : f32 = u_xlat3.x;
  let x_1694 : f32 = x_181.x_AdditionalShadowFadeParams.x;
  let x_1697 : f32 = x_181.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1691 * x_1694) + x_1697);
  let x_1701 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1701, 0.0f, 1.0f);
  let x_1706 : f32 = x_1538.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1708 : f32 = x_1538.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1710 : f32 = x_1538.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1712 : f32 = x_1538.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1713 : vec4<f32> = vec4<f32>(x_1706, x_1708, x_1710, x_1712);
  let x_1719 : vec4<bool> = (vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1713.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1719.x, x_1719.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1731 : u32 = u_xlatu_loop_1;
    let x_1732 : u32 = u_xlatu68;
    if ((x_1731 < x_1732)) {
    } else {
      break;
    }
    let x_1735 : u32 = u_xlatu_loop_1;
    u_xlatu70 = (x_1735 >> 2u);
    let x_1739 : u32 = u_xlatu_loop_1;
    u_xlati71 = bitcast<i32>((x_1739 & 3u));
    let x_1743 : u32 = u_xlatu70;
    let x_1746 : vec4<f32> = x_1657.unity_LightIndices[bitcast<i32>(x_1743)];
    let x_1756 : i32 = u_xlati71;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1761 : vec4<u32> = indexable[x_1756];
    u_xlat70 = dot(x_1746, bitcast<vec4<f32>>(x_1761));
    let x_1765 : f32 = u_xlat70;
    u_xlati70 = i32(x_1765);
    let x_1767 : vec3<f32> = vs_TEXCOORD1;
    let x_1778 : i32 = u_xlati70;
    let x_1780 : vec4<f32> = x_1777.x_AdditionalLightsPosition[x_1778];
    let x_1783 : i32 = u_xlati70;
    let x_1785 : vec4<f32> = x_1777.x_AdditionalLightsPosition[x_1783];
    let x_1787 : vec3<f32> = ((-(x_1767) * vec3<f32>(x_1780.w, x_1780.w, x_1780.w)) + vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
    let x_1788 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
    let x_1790 : vec4<f32> = u_xlat6;
    let x_1792 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1790.x, x_1790.y, x_1790.z), vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1795 : f32 = u_xlat71;
    u_xlat71 = max(x_1795, 0.00006103515625f);
    let x_1799 : f32 = u_xlat71;
    u_xlat72 = inverseSqrt(x_1799);
    let x_1801 : f32 = u_xlat72;
    let x_1803 : vec4<f32> = u_xlat6;
    let x_1805 : vec3<f32> = (vec3<f32>(x_1801, x_1801, x_1801) * vec3<f32>(x_1803.x, x_1803.y, x_1803.z));
    let x_1806 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
    let x_1808 : f32 = u_xlat71;
    u_xlat72 = (1.0f / x_1808);
    let x_1810 : f32 = u_xlat71;
    let x_1811 : i32 = u_xlati70;
    let x_1813 : f32 = x_1777.x_AdditionalLightsAttenuation[x_1811].x;
    u_xlat71 = (x_1810 * x_1813);
    let x_1815 : f32 = u_xlat71;
    let x_1817 : f32 = u_xlat71;
    u_xlat71 = ((-(x_1815) * x_1817) + 1.0f);
    let x_1820 : f32 = u_xlat71;
    u_xlat71 = max(x_1820, 0.0f);
    let x_1822 : f32 = u_xlat71;
    let x_1823 : f32 = u_xlat71;
    u_xlat71 = (x_1822 * x_1823);
    let x_1825 : f32 = u_xlat71;
    let x_1826 : f32 = u_xlat72;
    u_xlat71 = (x_1825 * x_1826);
    let x_1828 : i32 = u_xlati70;
    let x_1830 : vec4<f32> = x_1777.x_AdditionalLightsSpotDir[x_1828];
    let x_1832 : vec4<f32> = u_xlat6;
    u_xlat72 = dot(vec3<f32>(x_1830.x, x_1830.y, x_1830.z), vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
    let x_1835 : f32 = u_xlat72;
    let x_1836 : i32 = u_xlati70;
    let x_1838 : f32 = x_1777.x_AdditionalLightsAttenuation[x_1836].z;
    let x_1840 : i32 = u_xlati70;
    let x_1842 : f32 = x_1777.x_AdditionalLightsAttenuation[x_1840].w;
    u_xlat72 = ((x_1835 * x_1838) + x_1842);
    let x_1844 : f32 = u_xlat72;
    u_xlat72 = clamp(x_1844, 0.0f, 1.0f);
    let x_1846 : f32 = u_xlat72;
    let x_1847 : f32 = u_xlat72;
    u_xlat72 = (x_1846 * x_1847);
    let x_1849 : f32 = u_xlat71;
    let x_1850 : f32 = u_xlat72;
    u_xlat71 = (x_1849 * x_1850);
    let x_1854 : i32 = u_xlati70;
    let x_1856 : f32 = x_181.x_AdditionalShadowParams[x_1854].w;
    u_xlati72 = i32(x_1856);
    let x_1861 : i32 = u_xlati72;
    u_xlatb7.x = (x_1861 >= 0i);
    let x_1865 : bool = u_xlatb7.x;
    if (x_1865) {
      let x_1869 : i32 = u_xlati70;
      let x_1871 : f32 = x_181.x_AdditionalShadowParams[x_1869].z;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1871, x_1871, x_1871, x_1871))));
      let x_1877 : bool = u_xlatb7.x;
      if (x_1877) {
        let x_1880 : vec4<f32> = u_xlat6;
        let x_1883 : vec4<f32> = u_xlat6;
        let x_1886 : vec4<bool> = (abs(vec4<f32>(x_1880.z, x_1880.z, x_1880.y, x_1880.z)) >= abs(vec4<f32>(x_1883.x, x_1883.y, x_1883.x, x_1883.x)));
        u_xlatb7 = vec3<bool>(x_1886.x, x_1886.y, x_1886.z);
        let x_1889 : bool = u_xlatb7.y;
        let x_1891 : bool = u_xlatb7.x;
        u_xlatb7.x = (x_1889 & x_1891);
        let x_1895 : vec4<f32> = u_xlat6;
        let x_1898 : vec4<bool> = (-(vec4<f32>(x_1895.z, x_1895.y, x_1895.x, x_1895.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb8 = vec3<bool>(x_1898.x, x_1898.y, x_1898.z);
        let x_1902 : bool = u_xlatb8.x;
        u_xlat29.x = select(4.0f, 5.0f, x_1902);
        let x_1908 : bool = u_xlatb8.y;
        u_xlat29.z = select(2.0f, 3.0f, x_1908);
        let x_1913 : bool = u_xlatb8.z;
        u_xlat8.x = select(0.0f, 1.0f, x_1913);
        let x_1918 : bool = u_xlatb7.z;
        if (x_1918) {
          let x_1923 : f32 = u_xlat29.z;
          x_1919 = x_1923;
        } else {
          let x_1926 : f32 = u_xlat8.x;
          x_1919 = x_1926;
        }
        let x_1927 : f32 = x_1919;
        u_xlat51 = x_1927;
        let x_1929 : bool = u_xlatb7.x;
        if (x_1929) {
          let x_1934 : f32 = u_xlat29.x;
          x_1930 = x_1934;
        } else {
          let x_1936 : f32 = u_xlat51;
          x_1930 = x_1936;
        }
        let x_1937 : f32 = x_1930;
        u_xlat7.x = x_1937;
        let x_1939 : i32 = u_xlati70;
        let x_1941 : f32 = x_181.x_AdditionalShadowParams[x_1939].w;
        u_xlat29.x = trunc(x_1941);
        let x_1945 : f32 = u_xlat7.x;
        let x_1947 : f32 = u_xlat29.x;
        u_xlat7.x = (x_1945 + x_1947);
        let x_1951 : f32 = u_xlat7.x;
        u_xlati72 = i32(x_1951);
      }
      let x_1953 : i32 = u_xlati72;
      u_xlati72 = (x_1953 << bitcast<u32>(2i));
      let x_1955 : vec3<f32> = vs_TEXCOORD1;
      let x_1958 : i32 = u_xlati72;
      let x_1961 : i32 = u_xlati72;
      let x_1965 : vec4<f32> = x_181.x_AdditionalLightsWorldToShadow[((x_1958 + 1i) / 4i)][((x_1961 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1955.y, x_1955.y, x_1955.y, x_1955.y) * x_1965);
      let x_1967 : i32 = u_xlati72;
      let x_1969 : i32 = u_xlati72;
      let x_1972 : vec4<f32> = x_181.x_AdditionalLightsWorldToShadow[(x_1967 / 4i)][(x_1969 % 4i)];
      let x_1973 : vec3<f32> = vs_TEXCOORD1;
      let x_1976 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1972 * vec4<f32>(x_1973.x, x_1973.x, x_1973.x, x_1973.x)) + x_1976);
      let x_1978 : i32 = u_xlati72;
      let x_1981 : i32 = u_xlati72;
      let x_1985 : vec4<f32> = x_181.x_AdditionalLightsWorldToShadow[((x_1978 + 2i) / 4i)][((x_1981 + 2i) % 4i)];
      let x_1986 : vec3<f32> = vs_TEXCOORD1;
      let x_1989 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1985 * vec4<f32>(x_1986.z, x_1986.z, x_1986.z, x_1986.z)) + x_1989);
      let x_1991 : vec4<f32> = u_xlat7;
      let x_1992 : i32 = u_xlati72;
      let x_1995 : i32 = u_xlati72;
      let x_1999 : vec4<f32> = x_181.x_AdditionalLightsWorldToShadow[((x_1992 + 3i) / 4i)][((x_1995 + 3i) % 4i)];
      u_xlat7 = (x_1991 + x_1999);
      let x_2001 : vec4<f32> = u_xlat7;
      let x_2003 : vec4<f32> = u_xlat7;
      let x_2005 : vec3<f32> = (vec3<f32>(x_2001.x, x_2001.y, x_2001.z) / vec3<f32>(x_2003.w, x_2003.w, x_2003.w));
      let x_2006 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
      let x_2009 : i32 = u_xlati70;
      let x_2011 : f32 = x_181.x_AdditionalShadowParams[x_2009].y;
      u_xlatb72 = (0.0f < x_2011);
      let x_2013 : bool = u_xlatb72;
      if (x_2013) {
        let x_2016 : i32 = u_xlati70;
        let x_2018 : f32 = x_181.x_AdditionalShadowParams[x_2016].y;
        u_xlatb72 = (1.0f == x_2018);
        let x_2020 : bool = u_xlatb72;
        if (x_2020) {
          let x_2023 : vec4<f32> = u_xlat7;
          let x_2027 : vec4<f32> = x_181.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2023.x, x_2023.y, x_2023.x, x_2023.y) + x_2027);
          let x_2030 : vec4<f32> = u_xlat8;
          let x_2031 : vec2<f32> = vec2<f32>(x_2030.x, x_2030.y);
          let x_2033 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2031.x, x_2031.y, x_2033);
          let x_2041 : vec3<f32> = txVec30;
          let x_2043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2041.xy, x_2041.z);
          u_xlat9.x = x_2043;
          let x_2046 : vec4<f32> = u_xlat8;
          let x_2047 : vec2<f32> = vec2<f32>(x_2046.z, x_2046.w);
          let x_2049 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2047.x, x_2047.y, x_2049);
          let x_2056 : vec3<f32> = txVec31;
          let x_2058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2056.xy, x_2056.z);
          u_xlat9.y = x_2058;
          let x_2060 : vec4<f32> = u_xlat7;
          let x_2064 : vec4<f32> = x_181.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2060.x, x_2060.y, x_2060.x, x_2060.y) + x_2064);
          let x_2067 : vec4<f32> = u_xlat8;
          let x_2068 : vec2<f32> = vec2<f32>(x_2067.x, x_2067.y);
          let x_2070 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
          let x_2077 : vec3<f32> = txVec32;
          let x_2079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
          u_xlat9.z = x_2079;
          let x_2082 : vec4<f32> = u_xlat8;
          let x_2083 : vec2<f32> = vec2<f32>(x_2082.z, x_2082.w);
          let x_2085 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2083.x, x_2083.y, x_2085);
          let x_2092 : vec3<f32> = txVec33;
          let x_2094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2092.xy, x_2092.z);
          u_xlat9.w = x_2094;
          let x_2096 : vec4<f32> = u_xlat9;
          u_xlat72 = dot(x_2096, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2100 : i32 = u_xlati70;
          let x_2102 : f32 = x_181.x_AdditionalShadowParams[x_2100].y;
          u_xlatb73 = (2.0f == x_2102);
          let x_2104 : bool = u_xlatb73;
          if (x_2104) {
            let x_2107 : vec4<f32> = u_xlat7;
            let x_2111 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2114 : vec2<f32> = ((vec2<f32>(x_2107.x, x_2107.y) * vec2<f32>(x_2111.z, x_2111.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2115 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2114.x, x_2114.y, x_2115.z, x_2115.w);
            let x_2117 : vec4<f32> = u_xlat8;
            let x_2119 : vec2<f32> = floor(vec2<f32>(x_2117.x, x_2117.y));
            let x_2120 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2119.x, x_2119.y, x_2120.z, x_2120.w);
            let x_2123 : vec4<f32> = u_xlat7;
            let x_2126 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2129 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2123.x, x_2123.y) * vec2<f32>(x_2126.z, x_2126.w)) + -(vec2<f32>(x_2129.x, x_2129.y)));
            let x_2133 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2133.x, x_2133.x, x_2133.y, x_2133.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2136 : vec4<f32> = u_xlat9;
            let x_2138 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2136.x, x_2136.x, x_2136.z, x_2136.z) * vec4<f32>(x_2138.x, x_2138.x, x_2138.z, x_2138.z));
            let x_2141 : vec4<f32> = u_xlat10;
            let x_2143 : vec2<f32> = (vec2<f32>(x_2141.y, x_2141.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2144 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2143.x, x_2144.y, x_2143.y, x_2144.w);
            let x_2146 : vec4<f32> = u_xlat10;
            let x_2149 : vec2<f32> = u_xlat52;
            let x_2151 : vec2<f32> = ((vec2<f32>(x_2146.x, x_2146.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2149));
            let x_2152 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2151.x, x_2151.y, x_2152.z, x_2152.w);
            let x_2155 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2155) + vec2<f32>(1.0f, 1.0f));
            let x_2158 : vec2<f32> = u_xlat52;
            let x_2159 : vec2<f32> = min(x_2158, vec2<f32>(0.0f, 0.0f));
            let x_2160 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
            let x_2162 : vec4<f32> = u_xlat11;
            let x_2165 : vec4<f32> = u_xlat11;
            let x_2168 : vec2<f32> = u_xlat54;
            let x_2169 : vec2<f32> = ((-(vec2<f32>(x_2162.x, x_2162.y)) * vec2<f32>(x_2165.x, x_2165.y)) + x_2168);
            let x_2170 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2169.x, x_2169.y, x_2170.z, x_2170.w);
            let x_2172 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2172, vec2<f32>(0.0f, 0.0f));
            let x_2174 : vec2<f32> = u_xlat52;
            let x_2176 : vec2<f32> = u_xlat52;
            let x_2178 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2174) * x_2176) + vec2<f32>(x_2178.y, x_2178.w));
            let x_2181 : vec4<f32> = u_xlat11;
            let x_2183 : vec2<f32> = (vec2<f32>(x_2181.x, x_2181.y) + vec2<f32>(1.0f, 1.0f));
            let x_2184 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2183.x, x_2183.y, x_2184.z, x_2184.w);
            let x_2186 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2186 + vec2<f32>(1.0f, 1.0f));
            let x_2188 : vec4<f32> = u_xlat10;
            let x_2190 : vec2<f32> = (vec2<f32>(x_2188.x, x_2188.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2191 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2190.x, x_2190.y, x_2191.z, x_2191.w);
            let x_2193 : vec2<f32> = u_xlat54;
            let x_2194 : vec2<f32> = (x_2193 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2195 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2194.x, x_2194.y, x_2195.z, x_2195.w);
            let x_2197 : vec4<f32> = u_xlat11;
            let x_2199 : vec2<f32> = (vec2<f32>(x_2197.x, x_2197.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2200 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2199.x, x_2199.y, x_2200.z, x_2200.w);
            let x_2202 : vec2<f32> = u_xlat52;
            let x_2203 : vec2<f32> = (x_2202 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2204 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2203.x, x_2203.y, x_2204.z, x_2204.w);
            let x_2206 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2206.y, x_2206.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2210 : f32 = u_xlat11.x;
            u_xlat12.z = x_2210;
            let x_2213 : f32 = u_xlat52.x;
            u_xlat12.w = x_2213;
            let x_2216 : f32 = u_xlat13.x;
            u_xlat10.z = x_2216;
            let x_2219 : f32 = u_xlat9.x;
            u_xlat10.w = x_2219;
            let x_2221 : vec4<f32> = u_xlat10;
            let x_2223 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2221.z, x_2221.w, x_2221.x, x_2221.z) + vec4<f32>(x_2223.z, x_2223.w, x_2223.x, x_2223.z));
            let x_2227 : f32 = u_xlat12.y;
            u_xlat11.z = x_2227;
            let x_2230 : f32 = u_xlat52.y;
            u_xlat11.w = x_2230;
            let x_2233 : f32 = u_xlat10.y;
            u_xlat13.z = x_2233;
            let x_2236 : f32 = u_xlat9.z;
            u_xlat13.w = x_2236;
            let x_2238 : vec4<f32> = u_xlat11;
            let x_2240 : vec4<f32> = u_xlat13;
            let x_2242 : vec3<f32> = (vec3<f32>(x_2238.z, x_2238.y, x_2238.w) + vec3<f32>(x_2240.z, x_2240.y, x_2240.w));
            let x_2243 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
            let x_2245 : vec4<f32> = u_xlat10;
            let x_2247 : vec4<f32> = u_xlat14;
            let x_2249 : vec3<f32> = (vec3<f32>(x_2245.x, x_2245.z, x_2245.w) / vec3<f32>(x_2247.z, x_2247.w, x_2247.y));
            let x_2250 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
            let x_2252 : vec4<f32> = u_xlat10;
            let x_2254 : vec3<f32> = (vec3<f32>(x_2252.x, x_2252.y, x_2252.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2255 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
            let x_2257 : vec4<f32> = u_xlat13;
            let x_2259 : vec4<f32> = u_xlat9;
            let x_2261 : vec3<f32> = (vec3<f32>(x_2257.z, x_2257.y, x_2257.w) / vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
            let x_2262 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
            let x_2264 : vec4<f32> = u_xlat11;
            let x_2266 : vec3<f32> = (vec3<f32>(x_2264.x, x_2264.y, x_2264.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2267 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
            let x_2269 : vec4<f32> = u_xlat10;
            let x_2272 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2274 : vec3<f32> = (vec3<f32>(x_2269.y, x_2269.x, x_2269.z) * vec3<f32>(x_2272.x, x_2272.x, x_2272.x));
            let x_2275 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
            let x_2277 : vec4<f32> = u_xlat11;
            let x_2280 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2282 : vec3<f32> = (vec3<f32>(x_2277.x, x_2277.y, x_2277.z) * vec3<f32>(x_2280.y, x_2280.y, x_2280.y));
            let x_2283 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
            let x_2286 : f32 = u_xlat11.x;
            u_xlat10.w = x_2286;
            let x_2288 : vec4<f32> = u_xlat8;
            let x_2291 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2294 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2288.x, x_2288.y, x_2288.x, x_2288.y) * vec4<f32>(x_2291.x, x_2291.y, x_2291.x, x_2291.y)) + vec4<f32>(x_2294.y, x_2294.w, x_2294.x, x_2294.w));
            let x_2297 : vec4<f32> = u_xlat8;
            let x_2300 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2303 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2297.x, x_2297.y) * vec2<f32>(x_2300.x, x_2300.y)) + vec2<f32>(x_2303.z, x_2303.w));
            let x_2307 : f32 = u_xlat10.y;
            u_xlat11.w = x_2307;
            let x_2309 : vec4<f32> = u_xlat11;
            let x_2310 : vec2<f32> = vec2<f32>(x_2309.y, x_2309.z);
            let x_2311 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2311.x, x_2310.x, x_2311.z, x_2310.y);
            let x_2313 : vec4<f32> = u_xlat8;
            let x_2316 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2319 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2313.x, x_2313.y, x_2313.x, x_2313.y) * vec4<f32>(x_2316.x, x_2316.y, x_2316.x, x_2316.y)) + vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2319.y));
            let x_2322 : vec4<f32> = u_xlat8;
            let x_2325 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2328 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2322.x, x_2322.y, x_2322.x, x_2322.y) * vec4<f32>(x_2325.x, x_2325.y, x_2325.x, x_2325.y)) + vec4<f32>(x_2328.w, x_2328.y, x_2328.w, x_2328.z));
            let x_2331 : vec4<f32> = u_xlat8;
            let x_2334 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2337 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2331.x, x_2331.y, x_2331.x, x_2331.y) * vec4<f32>(x_2334.x, x_2334.y, x_2334.x, x_2334.y)) + vec4<f32>(x_2337.x, x_2337.w, x_2337.z, x_2337.w));
            let x_2340 : vec4<f32> = u_xlat9;
            let x_2342 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2340.x, x_2340.x, x_2340.x, x_2340.y) * vec4<f32>(x_2342.z, x_2342.w, x_2342.y, x_2342.z));
            let x_2345 : vec4<f32> = u_xlat9;
            let x_2347 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2345.y, x_2345.y, x_2345.z, x_2345.z) * x_2347);
            let x_2351 : f32 = u_xlat9.z;
            let x_2353 : f32 = u_xlat14.y;
            u_xlat73 = (x_2351 * x_2353);
            let x_2356 : vec4<f32> = u_xlat12;
            let x_2357 : vec2<f32> = vec2<f32>(x_2356.x, x_2356.y);
            let x_2359 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2357.x, x_2357.y, x_2359);
            let x_2366 : vec3<f32> = txVec34;
            let x_2368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2366.xy, x_2366.z);
            u_xlat8.x = x_2368;
            let x_2371 : vec4<f32> = u_xlat12;
            let x_2372 : vec2<f32> = vec2<f32>(x_2371.z, x_2371.w);
            let x_2374 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2372.x, x_2372.y, x_2374);
            let x_2382 : vec3<f32> = txVec35;
            let x_2384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2382.xy, x_2382.z);
            u_xlat30 = x_2384;
            let x_2385 : f32 = u_xlat30;
            let x_2387 : f32 = u_xlat15.y;
            u_xlat30 = (x_2385 * x_2387);
            let x_2390 : f32 = u_xlat15.x;
            let x_2392 : f32 = u_xlat8.x;
            let x_2394 : f32 = u_xlat30;
            u_xlat8.x = ((x_2390 * x_2392) + x_2394);
            let x_2398 : vec2<f32> = u_xlat52;
            let x_2400 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2398.x, x_2398.y, x_2400);
            let x_2407 : vec3<f32> = txVec36;
            let x_2409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2407.xy, x_2407.z);
            u_xlat30 = x_2409;
            let x_2411 : f32 = u_xlat15.z;
            let x_2412 : f32 = u_xlat30;
            let x_2415 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2411 * x_2412) + x_2415);
            let x_2419 : vec4<f32> = u_xlat11;
            let x_2420 : vec2<f32> = vec2<f32>(x_2419.x, x_2419.y);
            let x_2422 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2420.x, x_2420.y, x_2422);
            let x_2429 : vec3<f32> = txVec37;
            let x_2431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2429.xy, x_2429.z);
            u_xlat30 = x_2431;
            let x_2433 : f32 = u_xlat15.w;
            let x_2434 : f32 = u_xlat30;
            let x_2437 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2433 * x_2434) + x_2437);
            let x_2441 : vec4<f32> = u_xlat13;
            let x_2442 : vec2<f32> = vec2<f32>(x_2441.x, x_2441.y);
            let x_2444 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2442.x, x_2442.y, x_2444);
            let x_2451 : vec3<f32> = txVec38;
            let x_2453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2451.xy, x_2451.z);
            u_xlat30 = x_2453;
            let x_2455 : f32 = u_xlat16.x;
            let x_2456 : f32 = u_xlat30;
            let x_2459 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2455 * x_2456) + x_2459);
            let x_2463 : vec4<f32> = u_xlat13;
            let x_2464 : vec2<f32> = vec2<f32>(x_2463.z, x_2463.w);
            let x_2466 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2464.x, x_2464.y, x_2466);
            let x_2473 : vec3<f32> = txVec39;
            let x_2475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2473.xy, x_2473.z);
            u_xlat30 = x_2475;
            let x_2477 : f32 = u_xlat16.y;
            let x_2478 : f32 = u_xlat30;
            let x_2481 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2477 * x_2478) + x_2481);
            let x_2485 : vec4<f32> = u_xlat11;
            let x_2486 : vec2<f32> = vec2<f32>(x_2485.z, x_2485.w);
            let x_2488 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2486.x, x_2486.y, x_2488);
            let x_2495 : vec3<f32> = txVec40;
            let x_2497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2495.xy, x_2495.z);
            u_xlat30 = x_2497;
            let x_2499 : f32 = u_xlat16.z;
            let x_2500 : f32 = u_xlat30;
            let x_2503 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2499 * x_2500) + x_2503);
            let x_2507 : vec4<f32> = u_xlat10;
            let x_2508 : vec2<f32> = vec2<f32>(x_2507.x, x_2507.y);
            let x_2510 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2508.x, x_2508.y, x_2510);
            let x_2517 : vec3<f32> = txVec41;
            let x_2519 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2517.xy, x_2517.z);
            u_xlat30 = x_2519;
            let x_2521 : f32 = u_xlat16.w;
            let x_2522 : f32 = u_xlat30;
            let x_2525 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2521 * x_2522) + x_2525);
            let x_2529 : vec4<f32> = u_xlat10;
            let x_2530 : vec2<f32> = vec2<f32>(x_2529.z, x_2529.w);
            let x_2532 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2530.x, x_2530.y, x_2532);
            let x_2539 : vec3<f32> = txVec42;
            let x_2541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2539.xy, x_2539.z);
            u_xlat30 = x_2541;
            let x_2542 : f32 = u_xlat73;
            let x_2543 : f32 = u_xlat30;
            let x_2546 : f32 = u_xlat8.x;
            u_xlat72 = ((x_2542 * x_2543) + x_2546);
          } else {
            let x_2549 : vec4<f32> = u_xlat7;
            let x_2552 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2555 : vec2<f32> = ((vec2<f32>(x_2549.x, x_2549.y) * vec2<f32>(x_2552.z, x_2552.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2556 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2555.x, x_2555.y, x_2556.z, x_2556.w);
            let x_2558 : vec4<f32> = u_xlat8;
            let x_2560 : vec2<f32> = floor(vec2<f32>(x_2558.x, x_2558.y));
            let x_2561 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2560.x, x_2560.y, x_2561.z, x_2561.w);
            let x_2563 : vec4<f32> = u_xlat7;
            let x_2566 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2569 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2563.x, x_2563.y) * vec2<f32>(x_2566.z, x_2566.w)) + -(vec2<f32>(x_2569.x, x_2569.y)));
            let x_2573 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2573.x, x_2573.x, x_2573.y, x_2573.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2576 : vec4<f32> = u_xlat9;
            let x_2578 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2576.x, x_2576.x, x_2576.z, x_2576.z) * vec4<f32>(x_2578.x, x_2578.x, x_2578.z, x_2578.z));
            let x_2581 : vec4<f32> = u_xlat10;
            let x_2583 : vec2<f32> = (vec2<f32>(x_2581.y, x_2581.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2584 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2584.x, x_2583.x, x_2584.z, x_2583.y);
            let x_2586 : vec4<f32> = u_xlat10;
            let x_2589 : vec2<f32> = u_xlat52;
            let x_2591 : vec2<f32> = ((vec2<f32>(x_2586.x, x_2586.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2589));
            let x_2592 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2591.x, x_2592.y, x_2591.y, x_2592.w);
            let x_2594 : vec2<f32> = u_xlat52;
            let x_2596 : vec2<f32> = (-(x_2594) + vec2<f32>(1.0f, 1.0f));
            let x_2597 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2596.x, x_2596.y, x_2597.z, x_2597.w);
            let x_2599 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2599, vec2<f32>(0.0f, 0.0f));
            let x_2601 : vec2<f32> = u_xlat54;
            let x_2603 : vec2<f32> = u_xlat54;
            let x_2605 : vec4<f32> = u_xlat10;
            let x_2607 : vec2<f32> = ((-(x_2601) * x_2603) + vec2<f32>(x_2605.x, x_2605.y));
            let x_2608 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
            let x_2610 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2610, vec2<f32>(0.0f, 0.0f));
            let x_2613 : vec2<f32> = u_xlat54;
            let x_2615 : vec2<f32> = u_xlat54;
            let x_2617 : vec4<f32> = u_xlat9;
            let x_2619 : vec2<f32> = ((-(x_2613) * x_2615) + vec2<f32>(x_2617.y, x_2617.w));
            let x_2620 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2619.x, x_2620.y, x_2619.y);
            let x_2622 : vec4<f32> = u_xlat10;
            let x_2624 : vec2<f32> = (vec2<f32>(x_2622.x, x_2622.y) + vec2<f32>(2.0f, 2.0f));
            let x_2625 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec3<f32> = u_xlat31;
            let x_2629 : vec2<f32> = (vec2<f32>(x_2627.x, x_2627.z) + vec2<f32>(2.0f, 2.0f));
            let x_2630 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2630.x, x_2629.x, x_2630.z, x_2629.y);
            let x_2633 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2633 * 0.08163200318813323975f);
            let x_2636 : vec4<f32> = u_xlat9;
            let x_2638 : vec3<f32> = (vec3<f32>(x_2636.z, x_2636.x, x_2636.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2639 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2638.x, x_2638.y, x_2638.z, x_2639.w);
            let x_2641 : vec4<f32> = u_xlat10;
            let x_2643 : vec2<f32> = (vec2<f32>(x_2641.x, x_2641.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2644 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2643.x, x_2643.y, x_2644.z, x_2644.w);
            let x_2647 : f32 = u_xlat13.y;
            u_xlat12.x = x_2647;
            let x_2649 : vec2<f32> = u_xlat52;
            let x_2652 : vec2<f32> = ((vec2<f32>(x_2649.x, x_2649.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2653 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2653.x, x_2652.x, x_2653.z, x_2652.y);
            let x_2655 : vec2<f32> = u_xlat52;
            let x_2658 : vec2<f32> = ((vec2<f32>(x_2655.x, x_2655.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2659 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2658.x, x_2659.y, x_2658.y, x_2659.w);
            let x_2662 : f32 = u_xlat9.x;
            u_xlat10.y = x_2662;
            let x_2665 : f32 = u_xlat11.y;
            u_xlat10.w = x_2665;
            let x_2667 : vec4<f32> = u_xlat10;
            let x_2668 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2667 + x_2668);
            let x_2670 : vec2<f32> = u_xlat52;
            let x_2673 : vec2<f32> = ((vec2<f32>(x_2670.y, x_2670.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2674 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2674.x, x_2673.x, x_2674.z, x_2673.y);
            let x_2676 : vec2<f32> = u_xlat52;
            let x_2679 : vec2<f32> = ((vec2<f32>(x_2676.y, x_2676.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2680 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2679.x, x_2680.y, x_2679.y, x_2680.w);
            let x_2683 : f32 = u_xlat9.y;
            u_xlat11.y = x_2683;
            let x_2685 : vec4<f32> = u_xlat11;
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2685 + x_2686);
            let x_2688 : vec4<f32> = u_xlat10;
            let x_2689 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2688 / x_2689);
            let x_2691 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2691 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2693 : vec4<f32> = u_xlat11;
            let x_2694 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2693 / x_2694);
            let x_2696 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2696 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2698 : vec4<f32> = u_xlat10;
            let x_2701 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2698.w, x_2698.x, x_2698.y, x_2698.z) * vec4<f32>(x_2701.x, x_2701.x, x_2701.x, x_2701.x));
            let x_2704 : vec4<f32> = u_xlat11;
            let x_2707 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2704.x, x_2704.w, x_2704.y, x_2704.z) * vec4<f32>(x_2707.y, x_2707.y, x_2707.y, x_2707.y));
            let x_2710 : vec4<f32> = u_xlat10;
            let x_2711 : vec3<f32> = vec3<f32>(x_2710.y, x_2710.z, x_2710.w);
            let x_2712 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2711.x, x_2712.y, x_2711.y, x_2711.z);
            let x_2715 : f32 = u_xlat11.x;
            u_xlat13.y = x_2715;
            let x_2717 : vec4<f32> = u_xlat8;
            let x_2720 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2723 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.y) * vec4<f32>(x_2720.x, x_2720.y, x_2720.x, x_2720.y)) + vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2723.y));
            let x_2726 : vec4<f32> = u_xlat8;
            let x_2729 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2732 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2726.x, x_2726.y) * vec2<f32>(x_2729.x, x_2729.y)) + vec2<f32>(x_2732.w, x_2732.y));
            let x_2736 : f32 = u_xlat13.y;
            u_xlat10.y = x_2736;
            let x_2739 : f32 = u_xlat11.z;
            u_xlat13.y = x_2739;
            let x_2741 : vec4<f32> = u_xlat8;
            let x_2744 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2747 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2741.x, x_2741.y, x_2741.x, x_2741.y) * vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.y)) + vec4<f32>(x_2747.x, x_2747.y, x_2747.z, x_2747.y));
            let x_2750 : vec4<f32> = u_xlat8;
            let x_2753 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2756 : vec4<f32> = u_xlat13;
            let x_2758 : vec2<f32> = ((vec2<f32>(x_2750.x, x_2750.y) * vec2<f32>(x_2753.x, x_2753.y)) + vec2<f32>(x_2756.w, x_2756.y));
            let x_2759 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2758.x, x_2758.y, x_2759.z, x_2759.w);
            let x_2762 : f32 = u_xlat13.y;
            u_xlat10.z = x_2762;
            let x_2765 : vec4<f32> = u_xlat8;
            let x_2768 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2771 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y) * vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y)) + vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.z));
            let x_2775 : f32 = u_xlat11.w;
            u_xlat13.y = x_2775;
            let x_2778 : vec4<f32> = u_xlat8;
            let x_2781 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2778.x, x_2778.y, x_2778.x, x_2778.y) * vec4<f32>(x_2781.x, x_2781.y, x_2781.x, x_2781.y)) + vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2784.y));
            let x_2788 : vec4<f32> = u_xlat8;
            let x_2791 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2794 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2788.x, x_2788.y) * vec2<f32>(x_2791.x, x_2791.y)) + vec2<f32>(x_2794.w, x_2794.y));
            let x_2798 : f32 = u_xlat13.y;
            u_xlat10.w = x_2798;
            let x_2801 : vec4<f32> = u_xlat8;
            let x_2804 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2807 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2801.x, x_2801.y) * vec2<f32>(x_2804.x, x_2804.y)) + vec2<f32>(x_2807.x, x_2807.w));
            let x_2810 : vec4<f32> = u_xlat13;
            let x_2811 : vec3<f32> = vec3<f32>(x_2810.x, x_2810.z, x_2810.w);
            let x_2812 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2811.x, x_2812.y, x_2811.y, x_2811.z);
            let x_2814 : vec4<f32> = u_xlat8;
            let x_2817 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2820 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y) * vec4<f32>(x_2817.x, x_2817.y, x_2817.x, x_2817.y)) + vec4<f32>(x_2820.x, x_2820.y, x_2820.z, x_2820.y));
            let x_2823 : vec4<f32> = u_xlat8;
            let x_2826 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2829 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2823.x, x_2823.y) * vec2<f32>(x_2826.x, x_2826.y)) + vec2<f32>(x_2829.w, x_2829.y));
            let x_2833 : f32 = u_xlat10.x;
            u_xlat11.x = x_2833;
            let x_2835 : vec4<f32> = u_xlat8;
            let x_2838 : vec4<f32> = x_181.x_AdditionalShadowmapSize;
            let x_2841 : vec4<f32> = u_xlat11;
            let x_2843 : vec2<f32> = ((vec2<f32>(x_2835.x, x_2835.y) * vec2<f32>(x_2838.x, x_2838.y)) + vec2<f32>(x_2841.x, x_2841.y));
            let x_2844 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2843.x, x_2843.y, x_2844.z, x_2844.w);
            let x_2847 : vec4<f32> = u_xlat9;
            let x_2849 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2847.x, x_2847.x, x_2847.x, x_2847.x) * x_2849);
            let x_2852 : vec4<f32> = u_xlat9;
            let x_2854 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2852.y, x_2852.y, x_2852.y, x_2852.y) * x_2854);
            let x_2857 : vec4<f32> = u_xlat9;
            let x_2859 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2857.z, x_2857.z, x_2857.z, x_2857.z) * x_2859);
            let x_2861 : vec4<f32> = u_xlat9;
            let x_2863 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2861.w, x_2861.w, x_2861.w, x_2861.w) * x_2863);
            let x_2866 : vec4<f32> = u_xlat14;
            let x_2867 : vec2<f32> = vec2<f32>(x_2866.x, x_2866.y);
            let x_2869 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
            let x_2876 : vec3<f32> = txVec43;
            let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
            u_xlat73 = x_2878;
            let x_2880 : vec4<f32> = u_xlat14;
            let x_2881 : vec2<f32> = vec2<f32>(x_2880.z, x_2880.w);
            let x_2883 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2881.x, x_2881.y, x_2883);
            let x_2890 : vec3<f32> = txVec44;
            let x_2892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2890.xy, x_2890.z);
            u_xlat10.x = x_2892;
            let x_2895 : f32 = u_xlat10.x;
            let x_2897 : f32 = u_xlat19.y;
            u_xlat10.x = (x_2895 * x_2897);
            let x_2901 : f32 = u_xlat19.x;
            let x_2902 : f32 = u_xlat73;
            let x_2905 : f32 = u_xlat10.x;
            u_xlat73 = ((x_2901 * x_2902) + x_2905);
            let x_2908 : vec2<f32> = u_xlat52;
            let x_2910 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2908.x, x_2908.y, x_2910);
            let x_2917 : vec3<f32> = txVec45;
            let x_2919 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2917.xy, x_2917.z);
            u_xlat52.x = x_2919;
            let x_2922 : f32 = u_xlat19.z;
            let x_2924 : f32 = u_xlat52.x;
            let x_2926 : f32 = u_xlat73;
            u_xlat73 = ((x_2922 * x_2924) + x_2926);
            let x_2929 : vec4<f32> = u_xlat17;
            let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
            let x_2932 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
            let x_2939 : vec3<f32> = txVec46;
            let x_2941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2939.xy, x_2939.z);
            u_xlat52.x = x_2941;
            let x_2944 : f32 = u_xlat19.w;
            let x_2946 : f32 = u_xlat52.x;
            let x_2948 : f32 = u_xlat73;
            u_xlat73 = ((x_2944 * x_2946) + x_2948);
            let x_2951 : vec4<f32> = u_xlat15;
            let x_2952 : vec2<f32> = vec2<f32>(x_2951.x, x_2951.y);
            let x_2954 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
            let x_2961 : vec3<f32> = txVec47;
            let x_2963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
            u_xlat52.x = x_2963;
            let x_2966 : f32 = u_xlat20.x;
            let x_2968 : f32 = u_xlat52.x;
            let x_2970 : f32 = u_xlat73;
            u_xlat73 = ((x_2966 * x_2968) + x_2970);
            let x_2973 : vec4<f32> = u_xlat15;
            let x_2974 : vec2<f32> = vec2<f32>(x_2973.z, x_2973.w);
            let x_2976 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2974.x, x_2974.y, x_2976);
            let x_2983 : vec3<f32> = txVec48;
            let x_2985 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2983.xy, x_2983.z);
            u_xlat52.x = x_2985;
            let x_2988 : f32 = u_xlat20.y;
            let x_2990 : f32 = u_xlat52.x;
            let x_2992 : f32 = u_xlat73;
            u_xlat73 = ((x_2988 * x_2990) + x_2992);
            let x_2995 : vec4<f32> = u_xlat16;
            let x_2996 : vec2<f32> = vec2<f32>(x_2995.x, x_2995.y);
            let x_2998 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3005 : vec3<f32> = txVec49;
            let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
            u_xlat52.x = x_3007;
            let x_3010 : f32 = u_xlat20.z;
            let x_3012 : f32 = u_xlat52.x;
            let x_3014 : f32 = u_xlat73;
            u_xlat73 = ((x_3010 * x_3012) + x_3014);
            let x_3017 : vec4<f32> = u_xlat17;
            let x_3018 : vec2<f32> = vec2<f32>(x_3017.z, x_3017.w);
            let x_3020 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3018.x, x_3018.y, x_3020);
            let x_3027 : vec3<f32> = txVec50;
            let x_3029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3027.xy, x_3027.z);
            u_xlat52.x = x_3029;
            let x_3032 : f32 = u_xlat20.w;
            let x_3034 : f32 = u_xlat52.x;
            let x_3036 : f32 = u_xlat73;
            u_xlat73 = ((x_3032 * x_3034) + x_3036);
            let x_3039 : vec4<f32> = u_xlat18;
            let x_3040 : vec2<f32> = vec2<f32>(x_3039.x, x_3039.y);
            let x_3042 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3040.x, x_3040.y, x_3042);
            let x_3049 : vec3<f32> = txVec51;
            let x_3051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3049.xy, x_3049.z);
            u_xlat52.x = x_3051;
            let x_3054 : f32 = u_xlat21.x;
            let x_3056 : f32 = u_xlat52.x;
            let x_3058 : f32 = u_xlat73;
            u_xlat73 = ((x_3054 * x_3056) + x_3058);
            let x_3061 : vec4<f32> = u_xlat18;
            let x_3062 : vec2<f32> = vec2<f32>(x_3061.z, x_3061.w);
            let x_3064 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3062.x, x_3062.y, x_3064);
            let x_3071 : vec3<f32> = txVec52;
            let x_3073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3071.xy, x_3071.z);
            u_xlat52.x = x_3073;
            let x_3076 : f32 = u_xlat21.y;
            let x_3078 : f32 = u_xlat52.x;
            let x_3080 : f32 = u_xlat73;
            u_xlat73 = ((x_3076 * x_3078) + x_3080);
            let x_3083 : vec2<f32> = u_xlat32;
            let x_3085 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
            let x_3092 : vec3<f32> = txVec53;
            let x_3094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
            u_xlat52.x = x_3094;
            let x_3097 : f32 = u_xlat21.z;
            let x_3099 : f32 = u_xlat52.x;
            let x_3101 : f32 = u_xlat73;
            u_xlat73 = ((x_3097 * x_3099) + x_3101);
            let x_3104 : vec2<f32> = u_xlat60;
            let x_3106 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3104.x, x_3104.y, x_3106);
            let x_3113 : vec3<f32> = txVec54;
            let x_3115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3113.xy, x_3113.z);
            u_xlat52.x = x_3115;
            let x_3118 : f32 = u_xlat21.w;
            let x_3120 : f32 = u_xlat52.x;
            let x_3122 : f32 = u_xlat73;
            u_xlat73 = ((x_3118 * x_3120) + x_3122);
            let x_3125 : vec4<f32> = u_xlat13;
            let x_3126 : vec2<f32> = vec2<f32>(x_3125.x, x_3125.y);
            let x_3128 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3126.x, x_3126.y, x_3128);
            let x_3135 : vec3<f32> = txVec55;
            let x_3137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3135.xy, x_3135.z);
            u_xlat52.x = x_3137;
            let x_3140 : f32 = u_xlat9.x;
            let x_3142 : f32 = u_xlat52.x;
            let x_3144 : f32 = u_xlat73;
            u_xlat73 = ((x_3140 * x_3142) + x_3144);
            let x_3147 : vec4<f32> = u_xlat13;
            let x_3148 : vec2<f32> = vec2<f32>(x_3147.z, x_3147.w);
            let x_3150 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3148.x, x_3148.y, x_3150);
            let x_3157 : vec3<f32> = txVec56;
            let x_3159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3157.xy, x_3157.z);
            u_xlat52.x = x_3159;
            let x_3162 : f32 = u_xlat9.y;
            let x_3164 : f32 = u_xlat52.x;
            let x_3166 : f32 = u_xlat73;
            u_xlat73 = ((x_3162 * x_3164) + x_3166);
            let x_3169 : vec2<f32> = u_xlat55;
            let x_3171 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
            let x_3178 : vec3<f32> = txVec57;
            let x_3180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
            u_xlat52.x = x_3180;
            let x_3183 : f32 = u_xlat9.z;
            let x_3185 : f32 = u_xlat52.x;
            let x_3187 : f32 = u_xlat73;
            u_xlat73 = ((x_3183 * x_3185) + x_3187);
            let x_3190 : vec4<f32> = u_xlat8;
            let x_3191 : vec2<f32> = vec2<f32>(x_3190.x, x_3190.y);
            let x_3193 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3191.x, x_3191.y, x_3193);
            let x_3200 : vec3<f32> = txVec58;
            let x_3202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3200.xy, x_3200.z);
            u_xlat8.x = x_3202;
            let x_3205 : f32 = u_xlat9.w;
            let x_3207 : f32 = u_xlat8.x;
            let x_3209 : f32 = u_xlat73;
            u_xlat72 = ((x_3205 * x_3207) + x_3209);
          }
        }
      } else {
        let x_3213 : vec4<f32> = u_xlat7;
        let x_3214 : vec2<f32> = vec2<f32>(x_3213.x, x_3213.y);
        let x_3216 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
        let x_3223 : vec3<f32> = txVec59;
        let x_3225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
        u_xlat72 = x_3225;
      }
      let x_3226 : i32 = u_xlati70;
      let x_3228 : f32 = x_181.x_AdditionalShadowParams[x_3226].x;
      u_xlat7.x = (1.0f + -(x_3228));
      let x_3232 : f32 = u_xlat72;
      let x_3233 : i32 = u_xlati70;
      let x_3235 : f32 = x_181.x_AdditionalShadowParams[x_3233].x;
      let x_3238 : f32 = u_xlat7.x;
      u_xlat72 = ((x_3232 * x_3235) + x_3238);
      let x_3241 : f32 = u_xlat7.z;
      u_xlatb7.x = (0.0f >= x_3241);
      let x_3246 : f32 = u_xlat7.z;
      u_xlatb29 = (x_3246 >= 1.0f);
      let x_3248 : bool = u_xlatb29;
      let x_3250 : bool = u_xlatb7.x;
      u_xlatb7.x = (x_3248 | x_3250);
      let x_3254 : bool = u_xlatb7.x;
      let x_3255 : f32 = u_xlat72;
      u_xlat72 = select(x_3255, 1.0f, x_3254);
    } else {
      u_xlat72 = 1.0f;
    }
    let x_3258 : f32 = u_xlat72;
    u_xlat7.x = (-(x_3258) + 1.0f);
    let x_3263 : f32 = u_xlat3.x;
    let x_3265 : f32 = u_xlat7.x;
    let x_3267 : f32 = u_xlat72;
    u_xlat72 = ((x_3263 * x_3265) + x_3267);
    let x_3270 : i32 = u_xlati70;
    u_xlati7 = (1i << bitcast<u32>((x_3270 & 31i)));
    let x_3274 : i32 = u_xlati7;
    let x_3277 : f32 = x_1538.x_AdditionalLightsCookieEnableBits;
    u_xlati7 = bitcast<i32>((bitcast<u32>(x_3274) & bitcast<u32>(x_3277)));
    let x_3281 : i32 = u_xlati7;
    if ((x_3281 != 0i)) {
      let x_3285 : i32 = u_xlati70;
      let x_3287 : f32 = x_1538.x_AdditionalLightsLightTypes[x_3285].el;
      u_xlati7 = i32(x_3287);
      let x_3290 : i32 = u_xlati7;
      u_xlati29 = select(1i, 0i, (x_3290 != 0i));
      let x_3294 : i32 = u_xlati70;
      u_xlati51 = (x_3294 << bitcast<u32>(2i));
      let x_3296 : i32 = u_xlati29;
      if ((x_3296 != 0i)) {
        let x_3300 : vec3<f32> = vs_TEXCOORD1;
        let x_3302 : i32 = u_xlati51;
        let x_3305 : i32 = u_xlati51;
        let x_3309 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3302 + 1i) / 4i)][((x_3305 + 1i) % 4i)];
        let x_3311 : vec3<f32> = (vec3<f32>(x_3300.y, x_3300.y, x_3300.y) * vec3<f32>(x_3309.x, x_3309.y, x_3309.w));
        let x_3312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3312.w);
        let x_3314 : i32 = u_xlati51;
        let x_3316 : i32 = u_xlati51;
        let x_3319 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[(x_3314 / 4i)][(x_3316 % 4i)];
        let x_3321 : vec3<f32> = vs_TEXCOORD1;
        let x_3324 : vec4<f32> = u_xlat8;
        let x_3326 : vec3<f32> = ((vec3<f32>(x_3319.x, x_3319.y, x_3319.w) * vec3<f32>(x_3321.x, x_3321.x, x_3321.x)) + vec3<f32>(x_3324.x, x_3324.y, x_3324.z));
        let x_3327 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3326.x, x_3326.y, x_3326.z, x_3327.w);
        let x_3329 : i32 = u_xlati51;
        let x_3332 : i32 = u_xlati51;
        let x_3336 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3329 + 2i) / 4i)][((x_3332 + 2i) % 4i)];
        let x_3338 : vec3<f32> = vs_TEXCOORD1;
        let x_3341 : vec4<f32> = u_xlat8;
        let x_3343 : vec3<f32> = ((vec3<f32>(x_3336.x, x_3336.y, x_3336.w) * vec3<f32>(x_3338.z, x_3338.z, x_3338.z)) + vec3<f32>(x_3341.x, x_3341.y, x_3341.z));
        let x_3344 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3343.x, x_3343.y, x_3343.z, x_3344.w);
        let x_3346 : vec4<f32> = u_xlat8;
        let x_3348 : i32 = u_xlati51;
        let x_3351 : i32 = u_xlati51;
        let x_3355 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3348 + 3i) / 4i)][((x_3351 + 3i) % 4i)];
        let x_3357 : vec3<f32> = (vec3<f32>(x_3346.x, x_3346.y, x_3346.z) + vec3<f32>(x_3355.x, x_3355.y, x_3355.w));
        let x_3358 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3357.x, x_3357.y, x_3357.z, x_3358.w);
        let x_3360 : vec4<f32> = u_xlat8;
        let x_3362 : vec4<f32> = u_xlat8;
        let x_3364 : vec2<f32> = (vec2<f32>(x_3360.x, x_3360.y) / vec2<f32>(x_3362.z, x_3362.z));
        let x_3365 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_3364.x, x_3365.y, x_3364.y);
        let x_3367 : vec3<f32> = u_xlat29;
        let x_3370 : vec2<f32> = ((vec2<f32>(x_3367.x, x_3367.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3371 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_3370.x, x_3371.y, x_3370.y);
        let x_3373 : vec3<f32> = u_xlat29;
        let x_3377 : vec2<f32> = clamp(vec2<f32>(x_3373.x, x_3373.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3378 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_3377.x, x_3378.y, x_3377.y);
        let x_3380 : i32 = u_xlati70;
        let x_3382 : vec4<f32> = x_1538.x_AdditionalLightsCookieAtlasUVRects[x_3380];
        let x_3384 : vec3<f32> = u_xlat29;
        let x_3387 : i32 = u_xlati70;
        let x_3389 : vec4<f32> = x_1538.x_AdditionalLightsCookieAtlasUVRects[x_3387];
        let x_3391 : vec2<f32> = ((vec2<f32>(x_3382.x, x_3382.y) * vec2<f32>(x_3384.x, x_3384.z)) + vec2<f32>(x_3389.z, x_3389.w));
        let x_3392 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_3391.x, x_3392.y, x_3391.y);
      } else {
        let x_3395 : i32 = u_xlati7;
        u_xlatb7.x = (x_3395 == 1i);
        let x_3399 : bool = u_xlatb7.x;
        u_xlati7 = select(0i, 1i, x_3399);
        let x_3401 : i32 = u_xlati7;
        if ((x_3401 != 0i)) {
          let x_3405 : vec3<f32> = vs_TEXCOORD1;
          let x_3407 : i32 = u_xlati51;
          let x_3410 : i32 = u_xlati51;
          let x_3414 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3407 + 1i) / 4i)][((x_3410 + 1i) % 4i)];
          let x_3416 : vec2<f32> = (vec2<f32>(x_3405.y, x_3405.y) * vec2<f32>(x_3414.x, x_3414.y));
          let x_3417 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3416.x, x_3416.y, x_3417.z, x_3417.w);
          let x_3419 : i32 = u_xlati51;
          let x_3421 : i32 = u_xlati51;
          let x_3424 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[(x_3419 / 4i)][(x_3421 % 4i)];
          let x_3426 : vec3<f32> = vs_TEXCOORD1;
          let x_3429 : vec4<f32> = u_xlat8;
          let x_3431 : vec2<f32> = ((vec2<f32>(x_3424.x, x_3424.y) * vec2<f32>(x_3426.x, x_3426.x)) + vec2<f32>(x_3429.x, x_3429.y));
          let x_3432 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3431.x, x_3431.y, x_3432.z, x_3432.w);
          let x_3434 : i32 = u_xlati51;
          let x_3437 : i32 = u_xlati51;
          let x_3441 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3434 + 2i) / 4i)][((x_3437 + 2i) % 4i)];
          let x_3443 : vec3<f32> = vs_TEXCOORD1;
          let x_3446 : vec4<f32> = u_xlat8;
          let x_3448 : vec2<f32> = ((vec2<f32>(x_3441.x, x_3441.y) * vec2<f32>(x_3443.z, x_3443.z)) + vec2<f32>(x_3446.x, x_3446.y));
          let x_3449 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3448.x, x_3448.y, x_3449.z, x_3449.w);
          let x_3451 : vec4<f32> = u_xlat8;
          let x_3453 : i32 = u_xlati51;
          let x_3456 : i32 = u_xlati51;
          let x_3460 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3453 + 3i) / 4i)][((x_3456 + 3i) % 4i)];
          let x_3462 : vec2<f32> = (vec2<f32>(x_3451.x, x_3451.y) + vec2<f32>(x_3460.x, x_3460.y));
          let x_3463 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3462.x, x_3462.y, x_3463.z, x_3463.w);
          let x_3465 : vec4<f32> = u_xlat8;
          let x_3468 : vec2<f32> = ((vec2<f32>(x_3465.x, x_3465.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3469 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3468.x, x_3468.y, x_3469.z, x_3469.w);
          let x_3471 : vec4<f32> = u_xlat8;
          let x_3473 : vec2<f32> = fract(vec2<f32>(x_3471.x, x_3471.y));
          let x_3474 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3473.x, x_3473.y, x_3474.z, x_3474.w);
          let x_3476 : i32 = u_xlati70;
          let x_3478 : vec4<f32> = x_1538.x_AdditionalLightsCookieAtlasUVRects[x_3476];
          let x_3480 : vec4<f32> = u_xlat8;
          let x_3483 : i32 = u_xlati70;
          let x_3485 : vec4<f32> = x_1538.x_AdditionalLightsCookieAtlasUVRects[x_3483];
          let x_3487 : vec2<f32> = ((vec2<f32>(x_3478.x, x_3478.y) * vec2<f32>(x_3480.x, x_3480.y)) + vec2<f32>(x_3485.z, x_3485.w));
          let x_3488 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3487.x, x_3488.y, x_3487.y);
        } else {
          let x_3491 : vec3<f32> = vs_TEXCOORD1;
          let x_3493 : i32 = u_xlati51;
          let x_3496 : i32 = u_xlati51;
          let x_3500 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3493 + 1i) / 4i)][((x_3496 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_3491.y, x_3491.y, x_3491.y, x_3491.y) * x_3500);
          let x_3502 : i32 = u_xlati51;
          let x_3504 : i32 = u_xlati51;
          let x_3507 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[(x_3502 / 4i)][(x_3504 % 4i)];
          let x_3508 : vec3<f32> = vs_TEXCOORD1;
          let x_3511 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3507 * vec4<f32>(x_3508.x, x_3508.x, x_3508.x, x_3508.x)) + x_3511);
          let x_3513 : i32 = u_xlati51;
          let x_3516 : i32 = u_xlati51;
          let x_3520 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3513 + 2i) / 4i)][((x_3516 + 2i) % 4i)];
          let x_3521 : vec3<f32> = vs_TEXCOORD1;
          let x_3524 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3520 * vec4<f32>(x_3521.z, x_3521.z, x_3521.z, x_3521.z)) + x_3524);
          let x_3526 : vec4<f32> = u_xlat8;
          let x_3527 : i32 = u_xlati51;
          let x_3530 : i32 = u_xlati51;
          let x_3534 : vec4<f32> = x_1538.x_AdditionalLightsWorldToLights[((x_3527 + 3i) / 4i)][((x_3530 + 3i) % 4i)];
          u_xlat8 = (x_3526 + x_3534);
          let x_3536 : vec4<f32> = u_xlat8;
          let x_3538 : vec4<f32> = u_xlat8;
          let x_3540 : vec3<f32> = (vec3<f32>(x_3536.x, x_3536.y, x_3536.z) / vec3<f32>(x_3538.w, x_3538.w, x_3538.w));
          let x_3541 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3540.x, x_3540.y, x_3540.z, x_3541.w);
          let x_3543 : vec4<f32> = u_xlat8;
          let x_3545 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(vec3<f32>(x_3543.x, x_3543.y, x_3543.z), vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
          let x_3550 : f32 = u_xlat7.x;
          u_xlat7.x = inverseSqrt(x_3550);
          let x_3553 : vec4<f32> = u_xlat7;
          let x_3555 : vec4<f32> = u_xlat8;
          let x_3557 : vec3<f32> = (vec3<f32>(x_3553.x, x_3553.x, x_3553.x) * vec3<f32>(x_3555.x, x_3555.y, x_3555.z));
          let x_3558 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3557.x, x_3557.y, x_3557.z, x_3558.w);
          let x_3560 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(abs(vec3<f32>(x_3560.x, x_3560.y, x_3560.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3567 : f32 = u_xlat7.x;
          u_xlat7.x = max(x_3567, 0.00000099999999747524f);
          let x_3572 : f32 = u_xlat7.x;
          u_xlat7.x = (1.0f / x_3572);
          let x_3575 : vec4<f32> = u_xlat7;
          let x_3577 : vec4<f32> = u_xlat8;
          let x_3579 : vec3<f32> = (vec3<f32>(x_3575.x, x_3575.x, x_3575.x) * vec3<f32>(x_3577.z, x_3577.x, x_3577.y));
          let x_3580 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3579.x, x_3579.y, x_3579.z, x_3580.w);
          let x_3583 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_3583);
          let x_3587 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_3587, 0.0f, 1.0f);
          let x_3591 : vec4<f32> = u_xlat9;
          let x_3593 : vec4<bool> = (vec4<f32>(x_3591.y, x_3591.z, x_3591.y, x_3591.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb52 = vec2<bool>(x_3593.x, x_3593.y);
          let x_3596 : bool = u_xlatb52.x;
          if (x_3596) {
            let x_3601 : f32 = u_xlat9.x;
            x_3597 = x_3601;
          } else {
            let x_3604 : f32 = u_xlat9.x;
            x_3597 = -(x_3604);
          }
          let x_3606 : f32 = x_3597;
          u_xlat52.x = x_3606;
          let x_3609 : bool = u_xlatb52.y;
          if (x_3609) {
            let x_3614 : f32 = u_xlat9.x;
            x_3610 = x_3614;
          } else {
            let x_3617 : f32 = u_xlat9.x;
            x_3610 = -(x_3617);
          }
          let x_3619 : f32 = x_3610;
          u_xlat52.y = x_3619;
          let x_3621 : vec4<f32> = u_xlat8;
          let x_3623 : vec4<f32> = u_xlat7;
          let x_3626 : vec2<f32> = u_xlat52;
          let x_3627 : vec2<f32> = ((vec2<f32>(x_3621.x, x_3621.y) * vec2<f32>(x_3623.x, x_3623.x)) + x_3626);
          let x_3628 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3627.x, x_3628.y, x_3627.y, x_3628.w);
          let x_3630 : vec4<f32> = u_xlat7;
          let x_3633 : vec2<f32> = ((vec2<f32>(x_3630.x, x_3630.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3634 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3633.x, x_3634.y, x_3633.y, x_3634.w);
          let x_3636 : vec4<f32> = u_xlat7;
          let x_3640 : vec2<f32> = clamp(vec2<f32>(x_3636.x, x_3636.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3641 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3640.x, x_3641.y, x_3640.y, x_3641.w);
          let x_3643 : i32 = u_xlati70;
          let x_3645 : vec4<f32> = x_1538.x_AdditionalLightsCookieAtlasUVRects[x_3643];
          let x_3647 : vec4<f32> = u_xlat7;
          let x_3650 : i32 = u_xlati70;
          let x_3652 : vec4<f32> = x_1538.x_AdditionalLightsCookieAtlasUVRects[x_3650];
          let x_3654 : vec2<f32> = ((vec2<f32>(x_3645.x, x_3645.y) * vec2<f32>(x_3647.x, x_3647.z)) + vec2<f32>(x_3652.z, x_3652.w));
          let x_3655 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3654.x, x_3655.y, x_3654.y);
        }
      }
      let x_3662 : vec3<f32> = u_xlat29;
      let x_3664 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3662.x, x_3662.z), 0.0f);
      u_xlat7 = x_3664;
      let x_3666 : bool = u_xlatb4.y;
      if (x_3666) {
        let x_3671 : f32 = u_xlat7.w;
        x_3667 = x_3671;
      } else {
        let x_3674 : f32 = u_xlat7.x;
        x_3667 = x_3674;
      }
      let x_3675 : f32 = x_3667;
      u_xlat73 = x_3675;
      let x_3677 : bool = u_xlatb4.x;
      if (x_3677) {
        let x_3681 : vec4<f32> = u_xlat7;
        x_3678 = vec3<f32>(x_3681.x, x_3681.y, x_3681.z);
      } else {
        let x_3684 : f32 = u_xlat73;
        x_3678 = vec3<f32>(x_3684, x_3684, x_3684);
      }
      let x_3686 : vec3<f32> = x_3678;
      let x_3687 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_3686.x, x_3686.y, x_3686.z, x_3687.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_3693 : vec4<f32> = u_xlat7;
    let x_3695 : i32 = u_xlati70;
    let x_3697 : vec4<f32> = x_1777.x_AdditionalLightsColor[x_3695];
    let x_3699 : vec3<f32> = (vec3<f32>(x_3693.x, x_3693.y, x_3693.z) * vec3<f32>(x_3697.x, x_3697.y, x_3697.z));
    let x_3700 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3699.x, x_3699.y, x_3699.z, x_3700.w);
    let x_3702 : f32 = u_xlat71;
    let x_3703 : f32 = u_xlat72;
    u_xlat70 = (x_3702 * x_3703);
    let x_3705 : f32 = u_xlat70;
    let x_3707 : vec4<f32> = u_xlat7;
    let x_3709 : vec3<f32> = (vec3<f32>(x_3705, x_3705, x_3705) * vec3<f32>(x_3707.x, x_3707.y, x_3707.z));
    let x_3710 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3709.x, x_3709.y, x_3709.z, x_3710.w);
    let x_3712 : vec3<f32> = u_xlat1;
    let x_3713 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(x_3712, vec3<f32>(x_3713.x, x_3713.y, x_3713.z));
    let x_3716 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3716, 0.0f, 1.0f);
    let x_3718 : f32 = u_xlat70;
    let x_3720 : vec4<f32> = u_xlat7;
    let x_3722 : vec3<f32> = (vec3<f32>(x_3718, x_3718, x_3718) * vec3<f32>(x_3720.x, x_3720.y, x_3720.z));
    let x_3723 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3722.x, x_3722.y, x_3722.z, x_3723.w);
    let x_3725 : vec4<f32> = u_xlat6;
    let x_3727 : vec4<f32> = u_xlat0;
    let x_3730 : vec4<f32> = u_xlat5;
    let x_3732 : vec3<f32> = ((vec3<f32>(x_3725.x, x_3725.y, x_3725.z) * vec3<f32>(x_3727.y, x_3727.z, x_3727.w)) + vec3<f32>(x_3730.x, x_3730.y, x_3730.z));
    let x_3733 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3732.x, x_3732.y, x_3732.z, x_3733.w);

    continuing {
      let x_3735 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3735 + bitcast<u32>(1i));
    }
  }
  let x_3738 : vec4<f32> = u_xlat2;
  let x_3740 : vec4<f32> = u_xlat0;
  let x_3743 : vec3<f32> = u_xlat25;
  u_xlat22 = ((vec3<f32>(x_3738.x, x_3738.y, x_3738.z) * vec3<f32>(x_3740.y, x_3740.z, x_3740.w)) + x_3743);
  let x_3745 : vec4<f32> = u_xlat5;
  let x_3747 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_3745.x, x_3745.y, x_3745.z) + x_3747);
  let x_3749 : f32 = u_xlat67;
  let x_3750 : f32 = u_xlat67;
  u_xlat1.x = (x_3749 * -(x_3750));
  let x_3755 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3755);
  let x_3758 : vec3<f32> = u_xlat22;
  let x_3760 : vec4<f32> = x_28.unity_FogColor;
  u_xlat22 = (x_3758 + -(vec3<f32>(x_3760.x, x_3760.y, x_3760.z)));
  let x_3766 : vec3<f32> = u_xlat1;
  let x_3768 : vec3<f32> = u_xlat22;
  let x_3771 : vec4<f32> = x_28.unity_FogColor;
  let x_3773 : vec3<f32> = ((vec3<f32>(x_3766.x, x_3766.x, x_3766.x) * x_3768) + vec3<f32>(x_3771.x, x_3771.y, x_3771.z));
  let x_3774 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3773.x, x_3773.y, x_3773.z, x_3774.w);
  let x_3778 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3778 == 1.0f);
  let x_3780 : bool = u_xlatb22;
  if (x_3780) {
    let x_3785 : f32 = u_xlat0.x;
    x_3781 = x_3785;
  } else {
    x_3781 = 1.0f;
  }
  let x_3787 : f32 = x_3781;
  SV_Target0.w = x_3787;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


