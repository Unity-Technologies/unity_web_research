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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb29 : bool;

@group(1) @binding(3) var<uniform> x_224 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb79 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat80 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1657 : UnityPerDraw;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_1896 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

var<private> u_xlatb80 : bool;

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
  var x_1532 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2039 : f32;
  var x_2050 : f32;
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
  u_xlat26.x = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_88 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat26;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * vec3<f32>(x_93.x, x_93.y, x_93.z));
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
  let x_125 : vec3<f32> = u_xlat26;
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
  u_xlat77 = max(x_144, 0.00009999999747378752f);
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : f32 = u_xlat77;
  let x_151 : vec3<f32> = (vec3<f32>(x_147.x, x_147.y, x_147.z) / vec3<f32>(x_149, x_149, x_149));
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : f32 = u_xlat1;
  u_xlat77 = ((-(x_154) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_159 : f32 = u_xlat77;
  u_xlat3.x = (-(x_159) + 1.0f);
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : f32 = u_xlat77;
  u_xlat28 = (vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167, x_167, x_167));
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
  u_xlat77 = (x_191 * x_192);
  let x_194 : f32 = u_xlat77;
  u_xlat77 = max(x_194, 0.0078125f);
  let x_198 : f32 = u_xlat77;
  let x_199 : f32 = u_xlat77;
  u_xlat4 = (x_198 * x_199);
  let x_203 : f32 = u_xlat0.w;
  let x_205 : f32 = u_xlat3.x;
  u_xlat75 = (x_203 + x_205);
  let x_207 : f32 = u_xlat75;
  u_xlat75 = clamp(x_207, 0.0f, 1.0f);
  let x_209 : f32 = u_xlat77;
  u_xlat3.x = ((x_209 * 4.0f) + 2.0f);
  let x_228 : f32 = x_224.x_MainLightShadowParams.y;
  u_xlatb29 = (0.0f < x_228);
  let x_230 : bool = u_xlatb29;
  if (x_230) {
    let x_234 : f32 = x_224.x_MainLightShadowParams.y;
    u_xlatb29 = (x_234 == 1.0f);
    let x_236 : bool = u_xlatb29;
    if (x_236) {
      let x_241 : vec4<f32> = vs_TEXCOORD8;
      let x_246 : vec4<f32> = x_224.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_241.x, x_241.y, x_241.x, x_241.y) + x_246);
      let x_250 : vec4<f32> = u_xlat5;
      let x_251 : vec2<f32> = vec2<f32>(x_250.x, x_250.y);
      let x_255 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_251.x, x_251.y, x_255);
      let x_268 : vec3<f32> = txVec0;
      let x_270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_268.xy, x_268.z);
      u_xlat6.x = x_270;
      let x_273 : vec4<f32> = u_xlat5;
      let x_274 : vec2<f32> = vec2<f32>(x_273.z, x_273.w);
      let x_276 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_274.x, x_274.y, x_276);
      let x_283 : vec3<f32> = txVec1;
      let x_285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_283.xy, x_283.z);
      u_xlat6.y = x_285;
      let x_287 : vec4<f32> = vs_TEXCOORD8;
      let x_291 : vec4<f32> = x_224.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_287.x, x_287.y, x_287.x, x_287.y) + x_291);
      let x_294 : vec4<f32> = u_xlat5;
      let x_295 : vec2<f32> = vec2<f32>(x_294.x, x_294.y);
      let x_297 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_295.x, x_295.y, x_297);
      let x_304 : vec3<f32> = txVec2;
      let x_306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_304.xy, x_304.z);
      u_xlat6.z = x_306;
      let x_309 : vec4<f32> = u_xlat5;
      let x_310 : vec2<f32> = vec2<f32>(x_309.z, x_309.w);
      let x_312 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_310.x, x_310.y, x_312);
      let x_319 : vec3<f32> = txVec3;
      let x_321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_319.xy, x_319.z);
      u_xlat6.w = x_321;
      let x_324 : vec4<f32> = u_xlat6;
      u_xlat29.x = dot(x_324, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_332 : f32 = x_224.x_MainLightShadowParams.y;
      u_xlatb54 = (x_332 == 2.0f);
      let x_334 : bool = u_xlatb54;
      if (x_334) {
        let x_339 : vec4<f32> = vs_TEXCOORD8;
        let x_343 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        u_xlat54 = ((vec2<f32>(x_339.x, x_339.y) * vec2<f32>(x_343.z, x_343.w)) + vec2<f32>(0.5f, 0.5f));
        let x_348 : vec2<f32> = u_xlat54;
        u_xlat54 = floor(x_348);
        let x_350 : vec4<f32> = vs_TEXCOORD8;
        let x_353 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_356 : vec2<f32> = u_xlat54;
        let x_358 : vec2<f32> = ((vec2<f32>(x_350.x, x_350.y) * vec2<f32>(x_353.z, x_353.w)) + -(x_356));
        let x_359 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_359.z, x_359.w);
        let x_361 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_361.x, x_361.x, x_361.y, x_361.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_366 : vec4<f32> = u_xlat6;
        let x_368 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_366.x, x_366.x, x_366.z, x_366.z) * vec4<f32>(x_368.x, x_368.x, x_368.z, x_368.z));
        let x_372 : vec4<f32> = u_xlat7;
        u_xlat55 = (vec2<f32>(x_372.y, x_372.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_377 : vec4<f32> = u_xlat7;
        let x_380 : vec4<f32> = u_xlat5;
        let x_383 : vec2<f32> = ((vec2<f32>(x_377.x, x_377.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_380.x, x_380.y)));
        let x_384 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_383.x, x_384.y, x_383.y, x_384.w);
        let x_386 : vec4<f32> = u_xlat5;
        let x_390 : vec2<f32> = (-(vec2<f32>(x_386.x, x_386.y)) + vec2<f32>(1.0f, 1.0f));
        let x_391 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
        let x_394 : vec4<f32> = u_xlat5;
        u_xlat57 = min(vec2<f32>(x_394.x, x_394.y), vec2<f32>(0.0f, 0.0f));
        let x_398 : vec2<f32> = u_xlat57;
        let x_400 : vec2<f32> = u_xlat57;
        let x_402 : vec4<f32> = u_xlat7;
        u_xlat57 = ((-(x_398) * x_400) + vec2<f32>(x_402.x, x_402.y));
        let x_405 : vec4<f32> = u_xlat5;
        let x_407 : vec2<f32> = max(vec2<f32>(x_405.x, x_405.y), vec2<f32>(0.0f, 0.0f));
        let x_408 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
        let x_410 : vec4<f32> = u_xlat5;
        let x_413 : vec4<f32> = u_xlat5;
        let x_416 : vec4<f32> = u_xlat6;
        let x_418 : vec2<f32> = ((-(vec2<f32>(x_410.x, x_410.y)) * vec2<f32>(x_413.x, x_413.y)) + vec2<f32>(x_416.y, x_416.w));
        let x_419 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_421 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_421 + vec2<f32>(1.0f, 1.0f));
        let x_423 : vec4<f32> = u_xlat5;
        let x_425 : vec2<f32> = (vec2<f32>(x_423.x, x_423.y) + vec2<f32>(1.0f, 1.0f));
        let x_426 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_429 : vec4<f32> = u_xlat6;
        let x_433 : vec2<f32> = (vec2<f32>(x_429.x, x_429.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_434 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
        let x_437 : vec4<f32> = u_xlat7;
        let x_439 : vec2<f32> = (vec2<f32>(x_437.x, x_437.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_440 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec2<f32> = u_xlat57;
        let x_443 : vec2<f32> = (x_442 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_444 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_447 : vec4<f32> = u_xlat5;
        let x_449 : vec2<f32> = (vec2<f32>(x_447.x, x_447.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_450 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_452 : vec4<f32> = u_xlat6;
        let x_454 : vec2<f32> = (vec2<f32>(x_452.y, x_452.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_455 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_458 : f32 = u_xlat7.x;
        u_xlat8.z = x_458;
        let x_461 : f32 = u_xlat5.x;
        u_xlat8.w = x_461;
        let x_464 : f32 = u_xlat10.x;
        u_xlat9.z = x_464;
        let x_467 : f32 = u_xlat55.x;
        u_xlat9.w = x_467;
        let x_469 : vec4<f32> = u_xlat8;
        let x_471 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_469.z, x_469.w, x_469.x, x_469.z) + vec4<f32>(x_471.z, x_471.w, x_471.x, x_471.z));
        let x_475 : f32 = u_xlat8.y;
        u_xlat7.z = x_475;
        let x_478 : f32 = u_xlat5.y;
        u_xlat7.w = x_478;
        let x_481 : f32 = u_xlat9.y;
        u_xlat10.z = x_481;
        let x_484 : f32 = u_xlat55.y;
        u_xlat10.w = x_484;
        let x_486 : vec4<f32> = u_xlat7;
        let x_488 : vec4<f32> = u_xlat10;
        let x_490 : vec3<f32> = (vec3<f32>(x_486.z, x_486.y, x_486.w) + vec3<f32>(x_488.z, x_488.y, x_488.w));
        let x_491 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat9;
        let x_495 : vec4<f32> = u_xlat6;
        let x_497 : vec3<f32> = (vec3<f32>(x_493.x, x_493.z, x_493.w) / vec3<f32>(x_495.z, x_495.w, x_495.y));
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat7;
        let x_505 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat10;
        let x_510 : vec4<f32> = u_xlat5;
        let x_512 : vec3<f32> = (vec3<f32>(x_508.z, x_508.y, x_508.w) / vec3<f32>(x_510.x, x_510.y, x_510.z));
        let x_513 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
        let x_515 : vec4<f32> = u_xlat8;
        let x_517 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_518 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
        let x_520 : vec4<f32> = u_xlat7;
        let x_523 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_525 : vec3<f32> = (vec3<f32>(x_520.y, x_520.x, x_520.z) * vec3<f32>(x_523.x, x_523.x, x_523.x));
        let x_526 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
        let x_528 : vec4<f32> = u_xlat8;
        let x_531 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_533 : vec3<f32> = (vec3<f32>(x_528.x, x_528.y, x_528.z) * vec3<f32>(x_531.y, x_531.y, x_531.y));
        let x_534 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
        let x_537 : f32 = u_xlat8.x;
        u_xlat7.w = x_537;
        let x_539 : vec2<f32> = u_xlat54;
        let x_542 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_545 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y) * vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.y)) + vec4<f32>(x_545.y, x_545.w, x_545.x, x_545.w));
        let x_548 : vec2<f32> = u_xlat54;
        let x_550 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_553 : vec4<f32> = u_xlat7;
        let x_555 : vec2<f32> = ((x_548 * vec2<f32>(x_550.x, x_550.y)) + vec2<f32>(x_553.z, x_553.w));
        let x_556 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
        let x_559 : f32 = u_xlat7.y;
        u_xlat8.w = x_559;
        let x_561 : vec4<f32> = u_xlat8;
        let x_562 : vec2<f32> = vec2<f32>(x_561.y, x_561.z);
        let x_563 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_563.x, x_562.x, x_563.z, x_562.y);
        let x_566 : vec2<f32> = u_xlat54;
        let x_569 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_572 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_566.x, x_566.y, x_566.x, x_566.y) * vec4<f32>(x_569.x, x_569.y, x_569.x, x_569.y)) + vec4<f32>(x_572.x, x_572.y, x_572.z, x_572.y));
        let x_575 : vec2<f32> = u_xlat54;
        let x_578 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_581 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y) * vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y)) + vec4<f32>(x_581.w, x_581.y, x_581.w, x_581.z));
        let x_584 : vec2<f32> = u_xlat54;
        let x_587 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_590 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y) * vec4<f32>(x_587.x, x_587.y, x_587.x, x_587.y)) + vec4<f32>(x_590.x, x_590.w, x_590.z, x_590.w));
        let x_594 : vec4<f32> = u_xlat5;
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_594.x, x_594.x, x_594.x, x_594.y) * vec4<f32>(x_596.z, x_596.w, x_596.y, x_596.z));
        let x_600 : vec4<f32> = u_xlat5;
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_600.y, x_600.y, x_600.z, x_600.z) * x_602);
        let x_605 : f32 = u_xlat5.z;
        let x_607 : f32 = u_xlat6.y;
        u_xlat54.x = (x_605 * x_607);
        let x_611 : vec4<f32> = u_xlat9;
        let x_612 : vec2<f32> = vec2<f32>(x_611.x, x_611.y);
        let x_614 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_612.x, x_612.y, x_614);
        let x_622 : vec3<f32> = txVec4;
        let x_624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_622.xy, x_622.z);
        u_xlat79 = x_624;
        let x_626 : vec4<f32> = u_xlat9;
        let x_627 : vec2<f32> = vec2<f32>(x_626.z, x_626.w);
        let x_629 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_627.x, x_627.y, x_629);
        let x_636 : vec3<f32> = txVec5;
        let x_638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_636.xy, x_636.z);
        u_xlat5.x = x_638;
        let x_641 : f32 = u_xlat5.x;
        let x_643 : f32 = u_xlat12.y;
        u_xlat5.x = (x_641 * x_643);
        let x_647 : f32 = u_xlat12.x;
        let x_648 : f32 = u_xlat79;
        let x_651 : f32 = u_xlat5.x;
        u_xlat79 = ((x_647 * x_648) + x_651);
        let x_654 : vec4<f32> = u_xlat10;
        let x_655 : vec2<f32> = vec2<f32>(x_654.x, x_654.y);
        let x_657 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_655.x, x_655.y, x_657);
        let x_664 : vec3<f32> = txVec6;
        let x_666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_664.xy, x_664.z);
        u_xlat5.x = x_666;
        let x_669 : f32 = u_xlat12.z;
        let x_671 : f32 = u_xlat5.x;
        let x_673 : f32 = u_xlat79;
        u_xlat79 = ((x_669 * x_671) + x_673);
        let x_676 : vec4<f32> = u_xlat8;
        let x_677 : vec2<f32> = vec2<f32>(x_676.x, x_676.y);
        let x_679 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_677.x, x_677.y, x_679);
        let x_686 : vec3<f32> = txVec7;
        let x_688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_686.xy, x_686.z);
        u_xlat5.x = x_688;
        let x_691 : f32 = u_xlat12.w;
        let x_693 : f32 = u_xlat5.x;
        let x_695 : f32 = u_xlat79;
        u_xlat79 = ((x_691 * x_693) + x_695);
        let x_698 : vec4<f32> = u_xlat11;
        let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
        let x_701 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_699.x, x_699.y, x_701);
        let x_708 : vec3<f32> = txVec8;
        let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_708.xy, x_708.z);
        u_xlat5.x = x_710;
        let x_713 : f32 = u_xlat13.x;
        let x_715 : f32 = u_xlat5.x;
        let x_717 : f32 = u_xlat79;
        u_xlat79 = ((x_713 * x_715) + x_717);
        let x_720 : vec4<f32> = u_xlat11;
        let x_721 : vec2<f32> = vec2<f32>(x_720.z, x_720.w);
        let x_723 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_721.x, x_721.y, x_723);
        let x_730 : vec3<f32> = txVec9;
        let x_732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_730.xy, x_730.z);
        u_xlat5.x = x_732;
        let x_735 : f32 = u_xlat13.y;
        let x_737 : f32 = u_xlat5.x;
        let x_739 : f32 = u_xlat79;
        u_xlat79 = ((x_735 * x_737) + x_739);
        let x_742 : vec4<f32> = u_xlat8;
        let x_743 : vec2<f32> = vec2<f32>(x_742.z, x_742.w);
        let x_745 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_743.x, x_743.y, x_745);
        let x_752 : vec3<f32> = txVec10;
        let x_754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_752.xy, x_752.z);
        u_xlat5.x = x_754;
        let x_757 : f32 = u_xlat13.z;
        let x_759 : f32 = u_xlat5.x;
        let x_761 : f32 = u_xlat79;
        u_xlat79 = ((x_757 * x_759) + x_761);
        let x_764 : vec4<f32> = u_xlat7;
        let x_765 : vec2<f32> = vec2<f32>(x_764.x, x_764.y);
        let x_767 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_774 : vec3<f32> = txVec11;
        let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_774.xy, x_774.z);
        u_xlat5.x = x_776;
        let x_779 : f32 = u_xlat13.w;
        let x_781 : f32 = u_xlat5.x;
        let x_783 : f32 = u_xlat79;
        u_xlat79 = ((x_779 * x_781) + x_783);
        let x_786 : vec4<f32> = u_xlat7;
        let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
        let x_789 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_796 : vec3<f32> = txVec12;
        let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_796.xy, x_796.z);
        u_xlat5.x = x_798;
        let x_801 : f32 = u_xlat54.x;
        let x_803 : f32 = u_xlat5.x;
        let x_805 : f32 = u_xlat79;
        u_xlat29.x = ((x_801 * x_803) + x_805);
      } else {
        let x_809 : vec4<f32> = vs_TEXCOORD8;
        let x_812 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        u_xlat54 = ((vec2<f32>(x_809.x, x_809.y) * vec2<f32>(x_812.z, x_812.w)) + vec2<f32>(0.5f, 0.5f));
        let x_816 : vec2<f32> = u_xlat54;
        u_xlat54 = floor(x_816);
        let x_818 : vec4<f32> = vs_TEXCOORD8;
        let x_821 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_824 : vec2<f32> = u_xlat54;
        let x_826 : vec2<f32> = ((vec2<f32>(x_818.x, x_818.y) * vec2<f32>(x_821.z, x_821.w)) + -(x_824));
        let x_827 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_829.x, x_829.x, x_829.y, x_829.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_832 : vec4<f32> = u_xlat6;
        let x_834 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_832.x, x_832.x, x_832.z, x_832.z) * vec4<f32>(x_834.x, x_834.x, x_834.z, x_834.z));
        let x_837 : vec4<f32> = u_xlat7;
        let x_841 : vec2<f32> = (vec2<f32>(x_837.y, x_837.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_842 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_842.x, x_841.x, x_842.z, x_841.y);
        let x_844 : vec4<f32> = u_xlat7;
        let x_847 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_844.x, x_844.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_847.x, x_847.y)));
        let x_851 : vec4<f32> = u_xlat5;
        let x_854 : vec2<f32> = (-(vec2<f32>(x_851.x, x_851.y)) + vec2<f32>(1.0f, 1.0f));
        let x_855 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_854.x, x_855.y, x_854.y, x_855.w);
        let x_857 : vec4<f32> = u_xlat5;
        let x_859 : vec2<f32> = min(vec2<f32>(x_857.x, x_857.y), vec2<f32>(0.0f, 0.0f));
        let x_860 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec4<f32> = u_xlat7;
        let x_865 : vec4<f32> = u_xlat7;
        let x_868 : vec4<f32> = u_xlat6;
        let x_870 : vec2<f32> = ((-(vec2<f32>(x_862.x, x_862.y)) * vec2<f32>(x_865.x, x_865.y)) + vec2<f32>(x_868.x, x_868.z));
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_870.x, x_871.y, x_870.y, x_871.w);
        let x_873 : vec4<f32> = u_xlat5;
        let x_875 : vec2<f32> = max(vec2<f32>(x_873.x, x_873.y), vec2<f32>(0.0f, 0.0f));
        let x_876 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat7;
        let x_881 : vec4<f32> = u_xlat7;
        let x_884 : vec4<f32> = u_xlat6;
        let x_886 : vec2<f32> = ((-(vec2<f32>(x_878.x, x_878.y)) * vec2<f32>(x_881.x, x_881.y)) + vec2<f32>(x_884.y, x_884.w));
        let x_887 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_887.x, x_886.x, x_887.z, x_886.y);
        let x_889 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_889 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_893 : f32 = u_xlat6.y;
        u_xlat7.z = (x_893 * 0.08163200318813323975f);
        let x_897 : vec2<f32> = u_xlat55;
        let x_900 : vec2<f32> = (vec2<f32>(x_897.y, x_897.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_901 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat6;
        u_xlat55 = (vec2<f32>(x_903.x, x_903.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_907 : f32 = u_xlat6.w;
        u_xlat9.z = (x_907 * 0.08163200318813323975f);
        let x_911 : f32 = u_xlat9.y;
        u_xlat7.x = x_911;
        let x_913 : vec4<f32> = u_xlat5;
        let x_920 : vec2<f32> = ((vec2<f32>(x_913.x, x_913.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_921.x, x_920.x, x_921.z, x_920.y);
        let x_923 : vec4<f32> = u_xlat5;
        let x_927 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_928 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_927.x, x_928.y, x_927.y, x_928.w);
        let x_931 : f32 = u_xlat55.x;
        u_xlat6.y = x_931;
        let x_934 : f32 = u_xlat8.y;
        u_xlat6.w = x_934;
        let x_936 : vec4<f32> = u_xlat6;
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_936 + x_937);
        let x_939 : vec4<f32> = u_xlat5;
        let x_942 : vec2<f32> = ((vec2<f32>(x_939.y, x_939.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_943 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_943.x, x_942.x, x_943.z, x_942.y);
        let x_945 : vec4<f32> = u_xlat5;
        let x_948 : vec2<f32> = ((vec2<f32>(x_945.y, x_945.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_948.x, x_949.y, x_948.y, x_949.w);
        let x_952 : f32 = u_xlat55.y;
        u_xlat8.y = x_952;
        let x_954 : vec4<f32> = u_xlat8;
        let x_955 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_954 + x_955);
        let x_957 : vec4<f32> = u_xlat6;
        let x_958 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_957 / x_958);
        let x_960 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_960 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_966 : vec4<f32> = u_xlat8;
        let x_967 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_966 / x_967);
        let x_969 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_969 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_971 : vec4<f32> = u_xlat6;
        let x_974 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_971.w, x_971.x, x_971.y, x_971.z) * vec4<f32>(x_974.x, x_974.x, x_974.x, x_974.x));
        let x_977 : vec4<f32> = u_xlat8;
        let x_980 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_977.x, x_977.w, x_977.y, x_977.z) * vec4<f32>(x_980.y, x_980.y, x_980.y, x_980.y));
        let x_983 : vec4<f32> = u_xlat6;
        let x_984 : vec3<f32> = vec3<f32>(x_983.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_984.z);
        let x_988 : f32 = u_xlat8.x;
        u_xlat9.y = x_988;
        let x_990 : vec2<f32> = u_xlat54;
        let x_993 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y) * vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y)) + vec4<f32>(x_996.x, x_996.y, x_996.z, x_996.y));
        let x_999 : vec2<f32> = u_xlat54;
        let x_1001 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat9;
        let x_1006 : vec2<f32> = ((x_999 * vec2<f32>(x_1001.x, x_1001.y)) + vec2<f32>(x_1004.w, x_1004.y));
        let x_1007 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1010 : f32 = u_xlat9.y;
        u_xlat6.y = x_1010;
        let x_1013 : f32 = u_xlat8.z;
        u_xlat9.y = x_1013;
        let x_1015 : vec2<f32> = u_xlat54;
        let x_1018 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y) * vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y)) + vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1021.y));
        let x_1025 : vec2<f32> = u_xlat54;
        let x_1027 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1025 * vec2<f32>(x_1027.x, x_1027.y)) + vec2<f32>(x_1030.w, x_1030.y));
        let x_1034 : f32 = u_xlat9.y;
        u_xlat6.z = x_1034;
        let x_1036 : vec2<f32> = u_xlat54;
        let x_1039 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1036.x, x_1036.y, x_1036.x, x_1036.y) * vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y)) + vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.z));
        let x_1046 : f32 = u_xlat8.w;
        u_xlat9.y = x_1046;
        let x_1049 : vec2<f32> = u_xlat54;
        let x_1052 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y) * vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y)) + vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.y));
        let x_1059 : vec2<f32> = u_xlat54;
        let x_1061 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat31 = ((x_1059 * vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(x_1064.w, x_1064.y));
        let x_1068 : f32 = u_xlat9.y;
        u_xlat6.w = x_1068;
        let x_1071 : vec2<f32> = u_xlat54;
        let x_1073 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat6;
        let x_1078 : vec2<f32> = ((x_1071 * vec2<f32>(x_1073.x, x_1073.y)) + vec2<f32>(x_1076.x, x_1076.w));
        let x_1079 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1082 : vec3<f32> = vec3<f32>(x_1081.x, x_1081.z, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1083.y, x_1082.y, x_1082.z);
        let x_1085 : vec2<f32> = u_xlat54;
        let x_1088 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1091.y));
        let x_1095 : vec2<f32> = u_xlat54;
        let x_1097 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat8;
        u_xlat58 = ((x_1095 * vec2<f32>(x_1097.x, x_1097.y)) + vec2<f32>(x_1100.w, x_1100.y));
        let x_1104 : f32 = u_xlat6.x;
        u_xlat8.x = x_1104;
        let x_1106 : vec2<f32> = u_xlat54;
        let x_1108 : vec4<f32> = x_224.x_MainLightShadowmapSize;
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat54 = ((x_1106 * vec2<f32>(x_1108.x, x_1108.y)) + vec2<f32>(x_1111.x, x_1111.y));
        let x_1115 : vec4<f32> = u_xlat5;
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1115.x, x_1115.x, x_1115.x, x_1115.x) * x_1117);
        let x_1120 : vec4<f32> = u_xlat5;
        let x_1122 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1120.y, x_1120.y, x_1120.y, x_1120.y) * x_1122);
        let x_1125 : vec4<f32> = u_xlat5;
        let x_1127 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1125.z, x_1125.z, x_1125.z, x_1125.z) * x_1127);
        let x_1129 : vec4<f32> = u_xlat5;
        let x_1131 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1129.w, x_1129.w, x_1129.w, x_1129.w) * x_1131);
        let x_1134 : vec4<f32> = u_xlat10;
        let x_1135 : vec2<f32> = vec2<f32>(x_1134.x, x_1134.y);
        let x_1137 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec13;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1144.xy, x_1144.z);
        u_xlat6.x = x_1146;
        let x_1149 : vec4<f32> = u_xlat10;
        let x_1150 : vec2<f32> = vec2<f32>(x_1149.z, x_1149.w);
        let x_1152 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
        let x_1160 : vec3<f32> = txVec14;
        let x_1162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1160.xy, x_1160.z);
        u_xlat81 = x_1162;
        let x_1163 : f32 = u_xlat81;
        let x_1165 : f32 = u_xlat16.y;
        u_xlat81 = (x_1163 * x_1165);
        let x_1168 : f32 = u_xlat16.x;
        let x_1170 : f32 = u_xlat6.x;
        let x_1172 : f32 = u_xlat81;
        u_xlat6.x = ((x_1168 * x_1170) + x_1172);
        let x_1176 : vec4<f32> = u_xlat11;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec15;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1186.xy, x_1186.z);
        u_xlat81 = x_1188;
        let x_1190 : f32 = u_xlat16.z;
        let x_1191 : f32 = u_xlat81;
        let x_1194 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1190 * x_1191) + x_1194);
        let x_1198 : vec4<f32> = u_xlat13;
        let x_1199 : vec2<f32> = vec2<f32>(x_1198.x, x_1198.y);
        let x_1201 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1199.x, x_1199.y, x_1201);
        let x_1208 : vec3<f32> = txVec16;
        let x_1210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1208.xy, x_1208.z);
        u_xlat81 = x_1210;
        let x_1212 : f32 = u_xlat16.w;
        let x_1213 : f32 = u_xlat81;
        let x_1216 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1212 * x_1213) + x_1216);
        let x_1220 : vec4<f32> = u_xlat12;
        let x_1221 : vec2<f32> = vec2<f32>(x_1220.x, x_1220.y);
        let x_1223 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1221.x, x_1221.y, x_1223);
        let x_1230 : vec3<f32> = txVec17;
        let x_1232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1230.xy, x_1230.z);
        u_xlat81 = x_1232;
        let x_1234 : f32 = u_xlat17.x;
        let x_1235 : f32 = u_xlat81;
        let x_1238 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1234 * x_1235) + x_1238);
        let x_1242 : vec4<f32> = u_xlat12;
        let x_1243 : vec2<f32> = vec2<f32>(x_1242.z, x_1242.w);
        let x_1245 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1252 : vec3<f32> = txVec18;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1252.xy, x_1252.z);
        u_xlat81 = x_1254;
        let x_1256 : f32 = u_xlat17.y;
        let x_1257 : f32 = u_xlat81;
        let x_1260 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1256 * x_1257) + x_1260);
        let x_1264 : vec2<f32> = u_xlat61;
        let x_1266 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec19;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat81 = x_1275;
        let x_1277 : f32 = u_xlat17.z;
        let x_1278 : f32 = u_xlat81;
        let x_1281 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1277 * x_1278) + x_1281);
        let x_1285 : vec4<f32> = u_xlat13;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.z, x_1285.w);
        let x_1288 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec20;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat81 = x_1297;
        let x_1299 : f32 = u_xlat17.w;
        let x_1300 : f32 = u_xlat81;
        let x_1303 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1299 * x_1300) + x_1303);
        let x_1307 : vec4<f32> = u_xlat14;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.x, x_1307.y);
        let x_1310 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec21;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat81 = x_1319;
        let x_1321 : f32 = u_xlat18.x;
        let x_1322 : f32 = u_xlat81;
        let x_1325 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1321 * x_1322) + x_1325);
        let x_1329 : vec4<f32> = u_xlat14;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.z, x_1329.w);
        let x_1332 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec22;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat81 = x_1341;
        let x_1343 : f32 = u_xlat18.y;
        let x_1344 : f32 = u_xlat81;
        let x_1347 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1343 * x_1344) + x_1347);
        let x_1351 : vec2<f32> = u_xlat31;
        let x_1353 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec23;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat31.x = x_1362;
        let x_1365 : f32 = u_xlat18.z;
        let x_1367 : f32 = u_xlat31.x;
        let x_1370 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1365 * x_1367) + x_1370);
        let x_1374 : vec4<f32> = u_xlat15;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec24;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat31.x = x_1386;
        let x_1389 : f32 = u_xlat18.w;
        let x_1391 : f32 = u_xlat31.x;
        let x_1394 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1389 * x_1391) + x_1394);
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.x, x_1398.y);
        let x_1401 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec25;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat31.x = x_1410;
        let x_1413 : f32 = u_xlat5.x;
        let x_1415 : f32 = u_xlat31.x;
        let x_1418 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1413 * x_1415) + x_1418);
        let x_1422 : vec4<f32> = u_xlat9;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.z, x_1422.w);
        let x_1425 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec26;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat6.x = x_1434;
        let x_1437 : f32 = u_xlat5.y;
        let x_1439 : f32 = u_xlat6.x;
        let x_1442 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1437 * x_1439) + x_1442);
        let x_1446 : vec2<f32> = u_xlat58;
        let x_1448 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1456 : vec3<f32> = txVec27;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat30 = x_1458;
        let x_1460 : f32 = u_xlat5.z;
        let x_1461 : f32 = u_xlat30;
        let x_1464 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1460 * x_1461) + x_1464);
        let x_1468 : vec2<f32> = u_xlat54;
        let x_1470 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec28;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat54.x = x_1479;
        let x_1482 : f32 = u_xlat5.w;
        let x_1484 : f32 = u_xlat54.x;
        let x_1487 : f32 = u_xlat5.x;
        u_xlat29.x = ((x_1482 * x_1484) + x_1487);
      }
    }
  } else {
    let x_1492 : vec4<f32> = vs_TEXCOORD8;
    let x_1493 : vec2<f32> = vec2<f32>(x_1492.x, x_1492.y);
    let x_1495 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
    let x_1502 : vec3<f32> = txVec29;
    let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
    u_xlat29.x = x_1504;
  }
  let x_1507 : f32 = x_224.x_MainLightShadowParams.x;
  u_xlat54.x = (-(x_1507) + 1.0f);
  let x_1512 : f32 = u_xlat29.x;
  let x_1514 : f32 = x_224.x_MainLightShadowParams.x;
  let x_1517 : f32 = u_xlat54.x;
  u_xlat29.x = ((x_1512 * x_1514) + x_1517);
  let x_1521 : f32 = vs_TEXCOORD8.z;
  u_xlatb54 = (0.0f >= x_1521);
  let x_1525 : f32 = vs_TEXCOORD8.z;
  u_xlatb79 = (x_1525 >= 1.0f);
  let x_1527 : bool = u_xlatb79;
  let x_1528 : bool = u_xlatb54;
  u_xlatb54 = (x_1527 | x_1528);
  let x_1530 : bool = u_xlatb54;
  if (x_1530) {
    x_1532 = 1.0f;
  } else {
    let x_1537 : f32 = u_xlat29.x;
    x_1532 = x_1537;
  }
  let x_1538 : f32 = x_1532;
  u_xlat29.x = x_1538;
  let x_1542 : vec3<f32> = vs_TEXCOORD7;
  let x_1546 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1548 : vec3<f32> = (x_1542 + -(x_1546));
  let x_1549 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
  let x_1551 : vec4<f32> = u_xlat5;
  let x_1553 : vec4<f32> = u_xlat5;
  u_xlat54.x = dot(vec3<f32>(x_1551.x, x_1551.y, x_1551.z), vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
  let x_1558 : f32 = u_xlat54.x;
  let x_1560 : f32 = x_224.x_MainLightShadowParams.z;
  let x_1563 : f32 = x_224.x_MainLightShadowParams.w;
  u_xlat79 = ((x_1558 * x_1560) + x_1563);
  let x_1565 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1565, 0.0f, 1.0f);
  let x_1568 : f32 = u_xlat29.x;
  u_xlat5.x = (-(x_1568) + 1.0f);
  let x_1572 : f32 = u_xlat79;
  let x_1574 : f32 = u_xlat5.x;
  let x_1577 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_1572 * x_1574) + x_1577);
  let x_1581 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1581;
  let x_1585 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1585;
  let x_1589 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1589;
  let x_1591 : vec4<f32> = u_xlat5;
  let x_1594 : vec3<f32> = u_xlat26;
  u_xlat79 = dot(-(vec3<f32>(x_1591.x, x_1591.y, x_1591.z)), x_1594);
  let x_1596 : f32 = u_xlat79;
  let x_1597 : f32 = u_xlat79;
  u_xlat79 = (x_1596 + x_1597);
  let x_1599 : vec3<f32> = u_xlat26;
  let x_1600 : f32 = u_xlat79;
  let x_1604 : vec4<f32> = u_xlat5;
  let x_1607 : vec3<f32> = ((x_1599 * -(vec3<f32>(x_1600, x_1600, x_1600))) + -(vec3<f32>(x_1604.x, x_1604.y, x_1604.z)));
  let x_1608 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
  let x_1610 : vec3<f32> = u_xlat26;
  let x_1611 : vec4<f32> = u_xlat5;
  u_xlat79 = dot(x_1610, vec3<f32>(x_1611.x, x_1611.y, x_1611.z));
  let x_1614 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1614, 0.0f, 1.0f);
  let x_1616 : f32 = u_xlat79;
  u_xlat79 = (-(x_1616) + 1.0f);
  let x_1619 : f32 = u_xlat79;
  let x_1620 : f32 = u_xlat79;
  u_xlat79 = (x_1619 * x_1620);
  let x_1622 : f32 = u_xlat79;
  let x_1623 : f32 = u_xlat79;
  u_xlat79 = (x_1622 * x_1623);
  let x_1626 : f32 = u_xlat1;
  u_xlat80 = ((-(x_1626) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1632 : f32 = u_xlat1;
  let x_1633 : f32 = u_xlat80;
  u_xlat1 = (x_1632 * x_1633);
  let x_1635 : f32 = u_xlat1;
  u_xlat1 = (x_1635 * 6.0f);
  let x_1646 : vec4<f32> = u_xlat6;
  let x_1648 : f32 = u_xlat1;
  let x_1649 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1646.x, x_1646.y, x_1646.z), x_1648);
  u_xlat6 = x_1649;
  let x_1651 : f32 = u_xlat6.w;
  u_xlat1 = (x_1651 + -1.0f);
  let x_1659 : f32 = x_1657.unity_SpecCube0_HDR.w;
  let x_1660 : f32 = u_xlat1;
  u_xlat1 = ((x_1659 * x_1660) + 1.0f);
  let x_1663 : f32 = u_xlat1;
  u_xlat1 = max(x_1663, 0.0f);
  let x_1665 : f32 = u_xlat1;
  u_xlat1 = log2(x_1665);
  let x_1667 : f32 = u_xlat1;
  let x_1669 : f32 = x_1657.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1667 * x_1669);
  let x_1671 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1671);
  let x_1673 : f32 = u_xlat1;
  let x_1675 : f32 = x_1657.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1673 * x_1675);
  let x_1677 : vec4<f32> = u_xlat6;
  let x_1679 : f32 = u_xlat1;
  let x_1681 : vec3<f32> = (vec3<f32>(x_1677.x, x_1677.y, x_1677.z) * vec3<f32>(x_1679, x_1679, x_1679));
  let x_1682 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
  let x_1684 : f32 = u_xlat77;
  let x_1686 : f32 = u_xlat77;
  let x_1690 : vec2<f32> = ((vec2<f32>(x_1684, x_1684) * vec2<f32>(x_1686, x_1686)) + vec2<f32>(-1.0f, 1.0f));
  let x_1691 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1690.x, x_1690.y, x_1691.z, x_1691.w);
  let x_1694 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1694);
  let x_1697 : vec4<f32> = u_xlat0;
  let x_1700 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1697.x, x_1697.y, x_1697.z)) + vec3<f32>(x_1700, x_1700, x_1700));
  let x_1703 : f32 = u_xlat79;
  let x_1705 : vec3<f32> = u_xlat32;
  let x_1707 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1703, x_1703, x_1703) * x_1705) + vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
  let x_1710 : f32 = u_xlat1;
  let x_1712 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1710, x_1710, x_1710) * x_1712);
  let x_1714 : vec4<f32> = u_xlat6;
  let x_1716 : vec3<f32> = u_xlat32;
  let x_1717 : vec3<f32> = (vec3<f32>(x_1714.x, x_1714.y, x_1714.z) * x_1716);
  let x_1718 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
  let x_1720 : vec4<f32> = u_xlat2;
  let x_1722 : vec3<f32> = u_xlat28;
  let x_1724 : vec4<f32> = u_xlat6;
  let x_1726 : vec3<f32> = ((vec3<f32>(x_1720.x, x_1720.y, x_1720.z) * x_1722) + vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
  let x_1730 : f32 = u_xlat29.x;
  let x_1733 : f32 = x_1657.unity_LightData.z;
  u_xlat75 = (x_1730 * x_1733);
  let x_1735 : vec3<f32> = u_xlat26;
  let x_1737 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_1735, vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
  let x_1740 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1740, 0.0f, 1.0f);
  let x_1742 : f32 = u_xlat75;
  let x_1743 : f32 = u_xlat1;
  u_xlat75 = (x_1742 * x_1743);
  let x_1745 : f32 = u_xlat75;
  let x_1749 : vec4<f32> = x_28.x_MainLightColor;
  let x_1751 : vec3<f32> = (vec3<f32>(x_1745, x_1745, x_1745) * vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
  let x_1752 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
  let x_1754 : vec4<f32> = u_xlat5;
  let x_1757 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (vec3<f32>(x_1754.x, x_1754.y, x_1754.z) + vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
  let x_1760 : vec3<f32> = u_xlat32;
  let x_1761 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1760, x_1761);
  let x_1763 : f32 = u_xlat75;
  u_xlat75 = max(x_1763, 1.17549435e-38f);
  let x_1766 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1766);
  let x_1768 : f32 = u_xlat75;
  let x_1770 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1768, x_1768, x_1768) * x_1770);
  let x_1772 : vec3<f32> = u_xlat26;
  let x_1773 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1772, x_1773);
  let x_1775 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1775, 0.0f, 1.0f);
  let x_1778 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1780 : vec3<f32> = u_xlat32;
  u_xlat1 = dot(vec3<f32>(x_1778.x, x_1778.y, x_1778.z), x_1780);
  let x_1782 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1782, 0.0f, 1.0f);
  let x_1784 : f32 = u_xlat75;
  let x_1785 : f32 = u_xlat75;
  u_xlat75 = (x_1784 * x_1785);
  let x_1787 : f32 = u_xlat75;
  let x_1789 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1787 * x_1789) + 1.00001001358032226562f);
  let x_1793 : f32 = u_xlat1;
  let x_1794 : f32 = u_xlat1;
  u_xlat1 = (x_1793 * x_1794);
  let x_1796 : f32 = u_xlat75;
  let x_1797 : f32 = u_xlat75;
  u_xlat75 = (x_1796 * x_1797);
  let x_1799 : f32 = u_xlat1;
  u_xlat1 = max(x_1799, 0.10000000149011611938f);
  let x_1802 : f32 = u_xlat75;
  let x_1803 : f32 = u_xlat1;
  u_xlat75 = (x_1802 * x_1803);
  let x_1806 : f32 = u_xlat3.x;
  let x_1807 : f32 = u_xlat75;
  u_xlat75 = (x_1806 * x_1807);
  let x_1809 : f32 = u_xlat4;
  let x_1810 : f32 = u_xlat75;
  u_xlat75 = (x_1809 / x_1810);
  let x_1812 : vec4<f32> = u_xlat0;
  let x_1814 : f32 = u_xlat75;
  let x_1817 : vec3<f32> = u_xlat28;
  u_xlat32 = ((vec3<f32>(x_1812.x, x_1812.y, x_1812.z) * vec3<f32>(x_1814, x_1814, x_1814)) + x_1817);
  let x_1821 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1823 : f32 = x_1657.unity_LightData.y;
  u_xlat75 = min(x_1821, x_1823);
  let x_1827 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1827));
  let x_1831 : f32 = u_xlat54.x;
  let x_1834 : f32 = x_224.x_AdditionalShadowFadeParams.x;
  let x_1837 : f32 = x_224.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1831 * x_1834) + x_1837);
  let x_1839 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1839, 0.0f, 1.0f);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1851 : u32 = u_xlatu_loop_1;
    let x_1852 : u32 = u_xlatu75;
    if ((x_1851 < x_1852)) {
    } else {
      break;
    }
    let x_1855 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_1855 >> 2u);
    let x_1859 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_1859 & 3u));
    let x_1862 : u32 = u_xlatu80;
    let x_1865 : vec4<f32> = x_1657.unity_LightIndices[bitcast<i32>(x_1862)];
    let x_1875 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1880 : vec4<u32> = indexable[x_1875];
    u_xlat80 = dot(x_1865, bitcast<vec4<f32>>(x_1880));
    let x_1884 : f32 = u_xlat80;
    u_xlati80 = i32(x_1884);
    let x_1886 : vec3<f32> = vs_TEXCOORD7;
    let x_1897 : i32 = u_xlati80;
    let x_1899 : vec4<f32> = x_1896.x_AdditionalLightsPosition[x_1897];
    let x_1902 : i32 = u_xlati80;
    let x_1904 : vec4<f32> = x_1896.x_AdditionalLightsPosition[x_1902];
    let x_1906 : vec3<f32> = ((-(x_1886) * vec3<f32>(x_1899.w, x_1899.w, x_1899.w)) + vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
    let x_1907 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
    let x_1909 : vec4<f32> = u_xlat8;
    let x_1911 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
    let x_1914 : f32 = u_xlat81;
    u_xlat81 = max(x_1914, 0.00006103515625f);
    let x_1918 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_1918);
    let x_1920 : f32 = u_xlat83;
    let x_1922 : vec4<f32> = u_xlat8;
    let x_1924 : vec3<f32> = (vec3<f32>(x_1920, x_1920, x_1920) * vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
    let x_1925 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
    let x_1928 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_1928);
    let x_1930 : f32 = u_xlat81;
    let x_1931 : i32 = u_xlati80;
    let x_1933 : f32 = x_1896.x_AdditionalLightsAttenuation[x_1931].x;
    u_xlat81 = (x_1930 * x_1933);
    let x_1935 : f32 = u_xlat81;
    let x_1937 : f32 = u_xlat81;
    u_xlat81 = ((-(x_1935) * x_1937) + 1.0f);
    let x_1940 : f32 = u_xlat81;
    u_xlat81 = max(x_1940, 0.0f);
    let x_1942 : f32 = u_xlat81;
    let x_1943 : f32 = u_xlat81;
    u_xlat81 = (x_1942 * x_1943);
    let x_1945 : f32 = u_xlat81;
    let x_1946 : f32 = u_xlat84;
    u_xlat81 = (x_1945 * x_1946);
    let x_1948 : i32 = u_xlati80;
    let x_1950 : vec4<f32> = x_1896.x_AdditionalLightsSpotDir[x_1948];
    let x_1952 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_1950.x, x_1950.y, x_1950.z), vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : f32 = u_xlat84;
    let x_1956 : i32 = u_xlati80;
    let x_1958 : f32 = x_1896.x_AdditionalLightsAttenuation[x_1956].z;
    let x_1960 : i32 = u_xlati80;
    let x_1962 : f32 = x_1896.x_AdditionalLightsAttenuation[x_1960].w;
    u_xlat84 = ((x_1955 * x_1958) + x_1962);
    let x_1964 : f32 = u_xlat84;
    u_xlat84 = clamp(x_1964, 0.0f, 1.0f);
    let x_1966 : f32 = u_xlat84;
    let x_1967 : f32 = u_xlat84;
    u_xlat84 = (x_1966 * x_1967);
    let x_1969 : f32 = u_xlat81;
    let x_1970 : f32 = u_xlat84;
    u_xlat81 = (x_1969 * x_1970);
    let x_1974 : i32 = u_xlati80;
    let x_1976 : f32 = x_224.x_AdditionalShadowParams[x_1974].w;
    u_xlati84 = i32(x_1976);
    let x_1981 : i32 = u_xlati84;
    u_xlatb10.x = (x_1981 >= 0i);
    let x_1985 : bool = u_xlatb10.x;
    if (x_1985) {
      let x_1989 : i32 = u_xlati80;
      let x_1991 : f32 = x_224.x_AdditionalShadowParams[x_1989].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1991, x_1991, x_1991, x_1991))));
      let x_1998 : bool = u_xlatb10.x;
      if (x_1998) {
        let x_2001 : vec4<f32> = u_xlat9;
        let x_2004 : vec4<f32> = u_xlat9;
        let x_2007 : vec4<bool> = (abs(vec4<f32>(x_2001.z, x_2001.z, x_2001.y, x_2001.z)) >= abs(vec4<f32>(x_2004.x, x_2004.y, x_2004.x, x_2004.x)));
        u_xlatb10 = vec3<bool>(x_2007.x, x_2007.y, x_2007.z);
        let x_2010 : bool = u_xlatb10.y;
        let x_2012 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2010 & x_2012);
        let x_2016 : vec4<f32> = u_xlat9;
        let x_2019 : vec4<bool> = (-(vec4<f32>(x_2016.z, x_2016.y, x_2016.x, x_2016.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2019.x, x_2019.y, x_2019.z);
        let x_2023 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2023);
        let x_2028 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2028);
        let x_2033 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2033);
        let x_2038 : bool = u_xlatb10.z;
        if (x_2038) {
          let x_2043 : f32 = u_xlat35.z;
          x_2039 = x_2043;
        } else {
          let x_2046 : f32 = u_xlat11.x;
          x_2039 = x_2046;
        }
        let x_2047 : f32 = x_2039;
        u_xlat60 = x_2047;
        let x_2049 : bool = u_xlatb10.x;
        if (x_2049) {
          let x_2054 : f32 = u_xlat35.x;
          x_2050 = x_2054;
        } else {
          let x_2056 : f32 = u_xlat60;
          x_2050 = x_2056;
        }
        let x_2057 : f32 = x_2050;
        u_xlat10.x = x_2057;
        let x_2059 : i32 = u_xlati80;
        let x_2061 : f32 = x_224.x_AdditionalShadowParams[x_2059].w;
        u_xlat35.x = trunc(x_2061);
        let x_2065 : f32 = u_xlat10.x;
        let x_2067 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2065 + x_2067);
        let x_2071 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2071);
      }
      let x_2073 : i32 = u_xlati84;
      u_xlati84 = (x_2073 << bitcast<u32>(2i));
      let x_2075 : vec3<f32> = vs_TEXCOORD7;
      let x_2078 : i32 = u_xlati84;
      let x_2081 : i32 = u_xlati84;
      let x_2085 : vec4<f32> = x_224.x_AdditionalLightsWorldToShadow[((x_2078 + 1i) / 4i)][((x_2081 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2075.y, x_2075.y, x_2075.y, x_2075.y) * x_2085);
      let x_2087 : i32 = u_xlati84;
      let x_2089 : i32 = u_xlati84;
      let x_2092 : vec4<f32> = x_224.x_AdditionalLightsWorldToShadow[(x_2087 / 4i)][(x_2089 % 4i)];
      let x_2093 : vec3<f32> = vs_TEXCOORD7;
      let x_2096 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2092 * vec4<f32>(x_2093.x, x_2093.x, x_2093.x, x_2093.x)) + x_2096);
      let x_2098 : i32 = u_xlati84;
      let x_2101 : i32 = u_xlati84;
      let x_2105 : vec4<f32> = x_224.x_AdditionalLightsWorldToShadow[((x_2098 + 2i) / 4i)][((x_2101 + 2i) % 4i)];
      let x_2106 : vec3<f32> = vs_TEXCOORD7;
      let x_2109 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2105 * vec4<f32>(x_2106.z, x_2106.z, x_2106.z, x_2106.z)) + x_2109);
      let x_2111 : vec4<f32> = u_xlat10;
      let x_2112 : i32 = u_xlati84;
      let x_2115 : i32 = u_xlati84;
      let x_2119 : vec4<f32> = x_224.x_AdditionalLightsWorldToShadow[((x_2112 + 3i) / 4i)][((x_2115 + 3i) % 4i)];
      u_xlat10 = (x_2111 + x_2119);
      let x_2121 : vec4<f32> = u_xlat10;
      let x_2123 : vec4<f32> = u_xlat10;
      let x_2125 : vec3<f32> = (vec3<f32>(x_2121.x, x_2121.y, x_2121.z) / vec3<f32>(x_2123.w, x_2123.w, x_2123.w));
      let x_2126 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
      let x_2129 : i32 = u_xlati80;
      let x_2131 : f32 = x_224.x_AdditionalShadowParams[x_2129].y;
      u_xlatb84 = (0.0f < x_2131);
      let x_2133 : bool = u_xlatb84;
      if (x_2133) {
        let x_2136 : i32 = u_xlati80;
        let x_2138 : f32 = x_224.x_AdditionalShadowParams[x_2136].y;
        u_xlatb84 = (1.0f == x_2138);
        let x_2140 : bool = u_xlatb84;
        if (x_2140) {
          let x_2143 : vec4<f32> = u_xlat10;
          let x_2147 : vec4<f32> = x_224.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2143.x, x_2143.y, x_2143.x, x_2143.y) + x_2147);
          let x_2150 : vec4<f32> = u_xlat11;
          let x_2151 : vec2<f32> = vec2<f32>(x_2150.x, x_2150.y);
          let x_2153 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2151.x, x_2151.y, x_2153);
          let x_2161 : vec3<f32> = txVec30;
          let x_2163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2161.xy, x_2161.z);
          u_xlat12.x = x_2163;
          let x_2166 : vec4<f32> = u_xlat11;
          let x_2167 : vec2<f32> = vec2<f32>(x_2166.z, x_2166.w);
          let x_2169 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2167.x, x_2167.y, x_2169);
          let x_2176 : vec3<f32> = txVec31;
          let x_2178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2176.xy, x_2176.z);
          u_xlat12.y = x_2178;
          let x_2180 : vec4<f32> = u_xlat10;
          let x_2184 : vec4<f32> = x_224.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2180.x, x_2180.y, x_2180.x, x_2180.y) + x_2184);
          let x_2187 : vec4<f32> = u_xlat11;
          let x_2188 : vec2<f32> = vec2<f32>(x_2187.x, x_2187.y);
          let x_2190 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
          let x_2197 : vec3<f32> = txVec32;
          let x_2199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
          u_xlat12.z = x_2199;
          let x_2202 : vec4<f32> = u_xlat11;
          let x_2203 : vec2<f32> = vec2<f32>(x_2202.z, x_2202.w);
          let x_2205 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2203.x, x_2203.y, x_2205);
          let x_2212 : vec3<f32> = txVec33;
          let x_2214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2212.xy, x_2212.z);
          u_xlat12.w = x_2214;
          let x_2216 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2216, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2220 : i32 = u_xlati80;
          let x_2222 : f32 = x_224.x_AdditionalShadowParams[x_2220].y;
          u_xlatb85 = (2.0f == x_2222);
          let x_2224 : bool = u_xlatb85;
          if (x_2224) {
            let x_2227 : vec4<f32> = u_xlat10;
            let x_2231 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2234 : vec2<f32> = ((vec2<f32>(x_2227.x, x_2227.y) * vec2<f32>(x_2231.z, x_2231.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2235 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2234.x, x_2234.y, x_2235.z, x_2235.w);
            let x_2237 : vec4<f32> = u_xlat11;
            let x_2239 : vec2<f32> = floor(vec2<f32>(x_2237.x, x_2237.y));
            let x_2240 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
            let x_2242 : vec4<f32> = u_xlat10;
            let x_2245 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2248 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2242.x, x_2242.y) * vec2<f32>(x_2245.z, x_2245.w)) + -(vec2<f32>(x_2248.x, x_2248.y)));
            let x_2252 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2252.x, x_2252.x, x_2252.y, x_2252.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2255 : vec4<f32> = u_xlat12;
            let x_2257 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2255.x, x_2255.x, x_2255.z, x_2255.z) * vec4<f32>(x_2257.x, x_2257.x, x_2257.z, x_2257.z));
            let x_2260 : vec4<f32> = u_xlat13;
            let x_2262 : vec2<f32> = (vec2<f32>(x_2260.y, x_2260.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2263 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2262.x, x_2263.y, x_2262.y, x_2263.w);
            let x_2265 : vec4<f32> = u_xlat13;
            let x_2268 : vec2<f32> = u_xlat61;
            let x_2270 : vec2<f32> = ((vec2<f32>(x_2265.x, x_2265.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2268));
            let x_2271 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2270.x, x_2270.y, x_2271.z, x_2271.w);
            let x_2274 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2274) + vec2<f32>(1.0f, 1.0f));
            let x_2277 : vec2<f32> = u_xlat61;
            let x_2278 : vec2<f32> = min(x_2277, vec2<f32>(0.0f, 0.0f));
            let x_2279 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2278.x, x_2278.y, x_2279.z, x_2279.w);
            let x_2281 : vec4<f32> = u_xlat14;
            let x_2284 : vec4<f32> = u_xlat14;
            let x_2287 : vec2<f32> = u_xlat63;
            let x_2288 : vec2<f32> = ((-(vec2<f32>(x_2281.x, x_2281.y)) * vec2<f32>(x_2284.x, x_2284.y)) + x_2287);
            let x_2289 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2288.x, x_2288.y, x_2289.z, x_2289.w);
            let x_2291 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2291, vec2<f32>(0.0f, 0.0f));
            let x_2293 : vec2<f32> = u_xlat61;
            let x_2295 : vec2<f32> = u_xlat61;
            let x_2297 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2293) * x_2295) + vec2<f32>(x_2297.y, x_2297.w));
            let x_2300 : vec4<f32> = u_xlat14;
            let x_2302 : vec2<f32> = (vec2<f32>(x_2300.x, x_2300.y) + vec2<f32>(1.0f, 1.0f));
            let x_2303 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2302.x, x_2302.y, x_2303.z, x_2303.w);
            let x_2305 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2305 + vec2<f32>(1.0f, 1.0f));
            let x_2307 : vec4<f32> = u_xlat13;
            let x_2309 : vec2<f32> = (vec2<f32>(x_2307.x, x_2307.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2310 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2309.x, x_2309.y, x_2310.z, x_2310.w);
            let x_2312 : vec2<f32> = u_xlat63;
            let x_2313 : vec2<f32> = (x_2312 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2314 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2313.x, x_2313.y, x_2314.z, x_2314.w);
            let x_2316 : vec4<f32> = u_xlat14;
            let x_2318 : vec2<f32> = (vec2<f32>(x_2316.x, x_2316.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2319 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2318.x, x_2318.y, x_2319.z, x_2319.w);
            let x_2321 : vec2<f32> = u_xlat61;
            let x_2322 : vec2<f32> = (x_2321 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2323 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2322.x, x_2322.y, x_2323.z, x_2323.w);
            let x_2325 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2325.y, x_2325.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2329 : f32 = u_xlat14.x;
            u_xlat15.z = x_2329;
            let x_2332 : f32 = u_xlat61.x;
            u_xlat15.w = x_2332;
            let x_2335 : f32 = u_xlat16.x;
            u_xlat13.z = x_2335;
            let x_2338 : f32 = u_xlat12.x;
            u_xlat13.w = x_2338;
            let x_2340 : vec4<f32> = u_xlat13;
            let x_2342 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2340.z, x_2340.w, x_2340.x, x_2340.z) + vec4<f32>(x_2342.z, x_2342.w, x_2342.x, x_2342.z));
            let x_2346 : f32 = u_xlat15.y;
            u_xlat14.z = x_2346;
            let x_2349 : f32 = u_xlat61.y;
            u_xlat14.w = x_2349;
            let x_2352 : f32 = u_xlat13.y;
            u_xlat16.z = x_2352;
            let x_2355 : f32 = u_xlat12.z;
            u_xlat16.w = x_2355;
            let x_2357 : vec4<f32> = u_xlat14;
            let x_2359 : vec4<f32> = u_xlat16;
            let x_2361 : vec3<f32> = (vec3<f32>(x_2357.z, x_2357.y, x_2357.w) + vec3<f32>(x_2359.z, x_2359.y, x_2359.w));
            let x_2362 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
            let x_2364 : vec4<f32> = u_xlat13;
            let x_2366 : vec4<f32> = u_xlat17;
            let x_2368 : vec3<f32> = (vec3<f32>(x_2364.x, x_2364.z, x_2364.w) / vec3<f32>(x_2366.z, x_2366.w, x_2366.y));
            let x_2369 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
            let x_2371 : vec4<f32> = u_xlat13;
            let x_2373 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.y, x_2371.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2374 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
            let x_2376 : vec4<f32> = u_xlat16;
            let x_2378 : vec4<f32> = u_xlat12;
            let x_2380 : vec3<f32> = (vec3<f32>(x_2376.z, x_2376.y, x_2376.w) / vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
            let x_2381 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
            let x_2383 : vec4<f32> = u_xlat14;
            let x_2385 : vec3<f32> = (vec3<f32>(x_2383.x, x_2383.y, x_2383.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2386 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
            let x_2388 : vec4<f32> = u_xlat13;
            let x_2391 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2393 : vec3<f32> = (vec3<f32>(x_2388.y, x_2388.x, x_2388.z) * vec3<f32>(x_2391.x, x_2391.x, x_2391.x));
            let x_2394 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
            let x_2396 : vec4<f32> = u_xlat14;
            let x_2399 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2401 : vec3<f32> = (vec3<f32>(x_2396.x, x_2396.y, x_2396.z) * vec3<f32>(x_2399.y, x_2399.y, x_2399.y));
            let x_2402 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
            let x_2405 : f32 = u_xlat14.x;
            u_xlat13.w = x_2405;
            let x_2407 : vec4<f32> = u_xlat11;
            let x_2410 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2413 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2407.x, x_2407.y, x_2407.x, x_2407.y) * vec4<f32>(x_2410.x, x_2410.y, x_2410.x, x_2410.y)) + vec4<f32>(x_2413.y, x_2413.w, x_2413.x, x_2413.w));
            let x_2416 : vec4<f32> = u_xlat11;
            let x_2419 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2422 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2416.x, x_2416.y) * vec2<f32>(x_2419.x, x_2419.y)) + vec2<f32>(x_2422.z, x_2422.w));
            let x_2426 : f32 = u_xlat13.y;
            u_xlat14.w = x_2426;
            let x_2428 : vec4<f32> = u_xlat14;
            let x_2429 : vec2<f32> = vec2<f32>(x_2428.y, x_2428.z);
            let x_2430 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2430.x, x_2429.x, x_2430.z, x_2429.y);
            let x_2432 : vec4<f32> = u_xlat11;
            let x_2435 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2438 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2432.x, x_2432.y, x_2432.x, x_2432.y) * vec4<f32>(x_2435.x, x_2435.y, x_2435.x, x_2435.y)) + vec4<f32>(x_2438.x, x_2438.y, x_2438.z, x_2438.y));
            let x_2441 : vec4<f32> = u_xlat11;
            let x_2444 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2447 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2441.x, x_2441.y, x_2441.x, x_2441.y) * vec4<f32>(x_2444.x, x_2444.y, x_2444.x, x_2444.y)) + vec4<f32>(x_2447.w, x_2447.y, x_2447.w, x_2447.z));
            let x_2450 : vec4<f32> = u_xlat11;
            let x_2453 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2456 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2450.x, x_2450.y, x_2450.x, x_2450.y) * vec4<f32>(x_2453.x, x_2453.y, x_2453.x, x_2453.y)) + vec4<f32>(x_2456.x, x_2456.w, x_2456.z, x_2456.w));
            let x_2459 : vec4<f32> = u_xlat12;
            let x_2461 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2459.x, x_2459.x, x_2459.x, x_2459.y) * vec4<f32>(x_2461.z, x_2461.w, x_2461.y, x_2461.z));
            let x_2465 : vec4<f32> = u_xlat12;
            let x_2467 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2465.y, x_2465.y, x_2465.z, x_2465.z) * x_2467);
            let x_2471 : f32 = u_xlat12.z;
            let x_2473 : f32 = u_xlat17.y;
            u_xlat85 = (x_2471 * x_2473);
            let x_2476 : vec4<f32> = u_xlat15;
            let x_2477 : vec2<f32> = vec2<f32>(x_2476.x, x_2476.y);
            let x_2479 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
            let x_2486 : vec3<f32> = txVec34;
            let x_2488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2486.xy, x_2486.z);
            u_xlat11.x = x_2488;
            let x_2491 : vec4<f32> = u_xlat15;
            let x_2492 : vec2<f32> = vec2<f32>(x_2491.z, x_2491.w);
            let x_2494 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2492.x, x_2492.y, x_2494);
            let x_2502 : vec3<f32> = txVec35;
            let x_2504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
            u_xlat36 = x_2504;
            let x_2505 : f32 = u_xlat36;
            let x_2507 : f32 = u_xlat18.y;
            u_xlat36 = (x_2505 * x_2507);
            let x_2510 : f32 = u_xlat18.x;
            let x_2512 : f32 = u_xlat11.x;
            let x_2514 : f32 = u_xlat36;
            u_xlat11.x = ((x_2510 * x_2512) + x_2514);
            let x_2518 : vec2<f32> = u_xlat61;
            let x_2520 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
            let x_2527 : vec3<f32> = txVec36;
            let x_2529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2527.xy, x_2527.z);
            u_xlat36 = x_2529;
            let x_2531 : f32 = u_xlat18.z;
            let x_2532 : f32 = u_xlat36;
            let x_2535 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2531 * x_2532) + x_2535);
            let x_2539 : vec4<f32> = u_xlat14;
            let x_2540 : vec2<f32> = vec2<f32>(x_2539.x, x_2539.y);
            let x_2542 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2540.x, x_2540.y, x_2542);
            let x_2549 : vec3<f32> = txVec37;
            let x_2551 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2549.xy, x_2549.z);
            u_xlat36 = x_2551;
            let x_2553 : f32 = u_xlat18.w;
            let x_2554 : f32 = u_xlat36;
            let x_2557 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2553 * x_2554) + x_2557);
            let x_2561 : vec4<f32> = u_xlat16;
            let x_2562 : vec2<f32> = vec2<f32>(x_2561.x, x_2561.y);
            let x_2564 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2562.x, x_2562.y, x_2564);
            let x_2571 : vec3<f32> = txVec38;
            let x_2573 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2571.xy, x_2571.z);
            u_xlat36 = x_2573;
            let x_2575 : f32 = u_xlat19.x;
            let x_2576 : f32 = u_xlat36;
            let x_2579 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2575 * x_2576) + x_2579);
            let x_2583 : vec4<f32> = u_xlat16;
            let x_2584 : vec2<f32> = vec2<f32>(x_2583.z, x_2583.w);
            let x_2586 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2584.x, x_2584.y, x_2586);
            let x_2593 : vec3<f32> = txVec39;
            let x_2595 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2593.xy, x_2593.z);
            u_xlat36 = x_2595;
            let x_2597 : f32 = u_xlat19.y;
            let x_2598 : f32 = u_xlat36;
            let x_2601 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2597 * x_2598) + x_2601);
            let x_2605 : vec4<f32> = u_xlat14;
            let x_2606 : vec2<f32> = vec2<f32>(x_2605.z, x_2605.w);
            let x_2608 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2606.x, x_2606.y, x_2608);
            let x_2615 : vec3<f32> = txVec40;
            let x_2617 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2615.xy, x_2615.z);
            u_xlat36 = x_2617;
            let x_2619 : f32 = u_xlat19.z;
            let x_2620 : f32 = u_xlat36;
            let x_2623 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2619 * x_2620) + x_2623);
            let x_2627 : vec4<f32> = u_xlat13;
            let x_2628 : vec2<f32> = vec2<f32>(x_2627.x, x_2627.y);
            let x_2630 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2628.x, x_2628.y, x_2630);
            let x_2637 : vec3<f32> = txVec41;
            let x_2639 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2637.xy, x_2637.z);
            u_xlat36 = x_2639;
            let x_2641 : f32 = u_xlat19.w;
            let x_2642 : f32 = u_xlat36;
            let x_2645 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2641 * x_2642) + x_2645);
            let x_2649 : vec4<f32> = u_xlat13;
            let x_2650 : vec2<f32> = vec2<f32>(x_2649.z, x_2649.w);
            let x_2652 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2650.x, x_2650.y, x_2652);
            let x_2659 : vec3<f32> = txVec42;
            let x_2661 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2659.xy, x_2659.z);
            u_xlat36 = x_2661;
            let x_2662 : f32 = u_xlat85;
            let x_2663 : f32 = u_xlat36;
            let x_2666 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2662 * x_2663) + x_2666);
          } else {
            let x_2669 : vec4<f32> = u_xlat10;
            let x_2672 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2675 : vec2<f32> = ((vec2<f32>(x_2669.x, x_2669.y) * vec2<f32>(x_2672.z, x_2672.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2676 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2675.x, x_2675.y, x_2676.z, x_2676.w);
            let x_2678 : vec4<f32> = u_xlat11;
            let x_2680 : vec2<f32> = floor(vec2<f32>(x_2678.x, x_2678.y));
            let x_2681 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2680.x, x_2680.y, x_2681.z, x_2681.w);
            let x_2683 : vec4<f32> = u_xlat10;
            let x_2686 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2689 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2683.x, x_2683.y) * vec2<f32>(x_2686.z, x_2686.w)) + -(vec2<f32>(x_2689.x, x_2689.y)));
            let x_2693 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2693.x, x_2693.x, x_2693.y, x_2693.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2696 : vec4<f32> = u_xlat12;
            let x_2698 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2696.x, x_2696.x, x_2696.z, x_2696.z) * vec4<f32>(x_2698.x, x_2698.x, x_2698.z, x_2698.z));
            let x_2701 : vec4<f32> = u_xlat13;
            let x_2703 : vec2<f32> = (vec2<f32>(x_2701.y, x_2701.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2704 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2704.x, x_2703.x, x_2704.z, x_2703.y);
            let x_2706 : vec4<f32> = u_xlat13;
            let x_2709 : vec2<f32> = u_xlat61;
            let x_2711 : vec2<f32> = ((vec2<f32>(x_2706.x, x_2706.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2709));
            let x_2712 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2711.x, x_2712.y, x_2711.y, x_2712.w);
            let x_2714 : vec2<f32> = u_xlat61;
            let x_2716 : vec2<f32> = (-(x_2714) + vec2<f32>(1.0f, 1.0f));
            let x_2717 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2716.x, x_2716.y, x_2717.z, x_2717.w);
            let x_2719 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2719, vec2<f32>(0.0f, 0.0f));
            let x_2721 : vec2<f32> = u_xlat63;
            let x_2723 : vec2<f32> = u_xlat63;
            let x_2725 : vec4<f32> = u_xlat13;
            let x_2727 : vec2<f32> = ((-(x_2721) * x_2723) + vec2<f32>(x_2725.x, x_2725.y));
            let x_2728 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2727.x, x_2727.y, x_2728.z, x_2728.w);
            let x_2730 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2730, vec2<f32>(0.0f, 0.0f));
            let x_2733 : vec2<f32> = u_xlat63;
            let x_2735 : vec2<f32> = u_xlat63;
            let x_2737 : vec4<f32> = u_xlat12;
            let x_2739 : vec2<f32> = ((-(x_2733) * x_2735) + vec2<f32>(x_2737.y, x_2737.w));
            let x_2740 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2739.x, x_2740.y, x_2739.y);
            let x_2742 : vec4<f32> = u_xlat13;
            let x_2745 : vec2<f32> = (vec2<f32>(x_2742.x, x_2742.y) + vec2<f32>(2.0f, 2.0f));
            let x_2746 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
            let x_2748 : vec3<f32> = u_xlat37;
            let x_2750 : vec2<f32> = (vec2<f32>(x_2748.x, x_2748.z) + vec2<f32>(2.0f, 2.0f));
            let x_2751 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2751.x, x_2750.x, x_2751.z, x_2750.y);
            let x_2754 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2754 * 0.08163200318813323975f);
            let x_2757 : vec4<f32> = u_xlat12;
            let x_2760 : vec3<f32> = (vec3<f32>(x_2757.z, x_2757.x, x_2757.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2761 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
            let x_2763 : vec4<f32> = u_xlat13;
            let x_2765 : vec2<f32> = (vec2<f32>(x_2763.x, x_2763.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2766 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2765.x, x_2765.y, x_2766.z, x_2766.w);
            let x_2769 : f32 = u_xlat16.y;
            u_xlat15.x = x_2769;
            let x_2771 : vec2<f32> = u_xlat61;
            let x_2774 : vec2<f32> = ((vec2<f32>(x_2771.x, x_2771.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2775 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2775.x, x_2774.x, x_2775.z, x_2774.y);
            let x_2777 : vec2<f32> = u_xlat61;
            let x_2780 : vec2<f32> = ((vec2<f32>(x_2777.x, x_2777.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2781 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2780.x, x_2781.y, x_2780.y, x_2781.w);
            let x_2784 : f32 = u_xlat12.x;
            u_xlat13.y = x_2784;
            let x_2787 : f32 = u_xlat14.y;
            u_xlat13.w = x_2787;
            let x_2789 : vec4<f32> = u_xlat13;
            let x_2790 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2789 + x_2790);
            let x_2792 : vec2<f32> = u_xlat61;
            let x_2795 : vec2<f32> = ((vec2<f32>(x_2792.y, x_2792.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2796 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2796.x, x_2795.x, x_2796.z, x_2795.y);
            let x_2798 : vec2<f32> = u_xlat61;
            let x_2801 : vec2<f32> = ((vec2<f32>(x_2798.y, x_2798.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2802 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2801.x, x_2802.y, x_2801.y, x_2802.w);
            let x_2805 : f32 = u_xlat12.y;
            u_xlat14.y = x_2805;
            let x_2807 : vec4<f32> = u_xlat14;
            let x_2808 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2807 + x_2808);
            let x_2810 : vec4<f32> = u_xlat13;
            let x_2811 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2810 / x_2811);
            let x_2813 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2813 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2815 : vec4<f32> = u_xlat14;
            let x_2816 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2815 / x_2816);
            let x_2818 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2818 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2820 : vec4<f32> = u_xlat13;
            let x_2823 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2820.w, x_2820.x, x_2820.y, x_2820.z) * vec4<f32>(x_2823.x, x_2823.x, x_2823.x, x_2823.x));
            let x_2826 : vec4<f32> = u_xlat14;
            let x_2829 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2826.x, x_2826.w, x_2826.y, x_2826.z) * vec4<f32>(x_2829.y, x_2829.y, x_2829.y, x_2829.y));
            let x_2832 : vec4<f32> = u_xlat13;
            let x_2833 : vec3<f32> = vec3<f32>(x_2832.y, x_2832.z, x_2832.w);
            let x_2834 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2833.x, x_2834.y, x_2833.y, x_2833.z);
            let x_2837 : f32 = u_xlat14.x;
            u_xlat16.y = x_2837;
            let x_2839 : vec4<f32> = u_xlat11;
            let x_2842 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2845 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2839.x, x_2839.y, x_2839.x, x_2839.y) * vec4<f32>(x_2842.x, x_2842.y, x_2842.x, x_2842.y)) + vec4<f32>(x_2845.x, x_2845.y, x_2845.z, x_2845.y));
            let x_2848 : vec4<f32> = u_xlat11;
            let x_2851 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2854 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2848.x, x_2848.y) * vec2<f32>(x_2851.x, x_2851.y)) + vec2<f32>(x_2854.w, x_2854.y));
            let x_2858 : f32 = u_xlat16.y;
            u_xlat13.y = x_2858;
            let x_2861 : f32 = u_xlat14.z;
            u_xlat16.y = x_2861;
            let x_2863 : vec4<f32> = u_xlat11;
            let x_2866 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2869 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2863.x, x_2863.y, x_2863.x, x_2863.y) * vec4<f32>(x_2866.x, x_2866.y, x_2866.x, x_2866.y)) + vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2869.y));
            let x_2872 : vec4<f32> = u_xlat11;
            let x_2875 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2878 : vec4<f32> = u_xlat16;
            let x_2880 : vec2<f32> = ((vec2<f32>(x_2872.x, x_2872.y) * vec2<f32>(x_2875.x, x_2875.y)) + vec2<f32>(x_2878.w, x_2878.y));
            let x_2881 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2880.x, x_2880.y, x_2881.z, x_2881.w);
            let x_2884 : f32 = u_xlat16.y;
            u_xlat13.z = x_2884;
            let x_2887 : vec4<f32> = u_xlat11;
            let x_2890 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2893 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2887.x, x_2887.y, x_2887.x, x_2887.y) * vec4<f32>(x_2890.x, x_2890.y, x_2890.x, x_2890.y)) + vec4<f32>(x_2893.x, x_2893.y, x_2893.x, x_2893.z));
            let x_2897 : f32 = u_xlat14.w;
            u_xlat16.y = x_2897;
            let x_2900 : vec4<f32> = u_xlat11;
            let x_2903 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2906 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2900.x, x_2900.y, x_2900.x, x_2900.y) * vec4<f32>(x_2903.x, x_2903.y, x_2903.x, x_2903.y)) + vec4<f32>(x_2906.x, x_2906.y, x_2906.z, x_2906.y));
            let x_2910 : vec4<f32> = u_xlat11;
            let x_2913 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2916 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2910.x, x_2910.y) * vec2<f32>(x_2913.x, x_2913.y)) + vec2<f32>(x_2916.w, x_2916.y));
            let x_2920 : f32 = u_xlat16.y;
            u_xlat13.w = x_2920;
            let x_2923 : vec4<f32> = u_xlat11;
            let x_2926 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2929 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2923.x, x_2923.y) * vec2<f32>(x_2926.x, x_2926.y)) + vec2<f32>(x_2929.x, x_2929.w));
            let x_2932 : vec4<f32> = u_xlat16;
            let x_2933 : vec3<f32> = vec3<f32>(x_2932.x, x_2932.z, x_2932.w);
            let x_2934 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2933.x, x_2934.y, x_2933.y, x_2933.z);
            let x_2936 : vec4<f32> = u_xlat11;
            let x_2939 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2942 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.y) * vec4<f32>(x_2939.x, x_2939.y, x_2939.x, x_2939.y)) + vec4<f32>(x_2942.x, x_2942.y, x_2942.z, x_2942.y));
            let x_2946 : vec4<f32> = u_xlat11;
            let x_2949 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2946.x, x_2946.y) * vec2<f32>(x_2949.x, x_2949.y)) + vec2<f32>(x_2952.w, x_2952.y));
            let x_2956 : f32 = u_xlat13.x;
            u_xlat14.x = x_2956;
            let x_2958 : vec4<f32> = u_xlat11;
            let x_2961 : vec4<f32> = x_224.x_AdditionalShadowmapSize;
            let x_2964 : vec4<f32> = u_xlat14;
            let x_2966 : vec2<f32> = ((vec2<f32>(x_2958.x, x_2958.y) * vec2<f32>(x_2961.x, x_2961.y)) + vec2<f32>(x_2964.x, x_2964.y));
            let x_2967 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2966.x, x_2966.y, x_2967.z, x_2967.w);
            let x_2970 : vec4<f32> = u_xlat12;
            let x_2972 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_2970.x, x_2970.x, x_2970.x, x_2970.x) * x_2972);
            let x_2975 : vec4<f32> = u_xlat12;
            let x_2977 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_2975.y, x_2975.y, x_2975.y, x_2975.y) * x_2977);
            let x_2980 : vec4<f32> = u_xlat12;
            let x_2982 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_2980.z, x_2980.z, x_2980.z, x_2980.z) * x_2982);
            let x_2984 : vec4<f32> = u_xlat12;
            let x_2986 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_2984.w, x_2984.w, x_2984.w, x_2984.w) * x_2986);
            let x_2989 : vec4<f32> = u_xlat17;
            let x_2990 : vec2<f32> = vec2<f32>(x_2989.x, x_2989.y);
            let x_2992 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
            let x_2999 : vec3<f32> = txVec43;
            let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
            u_xlat85 = x_3001;
            let x_3003 : vec4<f32> = u_xlat17;
            let x_3004 : vec2<f32> = vec2<f32>(x_3003.z, x_3003.w);
            let x_3006 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3013 : vec3<f32> = txVec44;
            let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
            u_xlat13.x = x_3015;
            let x_3018 : f32 = u_xlat13.x;
            let x_3020 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3018 * x_3020);
            let x_3024 : f32 = u_xlat22.x;
            let x_3025 : f32 = u_xlat85;
            let x_3028 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3024 * x_3025) + x_3028);
            let x_3031 : vec2<f32> = u_xlat61;
            let x_3033 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3031.x, x_3031.y, x_3033);
            let x_3040 : vec3<f32> = txVec45;
            let x_3042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3040.xy, x_3040.z);
            u_xlat61.x = x_3042;
            let x_3045 : f32 = u_xlat22.z;
            let x_3047 : f32 = u_xlat61.x;
            let x_3049 : f32 = u_xlat85;
            u_xlat85 = ((x_3045 * x_3047) + x_3049);
            let x_3052 : vec4<f32> = u_xlat20;
            let x_3053 : vec2<f32> = vec2<f32>(x_3052.x, x_3052.y);
            let x_3055 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
            let x_3062 : vec3<f32> = txVec46;
            let x_3064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3062.xy, x_3062.z);
            u_xlat61.x = x_3064;
            let x_3067 : f32 = u_xlat22.w;
            let x_3069 : f32 = u_xlat61.x;
            let x_3071 : f32 = u_xlat85;
            u_xlat85 = ((x_3067 * x_3069) + x_3071);
            let x_3074 : vec4<f32> = u_xlat18;
            let x_3075 : vec2<f32> = vec2<f32>(x_3074.x, x_3074.y);
            let x_3077 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec47;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat61.x = x_3086;
            let x_3089 : f32 = u_xlat23.x;
            let x_3091 : f32 = u_xlat61.x;
            let x_3093 : f32 = u_xlat85;
            u_xlat85 = ((x_3089 * x_3091) + x_3093);
            let x_3096 : vec4<f32> = u_xlat18;
            let x_3097 : vec2<f32> = vec2<f32>(x_3096.z, x_3096.w);
            let x_3099 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
            let x_3106 : vec3<f32> = txVec48;
            let x_3108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
            u_xlat61.x = x_3108;
            let x_3111 : f32 = u_xlat23.y;
            let x_3113 : f32 = u_xlat61.x;
            let x_3115 : f32 = u_xlat85;
            u_xlat85 = ((x_3111 * x_3113) + x_3115);
            let x_3118 : vec4<f32> = u_xlat19;
            let x_3119 : vec2<f32> = vec2<f32>(x_3118.x, x_3118.y);
            let x_3121 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
            let x_3128 : vec3<f32> = txVec49;
            let x_3130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
            u_xlat61.x = x_3130;
            let x_3133 : f32 = u_xlat23.z;
            let x_3135 : f32 = u_xlat61.x;
            let x_3137 : f32 = u_xlat85;
            u_xlat85 = ((x_3133 * x_3135) + x_3137);
            let x_3140 : vec4<f32> = u_xlat20;
            let x_3141 : vec2<f32> = vec2<f32>(x_3140.z, x_3140.w);
            let x_3143 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3141.x, x_3141.y, x_3143);
            let x_3150 : vec3<f32> = txVec50;
            let x_3152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3150.xy, x_3150.z);
            u_xlat61.x = x_3152;
            let x_3155 : f32 = u_xlat23.w;
            let x_3157 : f32 = u_xlat61.x;
            let x_3159 : f32 = u_xlat85;
            u_xlat85 = ((x_3155 * x_3157) + x_3159);
            let x_3162 : vec4<f32> = u_xlat21;
            let x_3163 : vec2<f32> = vec2<f32>(x_3162.x, x_3162.y);
            let x_3165 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3163.x, x_3163.y, x_3165);
            let x_3172 : vec3<f32> = txVec51;
            let x_3174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3172.xy, x_3172.z);
            u_xlat61.x = x_3174;
            let x_3177 : f32 = u_xlat24.x;
            let x_3179 : f32 = u_xlat61.x;
            let x_3181 : f32 = u_xlat85;
            u_xlat85 = ((x_3177 * x_3179) + x_3181);
            let x_3184 : vec4<f32> = u_xlat21;
            let x_3185 : vec2<f32> = vec2<f32>(x_3184.z, x_3184.w);
            let x_3187 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3185.x, x_3185.y, x_3187);
            let x_3194 : vec3<f32> = txVec52;
            let x_3196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3194.xy, x_3194.z);
            u_xlat61.x = x_3196;
            let x_3199 : f32 = u_xlat24.y;
            let x_3201 : f32 = u_xlat61.x;
            let x_3203 : f32 = u_xlat85;
            u_xlat85 = ((x_3199 * x_3201) + x_3203);
            let x_3206 : vec2<f32> = u_xlat38;
            let x_3208 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3206.x, x_3206.y, x_3208);
            let x_3215 : vec3<f32> = txVec53;
            let x_3217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3215.xy, x_3215.z);
            u_xlat61.x = x_3217;
            let x_3220 : f32 = u_xlat24.z;
            let x_3222 : f32 = u_xlat61.x;
            let x_3224 : f32 = u_xlat85;
            u_xlat85 = ((x_3220 * x_3222) + x_3224);
            let x_3227 : vec2<f32> = u_xlat69;
            let x_3229 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3227.x, x_3227.y, x_3229);
            let x_3236 : vec3<f32> = txVec54;
            let x_3238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3236.xy, x_3236.z);
            u_xlat61.x = x_3238;
            let x_3241 : f32 = u_xlat24.w;
            let x_3243 : f32 = u_xlat61.x;
            let x_3245 : f32 = u_xlat85;
            u_xlat85 = ((x_3241 * x_3243) + x_3245);
            let x_3248 : vec4<f32> = u_xlat16;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.x, x_3248.y);
            let x_3251 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec55;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat61.x = x_3260;
            let x_3263 : f32 = u_xlat12.x;
            let x_3265 : f32 = u_xlat61.x;
            let x_3267 : f32 = u_xlat85;
            u_xlat85 = ((x_3263 * x_3265) + x_3267);
            let x_3270 : vec4<f32> = u_xlat16;
            let x_3271 : vec2<f32> = vec2<f32>(x_3270.z, x_3270.w);
            let x_3273 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec56;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat61.x = x_3282;
            let x_3285 : f32 = u_xlat12.y;
            let x_3287 : f32 = u_xlat61.x;
            let x_3289 : f32 = u_xlat85;
            u_xlat85 = ((x_3285 * x_3287) + x_3289);
            let x_3292 : vec2<f32> = u_xlat64;
            let x_3294 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec57;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat61.x = x_3303;
            let x_3306 : f32 = u_xlat12.z;
            let x_3308 : f32 = u_xlat61.x;
            let x_3310 : f32 = u_xlat85;
            u_xlat85 = ((x_3306 * x_3308) + x_3310);
            let x_3313 : vec4<f32> = u_xlat11;
            let x_3314 : vec2<f32> = vec2<f32>(x_3313.x, x_3313.y);
            let x_3316 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3314.x, x_3314.y, x_3316);
            let x_3323 : vec3<f32> = txVec58;
            let x_3325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3323.xy, x_3323.z);
            u_xlat11.x = x_3325;
            let x_3328 : f32 = u_xlat12.w;
            let x_3330 : f32 = u_xlat11.x;
            let x_3332 : f32 = u_xlat85;
            u_xlat84 = ((x_3328 * x_3330) + x_3332);
          }
        }
      } else {
        let x_3336 : vec4<f32> = u_xlat10;
        let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
        let x_3339 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
        let x_3346 : vec3<f32> = txVec59;
        let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
        u_xlat84 = x_3348;
      }
      let x_3349 : i32 = u_xlati80;
      let x_3351 : f32 = x_224.x_AdditionalShadowParams[x_3349].x;
      u_xlat10.x = (1.0f + -(x_3351));
      let x_3355 : f32 = u_xlat84;
      let x_3356 : i32 = u_xlati80;
      let x_3358 : f32 = x_224.x_AdditionalShadowParams[x_3356].x;
      let x_3361 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3355 * x_3358) + x_3361);
      let x_3364 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3364);
      let x_3369 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3369 >= 1.0f);
      let x_3371 : bool = u_xlatb35;
      let x_3373 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3371 | x_3373);
      let x_3377 : bool = u_xlatb10.x;
      let x_3378 : f32 = u_xlat84;
      u_xlat84 = select(x_3378, 1.0f, x_3377);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3381 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3381) + 1.0f);
    let x_3385 : f32 = u_xlat1;
    let x_3387 : f32 = u_xlat10.x;
    let x_3389 : f32 = u_xlat84;
    u_xlat84 = ((x_3385 * x_3387) + x_3389);
    let x_3391 : f32 = u_xlat81;
    let x_3392 : f32 = u_xlat84;
    u_xlat81 = (x_3391 * x_3392);
    let x_3394 : vec3<f32> = u_xlat26;
    let x_3395 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3394, vec3<f32>(x_3395.x, x_3395.y, x_3395.z));
    let x_3398 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3398, 0.0f, 1.0f);
    let x_3400 : f32 = u_xlat81;
    let x_3401 : f32 = u_xlat84;
    u_xlat81 = (x_3400 * x_3401);
    let x_3403 : f32 = u_xlat81;
    let x_3405 : i32 = u_xlati80;
    let x_3407 : vec4<f32> = x_1896.x_AdditionalLightsColor[x_3405];
    let x_3409 : vec3<f32> = (vec3<f32>(x_3403, x_3403, x_3403) * vec3<f32>(x_3407.x, x_3407.y, x_3407.z));
    let x_3410 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3409.x, x_3409.y, x_3409.z, x_3410.w);
    let x_3412 : vec4<f32> = u_xlat8;
    let x_3414 : f32 = u_xlat83;
    let x_3417 : vec4<f32> = u_xlat5;
    let x_3419 : vec3<f32> = ((vec3<f32>(x_3412.x, x_3412.y, x_3412.z) * vec3<f32>(x_3414, x_3414, x_3414)) + vec3<f32>(x_3417.x, x_3417.y, x_3417.z));
    let x_3420 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3419.x, x_3419.y, x_3419.z, x_3420.w);
    let x_3422 : vec4<f32> = u_xlat8;
    let x_3424 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3422.x, x_3422.y, x_3422.z), vec3<f32>(x_3424.x, x_3424.y, x_3424.z));
    let x_3427 : f32 = u_xlat80;
    u_xlat80 = max(x_3427, 1.17549435e-38f);
    let x_3429 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3429);
    let x_3431 : f32 = u_xlat80;
    let x_3433 : vec4<f32> = u_xlat8;
    let x_3435 : vec3<f32> = (vec3<f32>(x_3431, x_3431, x_3431) * vec3<f32>(x_3433.x, x_3433.y, x_3433.z));
    let x_3436 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3435.x, x_3435.y, x_3435.z, x_3436.w);
    let x_3438 : vec3<f32> = u_xlat26;
    let x_3439 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(x_3438, vec3<f32>(x_3439.x, x_3439.y, x_3439.z));
    let x_3442 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3442, 0.0f, 1.0f);
    let x_3444 : vec4<f32> = u_xlat9;
    let x_3446 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3444.x, x_3444.y, x_3444.z), vec3<f32>(x_3446.x, x_3446.y, x_3446.z));
    let x_3449 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3449, 0.0f, 1.0f);
    let x_3451 : f32 = u_xlat80;
    let x_3452 : f32 = u_xlat80;
    u_xlat80 = (x_3451 * x_3452);
    let x_3454 : f32 = u_xlat80;
    let x_3456 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3454 * x_3456) + 1.00001001358032226562f);
    let x_3459 : f32 = u_xlat81;
    let x_3460 : f32 = u_xlat81;
    u_xlat81 = (x_3459 * x_3460);
    let x_3462 : f32 = u_xlat80;
    let x_3463 : f32 = u_xlat80;
    u_xlat80 = (x_3462 * x_3463);
    let x_3465 : f32 = u_xlat81;
    u_xlat81 = max(x_3465, 0.10000000149011611938f);
    let x_3467 : f32 = u_xlat80;
    let x_3468 : f32 = u_xlat81;
    u_xlat80 = (x_3467 * x_3468);
    let x_3471 : f32 = u_xlat3.x;
    let x_3472 : f32 = u_xlat80;
    u_xlat80 = (x_3471 * x_3472);
    let x_3474 : f32 = u_xlat4;
    let x_3475 : f32 = u_xlat80;
    u_xlat80 = (x_3474 / x_3475);
    let x_3477 : vec4<f32> = u_xlat0;
    let x_3479 : f32 = u_xlat80;
    let x_3482 : vec3<f32> = u_xlat28;
    let x_3483 : vec3<f32> = ((vec3<f32>(x_3477.x, x_3477.y, x_3477.z) * vec3<f32>(x_3479, x_3479, x_3479)) + x_3482);
    let x_3484 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3484.w);
    let x_3486 : vec4<f32> = u_xlat8;
    let x_3488 : vec4<f32> = u_xlat10;
    let x_3491 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3486.x, x_3486.y, x_3486.z) * vec3<f32>(x_3488.x, x_3488.y, x_3488.z)) + x_3491);

    continuing {
      let x_3493 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3493 + bitcast<u32>(1i));
    }
  }
  let x_3495 : vec3<f32> = u_xlat32;
  let x_3496 : vec4<f32> = u_xlat6;
  let x_3499 : vec4<f32> = u_xlat2;
  let x_3501 : vec3<f32> = ((x_3495 * vec3<f32>(x_3496.x, x_3496.y, x_3496.z)) + vec3<f32>(x_3499.x, x_3499.y, x_3499.z));
  let x_3502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3501.x, x_3501.y, x_3501.z, x_3502.w);
  let x_3506 : vec3<f32> = u_xlat29;
  let x_3507 : vec4<f32> = u_xlat0;
  let x_3509 : vec3<f32> = (x_3506 + vec3<f32>(x_3507.x, x_3507.y, x_3507.z));
  let x_3510 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3509.x, x_3509.y, x_3509.z, x_3510.w);
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


