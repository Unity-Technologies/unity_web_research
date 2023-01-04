var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_DitherMaskLOD : texture_3d<f32>;

@group(0) @binding(3) var sampler_DitherMaskLOD : sampler;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD1;
  let x_42 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_41);
  u_xlat0.x = x_42.w;
  let x_48 : f32 = u_xlat0.x;
  let x_51 : f32 = vs_TEXCOORD3.w;
  u_xlat0.x = (x_48 * x_51);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.z = (x_55 * 0.9375f);
  let x_60 : vec4<f32> = hlslcc_FragCoord;
  let x_64 : vec2<f32> = (vec2<f32>(x_60.x, x_60.y) * vec2<f32>(0.25f, 0.25f));
  let x_65 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_64.x, x_64.y, x_65.z);
  let x_75 : vec3<f32> = u_xlat0;
  let x_76 : vec4<f32> = textureSample(x_DitherMaskLOD, sampler_DitherMaskLOD, x_75);
  u_xlat0.x = x_76.w;
  let x_80 : f32 = u_xlat0.x;
  u_xlat0.x = (x_80 + -0.01f);
  let x_88 : f32 = u_xlat0.x;
  u_xlatb0 = (x_88 < 0.0f);
  let x_91 : bool = u_xlatb0;
  if (((select(0i, 1i, x_91) * -1i) != 0i)) {
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
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD1_param : vec2<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

