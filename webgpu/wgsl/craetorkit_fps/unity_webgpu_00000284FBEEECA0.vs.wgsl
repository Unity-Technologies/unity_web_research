struct VGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_50 : VGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
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
  u_xlat0 = (vec2<f32>(x_34.x, x_34.y) + vec2<f32>(1.0f, 1.0f));
  let x_38 : vec2<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(0.0f, 1.0f));
  let x_46 : vec2<f32> = u_xlat0;
  vs_TEXCOORD0 = x_46;
  let x_53 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_58 : vec2<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec4<f32>(x_53.x, x_53.y, x_53.x, x_53.y) * vec4<f32>(-1.0f, 0.0f, 0.0f, -1.0f)) + vec4<f32>(x_58.x, x_58.y, x_58.x, x_58.y));
  let x_63 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_67 : vec2<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec4<f32>(x_63.x, x_63.y, x_63.x, x_63.y) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_67.x, x_67.y, x_67.x, x_67.y));
  let x_72 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_77 : vec2<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec4<f32>(x_72.x, x_72.y, x_72.x, x_72.y) * vec4<f32>(-2.0f, 0.0f, 0.0f, -2.0f)) + vec4<f32>(x_77.x, x_77.y, x_77.x, x_77.y));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

