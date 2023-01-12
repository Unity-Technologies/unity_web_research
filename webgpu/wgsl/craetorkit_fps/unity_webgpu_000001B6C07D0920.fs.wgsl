struct PGlobals {
  x_Tex_HDR : vec4<f32>,
  x_Tint : vec4<f32>,
  x_Exposure : f32,
}

@group(0) @binding(0) var x_Tex : texture_cube<f32>;

@group(0) @binding(1) var sampler_Tex : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec3<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_Tex, sampler_Tex, x_23);
  u_xlat0 = x_24;
  let x_30 : f32 = u_xlat0.w;
  u_xlat3 = (x_30 + -1.0f);
  let x_40 : f32 = x_35.x_Tex_HDR.w;
  let x_41 : f32 = u_xlat3;
  u_xlat3 = ((x_40 * x_41) + 1.0f);
  let x_45 : f32 = u_xlat3;
  u_xlat3 = log2(x_45);
  let x_47 : f32 = u_xlat3;
  let x_50 : f32 = x_35.x_Tex_HDR.y;
  u_xlat3 = (x_47 * x_50);
  let x_52 : f32 = u_xlat3;
  u_xlat3 = exp2(x_52);
  let x_54 : f32 = u_xlat3;
  let x_57 : f32 = x_35.x_Tex_HDR.x;
  u_xlat3 = (x_54 * x_57);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : f32 = u_xlat3;
  let x_63 : vec3<f32> = (vec3<f32>(x_59.x, x_59.y, x_59.z) * vec3<f32>(x_61, x_61, x_61));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = x_35.x_Tint;
  let x_73 : vec3<f32> = (vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat0;
  let x_80 : f32 = x_35.x_Exposure;
  let x_82 : vec3<f32> = (vec3<f32>(x_76.x, x_76.y, x_76.z) * vec3<f32>(x_80, x_80, x_80));
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_87 : vec4<f32> = u_xlat0;
  let x_91 : vec3<f32> = (vec3<f32>(x_87.x, x_87.y, x_87.z) * vec3<f32>(4.594793797f, 4.594793797f, 4.594793797f));
  let x_92 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

