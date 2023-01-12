struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_Lightmap_ST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_TEXCOORD1;
  let x_24 : vec4<f32> = x_19.unity_LightmapST;
  let x_28 : vec4<f32> = x_19.unity_LightmapST;
  vs_TEXCOORD0 = ((vec2<f32>(x_13.x, x_13.y) * vec2<f32>(x_24.x, x_24.y)) + vec2<f32>(x_28.z, x_28.w));
  let x_33 : vec3<f32> = in_TEXCOORD1;
  let x_37 : vec4<f32> = x_19.unity_Lightmap_ST;
  let x_41 : vec4<f32> = x_19.unity_Lightmap_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_33.x, x_33.y) * vec2<f32>(x_37.x, x_37.y)) + vec2<f32>(x_41.z, x_41.w));
  let x_46 : vec3<f32> = in_TEXCOORD0;
  let x_50 : vec4<f32> = x_19.x_MainTex_ST;
  let x_54 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_46.x, x_46.y) * vec2<f32>(x_50.x, x_50.y)) + vec2<f32>(x_54.z, x_54.w));
  let x_60 : vec3<f32> = in_POSITION0;
  let x_65 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_60.y, x_60.y, x_60.y, x_60.y) * x_65);
  let x_68 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_69 : vec3<f32> = in_POSITION0;
  let x_72 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_68 * vec4<f32>(x_69.x, x_69.x, x_69.x, x_69.x)) + x_72);
  let x_75 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_76 : vec3<f32> = in_POSITION0;
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_75 * vec4<f32>(x_76.z, x_76.z, x_76.z, x_76.z)) + x_79);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat0 = (x_81 + x_83);
  let x_86 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_86.y, x_86.y, x_86.y, x_86.y) * x_89);
  let x_92 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_93 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_92 * vec4<f32>(x_93.x, x_93.x, x_93.x, x_93.x)) + x_96);
  let x_99 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_100 : vec4<f32> = u_xlat0;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_99 * vec4<f32>(x_100.z, x_100.z, x_100.z, x_100.z)) + x_103);
  let x_112 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_113 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat1;
  gl_Position = ((x_112 * vec4<f32>(x_113.w, x_113.w, x_113.w, x_113.w)) + x_116);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD1_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec3<f32>, @location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD2, gl_Position);
}

