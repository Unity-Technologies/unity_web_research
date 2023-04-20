diagnostic(off, derivative_uniformity);

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

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_40 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_70 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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


