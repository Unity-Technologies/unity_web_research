struct VGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var<uniform> x_58 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec3<f32> = in_POSITION0;
  let x_21 : vec2<f32> = vec2<f32>(x_20.x, x_20.y);
  let x_24 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_21.x, x_21.y, x_24.z, x_24.w);
  let x_30 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_30.x, x_30.y, vec2<f32>(0.0f, 1.0f).x, vec2<f32>(0.0f, 1.0f).y);
  let x_34 : vec3<f32> = in_POSITION0;
  vs_TEXCOORD0 = ((vec2<f32>(x_34.x, x_34.y) * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(0.5f, 0.5f));
  let x_44 : vec3<f32> = in_POSITION0;
  u_xlat0 = (vec4<f32>(x_44.x, x_44.y, x_44.x, x_44.y) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_48 * vec4<f32>(0.5f, -0.5f, 0.5f, -0.5f)) + vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  let x_54 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_58.x_MainTex_TexelSize;
  vs_TEXCOORD1 = (vec2<f32>(x_54.z, x_54.w) * vec2<f32>(x_61.z, x_61.w));
  let x_66 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec4<f32>(x_66.x, x_66.x, x_66.y, x_66.y) * vec4<f32>(-0.25f, 1.25f, -0.125f, -0.125f)) + vec4<f32>(x_73.z, x_73.z, x_73.w, x_73.w));
  let x_77 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_77.x, x_77.y, x_77.x, x_77.y) * vec4<f32>(-0.125f, -0.25f, -0.125f, 1.25f)) + x_81);
  let x_84 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_84.x, x_84.z, x_84.y, x_84.w);
  let x_87 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = x_87;
  let x_88 : vec4<f32> = u_xlat0;
  let x_89 : vec2<f32> = vec2<f32>(x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_89.x, x_89.y);
  let x_94 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_100 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = ((vec4<f32>(x_94.x, x_94.x, x_94.y, x_94.y) * vec4<f32>(-8.0f, 8.0f, -8.0f, 8.0f)) + x_100);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

