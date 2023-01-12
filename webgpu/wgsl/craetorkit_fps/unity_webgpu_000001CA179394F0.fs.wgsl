struct PGlobals {
  x_TextureSampleAdd : vec4<f32>,
}

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_COLOR0.w;
  u_xlat0.x = (x_16 * 255.0f);
  let x_23 : f32 = u_xlat0.x;
  u_xlat0.x = round(x_23);
  let x_27 : f32 = u_xlat0.x;
  u_xlat0.w = (x_27 * 0.003921569f);
  let x_45 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_45);
  u_xlat1 = x_46;
  let x_47 : vec4<f32> = u_xlat1;
  let x_55 : vec4<f32> = x_50.x_TextureSampleAdd;
  u_xlat1 = (x_47 + x_55);
  let x_59 : f32 = u_xlat0.w;
  let x_61 : f32 = u_xlat1.w;
  u_xlat2 = ((x_59 * x_61) + -0.001f);
  let x_68 : f32 = u_xlat2;
  u_xlatb2 = (x_68 < 0.0f);
  let x_71 : bool = u_xlatb2;
  if (((select(0i, 1i, x_71) * -1i) != 0i)) {
    discard;
  }
  let x_81 : vec4<f32> = vs_COLOR0;
  let x_82 : vec3<f32> = vec3<f32>(x_81.x, x_81.y, x_81.z);
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_85 : vec4<f32> = u_xlat0;
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_85 * x_86);
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.w, x_90.w, x_90.w) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : f32 = u_xlat0.w;
  SV_Target0.w = x_98;
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

