var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_cube<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec2<f32> = ((x_13 * vec2<f32>(6.283185482f, 3.141592741f)) + vec2<f32>(-3.141592741f, -1.570796371f));
  let x_22 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_21.x, x_21.y, x_22.z);
  let x_26 : vec3<f32> = u_xlat0;
  u_xlat1 = cos(vec2<f32>(x_26.x, x_26.y));
  let x_29 : vec3<f32> = u_xlat0;
  let x_31 : vec2<f32> = sin(vec2<f32>(x_29.x, x_29.y));
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_31.x, x_31.y, x_32.z);
  let x_38 : f32 = u_xlat0.x;
  let x_41 : f32 = u_xlat1.y;
  u_xlat0.x = (x_38 * x_41);
  let x_45 : f32 = u_xlat1.y;
  let x_47 : f32 = u_xlat1.x;
  u_xlat0.z = (x_45 * x_47);
  let x_64 : vec3<f32> = u_xlat0;
  let x_65 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_64);
  SV_Target0 = x_65;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

