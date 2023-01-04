@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_32 : vec4<f32> = vs_COLOR0;
  let x_34 : vec3<f32> = (x_29 * vec3<f32>(x_32.x, x_32.y, x_32.z));
  let x_35 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  let x_44 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_43);
  u_xlat0.x = x_44.w;
  let x_52 : f32 = u_xlat0.x;
  let x_55 : f32 = vs_COLOR0.w;
  SV_Target0.w = (x_52 * x_55);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

