struct VGlobals {
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 256u>;

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_6 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_5,
  x_AdditionalLightsColor : Arr_5,
  x_AdditionalLightsAttenuation : Arr_5,
  x_AdditionalLightsSpotDir : Arr_5,
  x_AdditionalLightsOcclusionProbes : Arr_5,
  x_AdditionalLightsLayerMasks : Arr_6,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_17 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : UnityPerDraw;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_193 : AdditionalLights;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlati18 : i32;
  var u_xlat3 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu21 : u32;
  var u_xlati4 : i32;
  var u_xlat21 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati21 : i32;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_34 : vec4<f32> = in_POSITION0;
  let x_45 : vec4<f32> = x_41.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_34.y, x_34.y, x_34.y) * vec3<f32>(x_45.x, x_45.y, x_45.z));
  let x_49 : vec4<f32> = x_41.unity_ObjectToWorld[0i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.x, x_51.x, x_51.x)) + x_54);
  let x_58 : vec4<f32> = x_41.unity_ObjectToWorld[2i];
  let x_60 : vec4<f32> = in_POSITION0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_60.z, x_60.z, x_60.z)) + x_63);
  let x_65 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = x_41.unity_ObjectToWorld[3i];
  u_xlat0 = (x_65 + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_73 : vec3<f32> = u_xlat0;
  let x_77 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_73.y, x_73.y, x_73.y, x_73.y) * x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_81 : vec3<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_80 * vec4<f32>(x_81.x, x_81.x, x_81.x, x_81.x)) + x_84);
  let x_87 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_88 : vec3<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_87 * vec4<f32>(x_88.z, x_88.z, x_88.z, x_88.z)) + x_91);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = x_17.unity_MatrixVP[3i];
  u_xlat1 = (x_93 + x_95);
  let x_99 : vec4<f32> = x_17.x_MainLightColor;
  let x_102 : vec4<f32> = x_41.unity_LightData;
  u_xlat2 = (vec3<f32>(x_99.x, x_99.y, x_99.z) * vec3<f32>(x_102.z, x_102.z, x_102.z));
  let x_109 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat18 = dot(x_109, vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat18;
  u_xlat18 = clamp(x_114, 0.0f, 1.0f);
  let x_118 : f32 = u_xlat18;
  let x_120 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_118, x_118, x_118) * x_120);
  let x_125 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_128 : f32 = x_41.unity_LightData.y;
  u_xlat18 = min(x_125, x_128);
  let x_132 : f32 = u_xlat18;
  u_xlati18 = i32(x_132);
  let x_135 : vec3<f32> = u_xlat2;
  u_xlat3 = x_135;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_143 : u32 = u_xlatu_loop_1;
    let x_144 : i32 = u_xlati18;
    if ((x_143 < bitcast<u32>(x_144))) {
    } else {
      break;
    }
    let x_149 : u32 = u_xlatu_loop_1;
    u_xlatu21 = (x_149 >> 2u);
    let x_152 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_152 & 3u));
    let x_157 : u32 = u_xlatu21;
    let x_160 : vec4<f32> = x_41.unity_LightIndices[bitcast<i32>(x_157)];
    let x_170 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_175 : vec4<u32> = indexable[x_170];
    u_xlat21 = dot(x_160, bitcast<vec4<f32>>(x_175));
    let x_179 : f32 = u_xlat21;
    u_xlati21 = i32(x_179);
    let x_182 : vec3<f32> = u_xlat0;
    let x_194 : i32 = u_xlati21;
    let x_196 : vec4<f32> = x_193.x_AdditionalLightsPosition[x_194];
    let x_199 : i32 = u_xlati21;
    let x_201 : vec4<f32> = x_193.x_AdditionalLightsPosition[x_199];
    u_xlat4 = ((-(x_182) * vec3<f32>(x_196.w, x_196.w, x_196.w)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
    let x_205 : vec3<f32> = u_xlat4;
    let x_206 : vec3<f32> = u_xlat4;
    u_xlat22 = dot(x_205, x_206);
    let x_208 : f32 = u_xlat22;
    u_xlat22 = max(x_208, 6.10351562e-05f);
    let x_212 : f32 = u_xlat22;
    u_xlat5.x = inverseSqrt(x_212);
    let x_215 : vec3<f32> = u_xlat4;
    let x_216 : vec3<f32> = u_xlat5;
    u_xlat4 = (x_215 * vec3<f32>(x_216.x, x_216.x, x_216.x));
    let x_219 : f32 = u_xlat22;
    u_xlat5.x = (1.0f / x_219);
    let x_222 : f32 = u_xlat22;
    let x_223 : i32 = u_xlati21;
    let x_225 : f32 = x_193.x_AdditionalLightsAttenuation[x_223].x;
    u_xlat22 = (x_222 * x_225);
    let x_227 : f32 = u_xlat22;
    let x_229 : f32 = u_xlat22;
    u_xlat22 = ((-(x_227) * x_229) + 1.0f);
    let x_232 : f32 = u_xlat22;
    u_xlat22 = max(x_232, 0.0f);
    let x_234 : f32 = u_xlat22;
    let x_235 : f32 = u_xlat22;
    u_xlat22 = (x_234 * x_235);
    let x_237 : f32 = u_xlat22;
    let x_239 : f32 = u_xlat5.x;
    u_xlat22 = (x_237 * x_239);
    let x_241 : i32 = u_xlati21;
    let x_243 : vec4<f32> = x_193.x_AdditionalLightsSpotDir[x_241];
    let x_245 : vec3<f32> = u_xlat4;
    u_xlat5.x = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), x_245);
    let x_249 : f32 = u_xlat5.x;
    let x_250 : i32 = u_xlati21;
    let x_252 : f32 = x_193.x_AdditionalLightsAttenuation[x_250].z;
    let x_254 : i32 = u_xlati21;
    let x_256 : f32 = x_193.x_AdditionalLightsAttenuation[x_254].w;
    u_xlat5.x = ((x_249 * x_252) + x_256);
    let x_260 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_260, 0.0f, 1.0f);
    let x_264 : f32 = u_xlat5.x;
    let x_266 : f32 = u_xlat5.x;
    u_xlat5.x = (x_264 * x_266);
    let x_269 : f32 = u_xlat22;
    let x_271 : f32 = u_xlat5.x;
    u_xlat22 = (x_269 * x_271);
    let x_273 : f32 = u_xlat22;
    let x_275 : i32 = u_xlati21;
    let x_277 : vec4<f32> = x_193.x_AdditionalLightsColor[x_275];
    u_xlat5 = (vec3<f32>(x_273, x_273, x_273) * vec3<f32>(x_277.x, x_277.y, x_277.z));
    let x_280 : vec3<f32> = in_NORMAL0;
    let x_281 : vec3<f32> = u_xlat4;
    u_xlat21 = dot(x_280, x_281);
    let x_283 : f32 = u_xlat21;
    u_xlat21 = clamp(x_283, 0.0f, 1.0f);
    let x_285 : vec3<f32> = u_xlat5;
    let x_286 : f32 = u_xlat21;
    let x_289 : vec3<f32> = u_xlat3;
    u_xlat3 = ((x_285 * vec3<f32>(x_286, x_286, x_286)) + x_289);

    continuing {
      let x_291 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_291 + bitcast<u32>(1i));
    }
  }
  let x_295 : vec3<f32> = u_xlat3;
  let x_296 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : f32 = u_xlat1.z;
  let x_301 : f32 = x_17.x_ProjectionParams.y;
  u_xlat18 = (x_299 / x_301);
  let x_303 : f32 = u_xlat18;
  u_xlat18 = (-(x_303) + 1.0f);
  let x_306 : f32 = u_xlat18;
  let x_308 : f32 = x_17.x_ProjectionParams.z;
  u_xlat18 = (x_306 * x_308);
  let x_310 : f32 = u_xlat18;
  u_xlat18 = max(x_310, 0.0f);
  let x_312 : f32 = u_xlat18;
  let x_315 : f32 = x_17.unity_FogParams.x;
  vs_TEXCOORD3.w = (x_312 * x_315);
  let x_322 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_322;
  let x_324 : vec3<f32> = in_NORMAL0;
  let x_325 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_332 : vec4<f32> = u_xlat1;
  gl_Position = x_332;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_339 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_339;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD5_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(3)
  vs_TEXCOORD6_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD5, gl_Position, vs_TEXCOORD6);
}

