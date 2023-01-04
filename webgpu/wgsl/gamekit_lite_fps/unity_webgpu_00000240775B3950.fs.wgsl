var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_25.w;
  let x_37 : f32 = vs_COLOR0.w;
  let x_39 : f32 = u_xlat0.x;
  u_xlat1 = ((x_37 * x_39) + -0.001f);
  let x_44 : f32 = u_xlat0.x;
  let x_46 : f32 = vs_COLOR0.w;
  u_xlat0.x = (x_44 * x_46);
  let x_52 : f32 = u_xlat0.x;
  SV_Target0.w = x_52;
  let x_58 : f32 = u_xlat1;
  u_xlatb0 = (x_58 < 0.0f);
  let x_61 : bool = u_xlatb0;
  if (((select(0i, 1i, x_61) * -1i) != 0i)) {
    discard;
  }
  let x_78 : vec2<f32> = vs_TEXCOORD1;
  let x_79 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, x_78);
  u_xlat0 = vec3<f32>(x_79.x, x_79.y, x_79.z);
  let x_81 : vec3<f32> = u_xlat0;
  let x_82 : vec4<f32> = vs_COLOR0;
  let x_84 : vec3<f32> = (x_81 * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

