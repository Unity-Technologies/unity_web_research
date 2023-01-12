@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec3<f32> = vs_TEXCOORD2;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_26.w;
  let x_36 : vec2<f32> = vs_TEXCOORD1;
  let x_37 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_36);
  u_xlat1 = x_37.w;
  let x_39 : f32 = u_xlat1;
  let x_41 : f32 = u_xlat0;
  u_xlat0 = (-(x_39) + x_41);
  let x_46 : f32 = vs_TEXCOORD2.z;
  let x_47 : f32 = u_xlat0;
  let x_49 : f32 = u_xlat1;
  u_xlat0 = ((x_46 * x_47) + x_49);
  let x_51 : f32 = u_xlat0;
  let x_55 : f32 = vs_TEXCOORD3.w;
  u_xlat0 = ((x_51 * x_55) + -0.5f);
  let x_62 : f32 = u_xlat0;
  u_xlatb0 = (x_62 < 0.0f);
  let x_65 : bool = u_xlatb0;
  if (((select(0i, 1i, x_65) * -1i) != 0i)) {
    discard;
  }
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD1_param : vec2<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

