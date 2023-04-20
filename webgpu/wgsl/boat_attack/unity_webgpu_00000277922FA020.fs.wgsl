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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb30 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_226 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : f32;

var<private> u_xlatb56 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb82 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1575 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat83 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1771 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2033 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

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
  var x_1661 : f32;
  var x_1672 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2171 : f32;
  var x_2181 : f32;
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
  var x_3769 : f32;
  var x_3782 : f32;
  var x_3840 : f32;
  var x_3851 : vec3<f32>;
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
  let x_102 : vec4<f32> = vs_TEXCOORD0;
  let x_105 : f32 = x_28.x_GlobalMipBias.x;
  let x_106 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_102.z, x_102.w), x_105);
  u_xlat2 = x_106;
  let x_112 : vec4<f32> = vs_TEXCOORD0;
  let x_115 : f32 = x_28.x_GlobalMipBias.x;
  let x_116 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_112.z, x_112.w), x_115);
  u_xlat3 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  let x_118 : vec4<f32> = u_xlat2;
  let x_122 : vec3<f32> = (vec3<f32>(x_118.x, x_118.y, x_118.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec3<f32> = u_xlat27;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_125, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : f32 = u_xlat2.x;
  u_xlat2.x = (x_131 + 0.5f);
  let x_135 : vec4<f32> = u_xlat2;
  let x_137 : vec3<f32> = u_xlat3;
  let x_138 : vec3<f32> = (vec3<f32>(x_135.x, x_135.x, x_135.x) * x_137);
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_144 : f32 = u_xlat2.w;
  u_xlat80 = max(x_144, 0.00009999999747378752f);
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : f32 = u_xlat80;
  let x_151 : vec3<f32> = (vec3<f32>(x_147.x, x_147.y, x_147.z) / vec3<f32>(x_149, x_149, x_149));
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : f32 = u_xlat1;
  u_xlat80 = ((-(x_154) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_159 : f32 = u_xlat80;
  u_xlat3.x = (-(x_159) + 1.0f);
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : f32 = u_xlat80;
  u_xlat29 = (vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167, x_167, x_167));
  let x_170 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : f32 = u_xlat1;
  let x_179 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = ((vec3<f32>(x_177, x_177, x_177) * vec3<f32>(x_179.x, x_179.y, x_179.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_188) + 1.0f);
  let x_191 : f32 = u_xlat1;
  let x_192 : f32 = u_xlat1;
  u_xlat80 = (x_191 * x_192);
  let x_194 : f32 = u_xlat80;
  u_xlat80 = max(x_194, 0.0078125f);
  let x_198 : f32 = u_xlat80;
  let x_199 : f32 = u_xlat80;
  u_xlat4 = (x_198 * x_199);
  let x_203 : f32 = u_xlat0.w;
  let x_205 : f32 = u_xlat3.x;
  u_xlat78 = (x_203 + x_205);
  let x_207 : f32 = u_xlat78;
  u_xlat78 = clamp(x_207, 0.0f, 1.0f);
  let x_209 : f32 = u_xlat80;
  u_xlat3.x = ((x_209 * 4.0f) + 2.0f);
  let x_230 : f32 = x_226.x_MainLightShadowParams.y;
  u_xlatb30.x = (0.0f < x_230);
  let x_234 : bool = u_xlatb30.x;
  if (x_234) {
    let x_238 : f32 = x_226.x_MainLightShadowParams.y;
    u_xlatb30.x = (x_238 == 1.0f);
    let x_242 : bool = u_xlatb30.x;
    if (x_242) {
      let x_247 : vec4<f32> = vs_TEXCOORD8;
      let x_252 : vec4<f32> = x_226.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_247.x, x_247.y, x_247.x, x_247.y) + x_252);
      let x_256 : vec4<f32> = u_xlat5;
      let x_257 : vec2<f32> = vec2<f32>(x_256.x, x_256.y);
      let x_261 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_257.x, x_257.y, x_261);
      let x_274 : vec3<f32> = txVec0;
      let x_276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_274.xy, x_274.z);
      u_xlat6.x = x_276;
      let x_279 : vec4<f32> = u_xlat5;
      let x_280 : vec2<f32> = vec2<f32>(x_279.z, x_279.w);
      let x_282 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_280.x, x_280.y, x_282);
      let x_289 : vec3<f32> = txVec1;
      let x_291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_289.xy, x_289.z);
      u_xlat6.y = x_291;
      let x_293 : vec4<f32> = vs_TEXCOORD8;
      let x_297 : vec4<f32> = x_226.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_293.x, x_293.y, x_293.x, x_293.y) + x_297);
      let x_300 : vec4<f32> = u_xlat5;
      let x_301 : vec2<f32> = vec2<f32>(x_300.x, x_300.y);
      let x_303 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_301.x, x_301.y, x_303);
      let x_310 : vec3<f32> = txVec2;
      let x_312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_310.xy, x_310.z);
      u_xlat6.z = x_312;
      let x_315 : vec4<f32> = u_xlat5;
      let x_316 : vec2<f32> = vec2<f32>(x_315.z, x_315.w);
      let x_318 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_316.x, x_316.y, x_318);
      let x_325 : vec3<f32> = txVec3;
      let x_327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_325.xy, x_325.z);
      u_xlat6.w = x_327;
      let x_330 : vec4<f32> = u_xlat6;
      u_xlat30 = dot(x_330, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_337 : f32 = x_226.x_MainLightShadowParams.y;
      u_xlatb56 = (x_337 == 2.0f);
      let x_339 : bool = u_xlatb56;
      if (x_339) {
        let x_344 : vec4<f32> = vs_TEXCOORD8;
        let x_348 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_344.x, x_344.y) * vec2<f32>(x_348.z, x_348.w)) + vec2<f32>(0.5f, 0.5f));
        let x_353 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_353);
        let x_355 : vec4<f32> = vs_TEXCOORD8;
        let x_358 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_361 : vec2<f32> = u_xlat56;
        let x_363 : vec2<f32> = ((vec2<f32>(x_355.x, x_355.y) * vec2<f32>(x_358.z, x_358.w)) + -(x_361));
        let x_364 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
        let x_366 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_366.x, x_366.x, x_366.y, x_366.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_371 : vec4<f32> = u_xlat6;
        let x_373 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_371.x, x_371.x, x_371.z, x_371.z) * vec4<f32>(x_373.x, x_373.x, x_373.z, x_373.z));
        let x_377 : vec4<f32> = u_xlat7;
        u_xlat57 = (vec2<f32>(x_377.y, x_377.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_382 : vec4<f32> = u_xlat7;
        let x_385 : vec4<f32> = u_xlat5;
        let x_388 : vec2<f32> = ((vec2<f32>(x_382.x, x_382.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_385.x, x_385.y)));
        let x_389 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_388.x, x_389.y, x_388.y, x_389.w);
        let x_391 : vec4<f32> = u_xlat5;
        let x_395 : vec2<f32> = (-(vec2<f32>(x_391.x, x_391.y)) + vec2<f32>(1.0f, 1.0f));
        let x_396 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
        let x_399 : vec4<f32> = u_xlat5;
        u_xlat59 = min(vec2<f32>(x_399.x, x_399.y), vec2<f32>(0.0f, 0.0f));
        let x_403 : vec2<f32> = u_xlat59;
        let x_405 : vec2<f32> = u_xlat59;
        let x_407 : vec4<f32> = u_xlat7;
        u_xlat59 = ((-(x_403) * x_405) + vec2<f32>(x_407.x, x_407.y));
        let x_410 : vec4<f32> = u_xlat5;
        let x_412 : vec2<f32> = max(vec2<f32>(x_410.x, x_410.y), vec2<f32>(0.0f, 0.0f));
        let x_413 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
        let x_415 : vec4<f32> = u_xlat5;
        let x_418 : vec4<f32> = u_xlat5;
        let x_421 : vec4<f32> = u_xlat6;
        let x_423 : vec2<f32> = ((-(vec2<f32>(x_415.x, x_415.y)) * vec2<f32>(x_418.x, x_418.y)) + vec2<f32>(x_421.y, x_421.w));
        let x_424 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
        let x_426 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_426 + vec2<f32>(1.0f, 1.0f));
        let x_428 : vec4<f32> = u_xlat5;
        let x_430 : vec2<f32> = (vec2<f32>(x_428.x, x_428.y) + vec2<f32>(1.0f, 1.0f));
        let x_431 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
        let x_434 : vec4<f32> = u_xlat6;
        let x_438 : vec2<f32> = (vec2<f32>(x_434.x, x_434.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_439 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_442 : vec4<f32> = u_xlat7;
        let x_444 : vec2<f32> = (vec2<f32>(x_442.x, x_442.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_445 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_447 : vec2<f32> = u_xlat59;
        let x_448 : vec2<f32> = (x_447 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_449 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
        let x_452 : vec4<f32> = u_xlat5;
        let x_454 : vec2<f32> = (vec2<f32>(x_452.x, x_452.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_455 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_457 : vec4<f32> = u_xlat6;
        let x_459 : vec2<f32> = (vec2<f32>(x_457.y, x_457.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_460 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_463 : f32 = u_xlat7.x;
        u_xlat8.z = x_463;
        let x_466 : f32 = u_xlat5.x;
        u_xlat8.w = x_466;
        let x_469 : f32 = u_xlat10.x;
        u_xlat9.z = x_469;
        let x_472 : f32 = u_xlat57.x;
        u_xlat9.w = x_472;
        let x_474 : vec4<f32> = u_xlat8;
        let x_476 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_474.z, x_474.w, x_474.x, x_474.z) + vec4<f32>(x_476.z, x_476.w, x_476.x, x_476.z));
        let x_480 : f32 = u_xlat8.y;
        u_xlat7.z = x_480;
        let x_483 : f32 = u_xlat5.y;
        u_xlat7.w = x_483;
        let x_486 : f32 = u_xlat9.y;
        u_xlat10.z = x_486;
        let x_489 : f32 = u_xlat57.y;
        u_xlat10.w = x_489;
        let x_491 : vec4<f32> = u_xlat7;
        let x_493 : vec4<f32> = u_xlat10;
        let x_495 : vec3<f32> = (vec3<f32>(x_491.z, x_491.y, x_491.w) + vec3<f32>(x_493.z, x_493.y, x_493.w));
        let x_496 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat9;
        let x_500 : vec4<f32> = u_xlat6;
        let x_502 : vec3<f32> = (vec3<f32>(x_498.x, x_498.z, x_498.w) / vec3<f32>(x_500.z, x_500.w, x_500.y));
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
        let x_505 : vec4<f32> = u_xlat7;
        let x_510 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_511 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat10;
        let x_515 : vec4<f32> = u_xlat5;
        let x_517 : vec3<f32> = (vec3<f32>(x_513.z, x_513.y, x_513.w) / vec3<f32>(x_515.x, x_515.y, x_515.z));
        let x_518 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
        let x_520 : vec4<f32> = u_xlat8;
        let x_522 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_523 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
        let x_525 : vec4<f32> = u_xlat7;
        let x_528 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_530 : vec3<f32> = (vec3<f32>(x_525.y, x_525.x, x_525.z) * vec3<f32>(x_528.x, x_528.x, x_528.x));
        let x_531 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat8;
        let x_536 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_538 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_536.y, x_536.y, x_536.y));
        let x_539 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_542 : f32 = u_xlat8.x;
        u_xlat7.w = x_542;
        let x_544 : vec2<f32> = u_xlat56;
        let x_547 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_550 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y) * vec4<f32>(x_547.x, x_547.y, x_547.x, x_547.y)) + vec4<f32>(x_550.y, x_550.w, x_550.x, x_550.w));
        let x_553 : vec2<f32> = u_xlat56;
        let x_555 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_558 : vec4<f32> = u_xlat7;
        let x_560 : vec2<f32> = ((x_553 * vec2<f32>(x_555.x, x_555.y)) + vec2<f32>(x_558.z, x_558.w));
        let x_561 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
        let x_564 : f32 = u_xlat7.y;
        u_xlat8.w = x_564;
        let x_566 : vec4<f32> = u_xlat8;
        let x_567 : vec2<f32> = vec2<f32>(x_566.y, x_566.z);
        let x_568 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_568.x, x_567.x, x_568.z, x_567.y);
        let x_571 : vec2<f32> = u_xlat56;
        let x_574 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_577 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_571.x, x_571.y, x_571.x, x_571.y) * vec4<f32>(x_574.x, x_574.y, x_574.x, x_574.y)) + vec4<f32>(x_577.x, x_577.y, x_577.z, x_577.y));
        let x_580 : vec2<f32> = u_xlat56;
        let x_583 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) * vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y)) + vec4<f32>(x_586.w, x_586.y, x_586.w, x_586.z));
        let x_589 : vec2<f32> = u_xlat56;
        let x_592 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_595 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_589.x, x_589.y, x_589.x, x_589.y) * vec4<f32>(x_592.x, x_592.y, x_592.x, x_592.y)) + vec4<f32>(x_595.x, x_595.w, x_595.z, x_595.w));
        let x_599 : vec4<f32> = u_xlat5;
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_599.x, x_599.x, x_599.x, x_599.y) * vec4<f32>(x_601.z, x_601.w, x_601.y, x_601.z));
        let x_605 : vec4<f32> = u_xlat5;
        let x_607 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_605.y, x_605.y, x_605.z, x_605.z) * x_607);
        let x_610 : f32 = u_xlat5.z;
        let x_612 : f32 = u_xlat6.y;
        u_xlat56.x = (x_610 * x_612);
        let x_616 : vec4<f32> = u_xlat9;
        let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
        let x_619 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_617.x, x_617.y, x_619);
        let x_627 : vec3<f32> = txVec4;
        let x_629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_627.xy, x_627.z);
        u_xlat82 = x_629;
        let x_631 : vec4<f32> = u_xlat9;
        let x_632 : vec2<f32> = vec2<f32>(x_631.z, x_631.w);
        let x_634 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_632.x, x_632.y, x_634);
        let x_641 : vec3<f32> = txVec5;
        let x_643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_641.xy, x_641.z);
        u_xlat5.x = x_643;
        let x_646 : f32 = u_xlat5.x;
        let x_648 : f32 = u_xlat12.y;
        u_xlat5.x = (x_646 * x_648);
        let x_652 : f32 = u_xlat12.x;
        let x_653 : f32 = u_xlat82;
        let x_656 : f32 = u_xlat5.x;
        u_xlat82 = ((x_652 * x_653) + x_656);
        let x_659 : vec4<f32> = u_xlat10;
        let x_660 : vec2<f32> = vec2<f32>(x_659.x, x_659.y);
        let x_662 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_660.x, x_660.y, x_662);
        let x_669 : vec3<f32> = txVec6;
        let x_671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_669.xy, x_669.z);
        u_xlat5.x = x_671;
        let x_674 : f32 = u_xlat12.z;
        let x_676 : f32 = u_xlat5.x;
        let x_678 : f32 = u_xlat82;
        u_xlat82 = ((x_674 * x_676) + x_678);
        let x_681 : vec4<f32> = u_xlat8;
        let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
        let x_684 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_682.x, x_682.y, x_684);
        let x_691 : vec3<f32> = txVec7;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
        u_xlat5.x = x_693;
        let x_696 : f32 = u_xlat12.w;
        let x_698 : f32 = u_xlat5.x;
        let x_700 : f32 = u_xlat82;
        u_xlat82 = ((x_696 * x_698) + x_700);
        let x_703 : vec4<f32> = u_xlat11;
        let x_704 : vec2<f32> = vec2<f32>(x_703.x, x_703.y);
        let x_706 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_704.x, x_704.y, x_706);
        let x_713 : vec3<f32> = txVec8;
        let x_715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_713.xy, x_713.z);
        u_xlat5.x = x_715;
        let x_718 : f32 = u_xlat13.x;
        let x_720 : f32 = u_xlat5.x;
        let x_722 : f32 = u_xlat82;
        u_xlat82 = ((x_718 * x_720) + x_722);
        let x_725 : vec4<f32> = u_xlat11;
        let x_726 : vec2<f32> = vec2<f32>(x_725.z, x_725.w);
        let x_728 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_726.x, x_726.y, x_728);
        let x_735 : vec3<f32> = txVec9;
        let x_737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_735.xy, x_735.z);
        u_xlat5.x = x_737;
        let x_740 : f32 = u_xlat13.y;
        let x_742 : f32 = u_xlat5.x;
        let x_744 : f32 = u_xlat82;
        u_xlat82 = ((x_740 * x_742) + x_744);
        let x_747 : vec4<f32> = u_xlat8;
        let x_748 : vec2<f32> = vec2<f32>(x_747.z, x_747.w);
        let x_750 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_748.x, x_748.y, x_750);
        let x_757 : vec3<f32> = txVec10;
        let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_757.xy, x_757.z);
        u_xlat5.x = x_759;
        let x_762 : f32 = u_xlat13.z;
        let x_764 : f32 = u_xlat5.x;
        let x_766 : f32 = u_xlat82;
        u_xlat82 = ((x_762 * x_764) + x_766);
        let x_769 : vec4<f32> = u_xlat7;
        let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
        let x_772 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_770.x, x_770.y, x_772);
        let x_779 : vec3<f32> = txVec11;
        let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
        u_xlat5.x = x_781;
        let x_784 : f32 = u_xlat13.w;
        let x_786 : f32 = u_xlat5.x;
        let x_788 : f32 = u_xlat82;
        u_xlat82 = ((x_784 * x_786) + x_788);
        let x_791 : vec4<f32> = u_xlat7;
        let x_792 : vec2<f32> = vec2<f32>(x_791.z, x_791.w);
        let x_794 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_792.x, x_792.y, x_794);
        let x_801 : vec3<f32> = txVec12;
        let x_803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_801.xy, x_801.z);
        u_xlat5.x = x_803;
        let x_806 : f32 = u_xlat56.x;
        let x_808 : f32 = u_xlat5.x;
        let x_810 : f32 = u_xlat82;
        u_xlat30 = ((x_806 * x_808) + x_810);
      } else {
        let x_813 : vec4<f32> = vs_TEXCOORD8;
        let x_816 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_813.x, x_813.y) * vec2<f32>(x_816.z, x_816.w)) + vec2<f32>(0.5f, 0.5f));
        let x_820 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_820);
        let x_822 : vec4<f32> = vs_TEXCOORD8;
        let x_825 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_828 : vec2<f32> = u_xlat56;
        let x_830 : vec2<f32> = ((vec2<f32>(x_822.x, x_822.y) * vec2<f32>(x_825.z, x_825.w)) + -(x_828));
        let x_831 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
        let x_833 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_833.x, x_833.x, x_833.y, x_833.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_836 : vec4<f32> = u_xlat6;
        let x_838 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_836.x, x_836.x, x_836.z, x_836.z) * vec4<f32>(x_838.x, x_838.x, x_838.z, x_838.z));
        let x_841 : vec4<f32> = u_xlat7;
        let x_845 : vec2<f32> = (vec2<f32>(x_841.y, x_841.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_846 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_846.x, x_845.x, x_846.z, x_845.y);
        let x_848 : vec4<f32> = u_xlat7;
        let x_851 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_848.x, x_848.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_851.x, x_851.y)));
        let x_855 : vec4<f32> = u_xlat5;
        let x_858 : vec2<f32> = (-(vec2<f32>(x_855.x, x_855.y)) + vec2<f32>(1.0f, 1.0f));
        let x_859 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_858.x, x_859.y, x_858.y, x_859.w);
        let x_861 : vec4<f32> = u_xlat5;
        let x_863 : vec2<f32> = min(vec2<f32>(x_861.x, x_861.y), vec2<f32>(0.0f, 0.0f));
        let x_864 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_863.x, x_863.y, x_864.z, x_864.w);
        let x_866 : vec4<f32> = u_xlat7;
        let x_869 : vec4<f32> = u_xlat7;
        let x_872 : vec4<f32> = u_xlat6;
        let x_874 : vec2<f32> = ((-(vec2<f32>(x_866.x, x_866.y)) * vec2<f32>(x_869.x, x_869.y)) + vec2<f32>(x_872.x, x_872.z));
        let x_875 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_874.x, x_875.y, x_874.y, x_875.w);
        let x_877 : vec4<f32> = u_xlat5;
        let x_879 : vec2<f32> = max(vec2<f32>(x_877.x, x_877.y), vec2<f32>(0.0f, 0.0f));
        let x_880 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat7;
        let x_885 : vec4<f32> = u_xlat7;
        let x_888 : vec4<f32> = u_xlat6;
        let x_890 : vec2<f32> = ((-(vec2<f32>(x_882.x, x_882.y)) * vec2<f32>(x_885.x, x_885.y)) + vec2<f32>(x_888.y, x_888.w));
        let x_891 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_891.x, x_890.x, x_891.z, x_890.y);
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_893 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_897 : f32 = u_xlat6.y;
        u_xlat7.z = (x_897 * 0.08163200318813323975f);
        let x_901 : vec2<f32> = u_xlat57;
        let x_904 : vec2<f32> = (vec2<f32>(x_901.y, x_901.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_905 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_907 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_907.x, x_907.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_911 : f32 = u_xlat6.w;
        u_xlat9.z = (x_911 * 0.08163200318813323975f);
        let x_915 : f32 = u_xlat9.y;
        u_xlat7.x = x_915;
        let x_917 : vec4<f32> = u_xlat5;
        let x_924 : vec2<f32> = ((vec2<f32>(x_917.x, x_917.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_925 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_925.x, x_924.x, x_925.z, x_924.y);
        let x_927 : vec4<f32> = u_xlat5;
        let x_931 : vec2<f32> = ((vec2<f32>(x_927.x, x_927.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_932 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_931.x, x_932.y, x_931.y, x_932.w);
        let x_935 : f32 = u_xlat57.x;
        u_xlat6.y = x_935;
        let x_938 : f32 = u_xlat8.y;
        u_xlat6.w = x_938;
        let x_940 : vec4<f32> = u_xlat6;
        let x_941 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_940 + x_941);
        let x_943 : vec4<f32> = u_xlat5;
        let x_946 : vec2<f32> = ((vec2<f32>(x_943.y, x_943.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_947 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_947.x, x_946.x, x_947.z, x_946.y);
        let x_949 : vec4<f32> = u_xlat5;
        let x_952 : vec2<f32> = ((vec2<f32>(x_949.y, x_949.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_953 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_952.x, x_953.y, x_952.y, x_953.w);
        let x_956 : f32 = u_xlat57.y;
        u_xlat8.y = x_956;
        let x_958 : vec4<f32> = u_xlat8;
        let x_959 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_958 + x_959);
        let x_961 : vec4<f32> = u_xlat6;
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_961 / x_962);
        let x_964 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_964 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_970 : vec4<f32> = u_xlat8;
        let x_971 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_970 / x_971);
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_973 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_975 : vec4<f32> = u_xlat6;
        let x_978 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_975.w, x_975.x, x_975.y, x_975.z) * vec4<f32>(x_978.x, x_978.x, x_978.x, x_978.x));
        let x_981 : vec4<f32> = u_xlat8;
        let x_984 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_981.x, x_981.w, x_981.y, x_981.z) * vec4<f32>(x_984.y, x_984.y, x_984.y, x_984.y));
        let x_987 : vec4<f32> = u_xlat6;
        let x_988 : vec3<f32> = vec3<f32>(x_987.y, x_987.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_989.y, x_988.y, x_988.z);
        let x_992 : f32 = u_xlat8.x;
        u_xlat9.y = x_992;
        let x_994 : vec2<f32> = u_xlat56;
        let x_997 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_994.x, x_994.y, x_994.x, x_994.y) * vec4<f32>(x_997.x, x_997.y, x_997.x, x_997.y)) + vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1000.y));
        let x_1003 : vec2<f32> = u_xlat56;
        let x_1005 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat9;
        let x_1010 : vec2<f32> = ((x_1003 * vec2<f32>(x_1005.x, x_1005.y)) + vec2<f32>(x_1008.w, x_1008.y));
        let x_1011 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1014 : f32 = u_xlat9.y;
        u_xlat6.y = x_1014;
        let x_1017 : f32 = u_xlat8.z;
        u_xlat9.y = x_1017;
        let x_1019 : vec2<f32> = u_xlat56;
        let x_1022 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y) * vec4<f32>(x_1022.x, x_1022.y, x_1022.x, x_1022.y)) + vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1025.y));
        let x_1029 : vec2<f32> = u_xlat56;
        let x_1031 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat63 = ((x_1029 * vec2<f32>(x_1031.x, x_1031.y)) + vec2<f32>(x_1034.w, x_1034.y));
        let x_1038 : f32 = u_xlat9.y;
        u_xlat6.z = x_1038;
        let x_1040 : vec2<f32> = u_xlat56;
        let x_1043 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1040.x, x_1040.y, x_1040.x, x_1040.y) * vec4<f32>(x_1043.x, x_1043.y, x_1043.x, x_1043.y)) + vec4<f32>(x_1046.x, x_1046.y, x_1046.x, x_1046.z));
        let x_1050 : f32 = u_xlat8.w;
        u_xlat9.y = x_1050;
        let x_1053 : vec2<f32> = u_xlat56;
        let x_1056 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y) * vec4<f32>(x_1056.x, x_1056.y, x_1056.x, x_1056.y)) + vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1059.y));
        let x_1063 : vec2<f32> = u_xlat56;
        let x_1065 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat9;
        u_xlat32 = ((x_1063 * vec2<f32>(x_1065.x, x_1065.y)) + vec2<f32>(x_1068.w, x_1068.y));
        let x_1072 : f32 = u_xlat9.y;
        u_xlat6.w = x_1072;
        let x_1075 : vec2<f32> = u_xlat56;
        let x_1077 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat6;
        let x_1082 : vec2<f32> = ((x_1075 * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1080.x, x_1080.w));
        let x_1083 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1086 : vec3<f32> = vec3<f32>(x_1085.x, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1086.x, x_1087.y, x_1086.y, x_1086.z);
        let x_1089 : vec2<f32> = u_xlat56;
        let x_1092 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1099 : vec2<f32> = u_xlat56;
        let x_1101 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat60 = ((x_1099 * vec2<f32>(x_1101.x, x_1101.y)) + vec2<f32>(x_1104.w, x_1104.y));
        let x_1108 : f32 = u_xlat6.x;
        u_xlat8.x = x_1108;
        let x_1110 : vec2<f32> = u_xlat56;
        let x_1112 : vec4<f32> = x_226.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat56 = ((x_1110 * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.x, x_1115.y));
        let x_1119 : vec4<f32> = u_xlat5;
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1119.x, x_1119.x, x_1119.x, x_1119.x) * x_1121);
        let x_1124 : vec4<f32> = u_xlat5;
        let x_1126 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1124.y, x_1124.y, x_1124.y, x_1124.y) * x_1126);
        let x_1129 : vec4<f32> = u_xlat5;
        let x_1131 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1129.z, x_1129.z, x_1129.z, x_1129.z) * x_1131);
        let x_1133 : vec4<f32> = u_xlat5;
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1133.w, x_1133.w, x_1133.w, x_1133.w) * x_1135);
        let x_1138 : vec4<f32> = u_xlat10;
        let x_1139 : vec2<f32> = vec2<f32>(x_1138.x, x_1138.y);
        let x_1141 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1139.x, x_1139.y, x_1141);
        let x_1148 : vec3<f32> = txVec13;
        let x_1150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1148.xy, x_1148.z);
        u_xlat6.x = x_1150;
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.z, x_1153.w);
        let x_1156 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1164 : vec3<f32> = txVec14;
        let x_1166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1164.xy, x_1164.z);
        u_xlat84 = x_1166;
        let x_1167 : f32 = u_xlat84;
        let x_1169 : f32 = u_xlat16.y;
        u_xlat84 = (x_1167 * x_1169);
        let x_1172 : f32 = u_xlat16.x;
        let x_1174 : f32 = u_xlat6.x;
        let x_1176 : f32 = u_xlat84;
        u_xlat6.x = ((x_1172 * x_1174) + x_1176);
        let x_1180 : vec4<f32> = u_xlat11;
        let x_1181 : vec2<f32> = vec2<f32>(x_1180.x, x_1180.y);
        let x_1183 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1181.x, x_1181.y, x_1183);
        let x_1190 : vec3<f32> = txVec15;
        let x_1192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1190.xy, x_1190.z);
        u_xlat84 = x_1192;
        let x_1194 : f32 = u_xlat16.z;
        let x_1195 : f32 = u_xlat84;
        let x_1198 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1194 * x_1195) + x_1198);
        let x_1202 : vec4<f32> = u_xlat13;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.x, x_1202.y);
        let x_1205 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec16;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
        u_xlat84 = x_1214;
        let x_1216 : f32 = u_xlat16.w;
        let x_1217 : f32 = u_xlat84;
        let x_1220 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1216 * x_1217) + x_1220);
        let x_1224 : vec4<f32> = u_xlat12;
        let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
        let x_1227 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
        let x_1234 : vec3<f32> = txVec17;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
        u_xlat84 = x_1236;
        let x_1238 : f32 = u_xlat17.x;
        let x_1239 : f32 = u_xlat84;
        let x_1242 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1238 * x_1239) + x_1242);
        let x_1246 : vec4<f32> = u_xlat12;
        let x_1247 : vec2<f32> = vec2<f32>(x_1246.z, x_1246.w);
        let x_1249 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1247.x, x_1247.y, x_1249);
        let x_1256 : vec3<f32> = txVec18;
        let x_1258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1256.xy, x_1256.z);
        u_xlat84 = x_1258;
        let x_1260 : f32 = u_xlat17.y;
        let x_1261 : f32 = u_xlat84;
        let x_1264 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1260 * x_1261) + x_1264);
        let x_1268 : vec2<f32> = u_xlat63;
        let x_1270 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1268.x, x_1268.y, x_1270);
        let x_1277 : vec3<f32> = txVec19;
        let x_1279 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1277.xy, x_1277.z);
        u_xlat84 = x_1279;
        let x_1281 : f32 = u_xlat17.z;
        let x_1282 : f32 = u_xlat84;
        let x_1285 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1281 * x_1282) + x_1285);
        let x_1289 : vec4<f32> = u_xlat13;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.z, x_1289.w);
        let x_1292 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1299 : vec3<f32> = txVec20;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat84 = x_1301;
        let x_1303 : f32 = u_xlat17.w;
        let x_1304 : f32 = u_xlat84;
        let x_1307 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1303 * x_1304) + x_1307);
        let x_1311 : vec4<f32> = u_xlat14;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.x, x_1311.y);
        let x_1314 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec21;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat84 = x_1323;
        let x_1325 : f32 = u_xlat18.x;
        let x_1326 : f32 = u_xlat84;
        let x_1329 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1325 * x_1326) + x_1329);
        let x_1333 : vec4<f32> = u_xlat14;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.z, x_1333.w);
        let x_1336 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec22;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat84 = x_1345;
        let x_1347 : f32 = u_xlat18.y;
        let x_1348 : f32 = u_xlat84;
        let x_1351 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1347 * x_1348) + x_1351);
        let x_1355 : vec2<f32> = u_xlat32;
        let x_1357 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec23;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat32.x = x_1366;
        let x_1369 : f32 = u_xlat18.z;
        let x_1371 : f32 = u_xlat32.x;
        let x_1374 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1369 * x_1371) + x_1374);
        let x_1378 : vec4<f32> = u_xlat15;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec24;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat32.x = x_1390;
        let x_1393 : f32 = u_xlat18.w;
        let x_1395 : f32 = u_xlat32.x;
        let x_1398 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1393 * x_1395) + x_1398);
        let x_1402 : vec4<f32> = u_xlat9;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec25;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat32.x = x_1414;
        let x_1417 : f32 = u_xlat5.x;
        let x_1419 : f32 = u_xlat32.x;
        let x_1422 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1417 * x_1419) + x_1422);
        let x_1426 : vec4<f32> = u_xlat9;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.z, x_1426.w);
        let x_1429 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec26;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat6.x = x_1438;
        let x_1441 : f32 = u_xlat5.y;
        let x_1443 : f32 = u_xlat6.x;
        let x_1446 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1441 * x_1443) + x_1446);
        let x_1450 : vec2<f32> = u_xlat60;
        let x_1452 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1460 : vec3<f32> = txVec27;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
        u_xlat31 = x_1462;
        let x_1464 : f32 = u_xlat5.z;
        let x_1465 : f32 = u_xlat31;
        let x_1468 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1464 * x_1465) + x_1468);
        let x_1472 : vec2<f32> = u_xlat56;
        let x_1474 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec28;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat56.x = x_1483;
        let x_1486 : f32 = u_xlat5.w;
        let x_1488 : f32 = u_xlat56.x;
        let x_1491 : f32 = u_xlat5.x;
        u_xlat30 = ((x_1486 * x_1488) + x_1491);
      }
    }
  } else {
    let x_1495 : vec4<f32> = vs_TEXCOORD8;
    let x_1496 : vec2<f32> = vec2<f32>(x_1495.x, x_1495.y);
    let x_1498 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
    let x_1505 : vec3<f32> = txVec29;
    let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1505.xy, x_1505.z);
    u_xlat30 = x_1507;
  }
  let x_1509 : f32 = x_226.x_MainLightShadowParams.x;
  u_xlat56.x = (-(x_1509) + 1.0f);
  let x_1513 : f32 = u_xlat30;
  let x_1515 : f32 = x_226.x_MainLightShadowParams.x;
  let x_1518 : f32 = u_xlat56.x;
  u_xlat30 = ((x_1513 * x_1515) + x_1518);
  let x_1521 : f32 = vs_TEXCOORD8.z;
  u_xlatb56 = (0.0f >= x_1521);
  let x_1525 : f32 = vs_TEXCOORD8.z;
  u_xlatb82 = (x_1525 >= 1.0f);
  let x_1527 : bool = u_xlatb82;
  let x_1528 : bool = u_xlatb56;
  u_xlatb56 = (x_1527 | x_1528);
  let x_1530 : bool = u_xlatb56;
  let x_1531 : f32 = u_xlat30;
  u_xlat30 = select(x_1531, 1.0f, x_1530);
  let x_1535 : vec3<f32> = vs_TEXCOORD7;
  let x_1539 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1541 : vec3<f32> = (x_1535 + -(x_1539));
  let x_1542 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
  let x_1544 : vec4<f32> = u_xlat5;
  let x_1546 : vec4<f32> = u_xlat5;
  u_xlat56.x = dot(vec3<f32>(x_1544.x, x_1544.y, x_1544.z), vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
  let x_1551 : f32 = u_xlat56.x;
  let x_1553 : f32 = x_226.x_MainLightShadowParams.z;
  let x_1556 : f32 = x_226.x_MainLightShadowParams.w;
  u_xlat82 = ((x_1551 * x_1553) + x_1556);
  let x_1558 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1558, 0.0f, 1.0f);
  let x_1560 : f32 = u_xlat30;
  u_xlat5.x = (-(x_1560) + 1.0f);
  let x_1564 : f32 = u_xlat82;
  let x_1566 : f32 = u_xlat5.x;
  let x_1568 : f32 = u_xlat30;
  u_xlat30 = ((x_1564 * x_1566) + x_1568);
  let x_1578 : f32 = x_1575.x_MainLightCookieTextureFormat;
  u_xlatb82 = !((x_1578 == -1.0f));
  let x_1581 : bool = u_xlatb82;
  if (x_1581) {
    let x_1584 : vec3<f32> = vs_TEXCOORD7;
    let x_1587 : vec4<f32> = x_1575.x_MainLightWorldToLight[1i];
    let x_1589 : vec2<f32> = (vec2<f32>(x_1584.y, x_1584.y) * vec2<f32>(x_1587.x, x_1587.y));
    let x_1590 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
    let x_1593 : vec4<f32> = x_1575.x_MainLightWorldToLight[0i];
    let x_1595 : vec3<f32> = vs_TEXCOORD7;
    let x_1598 : vec4<f32> = u_xlat5;
    let x_1600 : vec2<f32> = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1595.x, x_1595.x)) + vec2<f32>(x_1598.x, x_1598.y));
    let x_1601 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1600.x, x_1600.y, x_1601.z, x_1601.w);
    let x_1604 : vec4<f32> = x_1575.x_MainLightWorldToLight[2i];
    let x_1606 : vec3<f32> = vs_TEXCOORD7;
    let x_1609 : vec4<f32> = u_xlat5;
    let x_1611 : vec2<f32> = ((vec2<f32>(x_1604.x, x_1604.y) * vec2<f32>(x_1606.z, x_1606.z)) + vec2<f32>(x_1609.x, x_1609.y));
    let x_1612 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
    let x_1614 : vec4<f32> = u_xlat5;
    let x_1618 : vec4<f32> = x_1575.x_MainLightWorldToLight[3i];
    let x_1620 : vec2<f32> = (vec2<f32>(x_1614.x, x_1614.y) + vec2<f32>(x_1618.x, x_1618.y));
    let x_1621 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1620.x, x_1620.y, x_1621.z, x_1621.w);
    let x_1623 : vec4<f32> = u_xlat5;
    let x_1626 : vec2<f32> = ((vec2<f32>(x_1623.x, x_1623.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1627 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1626.x, x_1626.y, x_1627.z, x_1627.w);
    let x_1634 : vec4<f32> = u_xlat5;
    let x_1637 : f32 = x_28.x_GlobalMipBias.x;
    let x_1638 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1634.x, x_1634.y), x_1637);
    u_xlat5 = x_1638;
    let x_1641 : f32 = x_1575.x_MainLightCookieTextureFormat;
    let x_1643 : f32 = x_1575.x_MainLightCookieTextureFormat;
    let x_1645 : f32 = x_1575.x_MainLightCookieTextureFormat;
    let x_1647 : f32 = x_1575.x_MainLightCookieTextureFormat;
    let x_1648 : vec4<f32> = vec4<f32>(x_1641, x_1643, x_1645, x_1647);
    let x_1656 : vec4<bool> = (vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1648.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1656.x, x_1656.y);
    let x_1659 : bool = u_xlatb6.y;
    if (x_1659) {
      let x_1665 : f32 = u_xlat5.w;
      x_1661 = x_1665;
    } else {
      let x_1668 : f32 = u_xlat5.x;
      x_1661 = x_1668;
    }
    let x_1669 : f32 = x_1661;
    u_xlat82 = x_1669;
    let x_1671 : bool = u_xlatb6.x;
    if (x_1671) {
      let x_1675 : vec4<f32> = u_xlat5;
      x_1672 = vec3<f32>(x_1675.x, x_1675.y, x_1675.z);
    } else {
      let x_1678 : f32 = u_xlat82;
      x_1672 = vec3<f32>(x_1678, x_1678, x_1678);
    }
    let x_1680 : vec3<f32> = x_1672;
    let x_1681 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1680.x, x_1680.y, x_1680.z, x_1681.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1687 : vec4<f32> = u_xlat5;
  let x_1690 : vec4<f32> = x_28.x_MainLightColor;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1687.x, x_1687.y, x_1687.z) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1696 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1696;
  let x_1700 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1700;
  let x_1704 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1704;
  let x_1706 : vec4<f32> = u_xlat6;
  let x_1709 : vec3<f32> = u_xlat27;
  u_xlat82 = dot(-(vec3<f32>(x_1706.x, x_1706.y, x_1706.z)), x_1709);
  let x_1711 : f32 = u_xlat82;
  let x_1712 : f32 = u_xlat82;
  u_xlat82 = (x_1711 + x_1712);
  let x_1714 : vec3<f32> = u_xlat27;
  let x_1715 : f32 = u_xlat82;
  let x_1719 : vec4<f32> = u_xlat6;
  let x_1722 : vec3<f32> = ((x_1714 * -(vec3<f32>(x_1715, x_1715, x_1715))) + -(vec3<f32>(x_1719.x, x_1719.y, x_1719.z)));
  let x_1723 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
  let x_1725 : vec3<f32> = u_xlat27;
  let x_1726 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(x_1725, vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
  let x_1729 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1729, 0.0f, 1.0f);
  let x_1731 : f32 = u_xlat82;
  u_xlat82 = (-(x_1731) + 1.0f);
  let x_1734 : f32 = u_xlat82;
  let x_1735 : f32 = u_xlat82;
  u_xlat82 = (x_1734 * x_1735);
  let x_1737 : f32 = u_xlat82;
  let x_1738 : f32 = u_xlat82;
  u_xlat82 = (x_1737 * x_1738);
  let x_1741 : f32 = u_xlat1;
  u_xlat83 = ((-(x_1741) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1747 : f32 = u_xlat1;
  let x_1748 : f32 = u_xlat83;
  u_xlat1 = (x_1747 * x_1748);
  let x_1750 : f32 = u_xlat1;
  u_xlat1 = (x_1750 * 6.0f);
  let x_1761 : vec4<f32> = u_xlat7;
  let x_1763 : f32 = u_xlat1;
  let x_1764 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1761.x, x_1761.y, x_1761.z), x_1763);
  u_xlat7 = x_1764;
  let x_1766 : f32 = u_xlat7.w;
  u_xlat1 = (x_1766 + -1.0f);
  let x_1773 : f32 = x_1771.unity_SpecCube0_HDR.w;
  let x_1774 : f32 = u_xlat1;
  u_xlat1 = ((x_1773 * x_1774) + 1.0f);
  let x_1777 : f32 = u_xlat1;
  u_xlat1 = max(x_1777, 0.0f);
  let x_1779 : f32 = u_xlat1;
  u_xlat1 = log2(x_1779);
  let x_1781 : f32 = u_xlat1;
  let x_1783 : f32 = x_1771.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1781 * x_1783);
  let x_1785 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1785);
  let x_1787 : f32 = u_xlat1;
  let x_1789 : f32 = x_1771.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1787 * x_1789);
  let x_1791 : vec4<f32> = u_xlat7;
  let x_1793 : f32 = u_xlat1;
  let x_1795 : vec3<f32> = (vec3<f32>(x_1791.x, x_1791.y, x_1791.z) * vec3<f32>(x_1793, x_1793, x_1793));
  let x_1796 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1798 : f32 = u_xlat80;
  let x_1800 : f32 = u_xlat80;
  let x_1804 : vec2<f32> = ((vec2<f32>(x_1798, x_1798) * vec2<f32>(x_1800, x_1800)) + vec2<f32>(-1.0f, 1.0f));
  let x_1805 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1804.x, x_1804.y, x_1805.z, x_1805.w);
  let x_1808 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1808);
  let x_1811 : vec4<f32> = u_xlat0;
  let x_1814 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1811.x, x_1811.y, x_1811.z)) + vec3<f32>(x_1814, x_1814, x_1814));
  let x_1817 : f32 = u_xlat82;
  let x_1819 : vec3<f32> = u_xlat34;
  let x_1821 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1817, x_1817, x_1817) * x_1819) + vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
  let x_1824 : f32 = u_xlat1;
  let x_1826 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1824, x_1824, x_1824) * x_1826);
  let x_1828 : vec4<f32> = u_xlat7;
  let x_1830 : vec3<f32> = u_xlat34;
  let x_1831 : vec3<f32> = (vec3<f32>(x_1828.x, x_1828.y, x_1828.z) * x_1830);
  let x_1832 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1834 : vec4<f32> = u_xlat2;
  let x_1836 : vec3<f32> = u_xlat29;
  let x_1838 : vec4<f32> = u_xlat7;
  let x_1840 : vec3<f32> = ((vec3<f32>(x_1834.x, x_1834.y, x_1834.z) * x_1836) + vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
  let x_1841 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
  let x_1843 : f32 = u_xlat30;
  let x_1846 : f32 = x_1771.unity_LightData.z;
  u_xlat78 = (x_1843 * x_1846);
  let x_1848 : vec3<f32> = u_xlat27;
  let x_1850 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_1848, vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
  let x_1853 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1853, 0.0f, 1.0f);
  let x_1855 : f32 = u_xlat78;
  let x_1856 : f32 = u_xlat1;
  u_xlat78 = (x_1855 * x_1856);
  let x_1858 : f32 = u_xlat78;
  let x_1860 : vec4<f32> = u_xlat5;
  let x_1862 : vec3<f32> = (vec3<f32>(x_1858, x_1858, x_1858) * vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
  let x_1863 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
  let x_1865 : vec4<f32> = u_xlat6;
  let x_1868 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1870 : vec3<f32> = (vec3<f32>(x_1865.x, x_1865.y, x_1865.z) + vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1873 : vec4<f32> = u_xlat7;
  let x_1875 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1873.x, x_1873.y, x_1873.z), vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : f32 = u_xlat78;
  u_xlat78 = max(x_1878, 1.17549435e-38f);
  let x_1881 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1881);
  let x_1883 : f32 = u_xlat78;
  let x_1885 : vec4<f32> = u_xlat7;
  let x_1887 : vec3<f32> = (vec3<f32>(x_1883, x_1883, x_1883) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1890 : vec3<f32> = u_xlat27;
  let x_1891 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_1890, vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1894, 0.0f, 1.0f);
  let x_1897 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1899 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1897.x, x_1897.y, x_1897.z), vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
  let x_1902 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1902, 0.0f, 1.0f);
  let x_1904 : f32 = u_xlat78;
  let x_1905 : f32 = u_xlat78;
  u_xlat78 = (x_1904 * x_1905);
  let x_1907 : f32 = u_xlat78;
  let x_1909 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1907 * x_1909) + 1.00001001358032226562f);
  let x_1913 : f32 = u_xlat1;
  let x_1914 : f32 = u_xlat1;
  u_xlat1 = (x_1913 * x_1914);
  let x_1916 : f32 = u_xlat78;
  let x_1917 : f32 = u_xlat78;
  u_xlat78 = (x_1916 * x_1917);
  let x_1919 : f32 = u_xlat1;
  u_xlat1 = max(x_1919, 0.10000000149011611938f);
  let x_1922 : f32 = u_xlat78;
  let x_1923 : f32 = u_xlat1;
  u_xlat78 = (x_1922 * x_1923);
  let x_1926 : f32 = u_xlat3.x;
  let x_1927 : f32 = u_xlat78;
  u_xlat78 = (x_1926 * x_1927);
  let x_1929 : f32 = u_xlat4;
  let x_1930 : f32 = u_xlat78;
  u_xlat78 = (x_1929 / x_1930);
  let x_1932 : vec4<f32> = u_xlat0;
  let x_1934 : f32 = u_xlat78;
  let x_1937 : vec3<f32> = u_xlat29;
  let x_1938 : vec3<f32> = ((vec3<f32>(x_1932.x, x_1932.y, x_1932.z) * vec3<f32>(x_1934, x_1934, x_1934)) + x_1937);
  let x_1939 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
  let x_1942 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1944 : f32 = x_1771.unity_LightData.y;
  u_xlat78 = min(x_1942, x_1944);
  let x_1948 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1948));
  let x_1952 : f32 = u_xlat56.x;
  let x_1955 : f32 = x_226.x_AdditionalShadowFadeParams.x;
  let x_1958 : f32 = x_226.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1952 * x_1955) + x_1958);
  let x_1960 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1960, 0.0f, 1.0f);
  let x_1963 : f32 = x_1575.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1965 : f32 = x_1575.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1967 : f32 = x_1575.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1969 : f32 = x_1575.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1970 : vec4<f32> = vec4<f32>(x_1963, x_1965, x_1967, x_1969);
  let x_1976 : vec4<bool> = (vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1970.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb30 = vec2<bool>(x_1976.x, x_1976.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1988 : u32 = u_xlatu_loop_1;
    let x_1989 : u32 = u_xlatu78;
    if ((x_1988 < x_1989)) {
    } else {
      break;
    }
    let x_1992 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_1992 >> 2u);
    let x_1996 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_1996 & 3u));
    let x_1999 : u32 = u_xlatu82;
    let x_2002 : vec4<f32> = x_1771.unity_LightIndices[bitcast<i32>(x_1999)];
    let x_2012 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2017 : vec4<u32> = indexable[x_2012];
    u_xlat82 = dot(x_2002, bitcast<vec4<f32>>(x_2017));
    let x_2021 : f32 = u_xlat82;
    u_xlati82 = i32(x_2021);
    let x_2023 : vec3<f32> = vs_TEXCOORD7;
    let x_2034 : i32 = u_xlati82;
    let x_2036 : vec4<f32> = x_2033.x_AdditionalLightsPosition[x_2034];
    let x_2039 : i32 = u_xlati82;
    let x_2041 : vec4<f32> = x_2033.x_AdditionalLightsPosition[x_2039];
    let x_2043 : vec3<f32> = ((-(x_2023) * vec3<f32>(x_2036.w, x_2036.w, x_2036.w)) + vec3<f32>(x_2041.x, x_2041.y, x_2041.z));
    let x_2044 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2043.x, x_2043.y, x_2043.z, x_2044.w);
    let x_2046 : vec4<f32> = u_xlat9;
    let x_2048 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2046.x, x_2046.y, x_2046.z), vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
    let x_2051 : f32 = u_xlat83;
    u_xlat83 = max(x_2051, 0.00006103515625f);
    let x_2054 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2054);
    let x_2056 : f32 = u_xlat84;
    let x_2058 : vec4<f32> = u_xlat9;
    let x_2060 : vec3<f32> = (vec3<f32>(x_2056, x_2056, x_2056) * vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
    let x_2061 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
    let x_2064 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2064);
    let x_2066 : f32 = u_xlat83;
    let x_2067 : i32 = u_xlati82;
    let x_2069 : f32 = x_2033.x_AdditionalLightsAttenuation[x_2067].x;
    u_xlat83 = (x_2066 * x_2069);
    let x_2071 : f32 = u_xlat83;
    let x_2073 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2071) * x_2073) + 1.0f);
    let x_2076 : f32 = u_xlat83;
    u_xlat83 = max(x_2076, 0.0f);
    let x_2078 : f32 = u_xlat83;
    let x_2079 : f32 = u_xlat83;
    u_xlat83 = (x_2078 * x_2079);
    let x_2081 : f32 = u_xlat83;
    let x_2082 : f32 = u_xlat85;
    u_xlat83 = (x_2081 * x_2082);
    let x_2084 : i32 = u_xlati82;
    let x_2086 : vec4<f32> = x_2033.x_AdditionalLightsSpotDir[x_2084];
    let x_2088 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2086.x, x_2086.y, x_2086.z), vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
    let x_2091 : f32 = u_xlat85;
    let x_2092 : i32 = u_xlati82;
    let x_2094 : f32 = x_2033.x_AdditionalLightsAttenuation[x_2092].z;
    let x_2096 : i32 = u_xlati82;
    let x_2098 : f32 = x_2033.x_AdditionalLightsAttenuation[x_2096].w;
    u_xlat85 = ((x_2091 * x_2094) + x_2098);
    let x_2100 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2100, 0.0f, 1.0f);
    let x_2102 : f32 = u_xlat85;
    let x_2103 : f32 = u_xlat85;
    u_xlat85 = (x_2102 * x_2103);
    let x_2105 : f32 = u_xlat83;
    let x_2106 : f32 = u_xlat85;
    u_xlat83 = (x_2105 * x_2106);
    let x_2110 : i32 = u_xlati82;
    let x_2112 : f32 = x_226.x_AdditionalShadowParams[x_2110].w;
    u_xlati85 = i32(x_2112);
    let x_2115 : i32 = u_xlati85;
    u_xlatb87 = (x_2115 >= 0i);
    let x_2117 : bool = u_xlatb87;
    if (x_2117) {
      let x_2121 : i32 = u_xlati82;
      let x_2123 : f32 = x_226.x_AdditionalShadowParams[x_2121].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2123, x_2123, x_2123, x_2123))));
      let x_2127 : bool = u_xlatb87;
      if (x_2127) {
        let x_2132 : vec4<f32> = u_xlat10;
        let x_2135 : vec4<f32> = u_xlat10;
        let x_2138 : vec4<bool> = (abs(vec4<f32>(x_2132.z, x_2132.z, x_2132.y, x_2132.z)) >= abs(vec4<f32>(x_2135.x, x_2135.y, x_2135.x, x_2135.x)));
        let x_2140 : vec3<bool> = vec3<bool>(x_2138.x, x_2138.y, x_2138.z);
        let x_2141 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
        let x_2144 : bool = u_xlatb11.y;
        let x_2146 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2144 & x_2146);
        let x_2148 : vec4<f32> = u_xlat10;
        let x_2151 : vec4<bool> = (-(vec4<f32>(x_2148.z, x_2148.y, x_2148.z, x_2148.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2152 : vec3<bool> = vec3<bool>(x_2151.x, x_2151.y, x_2151.w);
        let x_2153 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2152.x, x_2152.y, x_2153.z, x_2152.z);
        let x_2156 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2156);
        let x_2161 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2161);
        let x_2167 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2167);
        let x_2170 : bool = u_xlatb11.z;
        if (x_2170) {
          let x_2175 : f32 = u_xlat11.y;
          x_2171 = x_2175;
        } else {
          let x_2177 : f32 = u_xlat88;
          x_2171 = x_2177;
        }
        let x_2178 : f32 = x_2171;
        u_xlat88 = x_2178;
        let x_2180 : bool = u_xlatb87;
        if (x_2180) {
          let x_2185 : f32 = u_xlat11.x;
          x_2181 = x_2185;
        } else {
          let x_2187 : f32 = u_xlat88;
          x_2181 = x_2187;
        }
        let x_2188 : f32 = x_2181;
        u_xlat87 = x_2188;
        let x_2189 : i32 = u_xlati82;
        let x_2191 : f32 = x_226.x_AdditionalShadowParams[x_2189].w;
        u_xlat88 = trunc(x_2191);
        let x_2193 : f32 = u_xlat87;
        let x_2194 : f32 = u_xlat88;
        u_xlat87 = (x_2193 + x_2194);
        let x_2196 : f32 = u_xlat87;
        u_xlati85 = i32(x_2196);
      }
      let x_2198 : i32 = u_xlati85;
      u_xlati85 = (x_2198 << bitcast<u32>(2i));
      let x_2200 : vec3<f32> = vs_TEXCOORD7;
      let x_2203 : i32 = u_xlati85;
      let x_2206 : i32 = u_xlati85;
      let x_2210 : vec4<f32> = x_226.x_AdditionalLightsWorldToShadow[((x_2203 + 1i) / 4i)][((x_2206 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2200.y, x_2200.y, x_2200.y, x_2200.y) * x_2210);
      let x_2212 : i32 = u_xlati85;
      let x_2214 : i32 = u_xlati85;
      let x_2217 : vec4<f32> = x_226.x_AdditionalLightsWorldToShadow[(x_2212 / 4i)][(x_2214 % 4i)];
      let x_2218 : vec3<f32> = vs_TEXCOORD7;
      let x_2221 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2217 * vec4<f32>(x_2218.x, x_2218.x, x_2218.x, x_2218.x)) + x_2221);
      let x_2223 : i32 = u_xlati85;
      let x_2226 : i32 = u_xlati85;
      let x_2230 : vec4<f32> = x_226.x_AdditionalLightsWorldToShadow[((x_2223 + 2i) / 4i)][((x_2226 + 2i) % 4i)];
      let x_2231 : vec3<f32> = vs_TEXCOORD7;
      let x_2234 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2230 * vec4<f32>(x_2231.z, x_2231.z, x_2231.z, x_2231.z)) + x_2234);
      let x_2236 : vec4<f32> = u_xlat11;
      let x_2237 : i32 = u_xlati85;
      let x_2240 : i32 = u_xlati85;
      let x_2244 : vec4<f32> = x_226.x_AdditionalLightsWorldToShadow[((x_2237 + 3i) / 4i)][((x_2240 + 3i) % 4i)];
      u_xlat11 = (x_2236 + x_2244);
      let x_2246 : vec4<f32> = u_xlat11;
      let x_2248 : vec4<f32> = u_xlat11;
      let x_2250 : vec3<f32> = (vec3<f32>(x_2246.x, x_2246.y, x_2246.z) / vec3<f32>(x_2248.w, x_2248.w, x_2248.w));
      let x_2251 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
      let x_2254 : i32 = u_xlati82;
      let x_2256 : f32 = x_226.x_AdditionalShadowParams[x_2254].y;
      u_xlatb85 = (0.0f < x_2256);
      let x_2258 : bool = u_xlatb85;
      if (x_2258) {
        let x_2261 : i32 = u_xlati82;
        let x_2263 : f32 = x_226.x_AdditionalShadowParams[x_2261].y;
        u_xlatb85 = (1.0f == x_2263);
        let x_2265 : bool = u_xlatb85;
        if (x_2265) {
          let x_2268 : vec4<f32> = u_xlat11;
          let x_2272 : vec4<f32> = x_226.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2268.x, x_2268.y, x_2268.x, x_2268.y) + x_2272);
          let x_2275 : vec4<f32> = u_xlat12;
          let x_2276 : vec2<f32> = vec2<f32>(x_2275.x, x_2275.y);
          let x_2278 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2276.x, x_2276.y, x_2278);
          let x_2286 : vec3<f32> = txVec30;
          let x_2288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2286.xy, x_2286.z);
          u_xlat13.x = x_2288;
          let x_2291 : vec4<f32> = u_xlat12;
          let x_2292 : vec2<f32> = vec2<f32>(x_2291.z, x_2291.w);
          let x_2294 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2292.x, x_2292.y, x_2294);
          let x_2301 : vec3<f32> = txVec31;
          let x_2303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2301.xy, x_2301.z);
          u_xlat13.y = x_2303;
          let x_2305 : vec4<f32> = u_xlat11;
          let x_2309 : vec4<f32> = x_226.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2305.x, x_2305.y, x_2305.x, x_2305.y) + x_2309);
          let x_2312 : vec4<f32> = u_xlat12;
          let x_2313 : vec2<f32> = vec2<f32>(x_2312.x, x_2312.y);
          let x_2315 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2313.x, x_2313.y, x_2315);
          let x_2322 : vec3<f32> = txVec32;
          let x_2324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2322.xy, x_2322.z);
          u_xlat13.z = x_2324;
          let x_2327 : vec4<f32> = u_xlat12;
          let x_2328 : vec2<f32> = vec2<f32>(x_2327.z, x_2327.w);
          let x_2330 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2328.x, x_2328.y, x_2330);
          let x_2337 : vec3<f32> = txVec33;
          let x_2339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2337.xy, x_2337.z);
          u_xlat13.w = x_2339;
          let x_2341 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2341, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2344 : i32 = u_xlati82;
          let x_2346 : f32 = x_226.x_AdditionalShadowParams[x_2344].y;
          u_xlatb87 = (2.0f == x_2346);
          let x_2348 : bool = u_xlatb87;
          if (x_2348) {
            let x_2351 : vec4<f32> = u_xlat11;
            let x_2355 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2358 : vec2<f32> = ((vec2<f32>(x_2351.x, x_2351.y) * vec2<f32>(x_2355.z, x_2355.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2359 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2358.x, x_2358.y, x_2359.z, x_2359.w);
            let x_2361 : vec4<f32> = u_xlat12;
            let x_2363 : vec2<f32> = floor(vec2<f32>(x_2361.x, x_2361.y));
            let x_2364 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2363.x, x_2363.y, x_2364.z, x_2364.w);
            let x_2367 : vec4<f32> = u_xlat11;
            let x_2370 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2373 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2367.x, x_2367.y) * vec2<f32>(x_2370.z, x_2370.w)) + -(vec2<f32>(x_2373.x, x_2373.y)));
            let x_2377 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2377.x, x_2377.x, x_2377.y, x_2377.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2380 : vec4<f32> = u_xlat13;
            let x_2382 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2380.x, x_2380.x, x_2380.z, x_2380.z) * vec4<f32>(x_2382.x, x_2382.x, x_2382.z, x_2382.z));
            let x_2385 : vec4<f32> = u_xlat14;
            let x_2387 : vec2<f32> = (vec2<f32>(x_2385.y, x_2385.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2388 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2387.x, x_2388.y, x_2387.y, x_2388.w);
            let x_2390 : vec4<f32> = u_xlat14;
            let x_2393 : vec2<f32> = u_xlat64;
            let x_2395 : vec2<f32> = ((vec2<f32>(x_2390.x, x_2390.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2393));
            let x_2396 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
            let x_2399 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2399) + vec2<f32>(1.0f, 1.0f));
            let x_2402 : vec2<f32> = u_xlat64;
            let x_2403 : vec2<f32> = min(x_2402, vec2<f32>(0.0f, 0.0f));
            let x_2404 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
            let x_2406 : vec4<f32> = u_xlat15;
            let x_2409 : vec4<f32> = u_xlat15;
            let x_2412 : vec2<f32> = u_xlat66;
            let x_2413 : vec2<f32> = ((-(vec2<f32>(x_2406.x, x_2406.y)) * vec2<f32>(x_2409.x, x_2409.y)) + x_2412);
            let x_2414 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
            let x_2416 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2416, vec2<f32>(0.0f, 0.0f));
            let x_2418 : vec2<f32> = u_xlat64;
            let x_2420 : vec2<f32> = u_xlat64;
            let x_2422 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2418) * x_2420) + vec2<f32>(x_2422.y, x_2422.w));
            let x_2425 : vec4<f32> = u_xlat15;
            let x_2427 : vec2<f32> = (vec2<f32>(x_2425.x, x_2425.y) + vec2<f32>(1.0f, 1.0f));
            let x_2428 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2427.x, x_2427.y, x_2428.z, x_2428.w);
            let x_2430 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2430 + vec2<f32>(1.0f, 1.0f));
            let x_2432 : vec4<f32> = u_xlat14;
            let x_2434 : vec2<f32> = (vec2<f32>(x_2432.x, x_2432.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2435 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2434.x, x_2434.y, x_2435.z, x_2435.w);
            let x_2437 : vec2<f32> = u_xlat66;
            let x_2438 : vec2<f32> = (x_2437 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2439 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2438.x, x_2438.y, x_2439.z, x_2439.w);
            let x_2441 : vec4<f32> = u_xlat15;
            let x_2443 : vec2<f32> = (vec2<f32>(x_2441.x, x_2441.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2444 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2443.x, x_2443.y, x_2444.z, x_2444.w);
            let x_2446 : vec2<f32> = u_xlat64;
            let x_2447 : vec2<f32> = (x_2446 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2448 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2450.y, x_2450.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2454 : f32 = u_xlat15.x;
            u_xlat16.z = x_2454;
            let x_2457 : f32 = u_xlat64.x;
            u_xlat16.w = x_2457;
            let x_2460 : f32 = u_xlat17.x;
            u_xlat14.z = x_2460;
            let x_2463 : f32 = u_xlat13.x;
            u_xlat14.w = x_2463;
            let x_2465 : vec4<f32> = u_xlat14;
            let x_2467 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2465.z, x_2465.w, x_2465.x, x_2465.z) + vec4<f32>(x_2467.z, x_2467.w, x_2467.x, x_2467.z));
            let x_2471 : f32 = u_xlat16.y;
            u_xlat15.z = x_2471;
            let x_2474 : f32 = u_xlat64.y;
            u_xlat15.w = x_2474;
            let x_2477 : f32 = u_xlat14.y;
            u_xlat17.z = x_2477;
            let x_2480 : f32 = u_xlat13.z;
            u_xlat17.w = x_2480;
            let x_2482 : vec4<f32> = u_xlat15;
            let x_2484 : vec4<f32> = u_xlat17;
            let x_2486 : vec3<f32> = (vec3<f32>(x_2482.z, x_2482.y, x_2482.w) + vec3<f32>(x_2484.z, x_2484.y, x_2484.w));
            let x_2487 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
            let x_2489 : vec4<f32> = u_xlat14;
            let x_2491 : vec4<f32> = u_xlat18;
            let x_2493 : vec3<f32> = (vec3<f32>(x_2489.x, x_2489.z, x_2489.w) / vec3<f32>(x_2491.z, x_2491.w, x_2491.y));
            let x_2494 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2493.x, x_2493.y, x_2493.z, x_2494.w);
            let x_2496 : vec4<f32> = u_xlat14;
            let x_2498 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.y, x_2496.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2499 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
            let x_2501 : vec4<f32> = u_xlat17;
            let x_2503 : vec4<f32> = u_xlat13;
            let x_2505 : vec3<f32> = (vec3<f32>(x_2501.z, x_2501.y, x_2501.w) / vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
            let x_2506 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2506.w);
            let x_2508 : vec4<f32> = u_xlat15;
            let x_2510 : vec3<f32> = (vec3<f32>(x_2508.x, x_2508.y, x_2508.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2511 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
            let x_2513 : vec4<f32> = u_xlat14;
            let x_2516 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2518 : vec3<f32> = (vec3<f32>(x_2513.y, x_2513.x, x_2513.z) * vec3<f32>(x_2516.x, x_2516.x, x_2516.x));
            let x_2519 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
            let x_2521 : vec4<f32> = u_xlat15;
            let x_2524 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2526 : vec3<f32> = (vec3<f32>(x_2521.x, x_2521.y, x_2521.z) * vec3<f32>(x_2524.y, x_2524.y, x_2524.y));
            let x_2527 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
            let x_2530 : f32 = u_xlat15.x;
            u_xlat14.w = x_2530;
            let x_2532 : vec4<f32> = u_xlat12;
            let x_2535 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2538 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2532.x, x_2532.y, x_2532.x, x_2532.y) * vec4<f32>(x_2535.x, x_2535.y, x_2535.x, x_2535.y)) + vec4<f32>(x_2538.y, x_2538.w, x_2538.x, x_2538.w));
            let x_2541 : vec4<f32> = u_xlat12;
            let x_2544 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2547 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(x_2544.x, x_2544.y)) + vec2<f32>(x_2547.z, x_2547.w));
            let x_2551 : f32 = u_xlat14.y;
            u_xlat15.w = x_2551;
            let x_2553 : vec4<f32> = u_xlat15;
            let x_2554 : vec2<f32> = vec2<f32>(x_2553.y, x_2553.z);
            let x_2555 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2555.x, x_2554.x, x_2555.z, x_2554.y);
            let x_2557 : vec4<f32> = u_xlat12;
            let x_2560 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2563 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2557.x, x_2557.y, x_2557.x, x_2557.y) * vec4<f32>(x_2560.x, x_2560.y, x_2560.x, x_2560.y)) + vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2563.y));
            let x_2566 : vec4<f32> = u_xlat12;
            let x_2569 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2572 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y) * vec4<f32>(x_2569.x, x_2569.y, x_2569.x, x_2569.y)) + vec4<f32>(x_2572.w, x_2572.y, x_2572.w, x_2572.z));
            let x_2575 : vec4<f32> = u_xlat12;
            let x_2578 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2581 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y) * vec4<f32>(x_2578.x, x_2578.y, x_2578.x, x_2578.y)) + vec4<f32>(x_2581.x, x_2581.w, x_2581.z, x_2581.w));
            let x_2585 : vec4<f32> = u_xlat13;
            let x_2587 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2585.x, x_2585.x, x_2585.x, x_2585.y) * vec4<f32>(x_2587.z, x_2587.w, x_2587.y, x_2587.z));
            let x_2591 : vec4<f32> = u_xlat13;
            let x_2593 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2591.y, x_2591.y, x_2591.z, x_2591.z) * x_2593);
            let x_2596 : f32 = u_xlat13.z;
            let x_2598 : f32 = u_xlat18.y;
            u_xlat87 = (x_2596 * x_2598);
            let x_2601 : vec4<f32> = u_xlat16;
            let x_2602 : vec2<f32> = vec2<f32>(x_2601.x, x_2601.y);
            let x_2604 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2602.x, x_2602.y, x_2604);
            let x_2611 : vec3<f32> = txVec34;
            let x_2613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2611.xy, x_2611.z);
            u_xlat88 = x_2613;
            let x_2615 : vec4<f32> = u_xlat16;
            let x_2616 : vec2<f32> = vec2<f32>(x_2615.z, x_2615.w);
            let x_2618 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2616.x, x_2616.y, x_2618);
            let x_2626 : vec3<f32> = txVec35;
            let x_2628 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2626.xy, x_2626.z);
            u_xlat89 = x_2628;
            let x_2629 : f32 = u_xlat89;
            let x_2631 : f32 = u_xlat19.y;
            u_xlat89 = (x_2629 * x_2631);
            let x_2634 : f32 = u_xlat19.x;
            let x_2635 : f32 = u_xlat88;
            let x_2637 : f32 = u_xlat89;
            u_xlat88 = ((x_2634 * x_2635) + x_2637);
            let x_2640 : vec2<f32> = u_xlat64;
            let x_2642 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2640.x, x_2640.y, x_2642);
            let x_2649 : vec3<f32> = txVec36;
            let x_2651 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2649.xy, x_2649.z);
            u_xlat89 = x_2651;
            let x_2653 : f32 = u_xlat19.z;
            let x_2654 : f32 = u_xlat89;
            let x_2656 : f32 = u_xlat88;
            u_xlat88 = ((x_2653 * x_2654) + x_2656);
            let x_2659 : vec4<f32> = u_xlat15;
            let x_2660 : vec2<f32> = vec2<f32>(x_2659.x, x_2659.y);
            let x_2662 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2660.x, x_2660.y, x_2662);
            let x_2669 : vec3<f32> = txVec37;
            let x_2671 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2669.xy, x_2669.z);
            u_xlat89 = x_2671;
            let x_2673 : f32 = u_xlat19.w;
            let x_2674 : f32 = u_xlat89;
            let x_2676 : f32 = u_xlat88;
            u_xlat88 = ((x_2673 * x_2674) + x_2676);
            let x_2679 : vec4<f32> = u_xlat17;
            let x_2680 : vec2<f32> = vec2<f32>(x_2679.x, x_2679.y);
            let x_2682 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2680.x, x_2680.y, x_2682);
            let x_2689 : vec3<f32> = txVec38;
            let x_2691 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2689.xy, x_2689.z);
            u_xlat89 = x_2691;
            let x_2693 : f32 = u_xlat20.x;
            let x_2694 : f32 = u_xlat89;
            let x_2696 : f32 = u_xlat88;
            u_xlat88 = ((x_2693 * x_2694) + x_2696);
            let x_2699 : vec4<f32> = u_xlat17;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.z, x_2699.w);
            let x_2702 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2700.x, x_2700.y, x_2702);
            let x_2709 : vec3<f32> = txVec39;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat89 = x_2711;
            let x_2713 : f32 = u_xlat20.y;
            let x_2714 : f32 = u_xlat89;
            let x_2716 : f32 = u_xlat88;
            u_xlat88 = ((x_2713 * x_2714) + x_2716);
            let x_2719 : vec4<f32> = u_xlat15;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.z, x_2719.w);
            let x_2722 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec40;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat89 = x_2731;
            let x_2733 : f32 = u_xlat20.z;
            let x_2734 : f32 = u_xlat89;
            let x_2736 : f32 = u_xlat88;
            u_xlat88 = ((x_2733 * x_2734) + x_2736);
            let x_2739 : vec4<f32> = u_xlat14;
            let x_2740 : vec2<f32> = vec2<f32>(x_2739.x, x_2739.y);
            let x_2742 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2740.x, x_2740.y, x_2742);
            let x_2749 : vec3<f32> = txVec41;
            let x_2751 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2749.xy, x_2749.z);
            u_xlat89 = x_2751;
            let x_2753 : f32 = u_xlat20.w;
            let x_2754 : f32 = u_xlat89;
            let x_2756 : f32 = u_xlat88;
            u_xlat88 = ((x_2753 * x_2754) + x_2756);
            let x_2759 : vec4<f32> = u_xlat14;
            let x_2760 : vec2<f32> = vec2<f32>(x_2759.z, x_2759.w);
            let x_2762 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2760.x, x_2760.y, x_2762);
            let x_2769 : vec3<f32> = txVec42;
            let x_2771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2769.xy, x_2769.z);
            u_xlat89 = x_2771;
            let x_2772 : f32 = u_xlat87;
            let x_2773 : f32 = u_xlat89;
            let x_2775 : f32 = u_xlat88;
            u_xlat85 = ((x_2772 * x_2773) + x_2775);
          } else {
            let x_2778 : vec4<f32> = u_xlat11;
            let x_2781 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2784 : vec2<f32> = ((vec2<f32>(x_2778.x, x_2778.y) * vec2<f32>(x_2781.z, x_2781.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2785 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2784.x, x_2784.y, x_2785.z, x_2785.w);
            let x_2787 : vec4<f32> = u_xlat12;
            let x_2789 : vec2<f32> = floor(vec2<f32>(x_2787.x, x_2787.y));
            let x_2790 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2789.x, x_2789.y, x_2790.z, x_2790.w);
            let x_2792 : vec4<f32> = u_xlat11;
            let x_2795 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2798 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2792.x, x_2792.y) * vec2<f32>(x_2795.z, x_2795.w)) + -(vec2<f32>(x_2798.x, x_2798.y)));
            let x_2802 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2802.x, x_2802.x, x_2802.y, x_2802.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2805 : vec4<f32> = u_xlat13;
            let x_2807 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2805.x, x_2805.x, x_2805.z, x_2805.z) * vec4<f32>(x_2807.x, x_2807.x, x_2807.z, x_2807.z));
            let x_2810 : vec4<f32> = u_xlat14;
            let x_2812 : vec2<f32> = (vec2<f32>(x_2810.y, x_2810.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2813 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2813.x, x_2812.x, x_2813.z, x_2812.y);
            let x_2815 : vec4<f32> = u_xlat14;
            let x_2818 : vec2<f32> = u_xlat64;
            let x_2820 : vec2<f32> = ((vec2<f32>(x_2815.x, x_2815.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2818));
            let x_2821 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2820.x, x_2821.y, x_2820.y, x_2821.w);
            let x_2823 : vec2<f32> = u_xlat64;
            let x_2825 : vec2<f32> = (-(x_2823) + vec2<f32>(1.0f, 1.0f));
            let x_2826 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2825.x, x_2825.y, x_2826.z, x_2826.w);
            let x_2828 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2828, vec2<f32>(0.0f, 0.0f));
            let x_2830 : vec2<f32> = u_xlat66;
            let x_2832 : vec2<f32> = u_xlat66;
            let x_2834 : vec4<f32> = u_xlat14;
            let x_2836 : vec2<f32> = ((-(x_2830) * x_2832) + vec2<f32>(x_2834.x, x_2834.y));
            let x_2837 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2836.x, x_2836.y, x_2837.z, x_2837.w);
            let x_2839 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2839, vec2<f32>(0.0f, 0.0f));
            let x_2842 : vec2<f32> = u_xlat66;
            let x_2844 : vec2<f32> = u_xlat66;
            let x_2846 : vec4<f32> = u_xlat13;
            let x_2848 : vec2<f32> = ((-(x_2842) * x_2844) + vec2<f32>(x_2846.y, x_2846.w));
            let x_2849 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2848.x, x_2849.y, x_2848.y);
            let x_2851 : vec4<f32> = u_xlat14;
            let x_2854 : vec2<f32> = (vec2<f32>(x_2851.x, x_2851.y) + vec2<f32>(2.0f, 2.0f));
            let x_2855 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2854.x, x_2854.y, x_2855.z, x_2855.w);
            let x_2857 : vec3<f32> = u_xlat39;
            let x_2859 : vec2<f32> = (vec2<f32>(x_2857.x, x_2857.z) + vec2<f32>(2.0f, 2.0f));
            let x_2860 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2860.x, x_2859.x, x_2860.z, x_2859.y);
            let x_2863 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2863 * 0.08163200318813323975f);
            let x_2866 : vec4<f32> = u_xlat13;
            let x_2869 : vec3<f32> = (vec3<f32>(x_2866.z, x_2866.x, x_2866.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2870 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2870.w);
            let x_2872 : vec4<f32> = u_xlat14;
            let x_2874 : vec2<f32> = (vec2<f32>(x_2872.x, x_2872.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2875 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2874.x, x_2874.y, x_2875.z, x_2875.w);
            let x_2878 : f32 = u_xlat17.y;
            u_xlat16.x = x_2878;
            let x_2880 : vec2<f32> = u_xlat64;
            let x_2883 : vec2<f32> = ((vec2<f32>(x_2880.x, x_2880.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2884 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2884.x, x_2883.x, x_2884.z, x_2883.y);
            let x_2886 : vec2<f32> = u_xlat64;
            let x_2889 : vec2<f32> = ((vec2<f32>(x_2886.x, x_2886.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2890 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2889.x, x_2890.y, x_2889.y, x_2890.w);
            let x_2893 : f32 = u_xlat13.x;
            u_xlat14.y = x_2893;
            let x_2896 : f32 = u_xlat15.y;
            u_xlat14.w = x_2896;
            let x_2898 : vec4<f32> = u_xlat14;
            let x_2899 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2898 + x_2899);
            let x_2901 : vec2<f32> = u_xlat64;
            let x_2904 : vec2<f32> = ((vec2<f32>(x_2901.y, x_2901.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2905 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2905.x, x_2904.x, x_2905.z, x_2904.y);
            let x_2907 : vec2<f32> = u_xlat64;
            let x_2910 : vec2<f32> = ((vec2<f32>(x_2907.y, x_2907.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2911 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2910.x, x_2911.y, x_2910.y, x_2911.w);
            let x_2914 : f32 = u_xlat13.y;
            u_xlat15.y = x_2914;
            let x_2916 : vec4<f32> = u_xlat15;
            let x_2917 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2916 + x_2917);
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2920 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2919 / x_2920);
            let x_2922 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2922 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2924 : vec4<f32> = u_xlat15;
            let x_2925 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2924 / x_2925);
            let x_2927 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2927 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2929 : vec4<f32> = u_xlat14;
            let x_2932 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2929.w, x_2929.x, x_2929.y, x_2929.z) * vec4<f32>(x_2932.x, x_2932.x, x_2932.x, x_2932.x));
            let x_2935 : vec4<f32> = u_xlat15;
            let x_2938 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2935.x, x_2935.w, x_2935.y, x_2935.z) * vec4<f32>(x_2938.y, x_2938.y, x_2938.y, x_2938.y));
            let x_2941 : vec4<f32> = u_xlat14;
            let x_2942 : vec3<f32> = vec3<f32>(x_2941.y, x_2941.z, x_2941.w);
            let x_2943 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2942.x, x_2943.y, x_2942.y, x_2942.z);
            let x_2946 : f32 = u_xlat15.x;
            u_xlat17.y = x_2946;
            let x_2948 : vec4<f32> = u_xlat12;
            let x_2951 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2954 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2948.x, x_2948.y, x_2948.x, x_2948.y) * vec4<f32>(x_2951.x, x_2951.y, x_2951.x, x_2951.y)) + vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2954.y));
            let x_2957 : vec4<f32> = u_xlat12;
            let x_2960 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2957.x, x_2957.y) * vec2<f32>(x_2960.x, x_2960.y)) + vec2<f32>(x_2963.w, x_2963.y));
            let x_2967 : f32 = u_xlat17.y;
            u_xlat14.y = x_2967;
            let x_2970 : f32 = u_xlat15.z;
            u_xlat17.y = x_2970;
            let x_2972 : vec4<f32> = u_xlat12;
            let x_2975 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2978 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_2972.x, x_2972.y, x_2972.x, x_2972.y) * vec4<f32>(x_2975.x, x_2975.y, x_2975.x, x_2975.y)) + vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2978.y));
            let x_2981 : vec4<f32> = u_xlat12;
            let x_2984 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_2987 : vec4<f32> = u_xlat17;
            let x_2989 : vec2<f32> = ((vec2<f32>(x_2981.x, x_2981.y) * vec2<f32>(x_2984.x, x_2984.y)) + vec2<f32>(x_2987.w, x_2987.y));
            let x_2990 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_2989.x, x_2989.y, x_2990.z, x_2990.w);
            let x_2993 : f32 = u_xlat17.y;
            u_xlat14.z = x_2993;
            let x_2996 : vec4<f32> = u_xlat12;
            let x_2999 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_3002 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_2996.x, x_2996.y, x_2996.x, x_2996.y) * vec4<f32>(x_2999.x, x_2999.y, x_2999.x, x_2999.y)) + vec4<f32>(x_3002.x, x_3002.y, x_3002.x, x_3002.z));
            let x_3006 : f32 = u_xlat15.w;
            u_xlat17.y = x_3006;
            let x_3009 : vec4<f32> = u_xlat12;
            let x_3012 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_3015 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3009.x, x_3009.y, x_3009.x, x_3009.y) * vec4<f32>(x_3012.x, x_3012.y, x_3012.x, x_3012.y)) + vec4<f32>(x_3015.x, x_3015.y, x_3015.z, x_3015.y));
            let x_3019 : vec4<f32> = u_xlat12;
            let x_3022 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_3025 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3019.x, x_3019.y) * vec2<f32>(x_3022.x, x_3022.y)) + vec2<f32>(x_3025.w, x_3025.y));
            let x_3029 : f32 = u_xlat17.y;
            u_xlat14.w = x_3029;
            let x_3032 : vec4<f32> = u_xlat12;
            let x_3035 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_3038 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3032.x, x_3032.y) * vec2<f32>(x_3035.x, x_3035.y)) + vec2<f32>(x_3038.x, x_3038.w));
            let x_3041 : vec4<f32> = u_xlat17;
            let x_3042 : vec3<f32> = vec3<f32>(x_3041.x, x_3041.z, x_3041.w);
            let x_3043 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3042.x, x_3043.y, x_3042.y, x_3042.z);
            let x_3045 : vec4<f32> = u_xlat12;
            let x_3048 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_3051 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3045.x, x_3045.y, x_3045.x, x_3045.y) * vec4<f32>(x_3048.x, x_3048.y, x_3048.x, x_3048.y)) + vec4<f32>(x_3051.x, x_3051.y, x_3051.z, x_3051.y));
            let x_3055 : vec4<f32> = u_xlat12;
            let x_3058 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_3061 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3055.x, x_3055.y) * vec2<f32>(x_3058.x, x_3058.y)) + vec2<f32>(x_3061.w, x_3061.y));
            let x_3065 : f32 = u_xlat14.x;
            u_xlat15.x = x_3065;
            let x_3067 : vec4<f32> = u_xlat12;
            let x_3070 : vec4<f32> = x_226.x_AdditionalShadowmapSize;
            let x_3073 : vec4<f32> = u_xlat15;
            let x_3075 : vec2<f32> = ((vec2<f32>(x_3067.x, x_3067.y) * vec2<f32>(x_3070.x, x_3070.y)) + vec2<f32>(x_3073.x, x_3073.y));
            let x_3076 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3075.x, x_3075.y, x_3076.z, x_3076.w);
            let x_3079 : vec4<f32> = u_xlat13;
            let x_3081 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3079.x, x_3079.x, x_3079.x, x_3079.x) * x_3081);
            let x_3084 : vec4<f32> = u_xlat13;
            let x_3086 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3084.y, x_3084.y, x_3084.y, x_3084.y) * x_3086);
            let x_3089 : vec4<f32> = u_xlat13;
            let x_3091 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3089.z, x_3089.z, x_3089.z, x_3089.z) * x_3091);
            let x_3093 : vec4<f32> = u_xlat13;
            let x_3095 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3093.w, x_3093.w, x_3093.w, x_3093.w) * x_3095);
            let x_3098 : vec4<f32> = u_xlat18;
            let x_3099 : vec2<f32> = vec2<f32>(x_3098.x, x_3098.y);
            let x_3101 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3099.x, x_3099.y, x_3101);
            let x_3108 : vec3<f32> = txVec43;
            let x_3110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3108.xy, x_3108.z);
            u_xlat87 = x_3110;
            let x_3112 : vec4<f32> = u_xlat18;
            let x_3113 : vec2<f32> = vec2<f32>(x_3112.z, x_3112.w);
            let x_3115 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3113.x, x_3113.y, x_3115);
            let x_3122 : vec3<f32> = txVec44;
            let x_3124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3122.xy, x_3122.z);
            u_xlat88 = x_3124;
            let x_3125 : f32 = u_xlat88;
            let x_3127 : f32 = u_xlat23.y;
            u_xlat88 = (x_3125 * x_3127);
            let x_3130 : f32 = u_xlat23.x;
            let x_3131 : f32 = u_xlat87;
            let x_3133 : f32 = u_xlat88;
            u_xlat87 = ((x_3130 * x_3131) + x_3133);
            let x_3136 : vec2<f32> = u_xlat64;
            let x_3138 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3136.x, x_3136.y, x_3138);
            let x_3145 : vec3<f32> = txVec45;
            let x_3147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3145.xy, x_3145.z);
            u_xlat88 = x_3147;
            let x_3149 : f32 = u_xlat23.z;
            let x_3150 : f32 = u_xlat88;
            let x_3152 : f32 = u_xlat87;
            u_xlat87 = ((x_3149 * x_3150) + x_3152);
            let x_3155 : vec4<f32> = u_xlat21;
            let x_3156 : vec2<f32> = vec2<f32>(x_3155.x, x_3155.y);
            let x_3158 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3156.x, x_3156.y, x_3158);
            let x_3165 : vec3<f32> = txVec46;
            let x_3167 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3165.xy, x_3165.z);
            u_xlat88 = x_3167;
            let x_3169 : f32 = u_xlat23.w;
            let x_3170 : f32 = u_xlat88;
            let x_3172 : f32 = u_xlat87;
            u_xlat87 = ((x_3169 * x_3170) + x_3172);
            let x_3175 : vec4<f32> = u_xlat19;
            let x_3176 : vec2<f32> = vec2<f32>(x_3175.x, x_3175.y);
            let x_3178 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
            let x_3185 : vec3<f32> = txVec47;
            let x_3187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
            u_xlat88 = x_3187;
            let x_3189 : f32 = u_xlat24.x;
            let x_3190 : f32 = u_xlat88;
            let x_3192 : f32 = u_xlat87;
            u_xlat87 = ((x_3189 * x_3190) + x_3192);
            let x_3195 : vec4<f32> = u_xlat19;
            let x_3196 : vec2<f32> = vec2<f32>(x_3195.z, x_3195.w);
            let x_3198 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3196.x, x_3196.y, x_3198);
            let x_3205 : vec3<f32> = txVec48;
            let x_3207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3205.xy, x_3205.z);
            u_xlat88 = x_3207;
            let x_3209 : f32 = u_xlat24.y;
            let x_3210 : f32 = u_xlat88;
            let x_3212 : f32 = u_xlat87;
            u_xlat87 = ((x_3209 * x_3210) + x_3212);
            let x_3215 : vec4<f32> = u_xlat20;
            let x_3216 : vec2<f32> = vec2<f32>(x_3215.x, x_3215.y);
            let x_3218 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3216.x, x_3216.y, x_3218);
            let x_3225 : vec3<f32> = txVec49;
            let x_3227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3225.xy, x_3225.z);
            u_xlat88 = x_3227;
            let x_3229 : f32 = u_xlat24.z;
            let x_3230 : f32 = u_xlat88;
            let x_3232 : f32 = u_xlat87;
            u_xlat87 = ((x_3229 * x_3230) + x_3232);
            let x_3235 : vec4<f32> = u_xlat21;
            let x_3236 : vec2<f32> = vec2<f32>(x_3235.z, x_3235.w);
            let x_3238 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3236.x, x_3236.y, x_3238);
            let x_3245 : vec3<f32> = txVec50;
            let x_3247 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3245.xy, x_3245.z);
            u_xlat88 = x_3247;
            let x_3249 : f32 = u_xlat24.w;
            let x_3250 : f32 = u_xlat88;
            let x_3252 : f32 = u_xlat87;
            u_xlat87 = ((x_3249 * x_3250) + x_3252);
            let x_3255 : vec4<f32> = u_xlat22;
            let x_3256 : vec2<f32> = vec2<f32>(x_3255.x, x_3255.y);
            let x_3258 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3256.x, x_3256.y, x_3258);
            let x_3265 : vec3<f32> = txVec51;
            let x_3267 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3265.xy, x_3265.z);
            u_xlat88 = x_3267;
            let x_3269 : f32 = u_xlat25.x;
            let x_3270 : f32 = u_xlat88;
            let x_3272 : f32 = u_xlat87;
            u_xlat87 = ((x_3269 * x_3270) + x_3272);
            let x_3275 : vec4<f32> = u_xlat22;
            let x_3276 : vec2<f32> = vec2<f32>(x_3275.z, x_3275.w);
            let x_3278 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3285 : vec3<f32> = txVec52;
            let x_3287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3285.xy, x_3285.z);
            u_xlat88 = x_3287;
            let x_3289 : f32 = u_xlat25.y;
            let x_3290 : f32 = u_xlat88;
            let x_3292 : f32 = u_xlat87;
            u_xlat87 = ((x_3289 * x_3290) + x_3292);
            let x_3295 : vec2<f32> = u_xlat40;
            let x_3297 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec53;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat88 = x_3306;
            let x_3308 : f32 = u_xlat25.z;
            let x_3309 : f32 = u_xlat88;
            let x_3311 : f32 = u_xlat87;
            u_xlat87 = ((x_3308 * x_3309) + x_3311);
            let x_3314 : vec2<f32> = u_xlat72;
            let x_3316 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3314.x, x_3314.y, x_3316);
            let x_3323 : vec3<f32> = txVec54;
            let x_3325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3323.xy, x_3323.z);
            u_xlat88 = x_3325;
            let x_3327 : f32 = u_xlat25.w;
            let x_3328 : f32 = u_xlat88;
            let x_3330 : f32 = u_xlat87;
            u_xlat87 = ((x_3327 * x_3328) + x_3330);
            let x_3333 : vec4<f32> = u_xlat17;
            let x_3334 : vec2<f32> = vec2<f32>(x_3333.x, x_3333.y);
            let x_3336 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec55;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat88 = x_3345;
            let x_3347 : f32 = u_xlat13.x;
            let x_3348 : f32 = u_xlat88;
            let x_3350 : f32 = u_xlat87;
            u_xlat87 = ((x_3347 * x_3348) + x_3350);
            let x_3353 : vec4<f32> = u_xlat17;
            let x_3354 : vec2<f32> = vec2<f32>(x_3353.z, x_3353.w);
            let x_3356 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3354.x, x_3354.y, x_3356);
            let x_3363 : vec3<f32> = txVec56;
            let x_3365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3363.xy, x_3363.z);
            u_xlat88 = x_3365;
            let x_3367 : f32 = u_xlat13.y;
            let x_3368 : f32 = u_xlat88;
            let x_3370 : f32 = u_xlat87;
            u_xlat87 = ((x_3367 * x_3368) + x_3370);
            let x_3373 : vec2<f32> = u_xlat67;
            let x_3375 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec57;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat88 = x_3384;
            let x_3386 : f32 = u_xlat13.z;
            let x_3387 : f32 = u_xlat88;
            let x_3389 : f32 = u_xlat87;
            u_xlat87 = ((x_3386 * x_3387) + x_3389);
            let x_3392 : vec4<f32> = u_xlat12;
            let x_3393 : vec2<f32> = vec2<f32>(x_3392.x, x_3392.y);
            let x_3395 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec58;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat88 = x_3404;
            let x_3406 : f32 = u_xlat13.w;
            let x_3407 : f32 = u_xlat88;
            let x_3409 : f32 = u_xlat87;
            u_xlat85 = ((x_3406 * x_3407) + x_3409);
          }
        }
      } else {
        let x_3413 : vec4<f32> = u_xlat11;
        let x_3414 : vec2<f32> = vec2<f32>(x_3413.x, x_3413.y);
        let x_3416 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
        let x_3423 : vec3<f32> = txVec59;
        let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
        u_xlat85 = x_3425;
      }
      let x_3426 : i32 = u_xlati82;
      let x_3428 : f32 = x_226.x_AdditionalShadowParams[x_3426].x;
      u_xlat87 = (1.0f + -(x_3428));
      let x_3431 : f32 = u_xlat85;
      let x_3432 : i32 = u_xlati82;
      let x_3434 : f32 = x_226.x_AdditionalShadowParams[x_3432].x;
      let x_3436 : f32 = u_xlat87;
      u_xlat85 = ((x_3431 * x_3434) + x_3436);
      let x_3439 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3439);
      let x_3443 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3443 >= 1.0f);
      let x_3445 : bool = u_xlatb87;
      let x_3446 : bool = u_xlatb88;
      u_xlatb87 = (x_3445 | x_3446);
      let x_3448 : bool = u_xlatb87;
      let x_3449 : f32 = u_xlat85;
      u_xlat85 = select(x_3449, 1.0f, x_3448);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3452 : f32 = u_xlat85;
    u_xlat87 = (-(x_3452) + 1.0f);
    let x_3455 : f32 = u_xlat1;
    let x_3456 : f32 = u_xlat87;
    let x_3458 : f32 = u_xlat85;
    u_xlat85 = ((x_3455 * x_3456) + x_3458);
    let x_3461 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_3461 & 31i)));
    let x_3465 : i32 = u_xlati87;
    let x_3468 : f32 = x_1575.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3465) & bitcast<u32>(x_3468)));
    let x_3472 : i32 = u_xlati87;
    if ((x_3472 != 0i)) {
      let x_3476 : i32 = u_xlati82;
      let x_3478 : f32 = x_1575.x_AdditionalLightsLightTypes[x_3476].el;
      u_xlati87 = i32(x_3478);
      let x_3481 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3481 != 0i));
      let x_3485 : i32 = u_xlati82;
      u_xlati11 = (x_3485 << bitcast<u32>(2i));
      let x_3487 : i32 = u_xlati88;
      if ((x_3487 != 0i)) {
        let x_3492 : vec3<f32> = vs_TEXCOORD7;
        let x_3494 : i32 = u_xlati11;
        let x_3497 : i32 = u_xlati11;
        let x_3501 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3494 + 1i) / 4i)][((x_3497 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3492.y, x_3492.y, x_3492.y) * vec3<f32>(x_3501.x, x_3501.y, x_3501.w));
        let x_3504 : i32 = u_xlati11;
        let x_3506 : i32 = u_xlati11;
        let x_3509 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[(x_3504 / 4i)][(x_3506 % 4i)];
        let x_3511 : vec3<f32> = vs_TEXCOORD7;
        let x_3514 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3509.x, x_3509.y, x_3509.w) * vec3<f32>(x_3511.x, x_3511.x, x_3511.x)) + x_3514);
        let x_3516 : i32 = u_xlati11;
        let x_3519 : i32 = u_xlati11;
        let x_3523 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3516 + 2i) / 4i)][((x_3519 + 2i) % 4i)];
        let x_3525 : vec3<f32> = vs_TEXCOORD7;
        let x_3528 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3523.x, x_3523.y, x_3523.w) * vec3<f32>(x_3525.z, x_3525.z, x_3525.z)) + x_3528);
        let x_3530 : vec3<f32> = u_xlat37;
        let x_3531 : i32 = u_xlati11;
        let x_3534 : i32 = u_xlati11;
        let x_3538 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3531 + 3i) / 4i)][((x_3534 + 3i) % 4i)];
        u_xlat37 = (x_3530 + vec3<f32>(x_3538.x, x_3538.y, x_3538.w));
        let x_3541 : vec3<f32> = u_xlat37;
        let x_3543 : vec3<f32> = u_xlat37;
        let x_3545 : vec2<f32> = (vec2<f32>(x_3541.x, x_3541.y) / vec2<f32>(x_3543.z, x_3543.z));
        let x_3546 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3545.x, x_3545.y, x_3546.z);
        let x_3548 : vec3<f32> = u_xlat37;
        let x_3551 : vec2<f32> = ((vec2<f32>(x_3548.x, x_3548.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3552 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3551.x, x_3551.y, x_3552.z);
        let x_3554 : vec3<f32> = u_xlat37;
        let x_3558 : vec2<f32> = clamp(vec2<f32>(x_3554.x, x_3554.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3559 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3558.x, x_3558.y, x_3559.z);
        let x_3561 : i32 = u_xlati82;
        let x_3563 : vec4<f32> = x_1575.x_AdditionalLightsCookieAtlasUVRects[x_3561];
        let x_3565 : vec3<f32> = u_xlat37;
        let x_3568 : i32 = u_xlati82;
        let x_3570 : vec4<f32> = x_1575.x_AdditionalLightsCookieAtlasUVRects[x_3568];
        let x_3572 : vec2<f32> = ((vec2<f32>(x_3563.x, x_3563.y) * vec2<f32>(x_3565.x, x_3565.y)) + vec2<f32>(x_3570.z, x_3570.w));
        let x_3573 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3572.x, x_3572.y, x_3573.z);
      } else {
        let x_3576 : i32 = u_xlati87;
        u_xlatb87 = (x_3576 == 1i);
        let x_3578 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3578);
        let x_3580 : i32 = u_xlati87;
        if ((x_3580 != 0i)) {
          let x_3584 : vec3<f32> = vs_TEXCOORD7;
          let x_3586 : i32 = u_xlati11;
          let x_3589 : i32 = u_xlati11;
          let x_3593 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3586 + 1i) / 4i)][((x_3589 + 1i) % 4i)];
          let x_3595 : vec2<f32> = (vec2<f32>(x_3584.y, x_3584.y) * vec2<f32>(x_3593.x, x_3593.y));
          let x_3596 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3595.x, x_3595.y, x_3596.z, x_3596.w);
          let x_3598 : i32 = u_xlati11;
          let x_3600 : i32 = u_xlati11;
          let x_3603 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[(x_3598 / 4i)][(x_3600 % 4i)];
          let x_3605 : vec3<f32> = vs_TEXCOORD7;
          let x_3608 : vec4<f32> = u_xlat12;
          let x_3610 : vec2<f32> = ((vec2<f32>(x_3603.x, x_3603.y) * vec2<f32>(x_3605.x, x_3605.x)) + vec2<f32>(x_3608.x, x_3608.y));
          let x_3611 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3610.x, x_3610.y, x_3611.z, x_3611.w);
          let x_3613 : i32 = u_xlati11;
          let x_3616 : i32 = u_xlati11;
          let x_3620 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3613 + 2i) / 4i)][((x_3616 + 2i) % 4i)];
          let x_3622 : vec3<f32> = vs_TEXCOORD7;
          let x_3625 : vec4<f32> = u_xlat12;
          let x_3627 : vec2<f32> = ((vec2<f32>(x_3620.x, x_3620.y) * vec2<f32>(x_3622.z, x_3622.z)) + vec2<f32>(x_3625.x, x_3625.y));
          let x_3628 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3627.x, x_3627.y, x_3628.z, x_3628.w);
          let x_3630 : vec4<f32> = u_xlat12;
          let x_3632 : i32 = u_xlati11;
          let x_3635 : i32 = u_xlati11;
          let x_3639 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3632 + 3i) / 4i)][((x_3635 + 3i) % 4i)];
          let x_3641 : vec2<f32> = (vec2<f32>(x_3630.x, x_3630.y) + vec2<f32>(x_3639.x, x_3639.y));
          let x_3642 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3641.x, x_3641.y, x_3642.z, x_3642.w);
          let x_3644 : vec4<f32> = u_xlat12;
          let x_3647 : vec2<f32> = ((vec2<f32>(x_3644.x, x_3644.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3648 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3647.x, x_3647.y, x_3648.z, x_3648.w);
          let x_3650 : vec4<f32> = u_xlat12;
          let x_3652 : vec2<f32> = fract(vec2<f32>(x_3650.x, x_3650.y));
          let x_3653 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3652.x, x_3652.y, x_3653.z, x_3653.w);
          let x_3655 : i32 = u_xlati82;
          let x_3657 : vec4<f32> = x_1575.x_AdditionalLightsCookieAtlasUVRects[x_3655];
          let x_3659 : vec4<f32> = u_xlat12;
          let x_3662 : i32 = u_xlati82;
          let x_3664 : vec4<f32> = x_1575.x_AdditionalLightsCookieAtlasUVRects[x_3662];
          let x_3666 : vec2<f32> = ((vec2<f32>(x_3657.x, x_3657.y) * vec2<f32>(x_3659.x, x_3659.y)) + vec2<f32>(x_3664.z, x_3664.w));
          let x_3667 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3666.x, x_3666.y, x_3667.z);
        } else {
          let x_3670 : vec3<f32> = vs_TEXCOORD7;
          let x_3672 : i32 = u_xlati11;
          let x_3675 : i32 = u_xlati11;
          let x_3679 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3672 + 1i) / 4i)][((x_3675 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3670.y, x_3670.y, x_3670.y, x_3670.y) * x_3679);
          let x_3681 : i32 = u_xlati11;
          let x_3683 : i32 = u_xlati11;
          let x_3686 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[(x_3681 / 4i)][(x_3683 % 4i)];
          let x_3687 : vec3<f32> = vs_TEXCOORD7;
          let x_3690 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3686 * vec4<f32>(x_3687.x, x_3687.x, x_3687.x, x_3687.x)) + x_3690);
          let x_3692 : i32 = u_xlati11;
          let x_3695 : i32 = u_xlati11;
          let x_3699 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3692 + 2i) / 4i)][((x_3695 + 2i) % 4i)];
          let x_3700 : vec3<f32> = vs_TEXCOORD7;
          let x_3703 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3699 * vec4<f32>(x_3700.z, x_3700.z, x_3700.z, x_3700.z)) + x_3703);
          let x_3705 : vec4<f32> = u_xlat12;
          let x_3706 : i32 = u_xlati11;
          let x_3709 : i32 = u_xlati11;
          let x_3713 : vec4<f32> = x_1575.x_AdditionalLightsWorldToLights[((x_3706 + 3i) / 4i)][((x_3709 + 3i) % 4i)];
          u_xlat12 = (x_3705 + x_3713);
          let x_3715 : vec4<f32> = u_xlat12;
          let x_3717 : vec4<f32> = u_xlat12;
          let x_3719 : vec3<f32> = (vec3<f32>(x_3715.x, x_3715.y, x_3715.z) / vec3<f32>(x_3717.w, x_3717.w, x_3717.w));
          let x_3720 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3719.x, x_3719.y, x_3719.z, x_3720.w);
          let x_3722 : vec4<f32> = u_xlat12;
          let x_3724 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3722.x, x_3722.y, x_3722.z), vec3<f32>(x_3724.x, x_3724.y, x_3724.z));
          let x_3727 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3727);
          let x_3729 : f32 = u_xlat87;
          let x_3731 : vec4<f32> = u_xlat12;
          let x_3733 : vec3<f32> = (vec3<f32>(x_3729, x_3729, x_3729) * vec3<f32>(x_3731.x, x_3731.y, x_3731.z));
          let x_3734 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3733.x, x_3733.y, x_3733.z, x_3734.w);
          let x_3736 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3736.x, x_3736.y, x_3736.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3741 : f32 = u_xlat87;
          u_xlat87 = max(x_3741, 0.00000099999999747524f);
          let x_3744 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3744);
          let x_3746 : f32 = u_xlat87;
          let x_3748 : vec4<f32> = u_xlat12;
          let x_3750 : vec3<f32> = (vec3<f32>(x_3746, x_3746, x_3746) * vec3<f32>(x_3748.z, x_3748.x, x_3748.y));
          let x_3751 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3750.x, x_3750.y, x_3750.z, x_3751.w);
          let x_3754 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3754);
          let x_3758 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3758, 0.0f, 1.0f);
          let x_3761 : vec4<f32> = u_xlat13;
          let x_3763 : vec4<bool> = (vec4<f32>(x_3761.y, x_3761.y, x_3761.y, x_3761.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3764 : vec2<bool> = vec2<bool>(x_3763.x, x_3763.w);
          let x_3765 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3764.x, x_3765.y, x_3765.z, x_3764.y);
          let x_3768 : bool = u_xlatb11.x;
          if (x_3768) {
            let x_3773 : f32 = u_xlat13.x;
            x_3769 = x_3773;
          } else {
            let x_3776 : f32 = u_xlat13.x;
            x_3769 = -(x_3776);
          }
          let x_3778 : f32 = x_3769;
          u_xlat11.x = x_3778;
          let x_3781 : bool = u_xlatb11.w;
          if (x_3781) {
            let x_3786 : f32 = u_xlat13.x;
            x_3782 = x_3786;
          } else {
            let x_3789 : f32 = u_xlat13.x;
            x_3782 = -(x_3789);
          }
          let x_3791 : f32 = x_3782;
          u_xlat11.w = x_3791;
          let x_3793 : vec4<f32> = u_xlat12;
          let x_3795 : f32 = u_xlat87;
          let x_3798 : vec4<f32> = u_xlat11;
          let x_3800 : vec2<f32> = ((vec2<f32>(x_3793.x, x_3793.y) * vec2<f32>(x_3795, x_3795)) + vec2<f32>(x_3798.x, x_3798.w));
          let x_3801 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3800.x, x_3801.y, x_3801.z, x_3800.y);
          let x_3803 : vec4<f32> = u_xlat11;
          let x_3806 : vec2<f32> = ((vec2<f32>(x_3803.x, x_3803.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3807 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3806.x, x_3807.y, x_3807.z, x_3806.y);
          let x_3809 : vec4<f32> = u_xlat11;
          let x_3813 : vec2<f32> = clamp(vec2<f32>(x_3809.x, x_3809.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3814 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3813.x, x_3814.y, x_3814.z, x_3813.y);
          let x_3816 : i32 = u_xlati82;
          let x_3818 : vec4<f32> = x_1575.x_AdditionalLightsCookieAtlasUVRects[x_3816];
          let x_3820 : vec4<f32> = u_xlat11;
          let x_3823 : i32 = u_xlati82;
          let x_3825 : vec4<f32> = x_1575.x_AdditionalLightsCookieAtlasUVRects[x_3823];
          let x_3827 : vec2<f32> = ((vec2<f32>(x_3818.x, x_3818.y) * vec2<f32>(x_3820.x, x_3820.w)) + vec2<f32>(x_3825.z, x_3825.w));
          let x_3828 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3827.x, x_3827.y, x_3828.z);
        }
      }
      let x_3835 : vec3<f32> = u_xlat37;
      let x_3837 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3835.x, x_3835.y), 0.0f);
      u_xlat11 = x_3837;
      let x_3839 : bool = u_xlatb30.y;
      if (x_3839) {
        let x_3844 : f32 = u_xlat11.w;
        x_3840 = x_3844;
      } else {
        let x_3847 : f32 = u_xlat11.x;
        x_3840 = x_3847;
      }
      let x_3848 : f32 = x_3840;
      u_xlat87 = x_3848;
      let x_3850 : bool = u_xlatb30.x;
      if (x_3850) {
        let x_3854 : vec4<f32> = u_xlat11;
        x_3851 = vec3<f32>(x_3854.x, x_3854.y, x_3854.z);
      } else {
        let x_3857 : f32 = u_xlat87;
        x_3851 = vec3<f32>(x_3857, x_3857, x_3857);
      }
      let x_3859 : vec3<f32> = x_3851;
      let x_3860 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3859.x, x_3859.y, x_3859.z, x_3860.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3866 : vec4<f32> = u_xlat11;
    let x_3868 : i32 = u_xlati82;
    let x_3870 : vec4<f32> = x_2033.x_AdditionalLightsColor[x_3868];
    let x_3872 : vec3<f32> = (vec3<f32>(x_3866.x, x_3866.y, x_3866.z) * vec3<f32>(x_3870.x, x_3870.y, x_3870.z));
    let x_3873 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3872.x, x_3872.y, x_3872.z, x_3873.w);
    let x_3875 : f32 = u_xlat83;
    let x_3876 : f32 = u_xlat85;
    u_xlat82 = (x_3875 * x_3876);
    let x_3878 : vec3<f32> = u_xlat27;
    let x_3879 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(x_3878, vec3<f32>(x_3879.x, x_3879.y, x_3879.z));
    let x_3882 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3882, 0.0f, 1.0f);
    let x_3884 : f32 = u_xlat82;
    let x_3885 : f32 = u_xlat83;
    u_xlat82 = (x_3884 * x_3885);
    let x_3887 : f32 = u_xlat82;
    let x_3889 : vec4<f32> = u_xlat11;
    let x_3891 : vec3<f32> = (vec3<f32>(x_3887, x_3887, x_3887) * vec3<f32>(x_3889.x, x_3889.y, x_3889.z));
    let x_3892 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3891.x, x_3891.y, x_3891.z, x_3892.w);
    let x_3894 : vec4<f32> = u_xlat9;
    let x_3896 : f32 = u_xlat84;
    let x_3899 : vec4<f32> = u_xlat6;
    let x_3901 : vec3<f32> = ((vec3<f32>(x_3894.x, x_3894.y, x_3894.z) * vec3<f32>(x_3896, x_3896, x_3896)) + vec3<f32>(x_3899.x, x_3899.y, x_3899.z));
    let x_3902 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3901.x, x_3901.y, x_3901.z, x_3902.w);
    let x_3904 : vec4<f32> = u_xlat9;
    let x_3906 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3904.x, x_3904.y, x_3904.z), vec3<f32>(x_3906.x, x_3906.y, x_3906.z));
    let x_3909 : f32 = u_xlat82;
    u_xlat82 = max(x_3909, 1.17549435e-38f);
    let x_3911 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_3911);
    let x_3913 : f32 = u_xlat82;
    let x_3915 : vec4<f32> = u_xlat9;
    let x_3917 : vec3<f32> = (vec3<f32>(x_3913, x_3913, x_3913) * vec3<f32>(x_3915.x, x_3915.y, x_3915.z));
    let x_3918 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3917.x, x_3917.y, x_3917.z, x_3918.w);
    let x_3920 : vec3<f32> = u_xlat27;
    let x_3921 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(x_3920, vec3<f32>(x_3921.x, x_3921.y, x_3921.z));
    let x_3924 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3924, 0.0f, 1.0f);
    let x_3926 : vec4<f32> = u_xlat10;
    let x_3928 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3926.x, x_3926.y, x_3926.z), vec3<f32>(x_3928.x, x_3928.y, x_3928.z));
    let x_3931 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3931, 0.0f, 1.0f);
    let x_3933 : f32 = u_xlat82;
    let x_3934 : f32 = u_xlat82;
    u_xlat82 = (x_3933 * x_3934);
    let x_3936 : f32 = u_xlat82;
    let x_3938 : f32 = u_xlat8.x;
    u_xlat82 = ((x_3936 * x_3938) + 1.00001001358032226562f);
    let x_3941 : f32 = u_xlat83;
    let x_3942 : f32 = u_xlat83;
    u_xlat83 = (x_3941 * x_3942);
    let x_3944 : f32 = u_xlat82;
    let x_3945 : f32 = u_xlat82;
    u_xlat82 = (x_3944 * x_3945);
    let x_3947 : f32 = u_xlat83;
    u_xlat83 = max(x_3947, 0.10000000149011611938f);
    let x_3949 : f32 = u_xlat82;
    let x_3950 : f32 = u_xlat83;
    u_xlat82 = (x_3949 * x_3950);
    let x_3953 : f32 = u_xlat3.x;
    let x_3954 : f32 = u_xlat82;
    u_xlat82 = (x_3953 * x_3954);
    let x_3956 : f32 = u_xlat4;
    let x_3957 : f32 = u_xlat82;
    u_xlat82 = (x_3956 / x_3957);
    let x_3959 : vec4<f32> = u_xlat0;
    let x_3961 : f32 = u_xlat82;
    let x_3964 : vec3<f32> = u_xlat29;
    let x_3965 : vec3<f32> = ((vec3<f32>(x_3959.x, x_3959.y, x_3959.z) * vec3<f32>(x_3961, x_3961, x_3961)) + x_3964);
    let x_3966 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
    let x_3968 : vec4<f32> = u_xlat9;
    let x_3970 : vec4<f32> = u_xlat11;
    let x_3973 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_3968.x, x_3968.y, x_3968.z) * vec3<f32>(x_3970.x, x_3970.y, x_3970.z)) + x_3973);

    continuing {
      let x_3975 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3975 + bitcast<u32>(1i));
    }
  }
  let x_3977 : vec4<f32> = u_xlat7;
  let x_3979 : vec4<f32> = u_xlat5;
  let x_3982 : vec4<f32> = u_xlat2;
  let x_3984 : vec3<f32> = ((vec3<f32>(x_3977.x, x_3977.y, x_3977.z) * vec3<f32>(x_3979.x, x_3979.y, x_3979.z)) + vec3<f32>(x_3982.x, x_3982.y, x_3982.z));
  let x_3985 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3984.x, x_3984.y, x_3984.z, x_3985.w);
  let x_3989 : vec3<f32> = u_xlat34;
  let x_3990 : vec4<f32> = u_xlat0;
  let x_3992 : vec3<f32> = (x_3989 + vec3<f32>(x_3990.x, x_3990.y, x_3990.z));
  let x_3993 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3992.x, x_3992.y, x_3992.z, x_3993.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


