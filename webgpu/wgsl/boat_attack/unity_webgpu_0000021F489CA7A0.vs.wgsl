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
  x_ProjectionParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_27 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_75 : VGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  let x_19 : vec4<f32> = in_POSITION0;
  let x_33 : vec4<f32> = x_27.unity_ObjectToWorld[1i];
  let x_35 : vec3<f32> = (vec3<f32>(x_19.y, x_19.y, x_19.y) * vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_36 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_35.x, x_35.y, x_35.z, x_36.w);
  let x_39 : vec4<f32> = x_27.unity_ObjectToWorld[0i];
  let x_41 : vec4<f32> = in_POSITION0;
  let x_44 : vec4<f32> = u_xlat0;
  let x_46 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_41.x, x_41.x, x_41.x)) + vec3<f32>(x_44.x, x_44.y, x_44.z));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_51 : vec4<f32> = x_27.unity_ObjectToWorld[2i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  let x_58 : vec3<f32> = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.z, x_53.z, x_53.z)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_58.z, x_59.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = x_27.unity_ObjectToWorld[3i];
  let x_67 : vec3<f32> = (vec3<f32>(x_61.x, x_61.y, x_61.z) + vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_71 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = x_75.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_71.y, x_71.y, x_71.y, x_71.y) * x_77);
  let x_80 : vec4<f32> = x_75.unity_MatrixVP[0i];
  let x_81 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_80 * vec4<f32>(x_81.x, x_81.x, x_81.x, x_81.x)) + x_84);
  let x_87 : vec4<f32> = x_75.unity_MatrixVP[2i];
  let x_88 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_87 * vec4<f32>(x_88.z, x_88.z, x_88.z, x_88.z)) + x_91);
  let x_93 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = x_75.unity_MatrixVP[3i];
  u_xlat0 = (x_93 + x_95);
  let x_100 : f32 = u_xlat0.y;
  let x_104 : f32 = x_75.x_ProjectionParams.x;
  u_xlat1.x = (x_100 * x_104);
  let x_108 : f32 = u_xlat1.x;
  u_xlat1.w = (x_108 * 0.5f);
  let x_113 : vec4<f32> = u_xlat0;
  let x_116 : vec2<f32> = (vec2<f32>(x_113.x, x_113.w) * vec2<f32>(0.5f, 0.5f));
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_116.x, x_117.y, x_116.y, x_117.w);
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec2<f32> = (vec2<f32>(x_121.z, x_121.z) + vec2<f32>(x_123.x, x_123.w));
  let x_126 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_125.x, x_125.y, x_126.z, x_126.w);
  let x_128 : vec4<f32> = u_xlat0;
  let x_129 : vec2<f32> = vec2<f32>(x_128.z, x_128.w);
  let x_130 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_130.x, x_130.y, x_129.x, x_129.y);
  let x_136 : vec4<f32> = u_xlat0;
  gl_Position = x_136;
  let x_140 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_140;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, gl_Position, vs_TEXCOORD2);
}

