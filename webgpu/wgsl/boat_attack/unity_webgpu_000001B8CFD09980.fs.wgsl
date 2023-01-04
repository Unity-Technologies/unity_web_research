@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_SecondTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_25.x;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, x_36);
  let x_38 : vec2<f32> = vec2<f32>(x_37.x, x_37.y);
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_39.x, x_38.x, x_38.y);
  let x_41 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_41 * vec3<f32>(64.061584473f, 64.061584473f, 64.061584473f)) + vec3<f32>(-0.0625f, -0.5f, -0.5f));
  let x_54 : vec3<f32> = u_xlat0;
  SV_Target0.x = dot(vec2<f32>(1.164399981f, 1.792700052f), vec2<f32>(x_54.x, x_54.z));
  let x_62 : vec3<f32> = u_xlat0;
  SV_Target0.y = dot(vec3<f32>(1.164399981f, -0.213300005f, -0.532899976f), x_62);
  let x_68 : vec3<f32> = u_xlat0;
  SV_Target0.z = dot(vec2<f32>(1.164399981f, 2.112400055f), vec2<f32>(x_68.x, x_68.y));
  SV_Target0.w = 1.0f;
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

