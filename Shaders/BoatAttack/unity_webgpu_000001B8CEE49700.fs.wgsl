var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = vs_COLOR0;
  let x_13 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_12 + x_13);
  let x_29 : vec2<f32> = vs_TEXCOORD0;
  let x_30 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_29);
  u_xlat1 = x_30;
  let x_31 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_31 * x_32);
  let x_40 : f32 = u_xlat0.w;
  SV_Target0.w = x_40;
  let x_44 : f32 = SV_Target0.w;
  SV_Target0.w = clamp(x_44, 0.0f, 1.0f);
  let x_50 : vec4<f32> = u_xlat0;
  let x_51 : vec3<f32> = vec3<f32>(x_50.x, x_50.y, x_50.z);
  let x_52 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_51.x, x_51.y, x_51.z, x_52.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

