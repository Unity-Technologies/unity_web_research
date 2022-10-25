struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_16 : UnityPerMaterial;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_40 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_70 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_BaseMap_ST;
  let x_25 : vec4<f32> = x_16.x_BaseMap_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_21.x, x_21.y)) + vec2<f32>(x_25.z, x_25.w));
  let x_32 : vec4<f32> = in_POSITION0;
  let x_43 : vec4<f32> = x_40.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_32.y, x_32.y, x_32.y, x_32.y) * x_43);
  let x_46 : vec4<f32> = x_40.unity_ObjectToWorld[0i];
  let x_47 : vec4<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_46 * vec4<f32>(x_47.x, x_47.x, x_47.x, x_47.x)) + x_50);
  let x_54 : vec4<f32> = x_40.unity_ObjectToWorld[2i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_54 * vec4<f32>(x_55.z, x_55.z, x_55.z, x_55.z)) + x_58);
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = x_40.unity_ObjectToWorld[3i];
  u_xlat0 = (x_60 + x_63);
  let x_66 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = x_70.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_66.y, x_66.y, x_66.y, x_66.y) * x_72);
  let x_75 : vec4<f32> = x_70.unity_MatrixVP[0i];
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_75 * vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x)) + x_79);
  let x_82 : vec4<f32> = x_70.unity_MatrixVP[2i];
  let x_83 : vec4<f32> = u_xlat0;
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_82 * vec4<f32>(x_83.z, x_83.z, x_83.z, x_83.z)) + x_86);
  let x_94 : vec4<f32> = x_70.unity_MatrixVP[3i];
  let x_95 : vec4<f32> = u_xlat0;
  let x_98 : vec4<f32> = u_xlat1;
  gl_Position = ((x_94 * vec4<f32>(x_95.w, x_95.w, x_95.w, x_95.w)) + x_98);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

